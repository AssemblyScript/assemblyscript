import { D, ABCD, BCD, CD, ABCDS } from "..";

describe("D", () => {
  it("should return D", () => {
    expect<string>(D()).toStrictEqual("D");
  });
});

describe("CD", () => {
  it("should return CD", () => {
    expect<string>(CD()).toStrictEqual("CD");
  });
});

describe("BCD", () => {
  it("should return BCD", () => {
    expect<string>(BCD()).toStrictEqual("BCD");
  });
});

describe("ABCD", () => {
  it("should return ABC", () => {
    expect<string>(ABCD()).toStrictEqual("ABCD");
  });
});

describe("ABCDS", () => {
  it("should return D", () => {
    expect<string>(ABCDS()).toStrictEqual("ABCDS");
  });
});