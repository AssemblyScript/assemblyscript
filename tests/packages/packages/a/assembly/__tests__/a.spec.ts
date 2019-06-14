import { A } from "..";

describe("A", () =>{
  it("should return A", () =>{
    expect<string>(A()).toStrictEqual("A");
  })
})