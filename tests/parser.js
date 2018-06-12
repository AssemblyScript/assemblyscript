var fs = require("fs");
var colors = require("../cli/util/colors");
var glob = require("glob");
var diff = require("./util/diff");

require("ts-node").register({ project: require("path").join(__dirname, "..", "src", "tsconfig.json") });
require("../src/glue/js");

var Parser = require("../src/parser").Parser;
var ASTBuilder = require("../src/extra/ast").ASTBuilder;

var isCreate = process.argv[2] === "--create";
var filter = process.argv.length > 2 && !isCreate ? "*" + process.argv[2] + "*.ts" : "**.ts";
var failures = 0;

glob.sync(filter, { cwd: __dirname + "/parser" }).forEach(filename => {
  if (filename.charAt(0) == "_" || filename.endsWith(".fixture.ts"))
    return;

  console.log(colors.white("Testing parser/" + filename));

  var failed = false;
  var parser = new Parser();
  var sourceText = fs.readFileSync(__dirname + "/parser/" + filename, { encoding: "utf8" }).replace(/\r?\n/g, "\n");
  parser.parseFile(sourceText, filename, true);
  var serializedSourceText = ASTBuilder.build(parser.program.sources[0]);
  var actual = serializedSourceText + parser.diagnostics.map(diagnostic => "// " + diagnostic +"\n").join("");
  var fixture = filename + ".fixture.ts";

  if (isCreate) {
    fs.writeFileSync(__dirname + "/parser/" + fixture, actual, { encoding: "utf8" });
    console.log("Created\n");
  } else {
    var expected = fs.readFileSync(__dirname + "/parser/" + fixture, { encoding: "utf8" }).replace(/\r\n/g, "\n");
    var diffs = diff("parser/" + fixture, expected, actual);
    if (diffs !== null) {
      failed = true;
      console.log(diffs);
      console.log(colors.red("diff ERROR"));
    } else {
      console.log(colors.green("diff OK"));
    }
  }

  console.log();
  if (failed)
    ++failures;
});

if (failures) {
  process.exitCode = 1;
  console.log(colors.red("ERROR: ") + failures + " parser tests failed");
} else
  console.log("[ " + colors.white("SUCCESS") + " ]");
