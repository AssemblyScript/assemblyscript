var JsDiff = require("diff");
var chalk = require("chalk");

module.exports = function diff(filename, expected, actual) {
  var diff = JsDiff.structuredPatch(filename, filename, expected, actual, "expected", "actual", { context: 5 });
  if (!diff.hunks.length)
    return null;

  var ret = [];
  ret.push('--- ' + diff.oldHeader);
  ret.push('+++ ' + diff.newHeader);

  for (var i = 0; i < diff.hunks.length; i++) {
    var hunk = diff.hunks[i];
    ret.push(
      '@@ -' + hunk.oldStart + ',' + hunk.oldLines
      + ' +' + hunk.newStart + ',' + hunk.newLines
      + ' @@'
    );
    ret.push.apply(ret, hunk.lines.map(line =>
      line.charAt(0) === "+"
        ? chalk.default.green(line)
        : line.charAt(0) === "-"
        ? line = chalk.default.red(line)
        : line
    ));
  }

  return ret.join('\n') + '\n';
};
