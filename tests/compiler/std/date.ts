import "allocator/arena";

assert(Date.UTC(1970, 0, 1) == 0);
assert(Date.UTC(1970, 0, 1, 0, 0, 0, 0) == 0);

var creationTime = Date.UTC(2018, 10, 10, 11, 0, 0, 1);
assert(creationTime == 1541847600001);

assert(Date.now() > creationTime);

var date = new Date(creationTime);
assert(date.getTime() == creationTime);
date.setTime(creationTime + 1);
assert(date.getTime() == creationTime + 1);
