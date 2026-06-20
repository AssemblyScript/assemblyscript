// A @migrate fixture: the value type `User` evolves in a BREAKING way (its `id`
// is retyped u32 -> u64, and `email` is appended), and a kept old shape `UserV1`
// + an @migrate transform lets old rows decode. The compiler must (a) emit the
// old layout version as `users.migratableFrom`, and (b) weave a version-dispatch
// into `User.decodeInto` (which pulls in the `data.result_schema_version` import).

@data
class UserId {
  id: u64 = 0;
}

// The OLD value shape, kept so rows written under it can still be decoded.
@data
class UserV1 {
  id: u32 = 0;
  name: string = "";
}

// The NEW value shape: `id` retyped u32 -> u64 (breaking), `email` appended.
@data
class User {
  id: u64 = 0;
  name: string = "";
  email: string = "";
}

@migrate
function up(old: UserV1): User {
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

// Reach the read path so `User.decodeInto` (with the woven dispatch) is retained.
export function probe(): u64 {
  return App.users.require(new UserId()).id;
}
