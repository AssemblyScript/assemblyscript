import { E_VALUEOUTOFRANGE } from "util/error";
import { now as Date_now } from "./bindings/Date";

// @ts-ignore: decorator
@inline const
  MILLIS_PER_DAY    = 1000 * 60 * 60 * 24,
  MILLIS_PER_HOUR   = 1000 * 60 * 60,
  MILLIS_PER_MINUTE = 1000 * 60,
  MILLIS_PER_SECOND = 1000;

// ymdFromEpochDays returns values via globals to avoid allocations
// @ts-ignore: decorator
@lazy let _month: i32, _day: i32;

export class Date {
  private year: i32 = 0;
  private month: i32 = 0;
  private day: i32 = 0;

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
    var
      hour: i32 = 0,
      min: i32 = 0,
      sec: i32 = 0,
      ms: i32 = 0;

    var dateString = dateTimeString;
    var posT = dateTimeString.indexOf("T");
    if (~posT) {
      // includes a time component
      let timeString: string;
      dateString = dateTimeString.substring(0, posT);
      timeString = dateTimeString.substring(posT + 1);
      // parse the HH-MM-SS component
      let timeParts = timeString.split(":");
      hour = I32.parseInt(timeParts[0]);
      min  = I32.parseInt(timeParts[1]);
      let secAndMs = timeParts[2];
      let posDot = secAndMs.indexOf(".");
      if (~posDot) {
        // includes milliseconds
        sec = I32.parseInt(secAndMs.substring(0, posDot));
        ms  = I32.parseInt(secAndMs.substring(posDot + 1));
      } else {
        sec = I32.parseInt(secAndMs);
      }
    }
    // parse the YYYY-MM-DD component
    var parts = dateString.split("-");

    var day   = I32.parseInt(parts[2]);
    var month = I32.parseInt(parts[1]);
    var year  = I32.parseInt(parts[0]);
    if (year < 100) year += 1900;

    return new Date(epochMillis(year, month, day, hour, min, sec, ms));
  }

  constructor(private epochMillis: i64) {
    this.year = ymdFromEpochDays(i32(epochMillis / MILLIS_PER_DAY));
    this.month = _month;
    this.day = _day;
  }

  getTime(): i64 {
    return this.epochMillis;
  }

  setTime(value: i64): i64 {
    this.epochMillis = value;
    this.year = ymdFromEpochDays(i32(value / MILLIS_PER_DAY));
    this.month = _month;
    this.day = _day;
    return value;
  }

  getUTCFullYear(): i32 {
    return this.year;
  }

  getUTCMonth(): i32 {
    return this.month - 1;
  }

  getUTCDate(): i32 {
    return this.day;
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

  setUTCMilliseconds(millis: i32): void {
    this.setTime(this.epochMillis + (millis - this.getUTCMilliseconds()));
  }

  setUTCSeconds(seconds: i32): void {
    if (seconds < 0 || seconds > 59) throw new RangeError(E_VALUEOUTOFRANGE);
    this.setTime(this.epochMillis + (seconds - this.getUTCSeconds()) * MILLIS_PER_SECOND);
  }

  setUTCMinutes(minutes: i32): void {
    if (minutes < 0 || minutes > 59) throw new RangeError(E_VALUEOUTOFRANGE);
    this.setTime(this.epochMillis + (minutes - this.getUTCMinutes()) * MILLIS_PER_MINUTE);
  }

  setUTCHours(hours: i32): void {
    if (hours < 0 || hours > 23) throw new RangeError(E_VALUEOUTOFRANGE);
    this.setTime(this.epochMillis + (hours - this.getUTCHours()) * MILLIS_PER_HOUR);
  }

  setUTCDate(day: i32): void {
    var year = this.year;
    var month = this.month;
    if (day < 1 || day > daysInMonth(year, month)) throw new RangeError(E_VALUEOUTOFRANGE);
    var ms = this.epochMillis % MILLIS_PER_DAY;
    this.setTime(i64(daysSinceEpoch(year, month, day)) * MILLIS_PER_DAY + ms);
  }

  setUTCMonth(month: i32): void {
    if (month < 1 || month > 12) throw new RangeError(E_VALUEOUTOFRANGE);
    var ms = this.epochMillis % MILLIS_PER_DAY;
    this.setTime(i64(daysSinceEpoch(this.year, month + 1, this.day)) * MILLIS_PER_DAY + ms);
  }

  setUTCFullYear(year: i32): void {
    var ms = this.epochMillis % MILLIS_PER_DAY;
    this.setTime(i64(daysSinceEpoch(year, this.month, this.day)) * MILLIS_PER_DAY + ms);
  }

  toISOString(): string {
    var yearStr = this.year.toString();
    if (this.epochMillis > 0 && yearStr.length > 4) {
      yearStr = "+" + yearStr.padStart(6, "0");
    }

    return (
      yearStr +
      "-" +
      this.month.toString().padStart(2, "0") +
      "-" +
      this.day.toString().padStart(2, "0") +
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

// @ts-ignore: decorator
@inline function floorDiv(a: i32, b: i32): i32 {
  return (a >= 0 ? a : a - b + 1) / b;
}

// http://howardhinnant.github.io/date_algorithms.html#is_leap
// @ts-ignore: decorator
@inline function isLeap(y: i32): bool {
  return y % 4 == 0 && (y % 100 != 0 || y % 400 == 0);
}

function daysInMonth(year: i32, month: i32): i32 {
  return month == 2
    ? 28 + i32(isLeap(year))
    : 30 + ((month + i32(month >= 8)) & 1);
}

// see: http://howardhinnant.github.io/date_algorithms.html#civil_from_days
function ymdFromEpochDays(z: i32): i32 {
  z += 719468;
  var era = floorDiv(z, 146097);
  var doe = z - era * 146097; // [0, 146096]
  var yoe = (doe - doe / 1460 + doe / 36524 - doe / 146096) / 365; // [0, 399]
  var year = yoe + era * 400;
  var doy = doe - (365 * yoe + yoe / 4 - yoe / 100); // [0, 365]
  var mo = (5 * doy + 2) / 153; // [0, 11]
  _day = doy - (153 * mo + 2) / 5 + 1; // [1, 31]
  mo += mo < 10 ? 3 : -9; // [1, 12]
  _month = mo;
  year += i32(mo <= 2);
  return year;
}

// http://howardhinnant.github.io/date_algorithms.html#days_from_civil
function daysSinceEpoch(y: i32, m: i32, d: i32): i32 {
  y -= i32(m <= 2);
  var era = floorDiv(y, 400);
  var yoe = y - era * 400; // [0, 399]
  var doy = (153 * (m + (m > 2 ? -3 : 9)) + 2) / 5 + d - 1; // [0, 365]
  var doe = yoe * 365 + yoe / 4 - yoe / 100 + doy; // [0, 146096]
  return era * 146097 + doe - 719468;
}
