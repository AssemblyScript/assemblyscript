import {
  performance as performance_binding
} from "bindings/dom";

export namespace performance {
  export function now(): f64 {
    return performance_binding.now();
  }
}
