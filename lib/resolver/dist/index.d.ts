/// <reference types="node" />
import * as url from "url";
export interface Args {
    lib: string[];
    path: string[];
}
export declare const enum SourceType {
    Local = 0,
    URL = 1,
    Package = 2
}
export declare function resolve(fromSourcePath: string, toSourcePath: string, args: Args): Address[];
declare type FileReader = (name: string, baseDir?: string) => string | null;
/** Base class for addresses. */
export declare abstract class Address {
    file: string;
    constructor(file: string);
    abstract resolveSync(readFile: FileReader): string | null;
}
/** Address to a file in the module or in a local library */
export declare class Module extends Address {
    root: string;
    constructor(file: string);
    resolveSync(readFile: FileReader): string | null;
}
export declare class Package extends Address {
    protected packageFolder: string;
    constructor(file: string, packageFolder?: string);
    resolveSync(readFile: FileReader): string | null;
}
export declare class URL extends Address {
    url: url.Url;
    constructor(file: string);
    resolveSync(readFile: FileReader): string | null;
}
export declare function resloveLibFolders(toSourcePath: string, args: Args): Address[];
export declare function resolveRelative(from: string, to: string): Address[];
export {};
