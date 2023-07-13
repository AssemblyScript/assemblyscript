import {
  add,
  sub as sub,
  renamed_mul as mul,
  "\\Not\"A;Brand" as div,
  a,
  b as b,
  renamed_c as c,
  ns as renamed_ns
} from "./export";

add(a, b) + sub(b, c) + mul(c, a) + div(a, c);

renamed_ns.two();

import * as other from "./export";

other.add(other.a, other.b) +
other.sub(other.b, other.renamed_c) +
other.renamed_mul(other.renamed_c, other.a);

other.ns.two();

import theDefault from "./export";

theDefault.two();

import theOtherDefault from "./export-default";

theOtherDefault();
