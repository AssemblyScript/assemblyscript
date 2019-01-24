import * as loader from "../../loader";
export declare let host: {
    debug: () => void;
    _log: (start: number, sizeof: number) => void;
    _log_str: (x: number) => void;
    _logi: {
        (message?: any, ...optionalParams: any[]): void;
        (message?: any, ...optionalParams: any[]): void;
    };
    _logf: {
        (message?: any, ...optionalParams: any[]): void;
        (message?: any, ...optionalParams: any[]): void;
    };
    bootstrap: (_instance: loader.ASInstance) => void;
};
