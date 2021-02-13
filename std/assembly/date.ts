import {
  UTC as Date_UTC,
  now as Date_now,
  getTimezoneOffset as Date_getTimezoneOffset
} from "./bindings/Date";

import {
  getCalendarDate,
  TimeZone,
  CalendarDate,
  setFullYear,
  setMonth,
  setDate,
  setHours,
  setMinutes,
  setSeconds,
  setMilliseconds
} from "./util/date";
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
  private timeZone: TimeZone; // The local time zone
  private localDate: CalendarDate | null;
  private utcDate: CalendarDate | null;

  constructor(value: i64) {
    this.value = value;
    this.timeZone = new TimeZone("GMT", Date_getTimezoneOffset());
  }

  getTime(): i64 {
    return this.value;
  }

  setTime(value: i64): i64 {
    this.value = value;
    return value;
  }

  private getLocalCalendarDate(): CalendarDate {
    if (this.isNormalizeLocalDate()) {
      return this.localDate!;
    } else if (this.localDate != null && !this.localDate!.isNormalized) {
      return getCalendarDate(this.localDate!, this.value);
    } else {
      let cdate = new CalendarDate(this.value, this.timeZone);
      this.localDate = getCalendarDate(cdate, this.value);
      return this.localDate!;
    }
  }

  private getUTCCalendarDate(): CalendarDate {
    if (this.isNormalizeUTCDate()) {
      return this.utcDate!;
    } else if (this.utcDate != null) {
      return getCalendarDate(this.utcDate!, this.value);
    } else {
      let cdate = new CalendarDate(this.value, TimeZone.UTC_TIME_ZONE);
      this.utcDate = getCalendarDate(cdate, this.value);
      return this.utcDate!;
    }
  }

  private isNormalizeLocalDate(): bool {
    return this.localDate != null
    && this.localDate!.millis == this.value
    && this.localDate!.isNormalized;
  }

  private isNormalizeUTCDate(): bool {
    return this.utcDate != null
    && this.utcDate!.millis == this.value
    && this.utcDate!.isNormalized;
  }

  getFullYear(): i32 {
    return this.getLocalCalendarDate().year;
  }

  /**
   * The method sets the full year for a specified date according to local time.
   * @param year  the full year to set
   * @returns Returns new timestamp.
   */
  setFullYear(year: i32): i64 {
    var cdate = this.getLocalCalendarDate();
    setFullYear(cdate, year);
    return this.setTime(cdate.millis);
  }

  getUTCFullYear(): i32 {
    return this.getUTCCalendarDate().year;
  }

  /**
   * The setUTCFullYear() method sets the full year for a specified date according to universal time.
   * @param year the full year to set.
   */
  setUTCFullYear(year: i32): i64 {
    var cdate = this.getUTCCalendarDate();
    setFullYear(cdate, year);
    return this.setTime(cdate.millis);
  }

  getMonth(): i32 {
    return this.getLocalCalendarDate().month - 1; // Adjust 1-based to 0-based
  }

  setMonth(month: i32): i64 {
    var cdate = this.getLocalCalendarDate();
    setMonth(cdate, month + 1);
    return this.setTime(cdate.millis);
  }

  getUTCMonth(): i32 {
    return this.getUTCCalendarDate().month - 1; // adjust 1-based to 0-based;
  }

  setUTCMonth(month: i32): i64 {
    var cdate = this.getUTCCalendarDate();
    setMonth(cdate, month + 1);
    return this.setTime(cdate.millis);
  }

  getDate(): i32 {
    return this.getLocalCalendarDate().dayOfMonth;
  }

  setDate(date: i32): i64 {
    var cdate = this.getLocalCalendarDate();
    setDate(cdate, date);
    return this.setTime(cdate.millis);
  }

  getUTCDate(): i32 {
    return this.getUTCCalendarDate().dayOfMonth;
  }

  setUTCDate(date: i32): i64 {
    var cdate = this.getUTCCalendarDate();
    setDate(cdate, date);
    return this.setTime(cdate.millis);
  }

  /**
  * Returns the day of the week represented by this date. The
  * returned value ({@code 0} = Sunday, {@code 1} = Monday,
  * {@code 2} = Tuesday, {@code 3} = Wednesday, {@code 4} =
  * Thursday, {@code 5} = Friday, {@code 6} = Saturday)
  */
  getDay(): i32 {
    return this.getLocalCalendarDate().dayOfWeek - 1 ;
  }

  getUTCDay(): i32 {
    return this.getUTCCalendarDate().dayOfWeek - 1 ;
  }

  getHours(): i32 {
    return this.getLocalCalendarDate().hours;
  }

  setHours(hours: i32): i64 {
    var cdate = this.getLocalCalendarDate();
    setHours(cdate, hours);
    return this.setTime(cdate.millis);
  }

  getUTCHours(): i32 {
    return this.getUTCCalendarDate().hours;
  }

  setUTCHours(hours: i32): i64 {
    var cdate = this.getUTCCalendarDate();
    setHours(cdate, hours);
    return this.setTime(cdate.millis);
  }

  getMinutes(): i32 {
    return this.getLocalCalendarDate().minutes;
  }

  setMinutes(minutes: i32): i64 {
    var cdate = this.getLocalCalendarDate();
    setMinutes(cdate, minutes);
    return this.setTime(cdate.millis);
  }

  getUTCMinutes(): i32 {
    return this.getUTCCalendarDate().minutes;
  }

  setUTCMinutes(minutes: i32): i64 {
    var cdate = this.getUTCCalendarDate();
    setMinutes(cdate, minutes);
    return this.setTime(cdate.millis);
  }

  getSeconds(): i32 {
    return this.getLocalCalendarDate().seconds;
  }

  setSeconds(seconds: i32): i64 {
    var cdate = this.getLocalCalendarDate();
    setSeconds(cdate, seconds);
    return this.setTime(cdate.millis);
  }

  getUTCSeconds(): i32 {
    return this.getUTCCalendarDate().seconds;
  }

  setUTCSeconds(seconds: i32): i64 {
    var cdate = this.getUTCCalendarDate();
    setSeconds(cdate, seconds);
    return this.setTime(cdate.millis);
  }

  getMilliseconds(): i32 {
    return this.getLocalCalendarDate().milliseconds;
  }

  setMilliseconds(milliseconds: i32): i64 {
    var cdate = this.getLocalCalendarDate();
    setMilliseconds(cdate, milliseconds);
    return this.setTime(cdate.millis);
  }

  getUTCMilliseconds(): i32 {
    return this.getUTCCalendarDate().milliseconds;
  }

  setUTCMilliseconds(milliseconds: i32): i64 {
    var cdate = this.getUTCCalendarDate();
    setMilliseconds(cdate, milliseconds);
    return this.setTime(cdate.millis);
  }

  getTimezoneOffset(): i32 {
    return Date_getTimezoneOffset();
  }
}
