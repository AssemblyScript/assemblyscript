export { add, renamed_sub, a as renamed_a, renamed_b as rerenamed_b } from "./export";

import { add as imported_add, renamed_sub as imported_sub, ns as imported_ns } from "./export";

export { imported_add as renamed_add, imported_sub as rerenamed_sub };

imported_add(1, 2) + imported_sub(3, 4);

export { ns as renamed_ns } from "./export";
