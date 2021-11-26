import sourceMapSupport from "source-map-support";
sourceMapSupport.install();
export * from "./dist/assemblyscript.js";
import * as assemblyscript from "./dist/assemblyscript.js";
export default assemblyscript;
