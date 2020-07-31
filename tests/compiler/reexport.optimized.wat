(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (memory $0 1)
 (data (i32.const 1024) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00r\00e\00e\00x\00p\00o\00r\00t\00.\00t\00s")
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (global $exports/Car.TIRES i32 (i32.const 4))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $exports/Car i32 (i32.const 3))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "add" (func $export/add))
 (export "renamed_sub" (func $export/sub))
 (export "renamed_mul" (func $export/mul))
 (export "rerenamed_mul" (func $export/mul))
 (export "a" (global $export/a))
 (export "renamed_b" (global $export/b))
 (export "renamed_c" (global $export/c))
 (export "rerenamed_c" (global $export/c))
 (export "Car" (global $exports/Car))
 (export "Car#get:doors" (func $exports/Car#get:doors))
 (export "Car#set:doors" (func $exports/Car#set:doors))
 (export "Car#constructor" (func $exports/Car#constructor@varargs))
 (export "Car#get:numDoors" (func $exports/Car#get:doors))
 (export "Car#set:numDoors" (func $exports/Car#set:doors))
 (export "Car#openDoors" (func $exports/Car#openDoors))
 (export "Car.TIRES" (global $exports/Car.TIRES))
 (export "Car.getNumTires" (func $exports/Car.getNumTires))
 (export "renamed_add" (func $export/add))
 (export "rerenamed_sub" (func $export/mul))
 (export "renamed_ns.two" (func $export/ns.one))
 (export "exportstar.add" (func $export/add))
 (export "exportstar.sub" (func $export/sub))
 (export "exportstar.renamed_mul" (func $export/mul))
 (export "exportstar.a" (global $export/a))
 (export "exportstar.b" (global $export/b))
 (export "exportstar.renamed_c" (global $export/c))
 (export "exportstar.ns.two" (func $export/ns.one))
 (export "exportstar.default.two" (func $export/ns.one))
 (export "default" (func $export/ns.one))
 (export "renamed_default" (func $export/ns.one))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (start $~start)
 (func $export/add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $export/mul (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.mul
 )
 (func $export/sub (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $exports/Car.getNumTires (result i32)
  i32.const 4
 )
 (func $exports/Car#get:doors (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $exports/Car#set:doors (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $exports/Car#openDoors (param $0 i32)
  nop
 )
 (func $export/ns.one
  nop
 )
 (func $~start
  i32.const 1072
  global.set $~lib/rt/stub/offset
 )
 (func $exports/Car#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
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
   global.get $~lib/rt/stub/offset
   i32.const 16
   i32.add
   local.tee $0
   i32.const 16
   i32.add
   local.tee $2
   memory.size
   local.tee $4
   i32.const 16
   i32.shl
   local.tee $3
   i32.gt_u
   if
    local.get $4
    local.get $2
    local.get $3
    i32.sub
    i32.const 65535
    i32.add
    i32.const -65536
    i32.and
    i32.const 16
    i32.shr_u
    local.tee $3
    local.get $4
    local.get $3
    i32.gt_s
    select
    memory.grow
    i32.const 0
    i32.lt_s
    if
     local.get $3
     memory.grow
     i32.const 0
     i32.lt_s
     if
      unreachable
     end
    end
   end
   local.get $2
   global.set $~lib/rt/stub/offset
   local.get $0
   i32.const 16
   i32.sub
   local.tee $2
   i32.const 16
   i32.store
   local.get $2
   i32.const 1
   i32.store offset=4
   local.get $2
   i32.const 3
   i32.store offset=8
   local.get $2
   i32.const 4
   i32.store offset=12
  end
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store
  local.get $0
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
)
