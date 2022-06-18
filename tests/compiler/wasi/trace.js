var memory;
var failed;

export function preInstantiate(imports, exports) {
  imports["wasi_snapshot_preview1"] = {
    fd_write: function(fd, iov, iov_len, nptr) {
      if (fd !== 2) failed = "unexpected fd: " + fd;
      const messagePtr = new Uint32Array(memory.buffer)[ iov >>> 2     ];
      const messageLen = new Uint32Array(memory.buffer)[(iov >>> 2) + 1];
      const message = Array
        .from(new Uint8Array(memory.buffer, messagePtr, messageLen))
        .map(c => String.fromCharCode(c)).join("");
      process.stderr.write(message);
    },
    proc_exit: function(code) {
      console.log("exit: " + code);
    }
  };
}

export function postInstantiate(instance) {
  const exports = instance.exports;
  memory = exports.memory;
  if (failed) throw Error(failed);
}
