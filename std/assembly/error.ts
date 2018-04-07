export class Error {

  message: string;
  stack: string = ""; // TODO

  constructor(message: string = "") {
    this.message = message;
  }
}

export class RangeError extends Error {}
export class TypeError extends Error {}
