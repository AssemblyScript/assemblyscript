var fs = require("fs");

var messages = require(__dirname + "/../src/diagnosticMessages.json");

var header = `/**
 * @fileoverview Generated from diagnosticsMessages.json. Do not edit.
 * @license Apache-2.0
 */

/* tslint:disable:max-line-length */

`.replace(/\r\n/g, "\n");

var sb = [ header ];

function makeKey(text) {
  return text.replace(/[^\w]+/g, "_").replace(/_+$/, "");
}

sb.push("/** Enum of available diagnostic codes. */\n");
sb.push("export enum DiagnosticCode {\n");

var first = true;
Object.keys(messages).forEach(text => {
  var key = makeKey(text);
  if (first)
    first = false;
  else {
    sb.push(",\n");
  }
  sb.push("  " + key + " = " + messages[text]);
});

sb.push("\n}\n\n");
sb.push("/** Translates a diagnostic code to its respective string. */\n");
sb.push("export function diagnosticCodeToString(code: DiagnosticCode): string {\n  switch (code) {\n");

Object.keys(messages).forEach(text => {
  sb.push("    case " + messages[text] + ": return " + JSON.stringify(text) + ";\n");
});

sb.push("    default: return \"\";\n  }\n}\n");

fs.writeFileSync(__dirname + "/../src/diagnosticMessages.generated.ts", sb.join(""), { encoding: "utf8" });
