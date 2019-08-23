// used to check dist/assemblyscript.d.ts
import * as as from "../..";

var parser: as.Parser = as.parseFile("", "empty");
parser.finish();
