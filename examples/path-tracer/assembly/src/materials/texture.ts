import {Color} from "../../math/color";
import {Vector3} from "../../math/vector3";
import {ImageLoader} from "../../data/image-loader";
import {MathUtils} from "../../utils/MathUtils";
import {RGBA} from "../../math/color";
import {ByteArrayBase} from "../../../pointer/src/byte-array-base";
import {DirectMemory} from "../../../pointer/src/direct-memory";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class Texture extends ImageLoader {

    static list:Array<Texture> = [];
    static map:Map<string,number> = new Map<string, number>();

    static getTexture(url:string):Texture {
        var texture:Texture = Texture.list[Texture.map.get(url)];
        if (texture) {
            return texture;
        } else {
            return new Texture(url);
        }
    }

    static setTexture(url:string, texture:Texture) {
        texture.index = Texture.list.push(texture) - 1;
        Texture.map.set(url, texture.index);
        return texture;
    }

    static fromJson(texture:Texture):Texture {
        if (texture) {
            var _texture = new Texture();
            _texture.data = texture.data;
            _texture.pixels = texture.pixels;
            return _texture;
        } else {
            return null;
        }
    }

    private static ctx:CanvasRenderingContext2D;

    index:number;
    sourceFile:string;
    loaded:boolean;
    width:number;
    height:number;
    image:HTMLImageElement;
    data:Color[];
    pixels:number[]|Uint8ClampedArray;

    constructor(arg?:HTMLImageElement|string) {
        super();
        try {
            if (self["importScripts"]) {
                //i am in a worker
                return;
            }
        } catch (e) {
            //keep silent
        }
        if (!Texture.ctx) {
            var canvas = document.createElement("canvas");
            canvas.width = 4096;
            canvas.height = 4096;
            Texture.ctx = canvas.getContext("2d");
        }
        if (arg) {
            if (typeof arg === "string") {
                this.load(arg);
            } else if (arg instanceof HTMLImageElement) {
                this.setImage(arg);
            }
        }
    }

    read(memory:ByteArrayBase|DirectMemory):number {
        this.sourceFile = memory.readUTF();
        this.width = memory.readUnsignedInt();
        this.height = memory.readUnsignedInt();
        this.data = [];
        for (var i:number = 0; i < this.width * this.height; i++) {
            var color = new Color();
            color.read(memory);
            this.data.push(color);
        }
        Texture.setTexture(this.sourceFile, this);
        return memory.position;
    }

    write(memory:ByteArrayBase|DirectMemory):number {
        memory.writeUTF(this.sourceFile);
        memory.writeUnsignedInt(this.width);
        memory.writeUnsignedInt(this.height);

        for (var i:number = 0; i < this.width * this.height; i++) {
            this.data[i].write(memory);
        }

        return memory.position;
    }

    bilinearSample(u:number, v:number):Color {
        let w = this.width - 1;
        let h = this.height - 1;
        let Xx = MathUtils.Modf(u * w);
        let Yy = MathUtils.Modf(v * h);

        let X = Xx.int;
        let x = Xx.frac;

        let Y = Yy.int;
        let y = Yy.frac;

        let x0 = X;
        let y0 = Y;
        let x1 = x0 + 1;
        let y1 = y0 + 1;
        let i00:number = y0 * this.width + x0;
        let i01:number = y1 * this.width + x0;
        let i10:number = y0 * this.width + x1;
        let i11:number = y1 * this.width + x1;

        let c00 = this.data[i00 >= this.data.length?this.data.length-1:i00];
        let c01 = this.data[i01 >= this.data.length?this.data.length-1:i01];
        let c10 = this.data[i10 >= this.data.length?this.data.length-1:i10];
        let c11 = this.data[i11 >= this.data.length?this.data.length-1:i11];
        let c = new Color();
        c = c.add(c00.mulScalar((1 - x) * (1 - y)));
        c = c.add(c10.mulScalar(x * (1 - y)));
        c = c.add(c01.mulScalar((1 - x) * y));
        c = c.add(c11.mulScalar(x * y));

        if (c.isBlack()) {
            //console.log(c00, c01, c10, c11);
        }

        return c;
    }

    sample(u:number, v:number):Color {
        u = MathUtils.fract(MathUtils.fract(u) + 1);
        v = MathUtils.fract(MathUtils.fract(v) + 1);
        return this.bilinearSample(u, 1 - v);
    }

    normalSample(u:number, v:number):Vector3 {
        let c:Color = this.sample(u, v);
        return new Vector3(c.r * 2 - 1, c.g * 2 - 1, c.b * 2 - 1).normalize();
    }

    bumpSample(u:number, v:number):Vector3 {
        u = MathUtils.fract(MathUtils.fract(u) + 1);
        v = MathUtils.fract(MathUtils.fract(v) + 1);
        v = 1 - v;
        let x:number = Math.round(u * this.width);
        let y:number = Math.round(v * this.height);
        let x1:number = MathUtils.clampInt(x - 1, 0, this.width - 1);
        let x2:number = MathUtils.clampInt(x + 1, 0, this.width - 1);
        let y1:number = MathUtils.clampInt(y - 1, 0, this.height - 1);
        let y2:number = MathUtils.clampInt(y + 1, 0, this.height - 1);
        let cx:Color = this.data[y * this.width + x1].sub(this.data[y * this.width + x2]);
        let cy:Color = this.data[y1 * this.width + x].sub(this.data[y2 * this.width + x]);
        return new Vector3(cx.r, cy.r, 0);
    }

    load(url:string, onLoad?:Function, onProgress?:Function, onError?:Function):HTMLImageElement {
        this.sourceFile = url;
        let texture:Texture = Texture.getTexture(url);

        if (texture) {

            this.index = texture.index;
            this.data = texture.data;
            this.image = texture.image;
            this.pixels = texture.pixels;
            this.sourceFile = texture.sourceFile;

            if (onLoad) {
                onLoad(this.data);
            }

            return this.image;
        }
        return super.load(url, function (image) {
                this.setImage(image);
                if (onLoad) {
                    onLoad(this.pixels);
                }
            }.bind(this),
            onProgress, onError
        );
    }

    setImage(image) {
        this.sourceFile = image.currentSrc;
        Texture.setTexture(this.sourceFile, this);
        Texture.ctx.drawImage(image, 0, 0);
        let pixels:Uint8ClampedArray = Texture.ctx.getImageData(0, 0, image.width, image.height).data;

        this.setImageData(image.width, image.height, pixels);

        this.image = image;
    }

    setImageData(width:number, height:number, pixels:Uint8ClampedArray) {
        this.data = [];

        for (var y:number = 0; y < height; y++) {
            for (var x:number = 0; x < width; x++) {
                var pi:number = y * (width * 4) + (x * 4);
                var index:number = y * width + x;
                var rgba:RGBA = {
                    r: pixels[pi],
                    g: pixels[pi + 1],
                    b: pixels[pi + 2],
                    a: pixels[pi + 3],
                };
                this.data[index] = new Color(rgba.r / 255, rgba.g / 255, rgba.b / 255);
            }
        }

        this.width = width;
        this.height = height;
        this.pixels = pixels;
    }

    static write(memory:ByteArrayBase|DirectMemory):number {
        memory.writeUnsignedInt(Texture.list.length);
        Texture.list.forEach(function (texture:Texture) {
            texture.write(memory);
        });
        return memory.position;
    }

    static restore(memory:ByteArrayBase|DirectMemory):number {
        var numTextures:number = memory.readUnsignedInt();
        for (var i = 0; i < numTextures; i++) {
            var tex = new Texture();
            tex.read(memory);
            //tex.validate();
        }
        console.info(numTextures + " Textures restored");
        return memory.position;
    }
}
