// A migration CHAIN: a row written under version 0 reaches the current version 2
// via two step migrations (0 -> 1 then 1 -> 2). The compiler must (a) emit BOTH
// reachable old versions in `migratableFrom`, and (b) weave a dispatch that, for a
// v0 row, runs up01 then up12 to reach `User`.

@data
class UserId {
  id: u64 = 0;
}

// version 0
@data
class UserV0 {
  id: u32 = 0;
}

// version 1: `name` appended
@data
class UserV1 {
  id: u32 = 0;
  name: string = "";
}

// current (version 2): `id` retyped u32 -> u64, `email` appended
@data
class User {
  id: u64 = 0;
  name: string = "";
  email: string = "";
}

@migrate
function up01(old: UserV0): UserV1 {
  const u = new UserV1();
  u.id = old.id;
  u.name = "";
  return u;
}

@migrate
function up12(old: UserV1): User {
  const u = new User();
  u.id = <u64>old.id;
  u.name = old.name;
  u.email = "";
  return u;
}

@database
class App {
  @collection users: Documents<UserId, User>;
}

export function probe(): u64 {
  return App.users.require(new UserId()).id;
}
