@global()
export class Error {

  name: string = "Error";
  message: string;
  stack: string = ""; // TODO

  constructor(message: string = "") {
    this.message = message;
  }
}

@global()
export class RangeError extends Error {
  name: string = "RangeError";
}
