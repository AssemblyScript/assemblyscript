var hasColor = typeof process !== "undefined" && process && process.stdout && !!process.stdout.isTTY
            || typeof env !== "undefined" && env && "TRAVIS" in env;

exports.RED = "\u001b[91m";
exports.red = function(text) {
  return hasColor ? exports.RED + text + exports.RESET : text;
};

exports.GREEN = "\u001b[92m";
exports.green = function(text) {
  return hasColor ? exports.GREEN + text + exports.RESET : text;
};

exports.YELLOW = "\u001b[93m";
exports.yellow = function(text) {
  return hasColor ? exports.YELLOW + text + exports.RESET : text;
};

exports.BLUE = "\u001b[94m";
exports.blue = function(text) {
  return hasColor ? exports.BLUE + text + exports.RESET : text;
};

exports.MAGENTA = "\u001b[95m";
exports.magenta = function(text) {
  return hasColor ? exports.MAGENTA + text + exports.RESET : text;
};

exports.CYAN = "\u001b[96m";
exports.cyan = function(text) {
  return hasColor ? exports.CYAN + text + exports.RESET : text;
};

exports.WHITE = "\u001b[97m";
exports.white = function(text) {
  return hasColor ? exports.WHITE + text + exports.RESET : text;
};

exports.RESET = "\u001b[0m";
