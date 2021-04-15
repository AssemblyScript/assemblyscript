// Date UTC ///////////////////////////////////////////////////////////////////////////////////////
{
  assert(Date.UTC(1970, 0, 1) == 0);
  assert(Date.UTC(1970, 0, 1, 0, 0, 0, 0) == 0);
  assert(Date.UTC(70) == 0);
  assert(Date.UTC(90) == 631152000000);
  assert(Date.UTC(-90) == -65007360000000);
  assert(Date.UTC(2018, 10, 10, 11, 0, 0, 1) == 1541847600001);
}

// Date get / set Time ////////////////////////////////////////////////////////////////////////////

{
  let creationTime = 1541847600001;
  let date = new Date(creationTime);
  assert(date.getTime() == creationTime);
  date.setTime(creationTime + 1);
  assert(date.getTime() == creationTime + 1);
}

// Date getters ///////////////////////////////////////////////////////////////////////////////////

{
  // from +189512-12-14T22:09:43.706Z"
  let date = new Date(5918283958183706);
  assert(date.getUTCFullYear() == 189512);
  assert(date.getUTCMonth() == 11);
  assert(date.getUTCDate() == 14);
  assert(date.getUTCHours() == 22);
  assert(date.getUTCMinutes() == 9);
  assert(date.getUTCSeconds() == 43);
  assert(date.getUTCMilliseconds() == 706);
}

{
  // from 1973-12-04T01:03:11.274Z"
  let date = new Date(123814991274);
  assert(date.getUTCFullYear() == 1973);
  assert(date.getUTCMonth() == 11);
  assert(date.getUTCDate() == 4);
  assert(date.getUTCHours() == 1);
  assert(date.getUTCMinutes() == 3);
  assert(date.getUTCSeconds() == 11);
  assert(date.getUTCMilliseconds() == 274);
}

// Date#setUTCMilliseconds /////////////////////////////////////////////////////////////////////////
{
  let date = new Date(399464523963984);
  assert(date.getUTCMilliseconds() == 984);
  date.setUTCMilliseconds(12);
  assert(date.getUTCMilliseconds() == 12);
  date.setUTCMilliseconds(568);
  assert(date.getUTCMilliseconds() == 568);
  // test boundaries
  date.setUTCMilliseconds(0);
  date.setUTCMilliseconds(999);
}

// Date#setUTCSeconds //////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(372027318331986);
  assert(date.getUTCSeconds() == 31);
  date.setUTCSeconds(12);
  assert(date.getUTCSeconds() == 12);
  date.setUTCSeconds(50);
  assert(date.getUTCSeconds() == 50);
  // test boundaries
  date.setUTCSeconds(0);
  date.setUTCSeconds(59);
}

// Date#setUTCMinutes //////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(372027318331986);
  assert(date.getUTCMinutes() == 45);
  date.setUTCMinutes(12);
  assert(date.getUTCMinutes() == 12);
  date.setUTCMinutes(50);
  assert(date.getUTCMinutes() == 50);
  // test boundaries
  date.setUTCMinutes(0);
  date.setUTCMinutes(59);
}

// Date#setUTCHours ////////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(372027318331986);
  assert(date.getUTCHours() == 17);
  date.setUTCHours(12);
  assert(date.getUTCHours() == 12);
  date.setUTCHours(2);
  assert(date.getUTCHours() == 2);
  // test boundaries
  date.setUTCHours(0);
  date.setUTCHours(23);
}

// Date#setUTCDate /////////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(123814991274);
  assert(date.getUTCFullYear() == 1973);
  assert(date.getUTCMonth() == 11);

  // test a few values
  date.setUTCDate(12);
  assert(date.getUTCDate() == 12);
  date.setUTCDate(2);
  assert(date.getUTCDate() == 2);

  // test boundaries
  // nov has 30 days
  date.setUTCDate(1);
  date.setUTCDate(30);

  // jan has 31 days
  date.setUTCMonth(1);
  date.setUTCDate(1);
  date.setUTCDate(31);

  // feb on leap year
  date.setUTCFullYear(2024);
  date.setUTCMonth(2);
  date.setUTCDate(1);
  date.setUTCDate(29);

  assert(date.getTime() == 1711674191274);
  assert(date.getUTCDate() == 29);
  assert(date.getUTCMinutes() == 3);
  assert(date.getUTCSeconds() == 11);
  assert(date.getUTCMilliseconds() == 274);

  date = new Date(1362106799999);
  date.setUTCDate(20);
  assert(date.getTime() == 1363748399999);
  date.setUTCDate(1);
  assert(date.getTime() == 1362106799999);

  date.setUTCMilliseconds(1000);
  assert(date.getTime() == 1362106800000);

  date.setUTCMilliseconds(60 * 60 * 1000);
  assert(date.getTime() == 1362110400000);

  date.setUTCMilliseconds(60 * 60 * 1000 + 1);
  assert(date.getTime() == 1362114000001);

  date.setUTCMilliseconds(60 * 60 * 1000 + 1);
  assert(date.getTime() == 1362117600001);
}

// Date#setUTCMonth ////////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(7899943856218720);
  assert(date.getUTCMonth() == 3);
  date.setUTCMonth(10);
  assert(date.getUTCMonth() == 10);
  date.setUTCMonth(2);
  assert(date.getUTCMonth() == 2);
  // test boundaries
  date.setUTCMonth(1);
  date.setUTCMonth(12);
}

// Date#setUTCFullYear /////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(7941202527925698);
  assert(date.getUTCFullYear() == 253616);
  date.setUTCFullYear(1976);
  assert(date.getUTCFullYear() == 1976);
  date.setUTCFullYear(20212);
  assert(date.getUTCFullYear() == 20212);
}

// Date#toISOString ////////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(1231231231020);
  assert(date.toISOString() == "2009-01-06T08:40:31.020Z");
  date = new Date(1231231231456);
  assert(date.toISOString() == "2009-01-06T08:40:31.456Z");
  date = new Date(322331231231020);
  assert(date.toISOString() == "+012184-04-08T13:07:11.020Z");
  date = new Date(253402300799999);
  assert(date.toISOString() == "9999-12-31T23:59:59.999Z");
  date = new Date(253402300800000);
  assert(date.toISOString() == "+010000-01-01T00:00:00.000Z");
  date = new Date(-62847038769226);
  assert(date.toISOString() == "-000022-06-16T17:13:50.774Z");
}

// Date#fromString /////////////////////////////////////////////////////////////////////////////////
{
  // supports year / month / day
  let date = Date.fromString("1976-02-02");
  assert(date.getTime() == 192067200000);
  date = Date.fromString("1976-2-2");
  assert(date.getTime() == 192067200000);
  date = Date.fromString("2345-11-04");
  assert(date.getTime() == 11860387200000);

  // supports two digit years
  assert(
    Date.fromString("1976-04-02").getTime() ==
      Date.fromString("76-04-02").getTime()
  );

  // supports year / month / day / hour / minute / second
  date = Date.fromString("1976-02-02T12:34:56");
  assert(date.getTime() == 192112496000);

  // supports milliseconds
  date = Date.fromString("1976-02-02T12:34:56.456");
  assert(date.getTime() == 192112496456);

  // supports 'Z' suffix
  date = Date.fromString("1976-02-02T12:34:56.456Z");
  assert(date.getTime() == 192112496456);
}

// Minimum / Maximum dates ////////////////////////////////////////////////////////////////////////
{
  let minDate = new Date(-8640000000000000);
  let maxDate = new Date( 8640000000000000);

  assert(minDate.getTime() == -8640000000000000);
  assert(maxDate.getTime() ==  8640000000000000);

  assert(minDate.getUTCFullYear() == -271821);
  assert(maxDate.getUTCFullYear() ==  275760);

  assert(minDate.getUTCMonth() == 3);
  assert(maxDate.getUTCMonth() == 8);

  assert(minDate.getUTCDate() == 20);
  assert(maxDate.getUTCDate() == 13);

  assert(minDate.toISOString() == "-271821-04-20T00:00:00.000Z");
  assert(maxDate.toISOString() == "+275760-09-13T00:00:00.000Z");

  let maxDateDec = new Date( 8640000000000000 - 1);
  let minDateInc = new Date(-8640000000000000 + 1);

  assert(minDateInc.getUTCFullYear() == -271821);
  assert(minDateInc.getUTCMonth() == 3);
  assert(minDateInc.getUTCDate() == 20);
  assert(minDateInc.getUTCHours() == 0);
  assert(minDateInc.getUTCMinutes() == 0);
  assert(minDateInc.getUTCSeconds() == 0);
  assert(minDateInc.getUTCMilliseconds() == 1);

  assert(maxDateDec.toISOString() == "+275760-09-12T23:59:59.999Z");
  assert(minDateInc.toISOString() == "-271821-04-20T00:00:00.001Z");

  // new Date(maxDate.getTime() + 1); // Invalid Date
  // new Date(minDate.getTime() - 1); // Invalid Date
}
