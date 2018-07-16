import { TraceJob } from "./trace-job";
import { TraceJobManager } from "./worker-job-manager";
/**
 * Created by Nidin on 4/1/2016.
 */
export class TraceWorker {
    static workerUrl: string = "./build/optimized.wasm";
    static module: WebAssembly.Module;

    static async initializeWorker(
        memory: WebAssembly.Memory,
        concurrency: number = navigator.hardwareConcurrency,
        onTraceComplete: Function,
    ): Promise<TraceWorker[]> {
        const imports = {
            env: {
                memory,
                abort: function() {},
            },
            index: {
                id: 1,
                onTraceComplete: onTraceComplete,
                log: console.log,
            },
        };
        const response = await fetch(TraceWorker.workerUrl);
        const buffer = await response.arrayBuffer();
        const { module, instance }: WebAssembly.ResultObject = await WebAssembly.instantiate(buffer, imports);
        TraceWorker.module = module;
        const workers: TraceWorker[] = [];
        workers.push(new TraceWorker("TraceWorker_0", 0, instance));
        if (concurrency > 1) {
            for (let i = 1; i < concurrency; i++) {
                const instance = await WebAssembly.instantiate(module, imports);
                workers.push(new TraceWorker("TraceWorker_" + i, i, instance));
            }
        }
        return workers;
    }

    onWorkerReady: (id: number) => void;
    onTraceComplete: (id: number) => void;
    onInitComplete: (id: number) => void;
    onThreadLocked: (id: number) => void;

    private createTraceJob: (
        id: number,
        offsetX: number,
        offsetY: number,
        width: number,
        height: number,
        blockIterations: number,
    ) => number;

    initialized: boolean;
    private _isTracing: boolean;
    get isTracing(): boolean {
        return this._isTracing;
    }

    constructor(name: string, public id: number, public instance: WebAssembly.Instance) {
        console.log("Worker_" + name + "_" + id, instance);
    }

    onMessageReceived(event): void {
        if (event.data == TraceJob.INITED) {
            this.initialized = true;
            this._isTracing = false;
            if (this.onInitComplete) {
                this.onInitComplete(this);
            }
        }
        if (event.data == TraceJob.TRACED) {
            this._isTracing = false;
            TraceJobManager.flags[3 + this.id] = 0;
            if (this.onTraceComplete) {
                this.onTraceComplete(this);
            }
        }
        if (event.data == TraceJob.LOCKED) {
            this._isTracing = false;
            TraceJobManager.flags[3 + this.id] = 3;
            if (this.onThreadLocked) {
                this.onThreadLocked(this);
            }
        }
    }

    init(param: any, transferable: any[], onInit: Function) {
        console.log("Initializing thread " + this.id);
        this.onInitComplete = onInit;
        param.command = TraceJob.INIT;
        param.id = this.id;
        this.send(param, transferable);
    }

    trace(param: any, onComplete: Function): void {
        if (TraceJobManager.flags[3 + this.id] == 2) {
            this._isTracing = false;
            TraceJobManager.flags[3 + this.id] = 3;
            if (this.onThreadLocked) {
                this.onThreadLocked(this);
            }
        } else {
            this._isTracing = true;
            TraceJobManager.flags[3 + this.id] = 1;
            this.onTraceComplete = onComplete;
            param.command = TraceJob.TRACE;
            this.send(param);
        }
    }

    send(data: any, buffers?): void {
        this.instance.postMessage(data, buffers);
    }

    terminate(): void {
        //this.onTraceComplete = null;
        //this.send(TraceJob.TERMINATE);
    }
}
