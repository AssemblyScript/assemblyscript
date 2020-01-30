import { BLOCK_OVERHEAD } from "rt/common";

const staticString = "hello world";

assert(ASC_MEMORY_BASE == 1024);
assert(changetype<usize>(staticString) - BLOCK_OVERHEAD == 1024);
