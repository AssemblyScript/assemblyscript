import * as JsDiff from "diff";
import * as chalk from "chalk";

export function diff(filename: string, expected: string, actual: string): string | null {
  const diff = JsDiff.structuredPatch(filename, filename, expected, actual, "expected", "actual", { context: 2 });
  if (!diff.hunks.length)
    return null;

  const ret = [];
  ret.push('--- ' + diff.oldHeader);
  ret.push('+++ ' + diff.newHeader);

  for (let i = 0; i < diff.hunks.length; i++) {
    const hunk = diff.hunks[i];
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
}
