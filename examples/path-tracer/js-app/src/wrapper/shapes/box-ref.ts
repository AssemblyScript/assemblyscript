import { Box } from "~assembly/shapes/box";
import { ByteArray } from "../../utils/bytearray";
import { Vector3Ref } from "../math";
import { IWrapper } from "../iwrapper";
import { wrap } from "../wrap";

export const BoxRef = wrap(
    class _BoxRef implements IWrapper {
        private internal: Box = new Box();
        static SIZE: number = Vector3Ref.SIZE * 2;
        memorySize: number = _BoxRef.SIZE;

        constructor(public ref: number) {
        }

        read(memory: ByteArray): number {
            // this.internal.min.read(memory);
            // this.internal.max.read(memory);
            return memory.position;
        }

        write(memory: ByteArray): number {
            // this.internal.min.write(memory);
            // this.internal.max.write(memory);
            return memory.position;
        }

        static fromJson(box: Box): Box {
            return new Box(Vector3Ref.fromJson(box.min), Vector3Ref.fromJson(box.max));
        }
    },
);
