var nbody = require("..");

var steps = process.argv.length > 2 ? parseInt(process.argv[2], 10) : 1000000;
console.log("Performing " + steps + " steps ...");

var start = process.hrtime();
var energy = nbody.bench(steps);
var time = process.hrtime(start);

console.log("Took " + (time[0] * 1e3 + time[1] / 1e6) + "ms (energy=" + energy + ")");
