import { Transform } from "../../dist/transform.js";

export default class MyTransform extends Transform {
  constructor() {
    super();
    console.log("ESM transform loaded");
  }
}
