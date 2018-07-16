import { Cube } from "~assembly/shapes";
import { ByteArray } from "../../utils/bytearray";
import { Vector3Ref } from "../math";
import { IWrapper } from "../iwrapper";
import { wrap } from "../wrap";

export const CubeRef = wrap(
    class _CubeRef implements IWrapper {
        private internal: Cube = new Cube();
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
