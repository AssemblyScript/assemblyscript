// Imported callbacks
export declare function _log<T>(x: T, size: usize): void;
export declare function _log_str(x: string): void;


export function log<T>(item: T, size:usize = 4, isStr: boolean = false):void {
  if (isStr) {
    _log_str(changetype<string>(item));
  } else {
    _log<T>(item, size);
  }
}

export function log_str(item: string): void {
  log<string>(item, sizeof<string>(), true);
}
