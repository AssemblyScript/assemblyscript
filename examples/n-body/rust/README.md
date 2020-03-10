### Build
```bash
npm run rsbuild
```
or
```bash
RUSTFLAGS='-C link-arg=-s' cargo +nightly build --release
```

***wasm-gc is deprecated. But the same strip effect we could get with RUSTFLAGS='-C link-arg=-s'***
