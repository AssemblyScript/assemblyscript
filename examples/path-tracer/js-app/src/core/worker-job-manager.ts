import {TraceJob} from "./trace-job";
import {ThreadPool} from "./worker-pool";
import {DirectMemory} from "../../../pointer/src/direct-memory";
import {SharedScene} from "../../scene/shared-scene";
import {Thread} from "./trace-worker";
/**
 * Created by Nidin Vinayakan on 08-02-2016.
 */
export class TraceJobManager {

    referenceQueue: TraceJob[];
    queue: TraceJob[];
    deferredQueue: TraceJob[];
    iterations: number = 0;
    updatePixels: Function;
    updateIndicator: Function;

    static flags: Uint8Array;

    private width: number;
    private height: number;
    private pixelMemory: Uint8Array;
    private sampleMemory: Float32Array;
    private sceneMemory: DirectMemory;
    private flags: Uint8Array;
    private traceParameters: any;
    private threads: Thread[];
    private initCount: number = 0;
    public maxLoop: number = 1;
    private currentLoop: number = 0;
    private totalThreads: number = 0;
    private _initialized: boolean;
    private _finished: boolean;
    private _await: boolean;
    private deferredStart: boolean = false;
    private stopped: boolean;
    private lockCount: number = 0;

    get initialized(): boolean {
        return this._initialized;
    }

    get isAllLocked(): boolean {
        for (var i: number = 0; i < this.totalThreads; i++) {
            if (this.flags[3 + i] !== 3 && this.flags[3 + i] !== 0) {
                // console.log(this.flags);
                // console.log(this.threads);
                return false;
            }
        }
        return true;
    }

    get finished(): boolean {
        return this._finished;
    }

    get pixels(): Uint8Array {
        return this.pixelMemory;
    }

    constructor() {
        this.queue = [];
        this.deferredQueue = [];
        this.referenceQueue = [];
    }

    configure(param, scene: SharedScene) {

        console.log("configure");
        this.width = param.width;
        this.height = param.height;

        console.log("Checkpoint #1");
        try {
            this.sceneMemory = scene.getMemory();
        } catch (e) {
            console.log(e);
        }
        console.log("Checkpoint #2");
        this.flags = new Uint8Array(this.sceneMemory.data.buffer, 0, 3 + ThreadPool.maxThreads);
        TraceJobManager.flags = this.flags;
        this.pixelMemory = new Uint8Array(new SharedArrayBuffer(this.width * this.height * 3));
        this.sampleMemory = new Float32Array(new SharedArrayBuffer(4 * this.width * this.height * 3));
        console.log("Checkpoint #3");


        this.traceParameters = {
            pixelBuffer: this.pixelMemory.buffer,
            sampleBuffer: this.sampleMemory.buffer,
            sceneBuffer: this.sceneMemory.buffer,
            camera: param.camera,
            cameraSamples: param.cameraSamples,
            hitSamples: param.hitSamples,
            bounces: param.bounces,
            full_width: this.width,
            full_height: this.height
        };
    }

    add(job: TraceJob) {
        this.queue.push(job);
        this.referenceQueue.push(job);
    }

    init(callback?): void {
        console.log("Initializing threads...");
        console.time("init");
        this.threads = ThreadPool.getThreads();
        console.log("Checkpoint #4");
        this.totalThreads = this.threads.length;
        this.lockCount = this.threads.length;
        this.initNext(callback);
        console.log("Checkpoint #5");
    }

    private initNext(callback) {
        var self = this;
        if (this.initCount == this.totalThreads) {
            this._initialized = true;
            console.timeEnd("init");
            if (callback) {
                callback();
            } else {
                this.start();
            }
            return;
        }

        var thread: Thread = this.threads[this.initCount++];
        thread.onThreadLocked = this.onThreadLocked.bind(this);
        thread.init(this.traceParameters, [
            this.traceParameters.pixelBuffer,
            this.traceParameters.sampleBuffer,
            this.traceParameters.sceneBuffer
        ], function () {
            console.log("thread:" + self.initCount + " inited");
            self.initNext.bind(self)(callback);
        });
    }

    private onThreadLocked() {
        this.lockCount++;
        if (this.isAllLocked && this.deferredStart) {
            this.deferredStart = false;
            this.clear();
            this.restart();
        }
        console.log("lockCount:" + this.lockCount);
    }

    private lockAllThreads() {
        for (var i: number = 0; i < this.threads.length; i++) {
            var thread = this.threads[i];
            if (thread.isTracing) {
                this.flags[3 + i] = 2;
            } else {
                this.flags[3 + i] = 0;
            }
        }
    }

    stop() {
        if (this.flags) {
            this.queue = null;
            this.deferredQueue = null;
            this.deferredStart = false;
            this.lockAllThreads();
            this.stopped = true;
            this.lockCount = 0;
            this._await = true;
            var job: TraceJob;

            for (var i = 0; i < this.referenceQueue.length; i++) {
                job = this.referenceQueue[i];
                job.runCount = 0;
            }
        }
    }

    clear() {
        for (var y: number = 0; y < this.height; y++) {
            for (var x: number = 0; x < this.width; x++) {
                var si: number = (y * (this.width * 3)) + (x * 3);

                this.pixelMemory[si] = 0;
                this.pixelMemory[si + 1] = 0;
                this.pixelMemory[si + 2] = 0;

                this.sampleMemory[si] = 0;
                this.sampleMemory[si + 1] = 0;
                this.sampleMemory[si + 2] = 0;
            }
        }

        if (this.updatePixels) {
            this.updatePixels({
                xoffset: 0,
                yoffset: 0,
                width: this.width,
                height: this.height,
                pixels: this.pixelMemory
            });
        }
    }

    private resetTimerId;

    restart() {
        if (!this.stopped) {
            this.stop();
        }
        if (this.flags && this.isAllThreadsFree) {
            this.queue = this.referenceQueue.concat();
            this.deferredQueue = [];
            this._await = false;
            this.deferredStart = false;
            clearTimeout(this.resetTimerId);
            this.resetTimerId = setTimeout(this.start.bind(this), 100);
        } else {
            /*for (var i:number = 0; i < this.threads.length; i++) {
             if (this.flags[3 + i] === 1 || this.flags[3 + i] === 2) {
             return false;
             }
             }*/
            this.deferredStart = true;

        }
    }

    get isAllThreadsFree() {

        var thread: Thread;
        for (var i: number = 0; i < this.threads.length; i++) {
            thread = this.threads[i];
            if (thread.isTracing) {
                if (this.flags[3 + i] === 1 || this.flags[3 + i] === 2) {
                    return false;
                }
            }

        }
        return true;
    }

    start() {
        if (this.currentLoop >= this.maxLoop || (this.queue.length == 0 && this.deferredQueue.length === 0)) {
            console.log("Rendering finished");
            return;
        }
        console.log("queue:" + this.queue.length);
        console.time('trace::start');
        var self = this;
        if (this._initialized) {

            this.stopped = false;
            var thread: Thread;
            var job: TraceJob;

            for (var i: number = 0; i < this.threads.length; i++) {
                thread = this.threads[i];
                if (self.queue && self.deferredQueue && self.queue.length > 0) {
                    job = self.queue.shift();
                    self.deferredQueue.push(job);
                    job.start(thread, function (_job, _thread) {
                        if (!self._await) {
                            self.processQueue.call(self, _job, _thread);
                        }
                    });
                } else {
                    break;
                }
            }
        }
    }

    private processQueue(job: TraceJob, thread: Thread) {
        if (this.updatePixels) {
            this.updatePixels(job.param);
        }
        if (this._finished) {
            return;
        }
        var self = this;
        if (this.queue.length > 0) {

            var job = self.queue.shift();
            self.deferredQueue.push(job);

            if (this.updateIndicator) {
                this.updateIndicator(job.param);
            }

            job.start(thread, function (_job, _thread) {
                if (!self._await) {
                    self.processQueue.call(self, _job, _thread);
                }
            });

        } else {
            if (this.isAllThreadsFree) {
                this._finished = true;
                console.timeEnd('trace::start');
                this.initDeferredQueue();
            }
        }
    }

    private initDeferredQueue() {

        if (this.currentLoop >= this.maxLoop || (this.queue.length == 0 && this.deferredQueue.length === 0)) {
            console.log("Rendering finished");
            return;
        }

        this.currentLoop++;
        this._finished = false;
        var self = this;
        self.deferredQueue.sort(function (a, b) {
            return b.time - a.time;
        });
        //console.log("Trace time");
        //console.log("   min:" + self.deferredQueue[self.deferredQueue.length - 1].time);
        //console.log("   max:" + self.deferredQueue[0].time);

        /*if (this.currentLoop > 5) {
         self.queue = self.deferredQueue;
         self.queue = self.deferredQueue.filter(function (a) {
         return a.lifeCount > a.runCount;
         });
         } else {
         self.queue = self.deferredQueue;
         }*/
        self.queue = self.deferredQueue;

        self.deferredQueue = [];

        console.time('trace::start');
        this.start();
    }
}
