// Date UTC ///////////////////////////////////////////////////////////////////////////////////////
{
  assert(Date.UTC(1970, 0, 1) == 0);
  assert(Date.UTC(1970, 0, 1, 0, 0, 0, 0) == 0);
  assert(Date.UTC(70) == 0);
  assert(Date.UTC(90) == 631152000000);
  assert(Date.UTC(-90) == -65007360000000);
  assert(Date.UTC(2018, 10, 10, 11, 0, 0, 1) == 1541847600001);
  assert(Date.UTC(275760, 8, 13, 0, 0, 0, 0) == 8640000000000000);
  // Date.UTC(275760, 8, 13, 0, 0, 0, 1); // Invalid Date
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
  // test in boundaries
  date.setUTCMilliseconds(0);
  assert(date.getTime() == 399464523963000);
  date.setUTCMilliseconds(999);
  assert(date.getTime() == 399464523963999);
  // test out of boundaries
  date.setUTCMilliseconds(2000);
  assert(date.getUTCMilliseconds() == 0);
  assert(date.getTime() == 399464523965000);
  date.setUTCMilliseconds(-2000);
  assert(date.getUTCMilliseconds() == 0);
  assert(date.getTime() == 399464523963000);
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
  assert(date.getTime() == 372027318300986);
  date.setUTCSeconds(59);
  assert(date.getTime() == 372027318359986);
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
  assert(date.getTime() == 372027315631986);
  date.setUTCMinutes(59);
  assert(date.getTime() == 372027319171986);
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
  assert(date.getTime() == 372027257131986);
  date.setUTCHours(23);
  assert(date.getTime() == 372027339931986);
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

  date = new Date(123814991274);
  date.setUTCDate(-2208);
  assert(date.getTime() == -67301808726);

  date = new Date(123814991274);
  date.setUTCDate(2208);
  assert(date.getTime() == 314240591274);
}

// Date#setUTCDay //////////////////////////////////////////////////////////////////////////////////
{
  // tests from test262
  const july6: i64 = 1467763200000;
  const july9: i64 = 1468022400000;
  const dayMs: i64 = 24 * 60 * 60 * 1000;

  assert(new Date(july6    ).getUTCDay() == 3);
  assert(new Date(july6 - 1).getUTCDay() == 2);
  assert(new Date(july6 + dayMs - 1).getUTCDay() == 3);
  assert(new Date(july6 + dayMs    ).getUTCDay() == 4);

  assert(new Date(july9    ).getUTCDay() == 6);
  assert(new Date(july9 - 1).getUTCDay() == 5);
  assert(new Date(july9 + dayMs - 1).getUTCDay() == 6);
  assert(new Date(july9 + dayMs    ).getUTCDay() == 0);
}

// Date#setUTCMonth ////////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(7899943856218720);
  assert(date.getUTCMonth() == 3);
  date.setUTCMonth(10);
  assert(date.getUTCMonth() == 10);
  date.setUTCMonth(2);
  assert(date.getUTCMonth() == 2);
  assert(date.getTime() == 7899941177818720);
  // test boundaries
  date.setUTCMonth(1);
  date.setUTCMonth(12);
  assert(date.getTime() == 7899967616218720);

  // test out of boundaries
  date.setUTCMonth(0);
  assert(date.getTime() == 7899967616218720);
  date.setUTCMonth(13);
  assert(date.getTime() == 7900001830618720);
}

// Date#setUTCFullYear /////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(7941202527925698);
  assert(date.getUTCFullYear() == 253616);
  date.setUTCFullYear(1976);
  assert(date.getUTCFullYear() == 1976);
  date.setUTCFullYear(20212);
  assert(date.getUTCFullYear() == 20212);
  date.setUTCFullYear(71);
  assert(date.getUTCFullYear() == 71);
}

// Date#toISOString ////////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(-62167219200000);
  assert(date.toISOString() == "0000-01-01T00:00:00.000Z");
  date = new Date(-62167219200000 - 1);
  assert(date.toISOString() == "-000001-12-31T23:59:59.999Z");
  date = new Date(-62127219200000);
  assert(date.toISOString() == "0001-04-07T23:06:40.000Z");
  date = new Date(1231231231020);
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

// Date#toDateString ///////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(-61536067200000);
  assert(date.toDateString() == "Wed Jan 01 0020");
  date = new Date(1580601600000);
  assert(date.toDateString() == "Sun Feb 02 2020");
  // negative year
  date = new Date(-62183116800000); // '-000001-07-01T00:00Z'
  assert(date.toDateString() == "Thu Jul 01 -0001");
}

// Date#toTimeString ///////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(-61536067200000);
  assert(date.toTimeString() == "00:00:00"); // use UTC time instead local

  date = new Date(253402300799999);
  assert(date.toTimeString() == "23:59:59"); // use UTC time instead local
}

// Date#toUTCString ///////////////////////////////////////////////////////////////////////////////
{
  let date = new Date(-61536067200000);
  assert(date.toUTCString() == "Wed, 01 Jan 0020 00:00:00 GMT");
  date = new Date(1580741613467);
  assert(date.toUTCString() == "Mon, 03 Feb 2020 14:53:33 GMT");
  // negative year
  date = new Date(-62183116800000); // '-000001-07-01T00:00Z'
  assert(date.toUTCString() == "Thu, 01 Jul -0001 00:00:00 GMT");
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

  // supports year / month / day / hour / minute / second
  date = Date.fromString("1976-02-02T12:34:56"); // still use Z suffix
  assert(date.getTime() == 192112496000);

  // supports milliseconds
  date = Date.fromString("1976-02-02T12:34:56.456"); // still use Z suffix
  assert(date.getTime() == 192112496456);

  // supports 'Z' suffix
  date = Date.fromString("1976-02-02T12:34:56.456Z");
  assert(date.getTime() == 192112496456);

  date = Date.fromString("0000");
  assert(date.getTime() == -62167219200000);

  date = Date.fromString("0001");
  assert(date.getTime() == -62135596800000);

  date = Date.fromString("1976");
  assert(date.getTime() == 189302400000);

  date = Date.fromString("1976-02");
  assert(date.getTime() == 191980800000);

  date = Date.fromString("1976-02-02");
  assert(date.getTime() == 192067200000);

  date = Date.fromString("1976-02-02T12:34"); // still use Z suffix
  assert(date.getTime() == 192112440000);

  date = Date.fromString("1976-02-02T12:34:56"); // still use Z suffix
  assert(date.getTime() == 192112496000);

  // date = Date.fromString('0Z');
  // assert(date.getTime() == 946684800000); // FIXME: fail

  // date = Date.fromString('000Z');
  // assert(date.getTime() == 946684800000); // FIXME: fail

  // Date.fromString("");              // Invalid Date
  // Date.fromString("1000000");       // Invalid Date
  // Date.fromString("1976-02-02T12"); // Invalid Date
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
