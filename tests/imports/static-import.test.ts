import * as wasm from './module.wasm';

const res = wasm.add(1, 2);
if (res !== 3) {
  console.error('❌ WASM static import does not work as expected');
  process.exit(1);
}

console.log('✔️ Can statically import wasm module with experimental flag');
