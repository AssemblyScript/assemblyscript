/* tslint:disable:no-duplicate-imports */

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

import * as other from "./export";

other.add(other.a, other.b) +
other.sub(other.b, other.renamed_c) +
other.renamed_mul(other.renamed_c, other.a);

other.ns.two();
