function rtrace(onerror, oninfo) {
  if (!onerror) onerror = function() { /* nop */ };
  if (!oninfo) oninfo = function() { /* nop */ };
  var blocks = new Map();
  var rtrace = {

    allocCount: 0,
    reallocCount: 0,
    freeCount: 0,
    incrementCount: 0,
    decrementCount: 0,

    onalloc: function(block) {
      ++rtrace.allocCount;
      if (blocks.has(block)) {
        onerror(Error("duplicate alloc: " + block));
      } else {
        oninfo("ALLOC " + block);
        blocks.set(block, 0);
      }
    },

    onrealloc: function(oldBlock, newBlock) {
      ++rtrace.reallocCount;
      if (!blocks.has(oldBlock)) {
        onerror(Error("orphaned realloc (old): " + oldBlock));
      } else {
        if (!blocks.has(newBlock)) {
          onerror(Error("orphaned realloc (new): " + newBlock));
        } else {
          let newRc = blocks.get(newBlock);
          if (newRc != 0) {
            onerror(Error("invalid realloc: " + oldBlock + " -> " + newBlock + " @ " + newRc));
          } else {
            let oldRc = blocks.get(oldBlock);
            oninfo("REALLOC " + oldBlock + " @ " + oldRc + " -> " + newBlock);
            blocks.set(newBlock, oldRc);
          }
        }
      }
    },

    onfree: function(block) {
      ++rtrace.freeCount;
      if (!blocks.has(block)) {
        onerror(Error("orphaned free: " + block));
      } else {
        oninfo("FREE " + block + " @ " + blocks.get(block));
        blocks.delete(block);
      }
    },

    onincrement: function(block) {
      ++rtrace.incrementCount;
      if (!blocks.has(block)) {
        onerror(Error("orphaned increment: " + block));
      } else {
        let rc = blocks.get(block);
        oninfo("++ " + block + " @ " + rc + "->" + (rc + 1));
        blocks.set(block, rc + 1);
      }
    },

    ondecrement: function(block) {
      ++rtrace.decrementCount;
      if (!blocks.has(block)) {
        onerror(Error("orphaned decrement: " + block));
      } else {
        let rc = blocks.get(block);
        if (rc < 1) {
          onerror(Error("invalid decrement: " + block + " @ " + rc));
        } else {
          oninfo("-- " + block + " @ " + rc + "->" + (rc - 1));
          blocks.set(block, rc - 1);
        }
      }
    },

    get active() {
      return Boolean(rtrace.allocCount || rtrace.reallocCount || rtrace.freeCount || rtrace.incrementCount || rtrace.decrementCount);
    },

    check() {
      if (oninfo) {
        for (let [block, rc ] of blocks) {
          oninfo("LEAKING " + block + " @ " + rc);
        }
      }
      return blocks.size;
    }
  };
  return rtrace;
}
module.exports = rtrace;
