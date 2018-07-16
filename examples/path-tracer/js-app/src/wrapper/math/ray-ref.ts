import { Ray } from "~assembly/math/ray";
import { IWrapper } from "../iwrapper";
import { ByteArray } from "../../utils/bytearray";
import { wrap } from "../wrap";

export const RayRef = wrap(
    class _RayRef implements IWrapper {
        private internal: Ray = new Ray();

        constructor(public ref: number) {}

        read(memory: ByteArray): number {
            return memory.position;
        }

        write(memory: ByteArray): number {
            return memory.position;
        }
    },
);
