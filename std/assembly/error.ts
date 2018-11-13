export class Error {

  name: string  = "Error";
  stack: string = ""; // TODO

  constructor(
    public message: string = ""
  ) {}

  toString(): string {
    var message = this.message;
    return message.length
      ? this.name + ": " + message
      : this.name;
  }
}

export class RangeError extends Error {
  constructor(message: string = "") {
    super(message);
    this.name = "RangeError";
  }
}

export class TypeError extends Error {
  constructor(message: string = "") {
    super(message);
    this.name = "TypeError";
  }
}

export class SyntaxError extends Error {
  constructor(message: string = "") {
    super(message);
    this.name = "SyntaxError";
  }
}
