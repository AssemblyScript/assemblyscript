import { renamed_add_2, export2 } from "./reexport2";
import * as re from "./reexport2";

export function f(x: i32): i32 {
	return renamed_add_2(x, re.renamed_add_2(re.add(x, export2), re.export2));
}
