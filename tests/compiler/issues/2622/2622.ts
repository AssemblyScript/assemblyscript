class T {
  t_in_2622: i32 = 2622;
}
let a = t;

import {} from "./node_modules_a";

assert(a.t_in_node_module_a == 1);
