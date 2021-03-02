(async () => {
  const wasm = await import('./module.wasm');

  const res = wasm.add(1, 2);
  if (res !== 3) {
    console.error('❌ WASM dynamic import does not work as expected');
    process.exit(1);
  }
  console.log('✔️ Can dynamically import wasm module with experimental flag');
})();
