/** @module util *//***/

const indentX1 = "  ";
const indentX2 = "    ";
const indentX4 = "        ";

/** Creates an indentation matching the number of specified levels. */
export function indent(sb: string[], level: i32): void {
  while (level >= 4) {
    sb.push(indentX4);
    level -= 4;
  }
  if (level >= 2) {
    sb.push(indentX2);
    level -= 2;
  }
  if (level) {
    sb.push(indentX1);
  }
}
