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
// ERROR 1005: "'}' expected."
import {A from "./other";
// ERROR 1003: "Identifier expected."
import * as =A from "./other";
// ERROR 1005: "'as' expected."
import * A from "./other";

import A from "./other"
// ERROR 100: "Not implemented: Mixed default and named imports"
import A, B from "./other"

import {A} from B;

import {A} by "./other";
