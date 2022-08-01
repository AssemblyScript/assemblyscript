import { argv, env } from 'process';
import { WASI } from 'wasi';

var wasi;

export function preInstantiate(imports, exports) {
  wasi = new WASI({ args: argv, env });
  imports["wasi_snapshot_preview1"] = wasi.wasiImport;
}

export function postInstantiate(instance) {
  const exports = instance.exports;

  wasi.start(instance);

  let expectedNow = Date.now();
  let actualNow = Number(exports.test());

  console.log();
  console.log("trace: Date.now (JS): " + expectedNow);
  console.log("trace: Date.now (AS): " + actualNow);
  console.log();

  if (actualNow - expectedNow > 1) {
    throw Error("node.js Date.now and AS/Wasi Date.now results mismatch!");
  }
}
