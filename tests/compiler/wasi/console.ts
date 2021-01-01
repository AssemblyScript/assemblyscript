import "wasi";

console.assert(false, "whoops");
console.assert(true, "phew");
console.log("hello log");
console.debug("hello debug");
console.info("hello info");
console.warn("hello warn");
console.error("hello error");
console.time("someLabel");
console.timeLog("someLabel");
console.timeEnd("someLabel");
console.timeLog("wrongLabel");
console.timeEnd("wrongLabel");
console.time("duplicateLabel");
console.time("duplicateLabel");
