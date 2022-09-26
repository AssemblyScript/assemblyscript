// see https://github.com/microsoft/TypeScript/blob/main/scripts/regenerate-unicode-identifier-parts.js

const MAX_UNICODE_CODEPOINT = 0x10FFFF;
const isStart = c => /[\p{ID_Start}\u{2118}\u{212E}\u{309B}\u{309C}]/u.test(c); // Other_ID_Start explicitly included for back compat - see http://www.unicode.org/reports/tr31/#Introduction
const isPart = c => /[\p{ID_Continue}\u{00B7}\u{0387}\u{19DA}\u{1369}\u{136A}\u{136B}\u{136C}\u{136D}\u{136E}\u{136F}\u{1370}\u{1371}]/u.test(c) || isStart(c); // Likewise for Other_ID_Continue
const parts = [];
let partsActive = false;
let startsActive = false;
const starts = [];

// Skip 0-9 (48..57), A-Z (65..90), a-z (97..122) - checked otherwise
for (let cp = 123; cp <= MAX_UNICODE_CODEPOINT; cp++) {
  if (isStart(String.fromCodePoint(cp)) !== startsActive) {
    starts.push(cp - +startsActive);
    startsActive = !startsActive;
  }
  if (isPart(String.fromCodePoint(cp)) !== partsActive) {
    parts.push(cp - +partsActive);
    partsActive = !partsActive;
  }
}
if (startsActive) starts.push(MAX_UNICODE_CODEPOINT);
if (partsActive) parts.push(MAX_UNICODE_CODEPOINT);

function tablify(cps) {
  let sb = ["/*\n| from  ...  to | from  ...  to | from  ...  to | from  ...  to |*/"];
  let i = 0;
  while (i < cps.length) {
    if (!(i % 8)) sb.push("\n  ");
    sb.push(`${cps[i++].toString().padEnd(6)}, `);
  }
  return sb.join("") + "\n";
}

console.log(`/** Unicode ${process.versions.unicode} ID_Start/Other_ID_Start ranges */`);
console.log(`const unicodeIdentifierStart: u32[] = [${tablify(starts)}];\n`);
console.log(`/** Unicode ${process.versions.unicode} ID_Continue/Other_ID_Continue + ID_Start/Other_ID_Start ranges*/`);
console.log(`const unicodeIdentifierPart: u32[] = [${tablify(parts)}];`);
