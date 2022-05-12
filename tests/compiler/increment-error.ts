/* eslint-disable no-class-assign */
/* eslint-disable no-global-assign */

class Foo {}

Foo++;
++Foo;
Foo += 1;

Foo--;
--Foo;
Foo -= 1;

Array++;
++Array;
Array += 1;

Array--;
--Array;
Array -= 1;

ERROR("EOF"); 