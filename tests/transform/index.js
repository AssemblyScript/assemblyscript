import assert from "assert";
import { Transform } from "../../dist/transform.js";

var constructorCalled = false;
var afterParseCalled = false;
var afterInitializeCalled = false;
var afterCompileCalled = false;

console.log("Transform loaded");

export default class MyTransform extends Transform {
  constructor() {
    assert(!constructorCalled && !afterParseCalled && !afterInitializeCalled && !afterCompileCalled);
    constructorCalled = true;
    super();
    check(this);
    this.log("- constructor");
    assert(constructorCalled && !afterParseCalled && !afterInitializeCalled && !afterCompileCalled);
  }
  async afterParse() {
    check(this);
    assert(constructorCalled && !afterParseCalled && !afterInitializeCalled && !afterCompileCalled);
    afterParseCalled = true;
    this.log("- afterParse");
    await defer();
    await defer();
    await defer();
    this.log("  complete");
    assert(constructorCalled && afterParseCalled && !afterInitializeCalled && !afterCompileCalled);
  }
  afterInitialize() {
    check(this);
    assert(constructorCalled && afterParseCalled && !afterInitializeCalled && !afterCompileCalled);
    afterInitializeCalled = true;
    this.log("- afterInitialize");
    assert(constructorCalled && afterParseCalled && afterInitializeCalled && !afterCompileCalled);
    return defer();
  }
  afterCompile() {
    check(this);
    assert(constructorCalled && afterParseCalled && afterInitializeCalled && !afterCompileCalled);
    afterCompileCalled = true;
    this.log("- afterCompile");
  }
}

function check(transform) {
  assert(typeof transform.program === "object" && transform.program !== null);
  assert(typeof transform.baseDir === "string");
  assert(typeof transform.stdout === "object" && transform.stdout !== null);
  assert(typeof transform.stderr === "object" && transform.stderr !== null);
  assert(typeof transform.log === "function");
  assert(typeof transform.readFile === "function");
  assert(typeof transform.writeFile === "function");
  assert(typeof transform.listFiles === "function");
}

function defer() {
  return new Promise((resolve, reject) => {
    console.log("  defer");
    setTimeout(() => { console.log("  resolve"); resolve(); }, 100);
  });
}
