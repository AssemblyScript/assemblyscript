import {
  UTC as Date_UTC,
  now as Date_now
} from "./bindings/Date";

export class Date {

  @inline static UTC(
    year: i32,
    month: i32 = 0,
    day: i32 = 1,
    hour: i32 = 0,
    minute: i32 = 0,
    second: i32 = 0,
    millisecond: i64 = 0
  ): i64 {
    return <i64>Date_UTC(year, month, day, hour, minute, second, <f64>millisecond);
  }

  @inline static now(): i64 {
    return <i64>Date_now();
  }

  private value: i64;

  constructor(value: i64) {
    this.value = value;
  }

  getTime(): i64 {
    return this.value;
  }

  setTime(value: i64): i64 {
    this.value = value;
    return value;
  }
}
