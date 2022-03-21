import {
  clock_time_get,
  clockid,
  errnoToString,
  tempbuf
} from "bindings/wasi";

import {
  performance as performance_binding
} from "bindings/dom";

export namespace performance {
  export function now(): f64 {
    if (isDefined(ASC_WASI)) {
      let err = clock_time_get(clockid.MONOTONIC, 1000, tempbuf); // TODO: more precision?
      if (err) throw new Error(errnoToString(err));
      return <f64>load<u64>(tempbuf) / 1000000;
    } else {
      return performance_binding.now();
    }
  }
}
