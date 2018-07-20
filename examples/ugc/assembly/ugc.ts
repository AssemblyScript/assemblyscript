/////////////////////////// μgc Garbage Collector /////////////////////////////
//     based on https://github.com/bullno1/ugc - BSD (see LICENSE file)      //
///////////////////////////////////////////////////////////////////////////////

// States
const IDLE: u8 = 0;
const MARK: u8 = 1;
const SWEEP: u8 = 2;

// Gray tag
const GRAY: u32 = 2;

/** Header for a managed object. */
@unmanaged
class ObjectHeader {

  /////////////////////////////// Constants ///////////////////////////////////

  static readonly SIZE: usize = 2 * sizeof<usize>();

  ///////////////////////////////// Fields ////////////////////////////////////

  // the next and prev pointer with tags in the least significant two bits that
  // would otherwise be zero (blocks are guaranteed to be aligned to 8 bytes)
  tagged_next: usize;
  tagged_prev: usize;

  get next(): ObjectHeader {
    return changetype<ObjectHeader>(this.tagged_next & ~3);
  }

  set next(value: ObjectHeader) {
    this.tagged_next = changetype<usize>(value) | (this.tagged_next & 3);
  }

  get prev(): ObjectHeader {
    return changetype<ObjectHeader>(this.tagged_prev & ~3);
  }

  set prev(value: ObjectHeader) {
    this.tagged_prev = changetype<usize>(value) | (this.tagged_prev & 3);
  }

  get color(): u32 {
    return this.tagged_next & 3;
  }

  set color(value: u32) {
    assert(value < 3);
    this.tagged_next = this.tagged_next | value;
  }

  ///////////////////////////////// Methods ///////////////////////////////////

  push(element: ObjectHeader): void {
    element.next = this;
    element.prev = this.prev;
    this.prev.next = element;
    this.prev = element;
  }

  unlink(): void {
    var next = this.next;
    var prev = this.prev;
    next.prev = prev;
    prev.next = next;
  }

  clear(): void {
    this.next = this;
    this.prev = this;
  }
}

/** Garbage collector data. */
@unmanaged
class Control {

  /////////////////////////////// Constants ///////////////////////////////////

  static readonly SIZE: usize = 7 * sizeof<usize>() + 2 * sizeof<u8>();
  static readonly PAUSED_BIT: u8 = 1 << 7;

  ///////////////////////////////// Fields ////////////////////////////////////

  // 'from' and 'to' point here
  private __set1_tagged_next: usize;
  private __set1_tagged_prev: usize;
  private __set2_tagged_next: usize;
  private __set2_tagged_prev: usize;

  from: ObjectHeader;
  to: ObjectHeader;
  iterator: ObjectHeader;
  state: u8; // MSB indicates paused
  white: u8;

  /** Tests whether the collector is currently paused. */
  get paused(): bool { return (this.state & Control.PAUSED_BIT) != 0; }
  /** Sets whether the collector is currently paused. */
  set paused(paused: bool) {
    this.state = paused
      ? this.state |= Control.PAUSED_BIT
      : this.state &= ~Control.PAUSED_BIT;
  }

  ///////////////////////////////// Methods ///////////////////////////////////

  /** Creates a new instance. */
  static create(mem: usize): Control {
    var control = changetype<Control>(mem);
    var set1 = changetype<ObjectHeader>(mem);
    var set2 = changetype<ObjectHeader>(mem + 2 * sizeof<usize>());
    set1.clear();
    set2.clear();
    control.state = IDLE;
    control.white = 0;
    control.from = set1;
    control.to = set2;
    control.iterator = control.to;
    return control;
  }

  /** Registers a new object to be managed. */
  register(obj: ObjectHeader): void {
    this.from.push(obj);
    obj.color = this.white;
  }

  /**
   * Registers a new reference from one object to another.
   *
   * Whenever an object stores a reference to another object, this function
   * MUST be called to ensure that the GC works correctly.
   *
   * Root objects (stack, globals) are treated differently so there is no need
   * to call this function when a store to them occurs.
    */
  addRef(parent: ObjectHeader, child: ObjectHeader): void {
    var parent_color = parent.color;
    var child_color = child.color;
    var white = this.white;
    var black = white ^ 1;
    if (parent_color == black && child_color == white) {
      this.makeGray(parent);
    }
  }

  /**
   * Make the GC perform one unit of work.
   *
   * What happens depends on the current GC's state.
   *
   * - In IDLE state, it will scan the root by calling the scan callback then
   *   switch to MARK state.
   * - In MARK state, it will mark one object and discover its children using
   *   the scan callback. When there is no object left to mark, the GC will
   *   scan the root once more to account for changes during the mark phase.
   *   When all live objects are marked, it will switch to SWEEP state.
   * - In SWEEP state, it will release one object. When all garbage are
   *   released, it wil switch to UGC_IDLE state.
   */
  step(): void {
    var obj: ObjectHeader;
    switch (this.state) {

      case IDLE:
        gc_scan_fn(this, null);
        this.state = MARK;
        break;

      case MARK:
        obj = this.iterator.next;
        var white = this.white;

        if (obj != this.to) {
          this.iterator = obj;
          obj.color = white ^ 1;
          gc_scan_fn(this, obj);
        } else {
          gc_scan_fn(this, null);
          obj = this.iterator.next; // already strips tags, see *
          if (obj == this.to) {
            var from = this.from;
            this.from = this.to;
            this.to = from;
            this.white = white ^ 1;
            this.iterator = changetype<ObjectHeader>(from.tagged_next); // *
            this.state = SWEEP;
          }
        }
        break;

      case SWEEP:
        obj = this.iterator;
        if (obj != this.to) {
          this.iterator = obj.next;
          gc_free_fn(this, obj);
        } else {
          this.to.clear();
          this.state = IDLE;
        }
        break;
    }
  }

  /**
   * Performs a collection cycle.
   *
   * Start the GC if it's not already running and only return once the GC has
   * finished collecting all garbage identified at the point of calling.
   *
   * If the GC is already in the SWEEP state, it will leave newly created
   * garbage for the next cycle.
   */
  collect(): void {
    if (this.state == IDLE) {
      this.step();
    }
    while (this.state != IDLE) {
      this.step();
    }
  }

  /** Informs the GC of a referred object during the mark phase. */
  visit(obj: ObjectHeader): void {
    if (this.state == SWEEP) {
      return;
    }
    if (obj.color == this.white) {
      this.makeGray(obj);
    }
  }

  makeGray(obj: ObjectHeader): void {
    if (obj != this.iterator) {
      obj.unlink();
      this.to.push(obj);
    } else {
      this.iterator = this.iterator.prev;
    }
    obj.color = GRAY;
  }
}

// TODO: should happen dynamically so it DCE's if all objects are unmanaged
var GC = Control.create(HEAP_BASE);
// var someObject = memory.allocate(64);
// GC.register(changetype<ObjectHeader>(someObject));

// Exported interface

/** Pauses automatic garbage collection. */
export function gc_pause(): void {
  GC.paused = true;
}

/** Resumes automatic garbage collection. */
export function gc_resume(): void {
  GC.paused = false;
}

/** Performs a collection cycle. Ignores pauses. */
export function gc_collect(): void {
  var paused = GC.paused;
  GC.paused = false;
  GC.collect();
  GC.paused = paused;
}

// TODO: these functions must be generated by the compiler and combined by
// a potential linker. They live here for now to document their structure.

function gc_scan_fn(control: Control, header: ObjectHeader | null): void {
  if (!header) {
    // visit all global vars referencing managed objects
  } else {
    // visit all referenced objects using the compiler's knowledge of this
    // object's layout
    var classId = load<u32>(changetype<usize>(header), ObjectHeader.SIZE);
    // switch (classId) {
      // arrays
      // strings
      // user-defined
    // }
  }
}

function gc_free_fn(control: Control, header: ObjectHeader): void {
  // finalize the given object using the compiler's knowledge of its layout
  var classId = load<u32>(changetype<usize>(header) + ObjectHeader.SIZE);
  // switch (classId) {
    // array, string: free their data segments
    // TODO: might make sense to provide @finalize or similar
  // }
  memory.free(changetype<usize>(header));
}
