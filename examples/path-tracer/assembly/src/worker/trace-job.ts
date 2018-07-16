import { TraceParameters } from "./trade-parameters";

export class TraceJob {
    finished: boolean = false;
    runCount: number = 0;
    parameters: TraceParameters;
    constructor(id: i32, public offsetX: i32, public offsetY: i32, public width: i32, public height: i32) {}
}
