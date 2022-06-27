/* eslint-disable no-class-assign */
/* eslint-disable no-global-assign */

class Foo {}

Foo++;
++Foo;
// Foo += 1;

Foo--;
--Foo;
// Foo -= 1;

Array++;
++Array;
// Array += 1;

Array--;
--Array;
// Array -= 1;

const a = (Foo++);
const b = (++Foo);
// const c = (Foo += 1);

const d = (Foo--);
const e = (--Foo);
// const f = (Foo -= 1);

const g = (Array++);
const h = (++Array);
// const i = (Array += 1);

const j = (Array--);
const k = (--Array);
// const l = (Array -= 1);

ERROR("EOF");  