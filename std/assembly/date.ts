import { E_VALUEOUTOFRANGE } from "util/error";
import { UTC as Date_UTC, now as Date_now } from "./bindings/Date";

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
    return <i64>(
      Date_UTC(year, month, day, hour, minute, second, <f64>millisecond)
    );
  }

  @inline static now(): i64 {
    return <i64>Date_now();
  }

  private epochMillis: i64;

  constructor(epochMillis: i64) {
    this.epochMillis = epochMillis;
  }

  getTime(): i64 {
    return this.epochMillis;
  }

  setTime(value: i64): i64 {
    this.epochMillis = value;
    return value;
  }

  getUTCFullYear(): i32 {
    return ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY)).year;
  }

  getUTCMonth(): i32 {
    return ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY)).month - 1;
  }

  getUTCDate(): i32 {
    return ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY)).day;
  }

  getUTCHours(): i32 {
    return i32(this.epochMillis % MILLIS_PER_DAY) / MILLIS_PER_HOUR;
  }

  getUTCMinutes(): i32 {
    return i32(this.epochMillis % MILLIS_PER_HOUR) / MILLIS_PER_MINUTE;
  }

  getUTCSeconds(): i32 {
    return i32(this.epochMillis % MILLIS_PER_MINUTE) / MILLIS_PER_SECOND;
  }

  getUTCMilliseconds(): i32 {
    return i32(this.epochMillis % MILLIS_PER_SECOND);
  }

  setUTCMilliseconds(value: i32): void {
    this.epochMillis += value - this.getUTCMilliseconds();
  }

  setUTCSeconds(value: i32): void {
    throwIfNotInRange(value, 0, 59);
    this.epochMillis += (value - this.getUTCSeconds()) * MILLIS_PER_SECOND;
  }

  setUTCMinutes(value: i32): void {
    throwIfNotInRange(value, 0, 59);
    this.epochMillis += (value - this.getUTCMinutes()) * MILLIS_PER_MINUTE;
  }

  setUTCHours(value: i32): void {
    throwIfNotInRange(value, 0, 23);
    this.epochMillis += (value - this.getUTCHours()) * MILLIS_PER_HOUR;
  }

  setUTCDate(value: i32): void {
    const ymd = ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY));
    throwIfNotInRange(value, 1, lastDayOfMonth(ymd.year, ymd.month));
    const mills = this.epochMillis % MILLIS_PER_DAY;
    this.epochMillis =
      i64(daysSinceEpoch(ymd.year, ymd.month, value)) * MILLIS_PER_DAY + mills;
  }

  setUTCMonth(value: i32): void {
    throwIfNotInRange(value, 1, 12);
    const ymd = ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY));
    const mills = this.epochMillis % MILLIS_PER_DAY;
    this.epochMillis =
      i64(daysSinceEpoch(ymd.year, value + 1, ymd.day)) * MILLIS_PER_DAY +
      mills;
  }

  setUTCFullYear(value: i32): void {
    const ymd = ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY));
    const mills = this.epochMillis % MILLIS_PER_DAY;
    this.epochMillis =
      i64(daysSinceEpoch(value, ymd.month, ymd.day)) * MILLIS_PER_DAY + mills;
  }
}

function throwIfNotInRange(value: i32, lower: i32, upper: i32): void {
  if (value < lower || value > upper) throw new RangeError(E_VALUEOUTOFRANGE);
}

const MILLIS_PER_DAY = 1_000 * 60 * 60 * 24;
const MILLIS_PER_HOUR = 1_000 * 60 * 60;
const MILLIS_PER_MINUTE = 1_000 * 60;
const MILLIS_PER_SECOND = 1_000;

class YMD {
  year: i32;
  month: i32;
  day: i32;
}

// http://howardhinnant.github.io/date_algorithms.html#is_leap
function isLeap(y: i32): bool {
  return y % 4 == 0 && (y % 100 != 0 || y % 400 == 0);
}

// http://howardhinnant.github.io/date_algorithms.html#last_day_of_month_common_year
function lastDayOfMonthNonLeapYear(m: i32): i32 {
  const days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
  return days[m - 1];
}

// http://howardhinnant.github.io/date_algorithms.html#last_day_of_month
function lastDayOfMonth(y: i32, m: i32): i32 {
  return m != 2 || !isLeap(y) ? lastDayOfMonthNonLeapYear(m) : 29;
}

// see: http://howardhinnant.github.io/date_algorithms.html#civil_from_days
function ymdFromEpochDays(z: i32): YMD {
  z += 719468;
  const era = (z >= 0 ? z : z - 146096) / 146097;
  const doe = z - era * 146097; // [0, 146096]
  const yoe = (doe - doe / 1460 + doe / 36524 - doe / 146096) / 365; // [0, 399]
  const y = yoe + era * 400;
  const doy = doe - (365 * yoe + yoe / 4 - yoe / 100); // [0, 365]
  const mp = (5 * doy + 2) / 153; // [0, 11]
  const d = doy - (153 * mp + 2) / 5 + 1; // [1, 31]
  const m = mp + (mp < 10 ? 3 : -9); // [1, 12]
  return {
    year: y + (m <= 2 ? 1 : 0),
    month: m,
    day: d,
  };
}

// http://howardhinnant.github.io/date_algorithms.html#days_from_civil
function daysSinceEpoch(y: i32, m: i32, d: i32): i32 {
  y -= m <= 2 ? 1 : 0;
  const era = (y >= 0 ? y : y - 399) / 400;
  const yoe = y - era * 400; // [0, 399]
  const doy = (153 * (m + (m > 2 ? -3 : 9)) + 2) / 5 + d - 1; // [0, 365]
  const doe = yoe * 365 + yoe / 4 - yoe / 100 + doy; // [0, 146096]
  return era * 146097 + doe - 719468;
}
