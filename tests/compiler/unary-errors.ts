/* eslint-disable no-class-assign */
/* eslint-disable no-global-assign */

class Foo {}
namespace Bar {}

const a = (Foo++);
const b = (++Foo);
// const c = (Foo += 1);

const d = (Foo--);
const e = (--Foo);
// const f = (Foo -= 1);

const g = (Bar++);
const h = (++Bar);
// const i = (Bar += 1);

const j = (Bar--);
const k = (--Bar);
// const l = (Bar -= 1);

ERROR("EOF");  