import { B, AB } from "../b";


describe("B", () => {
  it("should return B", () => {
    expect<string>(B()).toStrictEqual("B");
  });
});

describe("AB", () => {
  it("should return AB", () => {
    expect<string>(AB()).toStrictEqual("AB");
  });
});