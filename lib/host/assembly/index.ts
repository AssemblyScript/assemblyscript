// The entry file of your WebAssembly module.

// Imported callbacks

import * as host from "./host"

export function log<T>(item: T):void {
  if (isReference<T>()) {
    if (isString<T>()) {
      host._log_str(changetype<string>(item));
    } else {
      host._log(changetype<i32>(item), offsetof<T>());
    }
  } else {
    if (isInteger<T>()) {
      host._logi(<i32>item);
    } else {
      host._logf(<f32>item);
    }
  }
}

export function log_str(item: string): void {
  log<string>(item);
}

export function err(message: string): void {
  log("Error: " + message);
  unreachable();
}
