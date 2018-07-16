import { TransformedShape } from "~assembly/shapes/transformed-shape";
import { IWrapper } from "../iwrapper";
import { wrap } from "../wrap";
import { ShapeRef } from "./shape-ref";
import { ByteArray } from "../../utils/bytearray";
import { Matrix4Ref } from "../math";

export const TransformedShapeRef = wrap(
    class _TransformedShapeRef implements IWrapper {
        private internal: TransformedShape = new TransformedShape();

        constructor(public ref: number) {}

        read(memory: ByteArray): number {
            // this.internal.matrix.read(memory);
            // this.internal.inverse = this.internal.matrix.inverse();
            // var container: ShapeRef[] = [];
            // restoreShape(memory, container);
            // this.internal.shape = container[0];
            // container = null;
            return memory.position;
        }

        write(memory: ByteArray): number {
            // memory.writeByte(this.internal.type);
            // this.internal.matrix.write(memory);
            // this.internal.shape.write(memory);
            return memory.position;
        }

        /* static fromJson(transformedShape: TransformedShape): TransformedShape {
            return new TransformedShape(
                ShapefromJson(transformedShape.shape),
                Matrix4Ref.fromJson(transformedShape.matrix),
                Matrix4Ref.fromJson(transformedShape.inverse),
            );
        } */
    },
);
