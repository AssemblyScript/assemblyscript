import * as url from "url";
export declare const enum SourceType {
    Local = 0,
    URL = 1,
    Package = 2,
}
export declare function resolve(fromSourcePath: any, toSourcePath: any, args: any, sourcePathType?: SourceType): Entry[];
export declare class Entry {
    file: string;
    type: SourceType;
    root: string;
    url: url.UrlWithStringQuery;
    constructor(file?: string, type?: SourceType, packageFolder?: string);
    resolveSync(readFileSync: any, fetchSync: any): string;
    resolveAsync(readFile: any, fetch: any, callback: any): void;
}
