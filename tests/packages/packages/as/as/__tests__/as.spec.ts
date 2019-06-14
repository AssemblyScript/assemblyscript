import { AS } from "..";

describe("AS", () => {
  it("should add an S", () => {
    expect<string>(AS("A")).toStrictEqual("AS");
  });
});
