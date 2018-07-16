import { HitInfo } from "~assembly/math/hit-info";
import { IWrapper } from "../iwrapper";
import { ByteArray } from "../../utils/bytearray";
import { Vector3Ref, RayRef, ColorRef } from ".";
import { ShapeRef } from "../shapes";
import { MaterialRef } from "../materials";
import { wrap } from "../wrap";

export const HitInfoRef = wrap(
    class _HitInfoRef implements IWrapper {
        private internal: HitInfo = new HitInfo();

        constructor(public ref: number) {}

        read(memory: ByteArray): number {
            return memory.position;
        }

        write(memory: ByteArray): number {
            return memory.position;
        }
    },
);
