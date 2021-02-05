import "wasi";

// asserts
console.assert(false, "whoops");
console.assert(true, "phew");

// prefixes
console.log("hello log");
console.debug("hello debug");
console.info("hello info");
console.warn("hello warn");
console.error("hello error");

// timers
console.time("someLabel");
console.timeLog("someLabel");
console.timeEnd("someLabel");
console.timeLog("wrongLabel");
console.timeEnd("wrongLabel");
console.time("duplicateLabel");
console.time("duplicateLabel");

// fast writes
console.log("1");
console.log("12");
console.log("123");
console.log("1234");
