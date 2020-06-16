/**
 * @fileoverview Command line options utility.
 * @license Apache-2.0
 */

const colorsUtil = require("./colors");

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
function parse(argv, config, populateDefaults = true) {
  var options = {};
  var unknown = [];
  var args = [];
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
    let match = /^(?:(-\w)(?:=(.*))?|(--\w{2,})(?:=(.*))?)$/.exec(arg), option, key;
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
      else { args.push(arg); continue; } // argument
    }
    if (option) {
      if (option.value) {
        // alias setting fixed values
        Object.keys(option.value).forEach(k => options[k] = option.value[k]);
      } else if (option.type == null || option.type === "b") {
        // boolean flag not taking a value
        options[key] = true;
      } else {
        if (i + 1 < argv.length && argv[i + 1].charCodeAt(0) != 45) {
          // non-boolean with given value
          switch (option.type) {
            case "i": options[key] = parseInt(argv[++i], 10); break;
            case "I": options[key] = (options[key] || []).concat(parseInt(argv[++i], 10)); break;
            case "f": options[key] = parseFloat(argv[++i]); break;
            case "F": options[key] = (options[key] || []).concat(parseFloat(argv[++i])); break;
            case "s": options[key] = String(argv[++i]); break;
            case "S": options[key] = (options[key] || []).concat(argv[++i].split(",")); break;
            default: unknown.push(arg); --i;
          }
        } else {
          // non-boolean with omitted value
          switch (option.type) {
            case "i":
            case "f": options[key] = option.default || 0; break;
            case "s": options[key] = option.default || ""; break;
            case "I":
            case "F":
            case "S": options[key] = option.default || []; break;
            default: unknown.push(arg);
          }
        }
      }
    } else unknown.push(arg);
  }
  while (i < k) trailing.push(argv[i++]); // trailing
  if (populateDefaults) addDefaults(config, options);

  return { options, unknown, arguments: args, trailing };
}

exports.parse = parse;

/** Generates the help text for the specified configuration. */
function help(config, options) {
  if (!options) options = {};
  var indent = options.indent || 2;
  var padding = options.padding || 24;
  var eol = options.eol || "\n";
  var sbCategories = {};
  var sbOther = [];
  Object.keys(config).forEach(key => {
    var option = config[key];
    if (option.description == null) return;
    var text = "";
    while (text.length < indent) text += " ";
    text += "--" + key;
    if (option.alias) text += ", -" + option.alias;
    while (text.length < padding) text += " ";
    var sb;
    if (!options.noCategories && option.category) {
      if (!(sb = sbCategories[option.category])) {
        sbCategories[option.category] = sb = [];
      }
    } else {
      sb = sbOther;
    }
    if (Array.isArray(option.description)) {
      sb.push(text + option.description[0] + option.description.slice(1).map(line => {
        for (let i = 0; i < padding; ++i) line = " " + line;
        return eol + line;
      }).join(""));
    } else sb.push(text + option.description);
  });
  var sb = [];
  var hasCategories = false;
  Object.keys(sbCategories).forEach(category => {
    hasCategories = true;
    sb.push(eol + " " + colorsUtil.gray(category) + eol);
    sb.push(sbCategories[category].join(eol));
  });
  if (hasCategories) {
    sb.push(eol + " " + colorsUtil.gray("Other") + eol);
  }
  sb.push(sbOther.join(eol));
  return sb.join(eol);
}

exports.help = help;

/** Merges two sets of options into one, preferring the current over the parent set. */
function merge(config, currentOptions, parentOptions) {
  const mergedOptions = {};
  for (const [key, { mutuallyExclusive }] of Object.entries(config)) {
    if (currentOptions[key] == null) {
      if (parentOptions[key] != null) {
        // only parent value present
        if (Array.isArray(parentOptions[key])) {
          if (mutuallyExclusive) {
            const exclude = currentOptions[mutuallyExclusive];
            if (exclude) {
              mergedOptions[key] = parentOptions[key].filter(value => !exclude.includes(value));
            } else {
              mergedOptions[key] = parentOptions[key].slice();
            }
          } else {
            mergedOptions[key] = parentOptions[key].slice();
          }
        } else {
          mergedOptions[key] = parentOptions[key];
        }
      }
    } else if (parentOptions[key] == null) {
      // only current value present
      if (Array.isArray(currentOptions[key])) {
        mergedOptions[key] = currentOptions[key].slice();
      } else {
        mergedOptions[key] = currentOptions[key];
      }
    } else {
      // both current and parent values present
      if (Array.isArray(currentOptions[key])) {
        if (mutuallyExclusive) {
          const exclude = currentOptions[mutuallyExclusive];
          if (exclude) {
            mergedOptions[key] = [
              ...currentOptions[key],
              ...parentOptions[key].filter(value => !currentOptions[key].includes(value) && !exclude.includes(value))
            ];
          } else {
            mergedOptions[key] = [
              ...currentOptions[key],
              ...parentOptions[key].filter(value => !currentOptions[key].includes(value)) // dedup
            ];
          }
        } else {
          mergedOptions[key] = [
            ...currentOptions[key],
            ...parentOptions[key].filter(value => !currentOptions[key].includes(value)) // dedup
          ];
        }
      } else {
        mergedOptions[key] = currentOptions[key];
      }
    }
  }
  return mergedOptions;
}

exports.merge = merge;

/** Populates default values on a parsed options result. */
function addDefaults(config, options) {
  for (const [key, { default: defaultValue }] of Object.entries(config)) {
    if (options[key] == null && defaultValue != null) {
      options[key] = defaultValue;
    }
  }
  return options;
}

exports.addDefaults = addDefaults;
