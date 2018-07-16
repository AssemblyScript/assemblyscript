import { Scene } from "~assembly/objects/Scene";
import { wrap } from "../wrap";
import { IWrapper } from "../iwrapper";
import { ByteArray } from "../../utils/bytearray";

export const SceneRef = wrap(
    class _SceneRef implements IWrapper {
        private internal: Scene = new Scene();

        constructor(public ref: number) {}

        read(memory: ByteArray): number {
            return memory.position;
        }

        write(memory: ByteArray): number {
            return memory.position;
        }
    },
);
