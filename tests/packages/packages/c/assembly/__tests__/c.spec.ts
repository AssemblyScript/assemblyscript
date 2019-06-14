import { C, ABC, BC } from "..";

describe("C", () => {
  it("should return C", () => {
    expect<string>(C()).toStrictEqual("C");
  });
});

describe("BC", () => {
  it("should return BC", () => {
    expect<string>(BC()).toStrictEqual("BC");
  });
});

describe("ABC", () => {
  it("should return ABC", () => {
    expect<string>(ABC()).toStrictEqual("ABC");
  });
});