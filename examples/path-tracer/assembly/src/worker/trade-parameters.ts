import { Camera } from "../objects/camera";
import { Scene } from "../objects/scene";

export class TraceParameters {
    iterations: i32 = 0;
    blockIterations: i32 = 0;
    camera: Camera;
    scene: Scene;
    width: i32;
    height: i32;
    cameraSamples: i32;
    hitSamples: i32;
    bounces: i32;
}
