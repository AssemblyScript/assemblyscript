import { argv, env } from 'process';
import { WASI } from 'wasi';

var wasi;

export function preInstantiate(imports, exports) {
  wasi = new WASI({ args: argv, env });
  imports["wasi_snapshot_preview1"] = wasi.wasiImport;
}

export function postInstantiate(instance) {
  const { test_date_now, test_performance_now } = instance.exports;

  wasi.start(instance);

  const expectedDateNow = Date.now();
  const actualDateNow = Number(test_date_now());

  let expectedPerfNow = performance.now();
  let actualPerfNow = test_performance_now();

  console.log();
  console.log("trace: Date.now (JS): " + expectedDateNow);
  console.log("trace: Date.now (AS): " + actualDateNow);
  console.log();
  console.log("trace: performance.now diff (JS): " + (performance.now() - expectedPerfNow));
  console.log("trace: performance.now diff (AS): " + (test_performance_now() - actualPerfNow));
  console.log();

  const diff = actualDateNow - expectedDateNow;
  if (diff < 0 || diff > 1) {
    throw Error("node.js Date.now and AS/Wasi Date.now results mismatch!");
  }
}
