// WebAssembly pages are 65536 kb
const PAGE_SIZE_BITS = 16;
const PAGE_SIZE = 1 << PAGE_SIZE_BITS;
const PAGE_MASK = PAGE_SIZE - 1;

// Wasm32 pointer size is 4 bytes
const PTR_SIZE_BITS = 2;
const PTR_SIZE = 1 << PTR_SIZE_BITS;
const PTR_MASK = PTR_SIZE - 1;
const PTR_VIEW = Uint32Array;

const BLOCK_OVERHEAD = PTR_SIZE;

const RT_LIB = "~lib/rt/";

function assert(x) {
  if (!x) throw Error("assertion failed");
  return x;
}

Error.stackTraceLimit = 25;

function trimStacktrace(stack, levels) {
  return stack.split(/\r?\n/).slice(1 + levels);
}

function isRT(stack) {
  return stack[0].startsWith(`    at ${RT_LIB}`);
}

export class Rtrace {

  constructor(options) {
    this.options = options || {};
    this.onerror = this.options.onerror || function() { /* nop */ };
    this.oninfo = this.options.oninfo || function() { /* nop */ };
    this.memory = null;
    this.shadow = null;
    this.shadowStart = 0x100000000;
    this.blocks = new Map();
    this.allocSites = new Map();
    this.allocCount = 0;
    this.resizeCount = 0;
    this.moveCount = 0;
    this.freeCount = 0;
    this.heapBase = 0;
    this.stackBase = 0;
    this.stackSize = 0;
    this.freedBlocks = new Map();

    // The following hooks cannot just be on the prototype but must be
    // bound so the Rtrace instance can be used as a WebAssembly import.
    this.oninit = this.oninit.bind(this);
    this.onalloc = this.onalloc.bind(this);
    this.onresize = this.onresize.bind(this);
    this.onmove = this.onmove.bind(this);
    this.onvisit = this.onvisit.bind(this);
    this.onfree = this.onfree.bind(this);
    this.env = {
      load_ptr: this.load_ptr.bind(this),
      load_val_i32: this.load_val_i32.bind(this),
      load_val_i64: this.load_val_i64.bind(this),
      load_val_f32: this.load_val_f32.bind(this),
      load_val_f64: this.load_val_f64.bind(this),
      store_ptr: this.store_ptr.bind(this),
      store_val_i32: this.store_val_i32.bind(this),
      store_val_i64: this.store_val_i64.bind(this),
      store_val_f32: this.store_val_f32.bind(this),
      store_val_f64: this.store_val_f64.bind(this)
    };
  }

  /** Synchronizes the shadow memory with the module's memory. */
  syncShadow() {
    if (!this.memory) {
      this.memory = assert(this.options.getMemory());
      this.shadow = new WebAssembly.Memory({
        initial: ((this.memory.buffer.byteLength + PAGE_MASK) & ~PAGE_MASK) >>> PAGE_SIZE_BITS
      });
    } else {
      var diff = this.memory.buffer.byteLength - this.shadow.buffer.byteLength;
      if (diff > 0) this.shadow.grow(diff >>> 16);
    }
  }

  /** Marks a block's presence in shadow memory. */
  markShadow(info, oldSize = 0) {
    assert(this.shadow && this.shadow.byteLength == this.memory.byteLength);
    assert((info.size & PTR_MASK) == 0);
    if (info.ptr < this.shadowStart) {
      this.shadowStart = info.ptr;
    }
    var len = info.size >>> PTR_SIZE_BITS;
    var view = new PTR_VIEW(this.shadow.buffer, info.ptr, len);
    var errored = false;
    var start = oldSize >>> PTR_SIZE_BITS;
    for (let i = 0; i < start; ++i) {
      if (view[i] != info.ptr && !errored) {
        this.onerror(Error("shadow region mismatch: " + view[i] + " != " + info.ptr), info);
        errored = true;
      }
    }
    errored = false;
    for (let i = start; i < len; ++i) {
      if (view[i] != 0 && !errored) {
        this.onerror(Error("shadow region already in use: " + view[i] + " != 0"), info);
        errored = true;
      }
      view[i] = info.ptr;
    }
  }

  /** Unmarks a block's presence in shadow memory. */
  unmarkShadow(info, oldSize = info.size) {
    assert(this.shadow && this.shadow.byteLength == this.memory.byteLength);
    var len = oldSize >>> PTR_SIZE_BITS;
    var view = new PTR_VIEW(this.shadow.buffer, info.ptr, len);
    var errored = false;
    var start = 0;
    if (oldSize != info.size) {
      assert(oldSize > info.size);
      start = info.size >>> PTR_SIZE_BITS;
    }
    for (let i = 0; i < len; ++i) {
      if (view[i] != info.ptr && !errored) {
        this.onerror(Error("shadow region mismatch: " + view[i] + " != " + info.ptr), info);
        errored = true;
      }
      if (i >= start) view[i] = 0;
    }
  }

  /** Performs an access to shadow memory. */
  accessShadow(ptr, size, isLoad) {
    this.syncShadow();
    if (ptr < this.shadowStart) return;
    var value = new Uint32Array(this.shadow.buffer, ptr & ~PTR_MASK, 1)[0];
    if (value != 0) return;
    // FIXME: this is extremely slow
    let stack = trimStacktrace(new Error().stack, 2);
    if (!isRT(stack)) {
      this.onerror(new Error("OOB " + (isLoad ? "load" : "store") + (8 * size) + " at address " + ptr + "\n" + stack.join("\n")));
    }
  }

  /** Obtains information about a block. */
  getBlockInfo(ptr) {
    var header = new Uint32Array(this.memory.buffer, ptr, 5);
    var mmInfo = header[0];
    var gcInfo = header[1];
    var gcInfo2 = header[2];
    const mmTags = [
      [],
      ["FREE"],
      ["LEFTFREE"],
      ["FREE", "LEFTFREE"]
    ]; // 2=LEFTFREE, 1=FREE
    const gcColor = [
      "BLACK/WHITE",
      "WHITE/BLACK",
      "GRAY"
    ];
    var size = mmInfo & ~3;
    return {
      ptr,
      size: BLOCK_OVERHEAD + size, // block size
      header: {
        mmInfo: {
          tags: mmTags[mmInfo & 3],
          size: size
        },
        gcInfo: {
          color: gcColor[gcInfo & 3],
          next: gcInfo & ~3,
          prev: gcInfo2
        },
        rtId: header[3],
        rtSize: header[4]
      }
    };
  }

  /** Checks if rtrace is active, i.e. at least one event has occurred. */
  get active() {
    return Boolean(this.allocCount || this.resizeCount || this.moveCount || this.freeCount);
  }

  /** Checks if there are any leaks and emits them via `oninfo`. Returns the number of live blocks. */
  check() {
    if (this.oninfo) {
      for (let [ptr, info] of this.blocks) {
        this.oninfo("LIVE " + ptr + "\n" + info.allocStack.join("\n"));
      }
    }
    return this.blocks.size;
  }

  // Runtime instrumentation

  oninit(heapBase, stackBase, stackSize) {
    this.heapBase = heapBase;
    this.stackBase = stackBase;
    this.stackSize = stackSize;
    this.oninfo("INIT heapBase=" + heapBase);
  }

  onalloc(ptr) {
    this.syncShadow();
    ++this.allocCount;
    var info = this.getBlockInfo(ptr);
    if (this.blocks.has(ptr)) {
      this.onerror(Error("duplicate alloc: " + ptr), info);
    } else {
      this.oninfo("ALLOC " + ptr + ".." + (ptr + info.size));
      this.markShadow(info);
      let allocStack = trimStacktrace(new Error().stack, 1); // strip onalloc
      this.blocks.set(ptr, Object.assign(info, { allocStack }));
    }
  }
  
  onresize(ptr, oldSize) {
    this.syncShadow();
    ++this.resizeCount;
    var info = this.getBlockInfo(ptr);
    if (!this.blocks.has(ptr)) {
      this.onerror(Error("orphaned resize: " + ptr), info);
    } else {
      this.oninfo("RESIZE " + ptr + ".." + (ptr + info.size) + " (" +  oldSize + "->" + info.size + ")");
      if (info.size > oldSize) {
        this.markShadow(info, BLOCK_OVERHEAD + oldSize);
      } else if (info.size < oldSize) {
        this.unmarkShadow(info, BLOCK_OVERHEAD + oldSize);
      }
    }
  }

  onmove(oldPtr, newPtr) {
    this.syncShadow();
    ++this.moveCount;
    var oldInfo = this.getBlockInfo(oldPtr);
    var newInfo = this.getBlockInfo(newPtr);
    if (!this.blocks.has(oldPtr)) {
      this.onerror(Error("orphaned move (old): " + oldPtr), oldInfo);
    } else {
      if (!this.blocks.has(newPtr)) {
        this.onerror(Error("orphaned move (new): " + newPtr), newInfo);
      } else {
        this.oninfo("MOVE " + oldPtr + ".." + (oldPtr + oldInfo.size) + " -> " + newPtr + ".." + (newPtr + newInfo.size));
        // calls new alloc before and old free after
      }
    }
  }

  onvisit(ptr, stackPtr) {
    // Indicates that a block has been freed but it still visited by the GC
    if (ptr > this.heapBase && !this.blocks.has(ptr)) {
      this.onerror(Error("orphaned visit: " + ptr), null);
      let info = this.freedBlocks.get(ptr);
      if (info) {
        console.log("^ allocated at:\n" + info.allocStack.join("\n"));
        console.log("^ freed at:\n" + info.freeStack.join("\n"));
      }
      let memory = this.memory;
      if (memory) {
        let view = new Uint32Array(memory.buffer);
        let exists = false;
        for (let cur = stackPtr, end = this.stackBase + this.stackSize; cur < end; cur += PTR_SIZE) {
          let sptr = view[cur >> PTR_SIZE_BITS];
          if (ptr == sptr) {
            console.log("^ on stack at offset " + cur + "(" + this.stackBase + ".." + (this.stackBase + this.stackSize) + ")");
            exists = true;
          }
        }
        if (!exists) {
          console.log("^ not on stack (" + this.stackBase + ".." + (this.stackBase + this.stackSize) + ")");
        }
      } else {
        console.log("^ skipped stack check (no memory)");
      }
      return false;
    }
    return true;
  }

  onfree(ptr) {
    this.syncShadow();
    ++this.freeCount;
    var info = this.getBlockInfo(ptr);
    if (!this.blocks.has(ptr)) {
      this.onerror(Error("orphaned free: " + ptr), info);
    } else {
      this.oninfo("FREE " + ptr + ".." + (ptr + info.size));
      this.unmarkShadow(info);
      const allocInfo = this.blocks.get(ptr);
      this.blocks.delete(ptr);
      const allocStack = allocInfo.allocStack;
      const freeStack = trimStacktrace(new Error().stack, 1); // strip onfree
      // TODO: Maintaining these eats lots of memory
      this.freedBlocks.set(ptr, { allocStack, freeStack });
    }
  }

  // Memory instrumentation

  load_ptr(id, bytes, offset, address) {
    this.accessShadow(address + offset, bytes, true);
    return address;
  }

  load_val_i32(id, value) {
    return value;
  }

  load_val_i64(id, value) {
    return value;
  }

  load_val_f32(id, value) {
    return value;
  }

  load_val_f64(id, value) {
    return value;
  }

  store_ptr(id, bytes, offset, address) {
    this.accessShadow(address + offset, bytes, false);
    return address;
  }

  store_val_i32(id, value) {
    return value;
  }

  store_val_i64(id, value) {
    return value;
  }

  store_val_f32(id, value) {
    return value;
  }

  store_val_f64(id, value) {
    return value;
  }
}

export default {
  Rtrace
};
