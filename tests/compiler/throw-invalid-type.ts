// Test that throwing non-Error types results in a compile error

// This should fail - throwing a string is not allowed
throw "string error";

ERROR("EOF");
