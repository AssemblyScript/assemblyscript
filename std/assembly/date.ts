import { E_VALUEOUTOFRANGE } from "util/error";
import { now as Date_now } from "./bindings/Date";

export class Date {
  @inline static UTC(
    year: i32,
    month: i32 = 0,
    day: i32 = 1,
    hour: i32 = 0,
    minute: i32 = 0,
    second: i32 = 0,
    millisecond: i32 = 0
  ): i64 {
    return epochMillis(year, month + 1, day, hour, minute, second, millisecond);
  }

  @inline static now(): i64 {
    return <i64>Date_now();
  }

  static fromString(dateTimeString: string): Date {
    let hour: i32 = 0,
        minute: i32 = 0,
        second: i32 = 0,
        millisecond: i32 = 0;
    let dateString: string;

    if (dateTimeString.includes("T")) {
      // includes a time component
      const parts = dateTimeString.split("T");
      const timeString = parts[1];
      // parse the HH-MM-SS component
      const timeParts = timeString.split(":");
      hour = I32.parseInt(timeParts[0]);
      minute = I32.parseInt(timeParts[1]);
      if (timeParts[2].includes(".")) {
        // includes milliseconds
        const secondParts = timeParts[2].split(".");
        second = I32.parseInt(secondParts[0]);
        millisecond = I32.parseInt(secondParts[1]);
      } else {
        second = I32.parseInt(timeParts[2]);
      }
      dateString = parts[0];
    } else {
      dateString = dateTimeString;
    }
    // parse the YYYY-MM-DD component
    const parts = dateString.split("-");
    const year = I32.parseInt(
      parts[0].length == 2 ? "19" + parts[0] : parts[0]
    );
    const month = I32.parseInt(parts[1]);
    const day = I32.parseInt(parts[2]);

    return new Date(
      epochMillis(year, month, day, hour, minute, second, millisecond)
    );
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
    ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY));
    return year;
  }

  getUTCMonth(): i32 {
    ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY));
    return month - 1;
  }

  getUTCDate(): i32 {
    ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY));
    return day;
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
    ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY));
    throwIfNotInRange(value, 1, daysInMonth(year, month));
    const mills = this.epochMillis % MILLIS_PER_DAY;
    this.epochMillis =
      i64(daysSinceEpoch(year, month, value)) * MILLIS_PER_DAY + mills;
  }

  setUTCMonth(value: i32): void {
    throwIfNotInRange(value, 1, 12);
    ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY));
    const mills = this.epochMillis % MILLIS_PER_DAY;
    this.epochMillis =
      i64(daysSinceEpoch(year, value + 1, day)) * MILLIS_PER_DAY + mills;
  }

  setUTCFullYear(value: i32): void {
    ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY));
    const mills = this.epochMillis % MILLIS_PER_DAY;
    this.epochMillis =
      i64(daysSinceEpoch(value, month, day)) * MILLIS_PER_DAY + mills;
  }

  toISOString(): string {
    ymdFromEpochDays(i32(this.epochMillis / MILLIS_PER_DAY));

    let yearStr = year.toString();
    if (yearStr.length > 4) {
      yearStr = "+" + yearStr.padStart(6, "0");
    }

    return (
      yearStr +
      "-" +
      month.toString().padStart(2, "0") +
      "-" +
      day.toString().padStart(2, "0") +
      "T" +
      this.getUTCHours().toString().padStart(2, "0") +
      ":" +
      this.getUTCMinutes().toString().padStart(2, "0") +
      ":" +
      this.getUTCSeconds().toString().padStart(2, "0") +
      "." +
      this.getUTCMilliseconds().toString().padStart(3, "0") +
      "Z"
    );
  }
}

function epochMillis(
  year: i32,
  month: i32,
  day: i32,
  hour: i32,
  minute: i32,
  second: i32,
  milliseconds: i32
): i64 {
  return (
    i64(daysSinceEpoch(year, month, day)) * MILLIS_PER_DAY +
    hour * MILLIS_PER_HOUR +
    minute * MILLIS_PER_MINUTE +
    second * MILLIS_PER_SECOND +
    milliseconds
  );
}

function throwIfNotInRange(value: i32, lower: i32, upper: i32): void {
  if (value < lower || value > upper) throw new RangeError(E_VALUEOUTOFRANGE);
}

const MILLIS_PER_DAY = 1_000 * 60 * 60 * 24;
const MILLIS_PER_HOUR = 1_000 * 60 * 60;
const MILLIS_PER_MINUTE = 1_000 * 60;
const MILLIS_PER_SECOND = 1_000;

// http://howardhinnant.github.io/date_algorithms.html#is_leap
function isLeap(y: i32): bool {
  return y % 4 == 0 && (y % 100 != 0 || y % 400 == 0);
}

function daysInMonth(year: i32, month: i32): i32 {
  return month == 2
    ? 28 + i32(isLeap(year))
    : 30 + ((month + i32(month >= 8)) & 1);
}

// ymdFromEpochDays returns values via globals to avoid allocations
let year: i32, month: i32, day: i32;
// see: http://howardhinnant.github.io/date_algorithms.html#civil_from_days
function ymdFromEpochDays(z: i32): void {
  z += 719468;
  const era = (z >= 0 ? z : z - 146096) / 146097;
  const doe = z - era * 146097; // [0, 146096]
  const yoe = (doe - doe / 1460 + doe / 36524 - doe / 146096) / 365; // [0, 399]
  year = yoe + era * 400;
  const doy = doe - (365 * yoe + yoe / 4 - yoe / 100); // [0, 365]
  const mp = (5 * doy + 2) / 153; // [0, 11]
  day = doy - (153 * mp + 2) / 5 + 1; // [1, 31]
  month = mp + (mp < 10 ? 3 : -9); // [1, 12]
  year += (month <= 2 ? 1 : 0);
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
