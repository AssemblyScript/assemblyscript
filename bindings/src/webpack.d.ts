declare var DEV: boolean;
declare type FileWriter = (filename: string, contents: Uint8Array | string, baseDir: string) => void