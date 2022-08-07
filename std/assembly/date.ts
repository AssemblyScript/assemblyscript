import { E_INVALIDDATE } from "util/error";
import { Date as Date_binding } from "./bindings/dom";

// @ts-ignore: decorator
@inline const
  MILLIS_PER_DAY    = 1000 * 60 * 60 * 24,
  MILLIS_PER_HOUR   = 1000 * 60 * 60,
  MILLIS_PER_MINUTE = 1000 * 60,
  MILLIS_PER_SECOND = 1000,

  YEARS_PER_EPOCH = 400,
  DAYS_PER_EPOCH = 146097,
  EPOCH_OFFSET = 719468, // Jan 1, 1970
  MILLIS_LIMIT = 8640000000000000;

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
    return <i64>Date_binding.now();
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

    this.year = dateFromEpoch(epochMillis);
    this.month = _month;
    this.day = _day;
  }

  @inline getTime(): i64 {
    return this.epochMillis;
  }

  setTime(time: i64): i64 {
    if (invalidDate(time)) throw new RangeError(E_INVALIDDATE);

    this.epochMillis = time;
    this.year = dateFromEpoch(time);
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
    this.setTime(join(this.year, this.month, day, this.epochMillis));
  }

  setUTCMonth(month: i32, day: i32 = this.day): void {
    if (this.month == month + 1) return;
    this.setTime(join(this.year, month + 1, day, this.epochMillis));
  }

  setUTCFullYear(year: i32): void {
    if (this.year == year) return;
    this.setTime(join(year, this.month, this.day, this.epochMillis));
  }

  toISOString(): string {
    // TODO: add more low-level helper which combine toString and padStart without extra allocation

    var yr = this.year;
    var isNeg = yr < 0;
    var year = (isNeg || yr >= 10000)
      ? (isNeg ? "-" : "+") + stringify(abs(yr), 6)
      : stringify(yr, 4);
    var month = stringify(this.month, 2);
    var day = stringify(this.day);
    var hours = stringify(this.getUTCHours());
    var mins = stringify(this.getUTCMinutes());
    var secs = stringify(this.getUTCSeconds());
    var ms = stringify(this.getUTCMilliseconds(), 3);

    return `${year}-${month}-${day}T${hours}:${mins}:${secs}.${ms}Z`;
  }

  toUTCString(): string {
    const
      weeks: StaticArray<string> = [
        "Sun, ", "Mon, ", "Tue, ", "Wed, ", "Thu, ", "Fri, ", "Sat, "
      ],
      months: StaticArray<string> = [
        " Jan ", " Feb ", " Mar ", " Apr ", " May ", " Jun ",
        " Jul ", " Aug ", " Sep ", " Oct ", " Nov ", " Dec "
      ];

    var mo = this.month;
    var da = this.day;
    var yr = this.year;
    var wd = dayOfWeek(yr, mo, da);
    var year = stringify(abs(yr), 4);
    var month = unchecked(months[mo - 1]);
    var week = unchecked(weeks[wd]);
    var day = stringify(da);
    var hours = stringify(this.getUTCHours());
    var mins = stringify(this.getUTCMinutes());
    var secs = stringify(this.getUTCSeconds());

    return `${week}${day}${month}${yr < 0 ? "-" : ""}${year} ${hours}:${mins}:${secs} GMT`;
  }

  toDateString(): string {
    // TODO: use u64 static data instead 4 chars
    // also use stream itoa variants.
    const
      weeks: StaticArray<string> = [
        "Sun ", "Mon ", "Tue ", "Wed ", "Thu ", "Fri ", "Sat "
      ],
      months: StaticArray<string> = [
        "Jan ", "Feb ", "Mar ", "Apr ", "May ", "Jun ",
        "Jul ", "Aug ", "Sep ", "Oct ", "Nov ", "Dec "
      ];

    var mo = this.month;
    var da = this.day;
    var yr = this.year;
    var wd = dayOfWeek(yr, mo, da);
    var year = stringify(abs(yr), 4);
    var month = unchecked(months[mo - 1]);
    var week = unchecked(weeks[wd]);
    var day = stringify(da);

    return `${week}${month}${day}${yr < 0 ? " -" : " "}${year}`;
  }

  // Note: it uses UTC time instead local time (without timezone offset)
  toTimeString(): string {
    var hours = stringify(this.getUTCHours());
    var mins = stringify(this.getUTCMinutes());
    var secs = stringify(this.getUTCSeconds());
    // TODO: add timezone
    return `${hours}:${mins}:${secs}`;
  }

  // Note: it uses UTC datetime instead local datetime (without timezone offset)
  toString(): string {
    return `${this.toDateString()} ${this.toTimeString()}`;
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
    daysSinceEpoch(year, month, day) * MILLIS_PER_DAY +
    hour * MILLIS_PER_HOUR +
    minute * MILLIS_PER_MINUTE +
    second * MILLIS_PER_SECOND +
    milliseconds
  );
}

// @ts-ignore: decorator
@inline function floorDiv<T extends number>(a: T, b: T): T {
  return (a - (a < 0 ? b - 1 : 0)) / b as T;
}

// @ts-ignore: decorator
@inline function euclidRem<T extends number>(a: T, b: T): T {
  var m = a % b;
  return m + (m < 0 ? b : 0) as T;
}

function invalidDate(millis: i64): bool {
  // @ts-ignore
  return (millis < -MILLIS_LIMIT) | (millis > MILLIS_LIMIT);
}

// Based on "Euclidean Affine Functions and Applications to Calendar Algorithms"
// Paper: https://arxiv.org/pdf/2102.06959.pdf
function dateFromEpoch(ms: i64): i32 {
  var da = (<i32>floorDiv(ms, MILLIS_PER_DAY) * 4 + EPOCH_OFFSET * 4) | 3;
  var q0 = floorDiv(da, DAYS_PER_EPOCH); // [0, 146096]
  var r1 = <u32>da - q0 * DAYS_PER_EPOCH;
  var u1 = u64(r1 | 3) * 2939745;
  var dm1 = <u32>u1 / 11758980;
  var n1 = 2141 * dm1 + 197913;
  var year = 100 * q0 + i32(u1 >>> 32);
  var mo = n1 >>> 16;
  _day = (n1 & 0xFFFF) / 2141 + 1; // [1, 31]
  if (dm1 >= 306) { mo -= 12; ++year; }
  _month = mo; // [1, 12]
  return year;
}

// http://howardhinnant.github.io/date_algorithms.html#days_from_civil
function daysSinceEpoch(y: i32, m: i32, d: i32): i64 {
  y -= i32(m <= 2);
  var era = <u32>floorDiv(y, YEARS_PER_EPOCH);
  var yoe = <u32>y - era * YEARS_PER_EPOCH; // [0, 399]
  var doy = <u32>(153 * (m + (m > 2 ? -3 : 9)) + 2) / 5 + d - 1; // [0, 365]
  var doe = yoe * 365 + yoe / 4 - yoe / 100 + doy; // [0, 146096]
  return <i64><i32>(era * 146097 + doe - EPOCH_OFFSET);
}

// TomohikoSakamoto algorithm from https://en.wikipedia.org/wiki/Determination_of_the_day_of_the_week
function dayOfWeek(year: i32, month: i32, day: i32): i32 {
  const tab = memory.data<u8>([0, 3, 2, 5, 0, 3, 5, 1, 4, 6, 2, 4]);

  year -= i32(month < 3);
  year += floorDiv(year, 4) - floorDiv(year, 100) + floorDiv(year, YEARS_PER_EPOCH);
  month = <i32>load<u8>(tab + month - 1);
  return euclidRem(year + month + day, 7);
}

function stringify(value: i32, padding: i32 = 2): string {
  return value.toString().padStart(padding, "0");
}

function join(year: i32, month: i32, day: i32, ms: i64): i64 {
  return daysSinceEpoch(year, month, day) * MILLIS_PER_DAY + euclidRem(ms, MILLIS_PER_DAY);
}
