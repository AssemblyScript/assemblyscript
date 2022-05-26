import {
  A
} from "./other";
import {
  A,
  B,
  C
} from "./other";
import {
  A as B,
  C,
  D as E,
  F
} from "./other";
import * as A from "./other";
import "./other";
import {
  default as A
} from "./other";
// ERROR 1005: "'}' expected." in import.ts(18,9+1)
// ERROR 1003: "Identifier expected." in import.ts(20,10+2)
// ERROR 1005: "'as' expected." in import.ts(22,8+1)
// ERROR 100: "Not implemented: Mixed default and named imports" in import.ts(26,9+1)
// ERROR 1141: "String literal expected." in import.ts(28,12+4)
// ERROR 1005: "'from' expected." in import.ts(30,10+1)
