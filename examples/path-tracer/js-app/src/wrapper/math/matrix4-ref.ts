import { Matrix4 } from "~assembly/math/matrix4";
import { IWrapper } from "../iwrapper";
import { ByteArray } from "../../utils/bytearray";
import { wrap } from "../wrap";

export const Matrix4Ref = wrap(
    class _Matrix4Ref implements IWrapper {
        private internal: Matrix4 = new Matrix4();

        constructor(public ref: number) {}

        directRead(memory: Float32Array, offset: number): number {
            var m: Matrix4 = this;
            m.x00 = memory[offset++];
            m.x01 = memory[offset++];
            m.x02 = memory[offset++];
            m.x03 = memory[offset++];
            m.x10 = memory[offset++];
            m.x11 = memory[offset++];
            m.x12 = memory[offset++];
            m.x13 = memory[offset++];
            m.x20 = memory[offset++];
            m.x21 = memory[offset++];
            m.x22 = memory[offset++];
            m.x23 = memory[offset++];
            m.x30 = memory[offset++];
            m.x31 = memory[offset++];
            m.x32 = memory[offset++];
            m.x33 = memory[offset++];
            return offset;
        }

        directWrite(memory: Float32Array, offset: number): number {
            var m: Matrix4 = this;
            memory[offset++] = m.x00;
            memory[offset++] = m.x01;
            memory[offset++] = m.x02;
            memory[offset++] = m.x03;
            memory[offset++] = m.x10;
            memory[offset++] = m.x11;
            memory[offset++] = m.x12;
            memory[offset++] = m.x13;
            memory[offset++] = m.x20;
            memory[offset++] = m.x21;
            memory[offset++] = m.x22;
            memory[offset++] = m.x23;
            memory[offset++] = m.x30;
            memory[offset++] = m.x31;
            memory[offset++] = m.x32;
            memory[offset++] = m.x33;
            return offset;
        }

        read(memory: ByteArray): number {
            this.internal.x00 = memory.readFloat();
            this.internal.x01 = memory.readFloat();
            this.internal.x02 = memory.readFloat();
            this.internal.x03 = memory.readFloat();
            this.internal.x10 = memory.readFloat();
            this.internal.x11 = memory.readFloat();
            this.internal.x12 = memory.readFloat();
            this.internal.x13 = memory.readFloat();
            this.internal.x20 = memory.readFloat();
            this.internal.x21 = memory.readFloat();
            this.internal.x22 = memory.readFloat();
            this.internal.x23 = memory.readFloat();
            this.internal.x30 = memory.readFloat();
            this.internal.x31 = memory.readFloat();
            this.internal.x32 = memory.readFloat();
            this.internal.x33 = memory.readFloat();
            return memory.position;
        }

        write(memory: ByteArray): number {
            memory.writeFloat(this.internal.x00);
            memory.writeFloat(this.internal.x01);
            memory.writeFloat(this.internal.x02);
            memory.writeFloat(this.internal.x03);
            memory.writeFloat(this.internal.x10);
            memory.writeFloat(this.internal.x11);
            memory.writeFloat(this.internal.x12);
            memory.writeFloat(this.internal.x13);
            memory.writeFloat(this.internal.x20);
            memory.writeFloat(this.internal.x21);
            memory.writeFloat(this.internal.x22);
            memory.writeFloat(this.internal.x23);
            memory.writeFloat(this.internal.x30);
            memory.writeFloat(this.internal.x31);
            memory.writeFloat(this.internal.x32);
            memory.writeFloat(this.internal.x33);
            return memory.position;
        }

        static fromJson(m: Matrix4): Matrix4 {
            return new Matrix4(
                m.x00,
                m.x01,
                m.x02,
                m.x03,
                m.x10,
                m.x11,
                m.x12,
                m.x13,
                m.x20,
                m.x21,
                m.x22,
                m.x23,
                m.x30,
                m.x31,
                m.x32,
                m.x33,
            );
        }

        static fromTHREEJS(e: number[]): Matrix4 {
            return new Matrix4(
                e[0],
                e[4],
                e[8],
                e[12],
                e[1],
                e[5],
                e[9],
                e[13],
                e[2],
                e[6],
                e[10],
                e[14],
                e[3],
                e[7],
                e[11],
                e[15],
            );
            /*return new Matrix4(
            e[0], e[1], e[2], e[3],
            e[4], e[5], e[6], e[7],
            e[8], e[9], e[10], e[11],
            e[12], e[13], e[14], e[15]
        )*/
        }
    },
);
