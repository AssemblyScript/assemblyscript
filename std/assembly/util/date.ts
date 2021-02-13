export class CalendarDate {
  year: i32;
  month: i32; // 1 ~ 12
  dayOfMonth: i32; // 1 ~ 31
  dayOfWeek: i32; // 1 ~ 7
  hours: i32;
  minutes: i32;
  seconds: i32;
  milliseconds: i32;
  isNormalized: bool;

  millis: i64; // The date milliseconds
  timeOfDay: i32; // the time of day
  fixedDate: i32; // the time of days;
  timeZone: TimeZone; // the local time zone

  constructor(millis: i64, timeZone: TimeZone) {
    this.millis = millis;
    this.isNormalized = false;
    this.timeZone = timeZone;
  }
}

/**
 * Represents a time zone for use with a Gregorian calendar.
 * The class holds an offset from GMT, called <em>raw offset</em>, and start
 * and end rules for a daylight saving time schedule
 */
export class TimeZone {

  ID: string;
  /**
  * The raw GMT offset in milliseconds between this zone and GMT.
  * Negative offsets are to the west of Greenwich.
  * To obtain local standard time, add the offset to GMT time.
  */
  rawOffset: i32;

  constructor(ID: string, rawOffset: i32) {
    this.ID = ID;
    this.rawOffset = rawOffset;
  }

  static UTC_TIME_ZONE: TimeZone = new TimeZone("UTC", 0);
}

class CalendarUtils {
  static SECOND_IN_MILLIS: i32 = 1000;
  static MINUTE_IN_MILLIS: i32 = 60000; // 1000 * 60
  static HOUR_IN_MILLIS: i32 = 3600000; // 1000 * 60 * 60
  static DAY_IN_MILLIS: i32 = 86400000; // 1000 * 60 * 60 * 24
  static DAY_IN_HOURS: i32 = 24;
  static YEAR_IN_MONTHS: i32 = 12;

  static JANUARY: i32 = 1;
  static FEBRUARY: i32 = 2;
  static MARCH: i32 = 3;
  static APRIL: i32 = 4;
  static MAY: i32 = 5;
  static JUNE: i32 = 6;
  static JULY: i32 = 7;
  static AUGUST: i32 = 8;
  static SEPTEMBER: i32 = 9;
  static OCTOBER: i32 = 10;
  static NOVEMBER: i32 = 11;
  static DECEMBER: i32 = 12;

  static BASE_YEAR: i32 = 1970;
  // day of week constants
  static SUNDAY: i32 = 1;
  static MONDAY: i32 = 2;
  static TUESDAY: i32 = 3;
  static WEDNESDAY: i32 = 4;
  static THURSDAY: i32 = 5;
  static FRIDAY: i32 = 6;
  static SATURDAY: i32 = 7;
  // ACCUMULATED_DAYS_IN_MONTH               12/1 1/1 2/1 3/1 4/1 5/1  6/1  7/1  8/1  9/1  10/1 11/1 12/1
  static ACCUMULATED_DAYS_IN_MONTH: i32[ ] = [-30, 0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334];
  static FIXED_DATES: i32[] = [
    719163, // 1970
    719528, // 1971
    719893, // 1972
    720259, // 1973
    720624, // 1974
    720989, // 1975
    721354, // 1976
    721720, // 1977
    722085, // 1978
    722450, // 1979
    722815, // 1980
    723181, // 1981
    723546, // 1982
    723911, // 1983
    724276, // 1984
    724642, // 1985
    725007, // 1986
    725372, // 1987
    725737, // 1988
    726103, // 1989
    726468, // 1990
    726833, // 1991
    727198, // 1992
    727564, // 1993
    727929, // 1994
    728294, // 1995
    728659, // 1996
    729025, // 1997
    729390, // 1998
    729755, // 1999
    730120, // 2000
    730486, // 2001
    730851, // 2002
    731216, // 2003
    731581, // 2004
    731947, // 2005
    732312, // 2006
    732677, // 2007
    733042, // 2008
    733408, // 2009
    733773, // 2010
    734138, // 2011
    734503, // 2012
    734869, // 2013
    735234, // 2014
    735599, // 2015
    735964, // 2016
    736330, // 2017
    736695, // 2018
    737060, // 2019
    737425, // 2020
    737791, // 2021
    738156, // 2022
    738521, // 2023
    738886, // 2024
    739252, // 2025
    739617, // 2026
    739982, // 2027
    740347, // 2028
    740713, // 2029
    741078, // 2030
    741443, // 2031
    741808, // 2032
    742174, // 2033
    742539, // 2034
    742904, // 2035
    743269, // 2036
    743635, // 2037
    744000, // 2038
    744365 // 2039
  ];

  // The number of days between January 1, 1 and January 1, 1970 (Gregorian)
  static EPOCH_OFFSET: i32 = 719163;

  static floorDivide(n: i32, d: i32): i32 {
    return ((n >= 0) ? (n / d) : (((n + 1) / d) - 1));
  }

  static mod(x: i32, y: i32): i32 {
    return (x - y * CalendarUtils.floorDivide(x, y));
  }

  @inline
  static isLeapYear(year: i32): bool {
    return (year & 3) == 0 && ((year % 25) != 0 || (year & 15) == 0);
  }

  @inline
  static countLeaps(year: i32): i32 {
    if (year >= 0) {
      return year / 4 - year / 100 + year / 400;
    } else {
      return CalendarUtils.floorDivide(year, 4)
      - CalendarUtils.floorDivide(year, 100)
      + CalendarUtils.floorDivide(year, 400);
    }
  }

  /**
  * Returns the Geogorian year number of the given fixed date.
  */
  static getYearFromFixedDate(fixedDate: i32): i32 {
    var d0: i32;
    var d1: i32, d2: i32, d3: i32;
    var n400: i32, n100: i32, n4: i32, n1: i32;
    var year: i32;
    if ( fixedDate > 0) {
      d0 = fixedDate - 1;
      n400 = d0 / 146097;
      d1 = d0 % 146097;
      n100 = d1 / 36524;
      d2 = d1 % 36524;
      n4 = d2 / 1461;
      d3 = d2 % 1461;
      n1 = d3 / 365;
      // d4 = (d3 % 365) + 1;
    } else {
      d0 = fixedDate - 1;
      n400 = CalendarUtils.floorDivide(d0, 146097);
      d1 = CalendarUtils.mod(d0, 146097);
      n100 = CalendarUtils.floorDivide(d1, 36524);
      d2 = CalendarUtils.mod(d1, 36524);
      n4 = CalendarUtils.floorDivide(d2, 1461);
      d3 = CalendarUtils.mod(d2, 1461);
      n1 = CalendarUtils.floorDivide(d3, 365);
      // d4 = CalendarUtils.mod(d3, 365) + 1;
    }
    year = 400 * n400 + 100 * n100 + 4 * n4 + n1;
    if (!(n100 == 4 || n1 == 4)) {
      ++year;
    }
    return year;
  }

  static getDayOfWeekFromFixedDate(fixedDate: i32): i32 {
    if (fixedDate >= 0) {
      return (fixedDate % 7) + CalendarUtils.SUNDAY;
    }
    return CalendarUtils.mod(fixedDate, 7) + CalendarUtils.SUNDAY;
  }

  private static hitFixedDateYear(year: i32): bool {
    return year >= 1970 && year <= 2039;
  }

  /**
  * Returns the days of the specified date.
  * @param year the year of the date
  * @param month the month of the date, 1-based
  * @param dayOfMonth the day of the month, 1-based
  */
  static getFixedDate(year: i32, month: i32, dayOfMonth: i32): i32 {
    var isJan1: bool = month == CalendarUtils.JANUARY && dayOfMonth == 1;
    if (isJan1 && CalendarUtils.hitFixedDateYear(year)) {
      return CalendarUtils.FIXED_DATES[year - CalendarUtils.BASE_YEAR];
    }
    var prevyear = year - 1;
    var days = dayOfMonth;
    days += (365 * prevyear) + CalendarUtils.countLeaps(prevyear) + ((367 * month - 362) / 12);
    if (month > CalendarUtils.FEBRUARY) {
      days -= CalendarUtils.isLeapYear(year) ? 1 : 2;
    }
    return days;
  }
}

function setTimeOfDay(cdate: CalendarDate, fraction: i32): void  {
  var time = fraction;
  var hours = time / CalendarUtils.HOUR_IN_MILLIS;
  time %= CalendarUtils.HOUR_IN_MILLIS;
  var minutes = time / CalendarUtils.MINUTE_IN_MILLIS;
  time %= CalendarUtils.MINUTE_IN_MILLIS;
  var seconds = time / CalendarUtils.SECOND_IN_MILLIS;
  time %= CalendarUtils.SECOND_IN_MILLIS;
  cdate.hours = hours;
  cdate.minutes = minutes;
  cdate.seconds = seconds;
  cdate.milliseconds = time;
  cdate.timeOfDay = fraction;
}

export function getCalendarDate(cdate: CalendarDate, millis: i64): CalendarDate {
  var ms: i32 = 0; // time of day
  var days: i32 = 0; // fixed date
  var timezone = cdate.timeZone;
  // adjust to local time if 'date' has time zone.
  if (timezone != null && timezone.rawOffset != 0) {
    let zoneOffset = <i64>timezone.rawOffset;
    days += <i32>((millis + zoneOffset) / <i64>CalendarUtils.DAY_IN_MILLIS);
    ms += <i32>((millis + zoneOffset) % <i64>CalendarUtils.DAY_IN_MILLIS);
  } else {
    days = <i32>(millis / <i64>CalendarUtils.DAY_IN_MILLIS);
    ms = <i32>(millis % <i64>CalendarUtils.DAY_IN_MILLIS);
  }
  days += CalendarUtils.EPOCH_OFFSET;
  cdate.millis = millis;
  setCalendarDateFromFixedDate(cdate, days);
  setTimeOfDay(cdate, ms);
  cdate.isNormalized = true;
  return cdate;
}

/**
 * Get calendar date, the millis timestamp is UTC timestamp
 * @param cdate the date to set
 * @param mills the UTC timestamp
 */
function setCalendarDateFromFixedDate(date: CalendarDate, fixedDate: i32): void {
  var year: i32 = CalendarUtils.getYearFromFixedDate(fixedDate);
  var jan1: i32 = CalendarUtils.getFixedDate(year, CalendarUtils.JANUARY, 1);
  var isLeap: bool = CalendarUtils.isLeapYear(year);
  var priorDays: i32 = fixedDate - jan1;
  var mar1: i32 = jan1 + 31 + 28;
  if (isLeap) {
    ++ mar1;
  }
  if (fixedDate >= mar1) {
    priorDays += isLeap ? 1 : 2;
  }
  var month: i32 = 12 * priorDays + 373;
  if (month > 0) {
    month /= 367;
  } else {
    month = CalendarUtils.floorDivide(month, 367);
  }
  var accumulated = CalendarUtils.ACCUMULATED_DAYS_IN_MONTH[month];
  var month1 = jan1 + accumulated;
  if (isLeap && month >= CalendarUtils.MARCH) {
    ++ month1;
  }
  var dayOfMonth = (fixedDate - month1) + 1;
  var dayOfWeek = CalendarUtils.getDayOfWeekFromFixedDate(fixedDate);

  date.year = year;
  date.month = month;
  date.dayOfMonth = dayOfMonth;
  date.dayOfWeek = dayOfWeek;
  date.fixedDate = fixedDate;
}

export function setHours(cdate: CalendarDate, hours: i32): void {
  if (cdate.hours != hours) {
    let oldHours = cdate.hours;
    cdate.millis += <i64>(hours - oldHours) * <i64>CalendarUtils.HOUR_IN_MILLIS;
    cdate.isNormalized = false;
  }
}

export function setMinutes(cdate: CalendarDate, minutes: i32): void {
  if (cdate.minutes != minutes) {
    let oldMinutes = cdate.minutes;
    cdate.millis += <i64>(minutes - oldMinutes) * <i64>CalendarUtils.MINUTE_IN_MILLIS;
    cdate.isNormalized = false;
  }
}

export function setSeconds(cdate: CalendarDate, seconds: i32): void {
  if (cdate.seconds != seconds) {
    let oldSeconds = cdate.seconds;
    cdate.millis += <i64>(seconds - oldSeconds) * <i64>CalendarUtils.SECOND_IN_MILLIS;
    cdate.isNormalized = false;
  }
}

export function setMilliseconds(cdate: CalendarDate, milliseconds: i32): void {
  if (cdate.milliseconds != milliseconds) {
    let oldMilliseconds = cdate.milliseconds;
    cdate.millis += <i64>(milliseconds - oldMilliseconds);
    cdate.isNormalized = false;
  }
}

export function setFullYear(cdate: CalendarDate, year: i32): void {
  if (cdate.year != year) {
    let oldyearJan1 = CalendarUtils.getFixedDate(cdate.year, CalendarUtils.JANUARY, 1);
    let newYearJan1 = CalendarUtils.getFixedDate(year, CalendarUtils.JANUARY, 1);
    let newFixedDate: i32 = newYearJan1 + (cdate.fixedDate - oldyearJan1);
    setCalendarDateFromFixedDate(cdate, newFixedDate);
    cdate.millis += <i64>(newYearJan1 - oldyearJan1) * <i64>CalendarUtils.DAY_IN_MILLIS;
  }
}

export function setMonth(cdate: CalendarDate, month: i32): void {
  if (cdate.month != month) {
    let addyear = CalendarUtils.floorDivide(month, CalendarUtils.YEAR_IN_MONTHS);
    let newMonth = CalendarUtils.mod(month, CalendarUtils.YEAR_IN_MONTHS);
    let oldDays = cdate.dayOfMonth;
    let newMonthDays = CalendarUtils.getFixedDate(cdate.year + addyear, newMonth, 1);
    let newFixedDate = newMonthDays + oldDays - 1;
    let oldFixedDate = cdate.fixedDate;
    setCalendarDateFromFixedDate(cdate, newFixedDate);
    cdate.millis += <i64>(newFixedDate - oldFixedDate) * <i64>CalendarUtils.DAY_IN_MILLIS;
  }
}

export function setDate(cdate: CalendarDate, date: i32): void {
  if (cdate.dayOfMonth != date) {
    let oldDayOfMonth = cdate.dayOfMonth;
    let newFixedDate = cdate.fixedDate + date - oldDayOfMonth;
    setCalendarDateFromFixedDate(cdate, newFixedDate);
    cdate.millis += <i64>(date - oldDayOfMonth) * <i64>CalendarUtils.DAY_IN_MILLIS;
  }
}
