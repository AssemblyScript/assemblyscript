// used to check `require`ing portable sources
// - src/glue/js/index.ts
// - src/index.ts
import * as as from "../../index";
var parser: as.Parser = as.parseFile("", "empty");
parser.finish();
