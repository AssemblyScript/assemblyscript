var memory;
var failed;

exports.preInstantiate = function(imports, exports) {
  imports["wasi_snapshot_preview1"] = {
    fd_write: function(fd, iov, iov_len, nptr) {
      if (fd != 2) failed = "unexpected fd: " + fd;
      const messagePtr = new Uint32Array(memory.buffer)[ iov >>> 2     ];
      const messageLen = new Uint32Array(memory.buffer)[(iov >>> 2) + 1];
      const message = Array.from(new Uint8Array(memory.buffer, messagePtr, messageLen)).map(c => String.fromCharCode(c)).join("");
      if (message != "abort: the message in wasi/abort.ts(4:3)\n") failed = "unexpected message: " + message;
    },
    proc_exit: function(code) {
      if (code != 255) failed = "unexpected exit code: " + code;
    }
  };
  if (failed) throw Error(failed);
};

exports.postInstantiate = function(instance) {
  const exports = instance.exports;
  memory = exports.memory;
  var thrown = false;
  try {
    exports.test();
  } catch (e) {
    thrown = true;
  }
  if (!thrown) failed = "unexpected missing throw";
  if (failed) throw Error(failed);
};
