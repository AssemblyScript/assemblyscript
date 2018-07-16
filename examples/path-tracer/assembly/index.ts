import "allocator/arena";
import "./src/types";
import { Result } from "./src/const/result";
import { TraceJob } from "./src/worker/trace-job";
import { TraceParameters } from "./src/worker/trade-parameters";

declare function onTraceJobComplete(job: TraceJob): void;

export function loadScene(): Result {
    return Result.SCENE_LOADED_SUCCESSFULLY;
}

export function trace(job: TraceJob): void {
    onTraceJobComplete(job);
}

export function createTraceJob(id: i32, offsetX: i32, offsetY: i32, width: i32, height: i32): TraceJob {
    return new TraceJob(id, offsetX, offsetY, width, height);
}

export function createTraceParameters(): TraceParameters {
    return new TraceParameters();
}
