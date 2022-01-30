export declare namespace process {
  @external("env", "process.argv")
  export const argv: string[];
  @external("env", "process.exit")
  export function exit(code: i32): void;
}
