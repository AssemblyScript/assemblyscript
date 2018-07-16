import { Triangle } from "~assembly/shapes";
import { ByteArray } from "../../utils/bytearray";
import { Vector3Ref } from "../math";
import { IWrapper } from "../iwrapper";
import { wrap } from "../wrap";

export const TriangleRef = wrap(
    class _TriangleRef implements IWrapper {
        private internal: Triangle = new Triangle();
        static SIZE: number = Vector3Ref.SIZE * 2 + 2;

        constructor(public ref: number) {
        }

        read(memory: ByteArray): number {
            return memory.position;
        }

        write(memory: ByteArray): number {
            return memory.position;
        }
    },
);
