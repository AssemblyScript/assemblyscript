import { dirent, rwevent, fdstat, filestat, iovec, clocksubscription, fdsubscription, signal, dirprestat } from "bindings/wasi";

const WASM32 = 1;
const WASM64 = 2;

assert(offsetof<dirent>("next") == 0);
assert(offsetof<dirent>("ino") == 8);
assert(offsetof<dirent>("namlen") == 16);
assert(offsetof<dirent>("type") == 20);
assert(offsetof<dirent>() == 24);

assert(offsetof<rwevent>("userdata") == 0);
assert(offsetof<rwevent>("error") == 8);
assert(offsetof<rwevent>("type") == 10);
assert(offsetof<rwevent>("nbytes") == 16);
assert(offsetof<rwevent>("flags") == 24);
assert(offsetof<rwevent>() == 32);

assert(offsetof<fdstat>("filetype") == 0);
assert(offsetof<fdstat>("flags") == 2);
assert(offsetof<fdstat>("rights_base") == 8);
assert(offsetof<fdstat>("rights_inheriting") == 16);
assert(offsetof<fdstat>() == 24);

assert(offsetof<filestat>("dev") == 0);
assert(offsetof<filestat>("ino") == 8);
assert(offsetof<filestat>("filetype") == 16);
assert(offsetof<filestat>("nlink") == 20);
assert(offsetof<filestat>("size") == 24);
assert(offsetof<filestat>("atim") == 32);
assert(offsetof<filestat>("mtim") == 40);
assert(offsetof<filestat>("ctim") == 48);
assert(offsetof<filestat>() == 56);

assert(offsetof<iovec>("buf") == 0);
if (ASC_TARGET == WASM32) {
  assert(offsetof<iovec>("buf_len") == 4);
  assert(offsetof<iovec>() == 8);
} else if (ASC_TARGET == WASM64) {
  assert(offsetof<iovec>("buf_len") == 8);
  assert(offsetof<iovec>() == 16);
} else {
  assert(false);
}

assert(offsetof<clocksubscription>("userdata") == 0);
assert(offsetof<clocksubscription>("type") == 8);
assert(offsetof<clocksubscription>("identifier") == 16);
assert(offsetof<clocksubscription>("clock_id") == 24);
assert(offsetof<clocksubscription>("timeout") == 32);
assert(offsetof<clocksubscription>("precision") == 40);
assert(offsetof<clocksubscription>("flags") == 48);
assert(offsetof<clocksubscription>() == 56);

assert(offsetof<fdsubscription>("userdata") == 0);
assert(offsetof<fdsubscription>("type") == 8);
assert(offsetof<fdsubscription>("fd") == 16);
assert(offsetof<fdsubscription>() == 20);

assert(offsetof<dirprestat>("type") == 0);
if (ASC_TARGET == WASM32) {
  assert(offsetof<dirprestat>("name_len") == 4);
  assert(offsetof<dirprestat>() == 8);
} else if (ASC_TARGET == WASM64) {
  assert(offsetof<dirprestat>("name_len") == 8);
  assert(offsetof<dirprestat>() == 16);
} else {
  assert(false);
}

// check assignability of mimicked typed enums
var sig: signal = signal.HUP;
sig = signal.KILL;
