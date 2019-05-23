// type | meaning
// -----|---------------
// b    | boolean
// i    | integer
// f    | float
// s    | string
// I    | integer array
// F    | float array
// S    | string array

/** Parses the specified command line arguments according to the given configuration. */
function parse(argv, config) {
  var options = {};
  var unknown = [];
  var arguments = [];
  var trailing = [];

  // make an alias map and initialize defaults
  var aliases = {};
  Object.keys(config).forEach(key => {
    if (key.startsWith(" ")) return;
    var option = config[key];
    if (option.alias != null) {
      if (typeof option.alias === "string") aliases[option.alias] = key;
      else if (Array.isArray(option.alias)) option.alias.forEach(alias => aliases[alias] = key);
    }
    if (option.default != null) options[key] = option.default;
  });

  // iterate over argv
  for (var i = 0, k = (argv = argv.slice()).length; i < k; ++i) {
    let arg = argv[i];
    if (arg == "--") { ++i; break; }
    let match = /^(?:(\-\w)(?:=(.*))?|(\-\-\w{2,})(?:=(.*))?)$/.exec(arg), option, key;
    if (match) {
      if (config[arg]) option = config[key = arg]; // exact
      else if (match[1] != null) { // alias
        option = config[key = aliases[match[1].substring(1)]];
        if (option && match[2] != null) argv[i--] = match[2];
      } else if (match[3] != null) { // full
        option = config[key = match[3].substring(2)];
        if (option && match[4] != null) argv[i--] = match[4];
      }
    } else {
      if (arg.charCodeAt(0) == 45) option = config[key = arg]; // exact
      else { arguments.push(arg); continue; } // argument
    }
    if (option) {
      if (option.type == null || option.type === "b") options[key] = true; // flag
      else {
        if (i + 1 < argv.length && argv[i + 1].charCodeAt(0) != 45) { // present
          switch (option.type) {
            case "i": options[key] = parseInt(argv[++i], 10); break;
            case "I": options[key] = (options[key] || []).concat(parseInt(argv[++i], 10)); break;
            case "f": options[key] = parseFloat(argv[++i]); break;
            case "F": options[key] = (options[key] || []).concat(parseFloat(argv[++i])); break;
            case "s": options[key] = String(argv[++i]); break;
            case "S": options[key] = (options[key] || []).concat(argv[++i].split(",")); break;
            default: unknown.push(arg); --i;
          }
        } else { // omitted
          switch (option.type) {
            case "i":
            case "f": options[key] = option.default || 0; break;
            case "s": options[key] = option.default || ""; break;
            case "I":
            case "F":
            case "S": options[key] = options.default || []; break;
            default: unknown.push(arg);
          }
        }
      }
      if (option.value) Object.keys(option.value).forEach(k => options[k] = option.value[k]);
    } else unknown.push(arg);
  }
  while (i < k) trailing.push(argv[i++]); // trailing

  return { options, unknown, arguments, trailing };
}

exports.parse = parse;

/** Generates the help text for the specified configuration. */
function help(config, options) {
  if (!options) options = {};
  var indent = options.indent || 2;
  var padding = options.padding || 24;
  var eol = options.eol || "\n";
  var sb = [];
  Object.keys(config).forEach(key => {
    var option = config[key];
    if (option.description == null) return;
    var text = "";
    while (text.length < indent) text += " ";
    text += "--" + key;
    if (option.alias) text += ", -" + option.alias;
    while (text.length < padding) text += " ";
    if (Array.isArray(option.description)) {
      sb.push(text + option.description[0] + option.description.slice(1).map(line => {
        for (let i = 0; i < padding; ++i) line = " " + line;
        return eol + line;
      }).join(""));
    } else sb.push(text + option.description);
  });
  return sb.join(eol);
}

exports.help = help;
