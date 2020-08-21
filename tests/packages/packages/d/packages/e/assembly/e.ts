import { C } from "c";

export function E(): string {
  return "E";
}

export function EC(): string {
  return C() + E();
}
