import * as Diff from "diff";
import * as colors from "./colors.js";

export default function diff(filename, expected, actual) {
  var diff = Diff.structuredPatch(filename, filename, expected, actual, "expected", "actual", { context: 5 });
  if (!diff.hunks.length) return null;

  var out = [];
  out.push('--- ' + diff.oldHeader);
  out.push('+++ ' + diff.newHeader);

  for (var i = 0; i < diff.hunks.length; i++) {
    var hunk = diff.hunks[i];
    out.push(
      '@@ -' + hunk.oldStart + ',' + hunk.oldLines
      + ' +' + hunk.newStart + ',' + hunk.newLines
      + ' @@'
    );
    out.push.apply(out, hunk.lines.map(line =>
      line.charAt(0) === "+"
        ? colors.stdout.green(line)
        : line.charAt(0) === "-"
        ? line = colors.stdout.red(line)
        : line
    ));
  }

  return out.join('\n') + '\n';
}
