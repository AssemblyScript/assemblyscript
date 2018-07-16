import { Color } from "~assembly/math/color";
import { IWrapper } from "../iwrapper";
import { ByteArray } from "../../utils/bytearray";
import { wrap } from "../wrap";

export const ColorRef = wrap(
    class _ColorRef implements IWrapper {
        private internal: Color;
        constructor(public ref: number) {}

        read(memory: ByteArray): number {
            return memory.position;
        }

        write(memory: ByteArray): number {
            return memory.position;
        }

        directWrite(mem: Float32Array, offset: number): number {
            mem[offset++] = this.internal.r;
            mem[offset++] = this.internal.g;
            mem[offset++] = this.internal.b;
            return offset;
        }

        directRead(mem: Float32Array, offset: number): number {
            this.internal.r = mem[offset++];
            this.internal.g = mem[offset++];
            this.internal.b = mem[offset++];
            return offset;
        }
    },
);
