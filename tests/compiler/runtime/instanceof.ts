import { __runtime_id, __runtime_instanceof } from "runtime";

class Animal {}
class Cat extends Animal {}
class BlackCat extends Cat {}

assert( // Animal is an Animal
  __runtime_instanceof(
    __runtime_id<Animal>(),
    __runtime_id<Animal>()
  )
);

assert( // Cat is an Animal
  __runtime_instanceof(
    __runtime_id<Cat>(),
    __runtime_id<Animal>()
  )
);

assert( // BlackCat is an Animal
  __runtime_instanceof(
    __runtime_id<BlackCat>(),
    __runtime_id<Animal>()
  )
);

assert( // Cat is a Cat
  __runtime_instanceof(
    __runtime_id<Cat>(),
    __runtime_id<Cat>()
  )
);

assert( // BlackCat is a Cat
  __runtime_instanceof(
    __runtime_id<BlackCat>(),
    __runtime_id<Cat>()
  )
);

assert(! // Animal isn't necessarily a Cat
  __runtime_instanceof(
    __runtime_id<Animal>(),
    __runtime_id<Cat>()
  )
);

assert(! // Animal isn't necessarily a BlackCat
  __runtime_instanceof(
    __runtime_id<Animal>(),
    __runtime_id<BlackCat>()
  )
);

assert(! // Cat isn't necessarily a BlackCat
  __runtime_instanceof(
    __runtime_id<Cat>(),
    __runtime_id<BlackCat>()
  )
);
