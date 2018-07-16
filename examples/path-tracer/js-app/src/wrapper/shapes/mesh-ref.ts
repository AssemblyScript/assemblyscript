import { Mesh } from "~assembly/shapes";
import { ByteArray } from "../../utils/bytearray";
import { Vector3Ref } from "../math";
import { IWrapper } from "../iwrapper";
import { wrap } from "../wrap";
import { BoxRef } from "./box-ref";

export const MeshRef = wrap(
    class _MeshRef implements IWrapper {
        private internal: Mesh = new Mesh();
        static SIZE: number = Vector3Ref.SIZE * 2 + 2;

        get memorySize(): number {
            if (this.internal.bbox && this.internal.triangles) {
                return BoxRef.SIZE + this.internal.triangles.length * TriangleRef.SIZE + 2; // 1 for length of triangles
            } else {
                throw "Box or Triangles are missing, box:" + this.bbox + ", triangles:" + this.triangles.length;
            }
        }

        constructor(public ref: number) {
        }

        read(memory: ByteArray): number {
            return memory.position;
        }

        write(memory: ByteArray): number {
            return memory.position;
        }

        static fromJson(mesh: Mesh): Mesh {
            return new Mesh(Box.fromJson(mesh.bbox), <Triangle[]>Triangle.fromJson(mesh.triangles));
        }
    },
);
