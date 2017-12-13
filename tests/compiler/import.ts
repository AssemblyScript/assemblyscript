import { add, renamed_sub as sub, a, renamed_b as b, ns as renamed_ns } from "./export";

add(a, b) + sub(b, a);

renamed_ns.two();
