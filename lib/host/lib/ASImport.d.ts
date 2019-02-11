import { ASInstance, ASMemory, ASTable } from "../../loader";
export declare abstract class ASImport {
    instance: ASInstance;
    readonly __imports__: object;
    readonly __memory__: ASMemory;
    readonly __table__: ASTable;
    _bindInstance(instance: ASInstance): void;
    static __createImportObject(...args: any[]): any;
}
