import { Transform } from "../../dist/transform.js";

export default class MyTransform extends Transform {
  constructor() {
    super();
    this.log("ESM transform loaded");
  }
  afterParse() {
    this.log("- afterParse");
  }
  afterInitialize() {
    this.log("- afterInitialize");
  }
  afterCompile() {
    this.log("- afterCompile");
  }
}
