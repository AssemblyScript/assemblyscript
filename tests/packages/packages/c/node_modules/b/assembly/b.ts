import { A } from "a";

export function B(): string {
  return "B";
}

export function AB(): string {
  return A() + B();
}
