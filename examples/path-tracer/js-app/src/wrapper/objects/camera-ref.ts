import { Camera } from "~assembly/objects/camera";
import { Vector3 } from "~assembly/math";
import { wrap } from "../wrap";
import { IWrapper } from "../iwrapper";
import { ByteArray } from "../../utils/bytearray";

export const CameraRef = wrap(
    class _CameraRef implements IWrapper {
        private internal: Camera = new Camera();

        constructor(public ref: number) {}

        static fromJson(camera: Camera): Camera {
            return new Camera(
                Vector3.fromJson(camera.p),
                Vector3.fromJson(camera.u),
                Vector3.fromJson(camera.v),
                Vector3.fromJson(camera.w),
                camera.m,
                camera.focalDistance,
                camera.apertureRadius,
            );
        }
        read(memory: ByteArray): number {
            return memory.position;
        }

        write(memory: ByteArray): number {
            return memory.position;
        }
    },
);
