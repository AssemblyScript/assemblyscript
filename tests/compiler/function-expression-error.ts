// see: https://github.com/AssemblyScript/assemblyscript/issues/2036

const missingReturnType: u32 = (() => 42).index;

ERROR("EOF");
