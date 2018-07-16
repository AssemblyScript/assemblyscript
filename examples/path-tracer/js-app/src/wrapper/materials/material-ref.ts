import { Material } from "~assembly/materials/material";
import { wrap } from "../wrap";
import { IWrapper } from "../iwrapper";
import { ByteArray } from "../../utils/bytearray";

export const MaterialRef = wrap(
    class _MaterialRef implements IWrapper {
        private instance: Material = new Material();

        constructor(public ref: number) {}

        read(memory: ByteArray): number {
            return memory.position;
        }

        write(memory: ByteArray): number {
            return memory.position;
        }
    },
);
