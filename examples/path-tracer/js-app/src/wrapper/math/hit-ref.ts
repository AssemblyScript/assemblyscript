import { Hit } from "~assembly/math/hit";
import { IWrapper } from "../iwrapper";
import { ByteArray } from "../../utils/bytearray";
import { ShapeRef } from "../shapes";
import { HitInfoRef } from ".";
import { wrap } from "../wrap";

export const HitRef = wrap(
    class _HitRef implements IWrapper {
        private internal: Hit = new Hit;

        constructor(public ref: number) {}

        read(memory: ByteArray): number {
            return memory.position;
        }

        write(memory: ByteArray): number {
            return memory.position;
        }
    },
);
