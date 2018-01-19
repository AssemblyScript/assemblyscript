import {
  add,
  sub as sub,
  renamed_mul as mul,
  a,
  b as b,
  renamed_c as c,
  ns as renamed_ns
} from "./export";

add(a, b) + sub(b, c) + mul(c, a);

renamed_ns.two();
