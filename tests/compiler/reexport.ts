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
