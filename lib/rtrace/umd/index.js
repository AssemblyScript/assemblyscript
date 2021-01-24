// GENERATED FILE. DO NOT EDIT.
var rtrace = (function(exports) {
  "use strict";
  
  Object.defineProperty(exports, "__esModule", {
    value: true
  });
  exports.default = exports.Rtrace = exports.TOTAL_OVERHEAD = exports.OBJECT_OVERHEAD = exports.BLOCK_OVERHEAD = void 0;
  // WebAssembly pages are 65536 kb
  const PAGE_SIZE_BITS = 16;
  const PAGE_SIZE = 1 << PAGE_SIZE_BITS;
  const PAGE_MASK = PAGE_SIZE - 1; // Wasm32 pointer size is 4 bytes
  
  const PTR_SIZE_BITS = 2;
  const PTR_SIZE = 1 << PTR_SIZE_BITS;
  const PTR_MASK = PTR_SIZE - 1;
  const PTR_VIEW = Uint32Array;
  const BLOCK_OVERHEAD = PTR_SIZE;
  exports.BLOCK_OVERHEAD = BLOCK_OVERHEAD;
  const OBJECT_OVERHEAD = 16;
  exports.OBJECT_OVERHEAD = OBJECT_OVERHEAD;
  const TOTAL_OVERHEAD = BLOCK_OVERHEAD + OBJECT_OVERHEAD;
  exports.TOTAL_OVERHEAD = TOTAL_OVERHEAD;
  
  function assert(x) {
    if (!x) throw Error("assertion failed");
    return x;
  }
  
  Error.stackTraceLimit = 15;
  
  function trimStacktrace(stack, levels) {
    return stack.split(/\r?\n/).slice(1 + levels);
  }
  
  const hrtime = typeof performance !== "undefined" && performance.now ? performance.now : typeof process !== "undefined" && process.hrtime ? () => {
    let t = process.hrtime();
    return t[0] * 1e3 + t[1] / 1e6;
  } : Date.now;
  const mmTagsToString = ["", "FREE", "LEFTFREE", "FREE+LEFTFREE"];
  const gcColorToString = ["BLACK/WHITE", "WHITE/BLACK", "GRAY", "INVALID"];
  
  class Rtrace {
    constructor(options) {
      this.options = options || {};
  
      this.onerror = this.options.onerror || function () {
        /* nop */
      };
  
      this.oninfo = this.options.oninfo || function () {
        /* nop */
      };
  
      this.oncollect_ = this.options.oncollect || function () {
        /* nop */
      };
  
      this.memory = null;
      this.shadow = null;
      this.shadowStart = 0x100000000;
      this.blocks = new Map();
      this.allocSites = new Map();
      this.freedBlocks = new Map();
      this.gcProfileStart = 0;
      this.gcProfile = [];
      this.allocCount = 0;
      this.resizeCount = 0;
      this.moveCount = 0;
      this.freeCount = 0;
      this.heapBase = 0x100000000;
    }
  
    install(imports) {
      if (!imports) imports = {};
      imports.rtrace = Object.assign(imports.rtrace || {}, {
        oninit: this.oninit.bind(this),
        onalloc: this.onalloc.bind(this),
        onresize: this.onresize.bind(this),
        onmove: this.onmove.bind(this),
        onvisit: this.onvisit.bind(this),
        onfree: this.onfree.bind(this),
        oninterrupt: this.oninterrupt.bind(this),
        onyield: this.onyield.bind(this),
        oncollect: this.oncollect.bind(this),
        onstore: this.onstore.bind(this),
        onload: this.onload.bind(this)
      });
      return imports;
    }
    /** Synchronizes the shadow memory with the module's memory. */
  
  
    syncShadow() {
      if (!this.memory) {
        this.memory = assert(this.options.getMemory());
        this.shadow = new WebAssembly.Memory({
          initial: (this.memory.buffer.byteLength + PAGE_MASK & ~PAGE_MASK) >>> PAGE_SIZE_BITS
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
  
  
    accessShadow(ptr, size, isLoad, isRT) {
      this.syncShadow();
      if (ptr < this.shadowStart) return;
      var value = new Uint32Array(this.shadow.buffer, ptr & ~PTR_MASK, 1)[0];
      if (value != 0) return;
  
      if (!isRT) {
        let stack = trimStacktrace(new Error().stack, 2);
        this.onerror(new Error("OOB " + (isLoad ? "load" : "store") + 8 * size + " at address " + ptr + "\n" + stack.join("\n")));
      }
    }
    /** Obtains information about a block. */
  
  
    getBlockInfo(ptr) {
      const [mmInfo, gcInfo, gcInfo2, rtId, rtSize] = new Uint32Array(this.memory.buffer, ptr, 5);
      const size = mmInfo & ~3;
      return {
        ptr,
        size: BLOCK_OVERHEAD + size,
        // total incl. overhead
        mmInfo: {
          tags: mmTagsToString[mmInfo & 3],
          size: size // as stored excl. overhead
  
        },
        gcInfo: {
          color: gcColorToString[gcInfo & 3],
          next: gcInfo & ~3,
          prev: gcInfo2
        },
        rtId,
        rtSize
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
    } // Runtime instrumentation
  
  
    oninit(heapBase) {
      this.heapBase = heapBase;
      this.gcProfileStart = 0;
      this.gcProfile.length = 0;
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
  
        this.blocks.set(ptr, Object.assign(info, {
          allocStack
        }));
      }
    }
  
    onresize(ptr, oldSize) {
      this.syncShadow();
      ++this.resizeCount;
      const info = this.getBlockInfo(ptr);
  
      if (!this.blocks.has(ptr)) {
        this.onerror(Error("orphaned resize: " + ptr), info);
      } else {
        const beforeInfo = this.blocks.get(ptr);
  
        if (beforeInfo.size != oldSize) {
          this.onerror(Error(`size mismatch upon resize: ${ptr} (${beforeInfo.size} != ${oldSize})`), info);
        }
  
        const newSize = info.size;
        this.oninfo("RESIZE " + ptr + ".." + (ptr + newSize) + " (" + oldSize + "->" + newSize + ")");
        this.blocks.set(ptr, Object.assign(info, {
          allocStack: beforeInfo.allocStack
        }));
  
        if (newSize > oldSize) {
          this.markShadow(info, oldSize);
        } else if (newSize < oldSize) {
          this.unmarkShadow(info, oldSize);
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
          const beforeInfo = this.blocks.get(oldPtr);
          const oldSize = oldInfo.size;
          const newSize = newInfo.size;
  
          if (beforeInfo.size != oldSize) {
            this.onerror(Error(`size mismatch upon move: ${oldPtr} (${beforeInfo.size} != ${oldSize})`), oldInfo);
          }
  
          this.oninfo("MOVE " + oldPtr + ".." + (oldPtr + oldSize) + " -> " + newPtr + ".." + (newPtr + newSize)); // calls new alloc before and old free after
        }
      }
    }
  
    onvisit(ptr) {
      // Indicates that a block has been freed but it still visited by the GC
      if (ptr > this.heapBase && !this.blocks.has(ptr)) {
        let err = Error("orphaned visit: " + ptr);
        let info = this.freedBlocks.get(ptr);
  
        if (info) {
          err.stack += "\n^ allocated at:\n" + info.allocStack.join("\n");
          err.stack += "\n^ freed at:\n" + info.freeStack.join("\n");
        }
  
        this.onerror(err, null);
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
        const oldInfo = this.blocks.get(ptr);
  
        if (info.size != oldInfo.size) {
          this.onerror(Error(`size mismatch upon free: ${ptr} (${oldInfo.size} != ${info.size})`), info);
        }
  
        this.oninfo("FREE " + ptr + ".." + (ptr + info.size));
        this.unmarkShadow(info);
        const allocInfo = this.blocks.get(ptr);
        this.blocks.delete(ptr);
        const allocStack = allocInfo.allocStack;
        const freeStack = trimStacktrace(new Error().stack, 1); // strip onfree
        // (not much) TODO: Maintaining these is essentially a memory leak
  
        this.freedBlocks.set(ptr, {
          allocStack,
          freeStack
        });
      }
    }
  
    oncollect(total) {
      this.oninfo(`COLLECT at ${total}`);
      this.plot(total);
      this.oncollect_();
    } // GC profiling
  
  
    plot(total, pause = 0) {
      if (!this.gcProfileStart) this.gcProfileStart = Date.now();
      this.gcProfile.push([Date.now() - this.gcProfileStart, total, pause]);
    }
  
    oninterrupt(total) {
      this.interruptStart = hrtime();
      this.plot(total);
    }
  
    onyield(total) {
      var pause = hrtime() - this.interruptStart;
      if (pause >= 1) console.log("interrupted for " + pause.toFixed(1) + "ms");
      this.plot(total, pause);
    } // Memory instrumentation
  
  
    onstore(ptr, offset, bytes, isRT) {
      this.accessShadow(ptr + offset, bytes, false, isRT);
      return ptr;
    }
  
    onload(ptr, offset, bytes, isRT) {
      this.accessShadow(ptr + offset, bytes, true, isRT);
      return ptr;
    }
  
  }
  
  exports.Rtrace = Rtrace;
  var _default = {
    Rtrace
  };
  exports.default = _default;
  return exports;
})({});
if (typeof define === 'function' && define.amd) define([], function() { return rtrace; });
else if (typeof module === 'object' && typeof exports==='object') module.exports = rtrace;
