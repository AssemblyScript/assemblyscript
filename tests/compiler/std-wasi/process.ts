import "wasi";

console.log("== arch ==");
console.log(process.arch);

console.log("== platform ==");
console.log(process.platform);

var argv = process.argv;
console.log("== argv ==");
for (let i = 0, k = argv.length; i < k; ++i) {
  console.log(argv[i]);
}

var env = process.env;
var envKeys = env.keys();
console.log("== env ==");
for (let i = 0, k = envKeys.length; i < k; ++i) {
  let key = envKeys[i];
  process.stdout.write("key: ");
  console.log(key);
  process.stdout.write("val: ");
  console.log(env.get(key));
}

console.log("== time ==");
console.log(process.time().toString());

console.log("== hrtime ==");
console.log(process.hrtime().toString());

console.log("== exit ==");
process.exit(42);
