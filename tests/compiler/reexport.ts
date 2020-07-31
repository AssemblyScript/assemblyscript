export {
  add,
  sub as renamed_sub,
  renamed_mul,
  renamed_mul as rerenamed_mul,

  a,
  b as renamed_b,
  renamed_c,
  renamed_c as rerenamed_c
} from "./export";

export {
  Car
} from "./exports";

import {
  add as imported_add,
  renamed_mul as imported_sub,
  ns as imported_ns
} from "./export";

export {
  imported_add as renamed_add,
  imported_sub as rerenamed_sub
};

imported_add(1, 2) + imported_sub(3, 4);

export { ns as renamed_ns } from "./export";

import * as exportstar from "./exportstar";
export { exportstar };

import * as ExportsNamespace from "./exports";
export { ExportsNamespace };
assert(ExportsNamespace.add(2, 2) == 4);
assert(ExportsNamespace.renamed_mul(2, 2) == 4);
let car: ExportsNamespace.Car = new ExportsNamespace.Car();
assert(car.numDoors == 2);

export { default } from "./export-default";
export { default as renamed_default } from "./export-default";
