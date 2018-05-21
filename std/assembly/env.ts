/** Environment abort function called where assertions evaluate to false / on throw. */
declare function abort(
  message?: string | null,
  fileName?: string | null,
  lineNumber?: u32,
  columnNumber?: u32
): void;
