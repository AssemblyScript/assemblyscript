import { Vector3 } from "~assembly/math/vector3";
import { IWrapper } from "../iwrapper";
import { ByteArray } from "../../utils/bytearray";
import { wrap } from "../wrap";

export const Vector3Ref = wrap(
    class _Vector3Ref implements IWrapper {
        private internal: Vector3 = new Vector3();
        static SIZE: number = 3;

        constructor(public ref: number) {}

        directWrite(memory: Float32Array, offset: number): number {
            memory[offset++] = this.internal.x;
            memory[offset++] = this.internal.y;
            memory[offset++] = this.internal.z;
            return offset;
        }

        directRead(memory: Float32Array, offset: number): number {
            this.internal.x = memory[offset++];
            this.internal.y = memory[offset++];
            this.internal.z = memory[offset++];
            return offset;
        }

        read(memory: ByteArray): number {
            this.internal.x = memory.readFloat();
            this.internal.y = memory.readFloat();
            this.internal.z = memory.readFloat();
            return memory.position;
        }

        write(memory: ByteArray): number {
            memory.writeFloat(this.internal.x);
            memory.writeFloat(this.internal.y);
            memory.writeFloat(this.internal.z);
            return memory.position;
        }

        static fromJson(v: { x: number; y: number; z: number }): Vector3 {
            if (v) {
                return new Vector3(v.x, v.y, v.z);
            } else {
                return null;
            }
        }

        setFromArray(array: Float32Array | Float64Array, offset: number = 0): void {
            this.internal.x = array[offset];
            this.internal.y = array[offset + 1];
            this.internal.z = array[offset + 2];
        }

        setFromJson(a: { x: number; y: number; z: number }): void {
            this.internal.x = a.x;
            this.internal.y = a.y;
            this.internal.z = a.z;
        }
    },
);
