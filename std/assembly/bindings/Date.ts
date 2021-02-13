export declare function UTC(
  // NOTE: Using i32 below saves us a f64.convert_s instruction and moves the responsibility for
  // converting the value to the WASM/JS boundary.
  // It returns the number of milliseconds since January 1, 1970, 00:00:00 UTC.
  year: i32,
  month: i32,
  day: i32,
  hour: i32,
  minute: i32,
  second: i32,
  millisecond: f64
): f64;

export declare function now(): f64;

export declare function getTimezoneOffset(): i32;
