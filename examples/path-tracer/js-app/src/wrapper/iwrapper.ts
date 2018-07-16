import { ByteArray } from "../utils/bytearray";

export interface IWrapper {
    read(memory: ByteArray): number;
    write(memory: ByteArray): number;
}
