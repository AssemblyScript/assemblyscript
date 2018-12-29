// Imported callbacks
export declare function _log<T>(x: T, size: usize): void;

export function log<T>(item: T) {
  _log(item, sizeof<T>());
}
