export class Error {

  name: string = "Error";
  message: string;
  stack: string = ""; // TODO

  constructor(message: string = "") {
    this.message = message;
  }

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
