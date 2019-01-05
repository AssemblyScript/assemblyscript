// Imported callbacks
export declare function _log<T>(x: T, size: usize): void;
export declare function _log_str(x: string): void;
export declare function _logi(x: i32): void;
export declare function _logf(x: f32): void;


export function log<T>(item: T):void {
  if (isReference<T>()) {
    if (isString<T>()) {
      _log_str(changetype<string>(item));
    } else {
      _log(changetype<i32>(item), offsetof<T>());
    }
  } else {
    if (isInteger<T>()) {
      _logi(<i32>item);
    } else {
      _logf(<f32>item);
    }
  }
}

export function log_str(item: string): void {
  log<string>(item);
}

export function err(message: string): void{
  log("Error: " + message);
  unreachable();
}
