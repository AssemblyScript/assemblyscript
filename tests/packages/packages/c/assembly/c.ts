import { B, AB } from "b";

export function C(): string {
  return "C";
}

export function BC(): string {
  return B() + C();
}

export function ABC(): string {
  return AB() + C();
}
