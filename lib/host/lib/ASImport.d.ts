import { ASInstance, ASMemory, ASTable } from "../../loader";
export declare abstract class ASImport {
    instance: ASInstance;
    private _memory;
    readonly __imports__: object;
    readonly memory: ASMemory;
    readonly table: ASTable;
    __bindInstance(instance: ASInstance): void;
    __bindMemory(memory: ASMemory): void;
    static createImport(...args: any[]): any;
}
