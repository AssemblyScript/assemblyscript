// The DELTA form of @migrate: `(old, into): void`. The compiler carries over the
// fields the two layouts SHARE (here `name: string`), so the body fills only the
// changed (`id`: u32 -> u64) and new (`email`) fields. Proves the 2-arg form is
// recognized + woven (no need to redefine every property; no unsafe changetype).

@data
class UserId {
  id: u64 = 0;
}

@data
class UserV1 {
  id: u32 = 0;
  name: string = "";
}

@data
class User {
  id: u64 = 0;
  name: string = "";
  email: string = "";
}

@migrate
function up(old: UserV1, u: User): void {
  // `name` is carried over automatically (shared field); `email` defaults to "".
  u.id = <u64>old.id;
}

@database
class App {
  @collection users: Documents<UserId, User>;
}

export function probe(): u64 {
  return App.users.require(new UserId()).id;
}
