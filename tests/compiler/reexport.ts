export { add, renamed_sub } from "./export";

import { add as imported_add, renamed_sub as imported_sub } from "./export";

export { imported_add as renamed_add, imported_sub as rerenamed_sub };

imported_add(1, 2) + imported_sub(3, 4);
