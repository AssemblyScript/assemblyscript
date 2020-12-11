// WebAssembly pages are 65536 kb
const PAGE_SIZE_BITS = 16;
const PAGE_SIZE = 1 << PAGE_SIZE_BITS;
const PAGE_MASK = PAGE_SIZE - 1;

// Wasm32 pointer size is 4 bytes
const PTR_SIZE_BITS = 2;
const PTR_SIZE = 1 << PTR_SIZE_BITS;
const PTR_MASK = PTR_SIZE - 1;
const PTR_VIEW = Uint32Array;

export const BLOCK_OVERHEAD = PTR_SIZE;
export const OBJECT_OVERHEAD = 16;
export const TOTAL_OVERHEAD = BLOCK_OVERHEAD + OBJECT_OVERHEAD;

const RT_TLSF = "~lib/rt/tlsf/";

function assert(x) {
  if (!x) throw Error("assertion failed");
  return x;
}

Error.stackTraceLimit = 50;

function trimStacktrace(stack, levels) {
  return stack.split(/\r?\n/).slice(1 + levels);
}

function isTLSF(stack) {
  return stack[0].startsWith(`    at ${RT_TLSF}`);
}

export class Rtrace {

  constructor(options) {
    this.options = options || {};
    this.onerror = this.options.onerror || function() { /* nop */ };
    this.oninfo = this.options.oninfo || function() { /* nop */ };
    this.memory = null;
    this.shadow = null;
    this.shadowStart = 0x100000000;
    this.refCounts = new Map();
    this.blocks = new Map();
    this.allocSites = new Map();
    this.allocCount = 0;
    this.resizeCount = 0;
    this.moveCount = 0;
    this.freeCount = 0;
    this.incrementCount = 0;
    this.decrementCount = 0;

    // The following hooks cannot just be on the prototype but must be
    // bound so the Rtrace instance can be used as a WebAssembly import.
    this.onalloc = this.onalloc.bind(this);
    this.onresize = this.onresize.bind(this);
    this.onmove = this.onmove.bind(this);
    this.onfree = this.onfree.bind(this);
    this.onincrement = this.onincrement.bind(this);
    this.ondecrement = this.ondecrement.bind(this);
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
    if (!isTLSF(stack)) {
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
      "BLACK",
      "GRAY",
      "WHITE",
      "PURPLE"
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
          buffered: (gcInfo >>> 31) === 1,
          color: gcColor[gcInfo << 1 >>> 29],
          rc: gcInfo << 4 >>> 4
        },
        gcInfo2,
        rtId: header[3],
        rtSize: header[4]
      }
    };
  }

  /** Checks if rtrace is active, i.e. at least one event has occurred. */
  get active() {
    return Boolean(this.allocCount || this.moveCount || this.freeCount || this.incrementCount || this.decrementCount);
  }

  /** Checks if there are any leaks and emits them via `oninfo`. Returns the number of live blocks. */
  check() {
    if (this.refCounts.size == 1) return 0; // purerc roots
    if (this.oninfo) {
      for (let [ptr, rc] of this.refCounts) {
        this.oninfo("LEAKING " + ptr + " @ " + rc);
      }
    }
    return this.refCounts.size;
  }

  // Runtime instrumentation

  onalloc(ptr) {
    this.syncShadow();
    ++this.allocCount;
    var info = this.getBlockInfo(ptr);
    if (this.refCounts.has(ptr)) {
      this.onerror(Error("duplicate alloc: " + ptr), info);
    } else {
      this.oninfo("ALLOC " + ptr + ".." + (ptr + info.size));
      this.markShadow(info);
      this.refCounts.set(ptr, 0);
      this.blocks.set(ptr, Object.assign(info, {
        allocStack: trimStacktrace(new Error().stack, 1) // strip onalloc
      }));
    }
  }
  
  onresize(ptr, oldSize) {
    this.syncShadow();
    ++this.resizeCount;
    var info = this.getBlockInfo(ptr);
    if (!this.refCounts.has(ptr)) {
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
    if (!this.refCounts.has(oldPtr)) {
      this.onerror(Error("orphaned move (old): " + oldPtr), oldInfo);
    } else {
      if (!this.refCounts.has(newPtr)) {
        this.onerror(Error("orphaned move (new): " + newPtr), newInfo);
      } else {
        let newRc = this.refCounts.get(newPtr);
        if (newRc != 0) {
          this.onerror(Error("invalid realloc: " + oldPtr + " -> " + newPtr + " @ " + newRc), oldInfo);
        } else {
          let oldRc = this.refCounts.get(oldPtr);
          this.oninfo("MOVE " + oldPtr + ".." + (oldPtr + oldInfo.size) + " @ " + oldRc + " -> " + newPtr + ".." + (newPtr + newInfo.size));
          this.refCounts.set(newPtr, oldRc);
          // calls new alloc before and old free after
        }
      }
    }
  }

  onfree(ptr) {
    this.syncShadow();
    ++this.freeCount;
    var info = this.getBlockInfo(ptr);
    if (!this.refCounts.has(ptr)) {
      this.onerror(Error("orphaned free: " + ptr), info);
    } else {
      this.oninfo("FREE " + ptr + ".." + (ptr + info.size) + " @ " + this.refCounts.get(ptr));
      this.refCounts.delete(ptr);
      this.unmarkShadow(info);
      let block = this.blocks.get(ptr);
      block.freeStack = trimStacktrace(new Error().stack, 1); // strip onfree
    }
  }

  onincrement(ptr) {
    this.syncShadow();
    ++this.incrementCount;
    var info = this.getBlockInfo(ptr);
    if (!this.refCounts.has(ptr)) {
      this.onerror(Error("orphaned increment: " + ptr), info);
    } else {
      let rc = this.refCounts.get(ptr);
      this.oninfo("++ " + ptr + " @ " + rc + "->" + (rc + 1));
      this.refCounts.set(ptr, rc + 1);
    }
  }

  ondecrement(ptr) {
    this.syncShadow();
    ++this.decrementCount;
    var info = this.getBlockInfo(ptr);
    if (!this.refCounts.has(ptr)) {
      this.onerror(Error("orphaned decrement: " + ptr), info);
    } else {
      let rc = this.refCounts.get(ptr);
      if (rc < 1) {
        this.onerror(Error("invalid decrement: " + ptr + " @ " + rc), info);
      } else {
        this.oninfo("-- " + ptr + " @ " + rc + "->" + (rc - 1));
        this.refCounts.set(ptr, rc - 1);
      }
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
