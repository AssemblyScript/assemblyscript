import {
  dirent,
  event,
  event_fd_readwrite,
  fdstat,
  filestat,
  iovec,
  subscription,
  subscription_clock,
  subscription_fd_readwrite,
  signal,
  prestat,
  prestat_dir
} from "bindings/wasi";

import { Target } from "shared/target";

assert(offsetof<dirent>("next") == 0);
assert(offsetof<dirent>("ino") == 8);
assert(offsetof<dirent>("namlen") == 16);
assert(offsetof<dirent>("type") == 20);
assert(offsetof<dirent>() == 24);

assert(offsetof<event_fd_readwrite>("userdata") == 0);
assert(offsetof<event_fd_readwrite>("error") == 8);
assert(offsetof<event_fd_readwrite>("type") == 10);
assert(offsetof<event_fd_readwrite>("nbytes") == 16);
assert(offsetof<event_fd_readwrite>("flags") == 24);
assert(offsetof<event_fd_readwrite>() == 32);

assert(offsetof<event>() == 32);

assert(offsetof<fdstat>("filetype") == 0);
assert(offsetof<fdstat>("flags") == 2);
assert(offsetof<fdstat>("rights_base") == 8);
assert(offsetof<fdstat>("rights_inheriting") == 16);
assert(offsetof<fdstat>() == 24);

assert(offsetof<filestat>("dev") == 0);
assert(offsetof<filestat>("ino") == 8);
assert(offsetof<filestat>("filetype") == 16);
assert(offsetof<filestat>("nlink") == 24);
assert(offsetof<filestat>("size") == 32);
assert(offsetof<filestat>("atim") == 40);
assert(offsetof<filestat>("mtim") == 48);
assert(offsetof<filestat>("ctim") == 56);
assert(offsetof<filestat>() == 64);

assert(offsetof<iovec>("buf") == 0);
if (ASC_TARGET == Target.WASM32) {
  assert(offsetof<iovec>("buf_len") == 4);
  assert(offsetof<iovec>() == 8);
} else if (ASC_TARGET == Target.WASM64) {
  assert(offsetof<iovec>("buf_len") == 8);
  assert(offsetof<iovec>() == 16);
} else {
  assert(false);
}

assert(offsetof<subscription_clock>("userdata") == 0);
assert(offsetof<subscription_clock>("type") == 8);
assert(offsetof<subscription_clock>("clock_id") == 16);
assert(offsetof<subscription_clock>("timeout") == 24);
assert(offsetof<subscription_clock>("precision") == 32);
assert(offsetof<subscription_clock>("flags") == 40);
assert(offsetof<subscription_clock>() == 48);

assert(offsetof<subscription_fd_readwrite>("userdata") == 0);
assert(offsetof<subscription_fd_readwrite>("type") == 8);
assert(offsetof<subscription_fd_readwrite>("file_descriptor") == 16);
assert(offsetof<subscription_fd_readwrite>() == 48);

assert(offsetof<subscription>() == 48);

assert(offsetof<prestat_dir>("type") == 0);
if (ASC_TARGET == Target.WASM32) {
  assert(offsetof<prestat_dir>("name_len") == 4);
  assert(offsetof<prestat_dir>() == 8);
  assert(offsetof<prestat>() == 8);
} else if (ASC_TARGET == Target.WASM64) {
  assert(offsetof<prestat_dir>("name_len") == 8);
  assert(offsetof<prestat_dir>() == 16);
  assert(offsetof<prestat>() == 16);
} else {
  assert(false);
}

// check assignability of mimicked typed enums
var sig: signal = signal.HUP;
sig = signal.KILL;
