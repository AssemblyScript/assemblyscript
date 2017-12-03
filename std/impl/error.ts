/// <reference path="../../assembly.d.ts" />

@global()
class Error {

  message: string;

  constructor(message: string) {
    this.message = message;
  }
}

@global()
class RangeError extends Error {}

@global()
class ReferenceError extends Error {}

@global()
class TypeError extends Error {}
