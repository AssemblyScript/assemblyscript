import * as loader from "../../loader";
export declare class Host {
    instance: loader.ASInstance;
    getImports<T>(): {
        host: {
            debug(): void;
            _log(start: number, sizeof: number): void;
            _log_str(x: number): void;
            _logi(x: number): void;
            _logf(x: number): void;
        };
        post: postFunc<T>[];
    };
}
declare type postFunc<T> = (instance: loader.ASInstance & T) => loader.ASInstance & T;
export {};
