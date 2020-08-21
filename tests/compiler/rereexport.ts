export {
  a,
  a as renamed_a,
  renamed_b,
  renamed_b as renamed_renamed_b,
  default,
  default as renamed_default
} from "./reexport";

import { exportstar } from "./reexport";
export { exportstar };

import * as ReexportsNamespace from "./reexport";
// Test our import * as namespace works with different types
assert(ReexportsNamespace.add(2, 2) == 4);
assert(ReexportsNamespace.rerenamed_mul(2, 2) == 4);
let car: ReexportsNamespace.Car = new ReexportsNamespace.Car();
assert(car.numDoors == 2);

// Test our imported namespace with the exported import * as namespace
assert(ReexportsNamespace.ExportsNamespace.add(2, 2) == 4);
assert(ReexportsNamespace.ExportsNamespace.renamed_mul(2, 2) == 4);
let exportsNamespaceCar: ReexportsNamespace.Car = new ReexportsNamespace.ExportsNamespace.Car();
assert(exportsNamespaceCar.numDoors == 2);


