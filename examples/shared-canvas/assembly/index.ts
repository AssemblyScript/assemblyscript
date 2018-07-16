import "allocator/arena";
// import "allocator/tlsf";
type float = f64;

declare function logf(arg: float): void;
declare function logi(arg: i32): void;

var seed = reinterpret<u64>(JSMath.random());
NativeMath.seedRandom(seed);

function rand(): float {
    return <float>NativeMath.random();
}

class Color {
    constructor(public r: float = 1, public g: float = 2, public b: float = 3) {}
    set(r: float, g: float, b: float): void {
        this.r = r;
        this.g = g;
        this.b = b;
    }
    setRGB(r: i32, g: i32, b: i32): void {
        var _r = <float>r / 255;
        var _g = <float>g / 255;
        var _b = <float>b / 255;
        // logf(_r);
        // logf(_g);
        // logf(_b);
        this.r = _r;
        this.g = _g;
        this.b = _b;
    }
}

// class Color {
//     constructor(public r: float = 1, public g: float = 2, public b: float = 3) {}
//     set(r: float, g: float, b: float): void {
//         this.r = r;
//         this.g = g;
//         this.b = b;
//     }
//     setRGB(r: i32, g: i32, b: i32): void {
//         this.r = <float>(r / 255);
//         this.g = <float>(g / 255);
//         this.b = <float>(b / 255);
//     }
// }

class Params {
    constructor(public width: i32 = 0, public height: i32 = 0) {}
}

var pixelsRef: Array<Color>;
var cRef: Color;
var params = new Params();

export function createPixels(width: i32, height: i32, _r: float, _g: float, _b: float): Color[] {
    params.width = width;
    params.height = height;
    var pixels = new Array<Color>(width * height);
    var rgbArray = new Array<float>(width * height * 3);
    var c = new Color(_r, _g, _b);
    cRef = c;
    for (let y = 0; y < height; y++) {
        for (let x = 0; x < width; x++) {
            let pi = y * width + x;
            let i = y * (width * 3) + x * 3;
            // setColor(pixels[pi], r, g, b);

            rgbArray[i++] = 32;
            rgbArray[i++] = 32;
            rgbArray[i++] = 32;

            pixels[pi] = new Color();
        }
    }
    pixelsRef = pixels;
    return pixels;
}

export function getFrameWidth(): i32 {
    return params.width;
}

export function getArray(index: i32): Color {
    return pixelsRef[index];
}

export function getC(): Color {
    return cRef;
}

export function paint(pixels: Color[], offsetX: i32, offsetY: i32, width: i32, height: i32, color: i32): void {
    // color = <i32>(Math.random() * <float>(0xffffff));
    // var r = (color >> 16) & 255;
    // var g = (color >> 8) & 255;
    // var b = color & 255;
    var r = <float>(rand());
    var g = <float>(rand());
    var b = <float>(rand());
    for (let y = offsetY; y < offsetY + height; y++) {
        for (let x = offsetX; x < offsetX + width; x++) {
            let pi = y * params.width + x;
            // pixels[pi] = new Color(Math.random(), Math.random(), Math.random());
            // setColor(pixels[pi], r, g, b);\
            pixels[pi].set(r, g, b);
        }
    }
}

function setColor(color: Color, r: i32, g: i32, b: i32): void {
    // color.r = Math.random();
    // color.g = Math.random();
    // color.b = Math.random();
    // color.set(Math.random(), Math.random(), Math.random());
    color.setRGB(r, g, b);
}
