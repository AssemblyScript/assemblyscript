function rtrace(onerror) {
  var blocks = new Map();
  var rtrace = {

    allocCount: 0,
    freeCount: 0,
    incrementCount: 0,
    decrementCount: 0,

    onalloc: function(block) {
      ++rtrace.allocCount;
      if (blocks.has(block)) {
        onerror(Error("duplicate alloc: " + block));
      } else {
        blocks.set(block, 0);
      }
    },

    onfree: function(block) {
      ++rtrace.freeCount;
      if (!blocks.has(block)) {
        onerror(Error("orphaned free: " + block));
      } else {
        blocks.delete(block);
      }
    },

    onincrement: function(block) {
      ++rtrace.incrementCount;
      if (!blocks.has(block)) {
        onerror(Error("orphaned increment: " + block));
      } else {
        let rc = blocks.get(block) + 1;
        blocks.set(block, rc);
      }
    },

    ondecrement: function(block) {
      ++rtrace.decrementCount;
      if (!blocks.has(block)) {
        onerror(Error("orphaned decrement: " + block));
      } else {
        let rc = blocks.get(block) - 1;
        if (rc < 0) {
          onerror(Error("invalid decrement: " + block));
        } else {
          blocks.set(block, rc);
        }
      }
    },

    get active() {
      return Boolean(rtrace.allocCount + rtrace.freeCount + rtrace.incrementCount + rtrace.decrementCount);
    },

    get leakCount() {
      return blocks.size;
    }
  };
  return rtrace;
}
module.exports = rtrace;
