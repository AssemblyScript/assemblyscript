// On the WASM side, 32-bit color values are modified in ABGR order (alpha, blue, green, red)
// because WASM is little endian. This results in RGBA in memory, which is exactly what the image
// buffer, composed of 8-bit components, expects on the JS side.
export declare const BGR_ALIVE: u32;
export declare const BGR_DEAD: u32;
export declare const BIT_ROT: u32;
