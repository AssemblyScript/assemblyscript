// ERROR("SOF");

class FailureTest {
  field: i64;
  field: u32;

  static static_field: string;
  static static_field: i32;
}

const fail = new FailureTest();

ERROR("EOF");