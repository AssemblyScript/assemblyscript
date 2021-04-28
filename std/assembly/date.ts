import { E_INVALIDDATE } from "util/error";
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
    if (year >= 0 && year <= 99) year += 1900;
    var ms = epochMillis(year, month + 1, day, hour, minute, second, millisecond);
    if (invalidDate(ms)) throw new RangeError(E_INVALIDDATE);
    return ms;
  }

  @inline static now(): i64 {
    return <i64>Date_now();
  }

  // It can parse only ISO 8601 inputs like YYYY-MM-DDTHH:MM:SS.000Z
  @inline static parse(dateString: string): Date {
    return this.fromString(dateString);
  }

  static fromString(dateTimeString: string): Date {
    if (!dateTimeString.length) throw new RangeError(E_INVALIDDATE);
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
      let len = timeParts.length;
      if (len <= 1) throw new RangeError(E_INVALIDDATE);

      hour = I32.parseInt(timeParts[0]);
      min  = I32.parseInt(timeParts[1]);
      if (len >= 3) {
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
    }
    // parse the YYYY-MM-DD component
    var parts = dateString.split("-");
    var year = I32.parseInt(parts[0]);
    var month = 1, day = 1;
    var len = parts.length;
    if (len >= 2) {
      month = I32.parseInt(parts[1]);
      if (len >= 3) {
        day = I32.parseInt(parts[2]);
      }
    }
    return new Date(epochMillis(year, month, day, hour, min, sec, ms));
  }

  constructor(private epochMillis: i64) {
    // this differs from JavaScript which prefer return NaN or "Invalid Date" string
    // instead throwing exception.
    if (invalidDate(epochMillis)) throw new RangeError(E_INVALIDDATE);

    this.year = ymdFromEpochDays(i32(floorDiv(epochMillis, MILLIS_PER_DAY)));
    this.month = _month;
    this.day = _day;
  }

  @inline getTime(): i64 {
    return this.epochMillis;
  }

  setTime(time: i64): i64 {
    if (invalidDate(time)) throw new RangeError(E_INVALIDDATE);

    this.epochMillis = time;
    this.year = ymdFromEpochDays(i32(floorDiv(time, MILLIS_PER_DAY)));
    this.month = _month;
    this.day = _day;

    return time;
  }

  @inline getUTCFullYear(): i32 {
    return this.year;
  }

  @inline getUTCMonth(): i32 {
    return this.month - 1;
  }

  @inline getUTCDate(): i32 {
    return this.day;
  }

  @inline getUTCDay(): i32 {
    return dayOfWeek(this.year, this.month, this.day);
  }

  getUTCHours(): i32 {
    return i32(euclidRem(this.epochMillis, MILLIS_PER_DAY)) / MILLIS_PER_HOUR;
  }

  getUTCMinutes(): i32 {
    return i32(euclidRem(this.epochMillis, MILLIS_PER_HOUR)) / MILLIS_PER_MINUTE;
  }

  getUTCSeconds(): i32 {
    return i32(euclidRem(this.epochMillis, MILLIS_PER_MINUTE)) / MILLIS_PER_SECOND;
  }

  getUTCMilliseconds(): i32 {
    return i32(euclidRem(this.epochMillis, MILLIS_PER_SECOND));
  }

  setUTCMilliseconds(millis: i32): void {
    this.setTime(this.epochMillis + (millis - this.getUTCMilliseconds()));
  }

  setUTCSeconds(seconds: i32): void {
    this.setTime(this.epochMillis + (seconds - this.getUTCSeconds()) * MILLIS_PER_SECOND);
  }

  setUTCMinutes(minutes: i32): void {
    this.setTime(this.epochMillis + (minutes - this.getUTCMinutes()) * MILLIS_PER_MINUTE);
  }

  setUTCHours(hours: i32): void {
    this.setTime(this.epochMillis + (hours - this.getUTCHours()) * MILLIS_PER_HOUR);
  }

  setUTCDate(day: i32): void {
    if (this.day == day) return;
    var ms = euclidRem(this.epochMillis, MILLIS_PER_DAY);
    this.setTime(i64(daysSinceEpoch(this.year, this.month, day)) * MILLIS_PER_DAY + ms);
  }

  setUTCMonth(month: i32): void {
    if (this.month == month) return;
    var ms = euclidRem(this.epochMillis, MILLIS_PER_DAY);
    this.setTime(i64(daysSinceEpoch(this.year, month + 1, this.day)) * MILLIS_PER_DAY + ms);
  }

  setUTCFullYear(year: i32): void {
    if (this.year == year) return;
    var ms = euclidRem(this.epochMillis, MILLIS_PER_DAY);
    this.setTime(i64(daysSinceEpoch(year, this.month, this.day)) * MILLIS_PER_DAY + ms);
  }

  toISOString(): string {
    // TODO: add more low-level helper which combine toString and padStart without extra allocation
    var yearStr: string;
    var year = this.year;
    var isNeg = year < 0;
    if (isNeg || year >= 10000) {
      yearStr = (isNeg ? "-" : "+") + abs(year).toString().padStart(6, "0");
    } else {
      yearStr = year.toString().padStart(4, "0");
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

  toUTCString(): string {
    const weeks: StaticArray<string> = [
      "Sun, ", "Mon, ", "Tue, ", "Wed, ", "Thu, ", "Fri, ", "Sat, "
    ];

    const months: StaticArray<string> = [
      " Jan ", " Feb ", " Mar ", " Apr ", " May ", " Jun ",
      " Jul ", " Aug ", " Sep ", " Oct ", " Nov ", " Dec "
    ];

    var mo = this.month;
    var da = this.day;
    var yr = this.year;
    var wd = dayOfWeek(yr, mo, da);
    var year = abs(yr).toString().padStart(4, "0");
    if (yr < 0) year = "-" + year;

    return (
      unchecked(weeks[wd]) +
      da.toString().padStart(2, "0") +
      unchecked(months[mo - 1]) +
      year +
      " " +
      this.getUTCHours().toString().padStart(2, "0") +
      ":" +
      this.getUTCMinutes().toString().padStart(2, "0") +
      ":" +
      this.getUTCSeconds().toString().padStart(2, "0") +
      " GMT"
    );
  }

  toDateString(): string {
    // TODO: use u64 static data instead 4 chars
    // also use stream itoa variants.
    const weeks: StaticArray<string> = [
      "Sun ", "Mon ", "Tue ", "Wed ", "Thu ", "Fri ", "Sat "
    ];

    const months: StaticArray<string> = [
      "Jan ", "Feb ", "Mar ", "Apr ", "May ", "Jun ",
      "Jul ", "Aug ", "Sep ", "Oct ", "Nov ", "Dec "
    ];

    var mo = this.month;
    var da = this.day;
    var yr = this.year;
    var wd = dayOfWeek(yr, mo, da);
    var year = abs(yr).toString().padStart(4, "0");
    if (yr < 0) year = "-" + year;

    return (
      unchecked(weeks[wd]) +
      unchecked(months[mo - 1]) +
      da.toString().padStart(2, "0") +
      " " + year
    );
  }

  // Note: it uses UTC time instead local time (without timezone offset)
  toTimeString(): string {
    // TODO: add timezone
    return (
      this.getUTCHours().toString().padStart(2, "0") +
      ":" +
      this.getUTCMinutes().toString().padStart(2, "0") +
      ":" +
      this.getUTCSeconds().toString().padStart(2, "0")
    );
  }

  // Note: it uses UTC datetime instead local datetime (without timezone offset)
  toString(): string {
    return this.toDateString() + " " + this.toTimeString();
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
@inline function floorDiv<T extends number>(a: T, b: T): T {
  return (a >= 0 ? a : a - b + 1) / b as T;
}

// @ts-ignore: decorator
@inline function euclidRem<T extends number>(a: T, b: T): T {
  var m = a % b;
  return m + (m < 0 ? b : 0) as T;
}

function invalidDate(millis: i64): bool {
  // @ts-ignore
  return (millis < -8640000000000000) | (millis > 8640000000000000);
}

// see: http://howardhinnant.github.io/date_algorithms.html#civil_from_days
function ymdFromEpochDays(z: i32): i32 {
  z += 719468;
  var era = <u32>floorDiv(z, 146097);
  var doe = <u32>z - era * 146097; // [0, 146096]
  var yoe = (doe - doe / 1460 + doe / 36524 - doe / 146096) / 365; // [0, 399]
  var year = yoe + era * 400;
  var doy = doe - (365 * yoe + yoe / 4 - yoe / 100); // [0, 365]
  var mo = (5 * doy + 2) / 153; // [0, 11]
  _day = doy - (153 * mo + 2) / 5 + 1; // [1, 31]
  mo += mo < 10 ? 3 : -9; // [1, 12]
  _month = mo;
  year += u32(mo <= 2);
  return year;
}

// http://howardhinnant.github.io/date_algorithms.html#days_from_civil
function daysSinceEpoch(y: i32, m: i32, d: i32): i32 {
  y -= i32(m <= 2);
  var era = <u32>floorDiv(y, 400);
  var yoe = <u32>y - era * 400; // [0, 399]
  var doy = <u32>(153 * (m + (m > 2 ? -3 : 9)) + 2) / 5 + d - 1; // [0, 365]
  var doe = yoe * 365 + yoe / 4 - yoe / 100 + doy; // [0, 146096]
  return era * 146097 + doe - 719468;
}

// TomohikoSakamoto algorithm from https://en.wikipedia.org/wiki/Determination_of_the_day_of_the_week
function dayOfWeek(year: i32, month: i32, day: i32): i32 {
  const tab = memory.data<u8>([0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]);

  year -= i32(month < 3);
  year += floorDiv(year, 4) - floorDiv(year, 100) + floorDiv(year, 400);
  month = <i32>load<u8>(tab + month - 1);
  return euclidRem(year + month + day, 7);
}
