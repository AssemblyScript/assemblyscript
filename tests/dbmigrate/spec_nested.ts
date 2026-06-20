// A NESTED @data type: `User { addr: Address }`. The compiler must emit the
// `toildb.types` registry containing Address's layout, so the deploy gate can
// recurse into a nested change a flat catalog compare would miss.

@data
class Address {
  street: string = "";
  zip: string = "";
}

@data
class UserId {
  id: u64 = 0;
}

@data
class User {
  id: u64 = 0;
  addr: Address = new Address();
}

@database
class App {
  @collection users: Documents<UserId, User>;
}

export function probe(): u64 {
  return App.users.require(new UserId()).id;
}
