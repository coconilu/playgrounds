import { hello } from "..";
import { describe, expect, test } from "vitest";

describe("utils test", () => {
  test("hello function", () => {
    expect(hello("bayes")).toBe("Hello bayes");
  });
});
