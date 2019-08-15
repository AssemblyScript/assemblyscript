
export const preamble = `import { storage, near, base64 } from "near-runtime-ts";
import { JSONEncoder } from "assemblyscript-json";
import { JSONDecoder, ThrowingJSONHandler, DecoderState } from "assemblyscript-json";
// Runtime functions
@external("env", "read_register")
declare function read_register(register_id: u64, ptr: u64): void;
@external("env", "register_len")
declare function register_len(register_id: u64): u64;

@external("env", "input")
declare function input(register_id: u64): void;
@external("env", "value_return")
declare function value_return(value_len: u64, value_ptr: u64): void;
@external("env", "panic")
declare function panic(): void;
`;
