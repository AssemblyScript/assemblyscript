import { TraceJobManager } from "./worker-job-manager";
import { SceneRef, CameraRef } from "./interface";

export class Renderer {
    traceManager: TraceJobManager;
    bucketSize: number = 64 / 2;

    static interval: number = 0;

    get iterations(): number {
        return this.traceManager.iterations;
    }

    constructor() {
        this.traceManager = new TraceJobManager();
    }

    updateCameraSamples(newValue: number): void {
        this.traceManager.queue.forEach(function(job) {
            job.extra.cameraSamples = newValue;
        });
    }

    updateHitSamples(newValue: number): void {
        this.traceManager.queue.forEach(function(job) {
            job.extra.hitSamples = newValue;
        });
    }

    updateCamera(newValue: any): void {
        this.traceManager.stop();
        this.traceManager.clear();
        this.traceManager.referenceQueue.forEach(function(job) {
            job.extra.camera = newValue;
        });
        this.traceManager.restart();
    }

    render(
        scene: SceneRef,
        camera: CameraRef,
        width: number,
        height: number,
        cameraSamples: number,
        hitSamples: number,
        bounces: number,
        iterations: number = 1,
        blockIterations: number = 1,
        onUpdate: Function,
        updateIndicator: Function,
        onInit?: Function,
    ): Uint8Array {
        if (!this.traceManager) {
            this.traceManager = new TraceJobManager();
        }
        this.traceManager.maxLoop = iterations - 1;
        this.traceManager.configure(
            {
                camera: camera,
                width: width,
                height: height,
                cameraSamples: cameraSamples,
                hitSamples: hitSamples,
                bounces: bounces,
            },
            scene,
        );

        var col = width / this.bucketSize;
        var row = height / this.bucketSize;

        for (var j = 0; j < row; j++) {
            for (var i = 0; i < col; i++) {
                this.traceManager.add(
                    new TraceJob({
                        id: j + "_" + i,
                        blockIterations: blockIterations,
                        width: this.bucketSize,
                        height: this.bucketSize,
                        xoffset: i * this.bucketSize,
                        yoffset: j * this.bucketSize,
                    }),
                );
            }
        }

        this.traceManager.updatePixels = onUpdate;
        this.traceManager.updateIndicator = updateIndicator;
        this.traceManager.init(onInit);
        return this.traceManager.pixels;
    }
}
