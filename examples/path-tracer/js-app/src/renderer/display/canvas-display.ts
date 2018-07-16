import { Color } from "../../../render-core/src/engine/math/color";
/**
 * Created by Nidin Vinayakan on 11-01-2016.
 */
export abstract class CanvasDisplay {
    canvas: HTMLCanvasElement;
    ctx: CanvasRenderingContext2D;
    imageData: ImageData;
    data: Uint8ClampedArray | number[];

    constructor(public i_width: number = 640, public i_height: number = 480, public container?: HTMLElement) {
        this.canvas = <HTMLCanvasElement>document.createElement("canvas");
        this.canvas.id = "giImageOutput";

        this.canvas.style.backgroundColor = "#3C3C3C";
        this.canvas.style.position = "absolute";

        this.canvas.width = this.i_width;
        this.canvas.height = this.i_height;

        if (container) {
            this.attachDom(container);
        }
    }

    attachDom(dom: HTMLElement) {
        this.container = dom;

        this.container.appendChild(this.canvas);

        this.ctx = this.canvas.getContext("2d");

        this.imageData = this.ctx.getImageData(0, 0, this.i_width, this.i_height);
        this.data = this.imageData.data;

        this.onWindowResize();
    }

    onWindowResize() {
        /*if (this.container) {
         this.setResolution(this.container.offsetWidth, this.container.offsetHeight);
         }*/
    }

    setResolution(width: number, height: number): void {
        this.i_width = width;
        this.i_height = height;
        this.canvas.width = width;
        this.canvas.height = height;
        this.imageData = this.ctx.getImageData(0, 0, this.i_width, this.i_height);
        this.data = this.imageData.data;
    }

    updatePixels(pixels: Uint8ClampedArray): void {
        for (var y = 0; y < this.i_height; y++) {
            for (var x = 0; x < this.i_width; x++) {
                var i: number = y * (this.i_width * 4) + x * 4;
                var pi: number = y * (this.i_width * 3) + x * 3;
                this.data[i] = pixels[pi];
                this.data[i + 1] = pixels[pi + 1];
                this.data[i + 2] = pixels[pi + 2];
                this.data[i + 3] = 255;
            }
        }
        this.ctx.putImageData(this.imageData, 0, 0);
    }

    updatePixelsRect(rect, pixels: Uint8Array): void {
        for (var y = rect.yoffset; y < rect.yoffset + rect.height; y++) {
            for (var x = rect.xoffset; x < rect.xoffset + rect.width; x++) {
                var i: number = y * (this.i_width * 4) + x * 4;
                var pi: number = y * (this.i_width * 3) + x * 3;
                this.data[i] = pixels[pi];
                this.data[i + 1] = pixels[pi + 1];
                this.data[i + 2] = pixels[pi + 2];
                this.data[i + 3] = 255;
            }
        }
        this.ctx.putImageData(this.imageData, 0, 0);
    }

    updateIndicator(rect): void {
        var color: Color = Color.random();

        //top-left
        this.fillRect({ x: rect.xoffset, y: rect.yoffset, width: 4, height: 1 }, color);
        this.fillRect({ x: rect.xoffset, y: rect.yoffset + 1, width: 1, height: 3 }, color);

        //top-right
        this.fillRect({ x: rect.xoffset + rect.width - 4, y: rect.yoffset, width: 4, height: 1 }, color);
        this.fillRect({ x: rect.xoffset + rect.width - 1, y: rect.yoffset + 1, width: 1, height: 3 }, color);

        //bottom-left
        this.fillRect({ x: rect.xoffset, y: rect.yoffset + rect.height - 4, width: 1, height: 4 }, color);
        this.fillRect({ x: rect.xoffset + 1, y: rect.yoffset + rect.height - 1, width: 3, height: 1 }, color);

        //bottom-right
        this.fillRect(
            { x: rect.xoffset + rect.width - 4, y: rect.yoffset + rect.height - 1, width: 4, height: 1 },
            color,
        );
        this.fillRect(
            { x: rect.xoffset + rect.width - 1, y: rect.yoffset + rect.height - 4, width: 1, height: 3 },
            color,
        );

        this.ctx.putImageData(this.imageData, 0, 0);
    }

    fillRect(rect:Rectangle, color: Color): void {
        for (var y = rect.y; y < rect.y + rect.height; y++) {
            for (var x = rect.x; x < rect.x + rect.width; x++) {
                var i: number = y * (this.i_width * 4) + x * 4;
                this.data[i] = color.r * 255;
                this.data[i + 1] = color.g * 255;
                this.data[i + 2] = color.b * 255;
                this.data[i + 3] = 255;
            }
        }
        this.ctx.putImageData(this.imageData, 0, 0);
    }
}
