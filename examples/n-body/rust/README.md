### Build

```bash
RUSTFLAGS='-C link-arg=-s' cargo +nightly build --release --target wasm32-unknown-unknown
```

***wasm-gc is deprecated. But the same strip effect we could get with RUSTFLAGS='-C link-arg=-s'***
