// used to check `require`ing portable sources
// - src/glue/js/index.ts
// - src/index.ts
import * as as from "../../index";
var program: as.Program = as.newProgram(as.newOptions());
as.parse(program, "", "empty");
