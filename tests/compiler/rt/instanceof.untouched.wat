(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00r\00t\00/\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s\00")
 (data (i32.const 56) "\06\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\03\00\00\00\10\00\00\00\04\00\00\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/rt/stub/startOffset (mut i32) (i32.const 0))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $rt/instanceof/animal (mut i32) (i32.const 0))
 (global $rt/instanceof/cat (mut i32) (i32.const 0))
 (global $rt/instanceof/blackcat (mut i32) (i32.const 0))
 (global $rt/instanceof/nullableAnimal (mut i32) (i32.const 0))
 (global $rt/instanceof/nullableCat (mut i32) (i32.const 0))
 (global $rt/instanceof/nullableBlackcat (mut i32) (i32.const 0))
 (global $rt/instanceof/nullAnimal (mut i32) (i32.const 0))
 (global $rt/instanceof/nullCat (mut i32) (i32.const 0))
 (global $rt/instanceof/nullBlackcat (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 56))
 (global $~lib/heap/__heap_base i32 (i32.const 108))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $~lib/rt/stub/__alloc (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/rt/stub/offset
  i32.const 16
  i32.add
  local.set $2
  local.get $2
  local.get $0
  local.tee $3
  i32.const 1
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_u
  select
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $5
  memory.size
  local.set $6
  local.get $5
  local.get $6
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $5
   local.get $2
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $3
   local.get $6
   local.tee $4
   local.get $3
   local.tee $7
   local.get $4
   local.get $7
   i32.gt_s
   select
   local.set $4
   local.get $4
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
  local.get $5
  global.set $~lib/rt/stub/offset
  local.get $2
  i32.const 16
  i32.sub
  local.set $8
  local.get $8
  local.get $1
  i32.store offset=8
  local.get $8
  local.get $0
  i32.store offset=12
  local.get $2
 )
 (func $~lib/rt/stub/__retain (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $rt/instanceof/Animal#constructor (; 3 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 3
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
 )
 (func $rt/instanceof/Cat#constructor (; 4 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 4
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $rt/instanceof/Animal#constructor
  local.set $0
  local.get $0
 )
 (func $rt/instanceof/BlackCat#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 5
   call $~lib/rt/stub/__alloc
   call $~lib/rt/stub/__retain
   local.set $0
  end
  local.get $0
  call $rt/instanceof/Cat#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/rt/__instanceof (; 6 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=8
  local.set $2
  global.get $~lib/rt/__rtti_base
  local.set $3
  local.get $2
  local.get $3
  i32.load
  i32.le_u
  if
   loop $continue|0
    local.get $2
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $3
    i32.const 4
    i32.add
    local.get $2
    i32.const 8
    i32.mul
    i32.add
    i32.load offset=4
    local.tee $2
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $start:rt/instanceof (; 7 ;) (type $FUNCSIG$v)
  (local $0 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/rt/stub/startOffset
  global.get $~lib/rt/stub/startOffset
  global.set $~lib/rt/stub/offset
  i32.const 0
  call $rt/instanceof/Animal#constructor
  global.set $rt/instanceof/animal
  i32.const 0
  call $rt/instanceof/Cat#constructor
  global.set $rt/instanceof/cat
  i32.const 0
  call $rt/instanceof/BlackCat#constructor
  global.set $rt/instanceof/blackcat
  global.get $rt/instanceof/animal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 10
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/animal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 5
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 11
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/cat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 14
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/cat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 5
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 15
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/blackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 18
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/blackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 5
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 19
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $rt/instanceof/Animal#constructor
  global.set $rt/instanceof/nullableAnimal
  i32.const 0
  call $rt/instanceof/Cat#constructor
  global.set $rt/instanceof/nullableCat
  i32.const 0
  call $rt/instanceof/BlackCat#constructor
  global.set $rt/instanceof/nullableBlackcat
  global.get $rt/instanceof/nullableAnimal
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 25
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullableAnimal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 26
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullableAnimal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 5
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 27
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullableCat
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 29
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullableCat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 30
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullableCat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 5
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 31
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullableBlackcat
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 33
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullableBlackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 34
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullableBlackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 5
   call $~lib/rt/__instanceof
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 35
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullAnimal
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 41
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullAnimal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullAnimal
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 5
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 43
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullCat
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 45
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullCat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 46
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullCat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 5
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 47
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullBlackcat
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 49
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullBlackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 4
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 50
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
  global.get $rt/instanceof/nullBlackcat
  local.tee $0
  i32.eqz
  if (result i32)
   i32.const 0
  else   
   local.get $0
   i32.const 5
   call $~lib/rt/__instanceof
  end
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 51
   i32.const 0
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start (; 8 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  call $start:rt/instanceof
 )
 (func $null (; 9 ;) (type $FUNCSIG$v)
 )
)
