/// <reference path="../assembly.d.ts" />

declare class Error {
  message: string;
  constructor(message: string);
}

declare class RangeError extends Error {}
declare class ReferenceError extends Error {}
declare class TypeError extends Error {}
