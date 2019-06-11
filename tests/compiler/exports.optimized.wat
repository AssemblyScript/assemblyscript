(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (memory $0 0)
 (global $exports/Animal.CAT i32 (i32.const 0))
 (global $exports/Animal.DOG i32 (i32.const 1))
 (global $exports/animals.Animal.CAT i32 (i32.const 0))
 (global $exports/animals.Animal.DOG i32 (i32.const 1))
 (global $exports/Car.TIRES i32 (i32.const 4))
 (global $exports/vehicles.Car.TIRES i32 (i32.const 4))
 (global $exports/outer.inner.a i32 (i32.const 42))
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $exports/Car i32 (i32.const 3))
 (global $exports/vehicles.Car i32 (i32.const 4))
 (export "memory" (memory $0))
 (export "add" (func $exports/add))
 (export "__setargc" (func $~lib/setargc))
 (export "subOpt" (func $exports/subOpt|trampoline))
 (export "math.sub" (func $exports/subOpt))
 (export "Animal.CAT" (global $exports/Animal.CAT))
 (export "Animal.DOG" (global $exports/Animal.DOG))
 (export "animals.Animal.CAT" (global $exports/animals.Animal.CAT))
 (export "animals.Animal.DOG" (global $exports/animals.Animal.DOG))
 (export "Car" (global $exports/Car))
 (export "Car#get:doors" (func $exports/Car#get:numDoors))
 (export "Car#set:doors" (func $exports/Car#set:numDoors))
 (export "Car#constructor" (func $exports/Car#constructor|trampoline))
 (export "Car#get:numDoors" (func $exports/Car#get:numDoors))
 (export "Car#set:numDoors" (func $exports/Car#set:numDoors))
 (export "Car#openDoors" (func $exports/Car#openDoors))
 (export "Car.TIRES" (global $exports/Car.TIRES))
 (export "Car.getNumTires" (func $exports/Car.getNumTires))
 (export "vehicles.Car" (global $exports/vehicles.Car))
 (export "vehicles.Car#get:doors" (func $exports/Car#get:numDoors))
 (export "vehicles.Car#set:doors" (func $exports/Car#set:numDoors))
 (export "vehicles.Car#constructor" (func $exports/vehicles.Car#constructor|trampoline))
 (export "vehicles.Car#get:numDoors" (func $exports/Car#get:numDoors))
 (export "vehicles.Car#set:numDoors" (func $exports/Car#set:numDoors))
 (export "vehicles.Car#openDoors" (func $exports/Car#openDoors))
 (export "vehicles.Car.TIRES" (global $exports/vehicles.Car.TIRES))
 (export "vehicles.Car.getNumTires" (func $exports/Car.getNumTires))
 (export "outer.inner.a" (global $exports/outer.inner.a))
 (start $start)
 (func $exports/add (; 0 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $exports/subOpt (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $exports/Car.getNumTires (; 2 ;) (type $FUNCSIG$i) (result i32)
  i32.const 4
 )
 (func $~lib/rt/stub/__alloc (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.tee $2
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  local.tee $1
  memory.size
  local.tee $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $3
   local.get $1
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $4
   local.get $3
   local.get $4
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $4
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $1
  global.set $~lib/rt/stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.tee $1
  local.get $0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.store offset=12
  local.get $2
 )
 (func $exports/Car#get:numDoors (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $exports/Car#set:numDoors (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $exports/Car#openDoors (; 6 ;) (type $FUNCSIG$vi) (param $0 i32)
  nop
 )
 (func $start (; 7 ;) (type $FUNCSIG$v)
  i32.const 16
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
 )
 (func $null (; 8 ;) (type $FUNCSIG$v)
  nop
 )
 (func $exports/subOpt|trampoline (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $0
  local.get $1
  call $exports/subOpt
 )
 (func $~lib/setargc (; 10 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.set $~lib/argc
 )
 (func $exports/Car#constructor|trampoline (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 2
   local.set $1
  end
  local.get $0
  i32.eqz
  if
   i32.const 3
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $exports/vehicles.Car#constructor|trampoline (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 2
   local.set $1
  end
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/rt/stub/__alloc
   local.set $0
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
)
