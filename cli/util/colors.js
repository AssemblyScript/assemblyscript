var proc = typeof process !== "undefined" && process || {};
var isCI = proc.env && "CI" in proc.env; // doesn't work when bundled because 'process' is a mock

function from(stream, base) {
  var colors = base || {};
  colors.supported = (stream && !!stream.isTTY) || isCI;
  colors.gray = text => colors.supported ? exports.GRAY + text + exports.RESET : text;
  colors.red = text => colors.supported ? exports.RED + text + exports.RESET : text;
  colors.green = text => colors.supported ? exports.GREEN + text + exports.RESET : text;
  colors.yellow = text => colors.supported ? exports.YELLOW + text + exports.RESET : text;
  colors.blue = text => colors.supported ? exports.BLUE + text + exports.RESET : text;
  colors.magenta = text => colors.supported ? exports.MAGENTA + text + exports.RESET : text;
  colors.cyan = text => colors.supported ? exports.CYAN + text + exports.RESET : text;
  colors.white = text => colors.supported ? exports.WHITE + text + exports.RESET : text;
  return colors;
}

exports.stdout = from(proc.stdout, exports);
exports.stderr = from(proc.stderr);
exports.from = from;

exports.GRAY = "\u001b[90m";
exports.RED = "\u001b[91m";
exports.GREEN = "\u001b[92m";
exports.YELLOW = "\u001b[93m";
exports.BLUE = "\u001b[94m";
exports.MAGENTA = "\u001b[95m";
exports.CYAN = "\u001b[96m";
exports.WHITE = "\u001b[97m";
exports.RESET = "\u001b[0m";
