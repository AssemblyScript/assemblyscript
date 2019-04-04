(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$viiddddd (func (param i32 i32 f64 f64 f64 f64 f64)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "env" "trace" (func $~lib/env/trace (param i32 i32 f64 f64 f64 f64 f64)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00*")
 (data (i32.const 24) "r\00u\00n\00t\00i\00m\00e\00/\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s")
 (data (i32.const 72) "\02\00\00\00\1e")
 (data (i32.const 88) "~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 120) "\02\00\00\00\16")
 (data (i32.const 136) "g\00c\00.\00r\00e\00g\00i\00s\00t\00e\00r")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $gc/_dummy/register_count (mut i32) (i32.const 0))
 (global $gc/_dummy/register_ref (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $runtime/instanceof/animal (mut i32) (i32.const 0))
 (global $runtime/instanceof/cat (mut i32) (i32.const 0))
 (global $runtime/instanceof/blackcat (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullableAnimal (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullableCat (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullableBlackcat (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullAnimal (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullCat (mut i32) (i32.const 0))
 (global $runtime/instanceof/nullBlackcat (mut i32) (i32.const 0))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $runtime/instanceof/main))
 (export ".capabilities" (global $~lib/capabilities))
 (func $~lib/allocator/arena/__mem_allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.tee $1
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/runtime/runtime.allocate (; 3 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  i32.const 16
  call $~lib/allocator/arena/__mem_allocate
  local.tee $0
  i32.const -1520547049
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 16
  i32.add
 )
 (func $gc/_dummy/__ref_register (; 4 ;) (type $FUNCSIG$vi) (param $0 i32)
  i32.const 136
  i32.const 1
  local.get $0
  f64.convert_i32_u
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $~lib/env/trace
  global.get $gc/_dummy/register_count
  i32.const 1
  i32.add
  global.set $gc/_dummy/register_count
  local.get $0
  global.set $gc/_dummy/register_ref
 )
 (func $~lib/runtime/runtime.register (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 160
  i32.le_u
  if
   i32.const 0
   i32.const 88
   i32.const 82
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 88
   i32.const 84
   i32.const 6
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
  call $gc/_dummy/__ref_register
  local.get $0
 )
 (func $runtime/instanceof/Animal#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   call $~lib/runtime/runtime.allocate
   i32.const 1
   call $~lib/runtime/runtime.register
  end
 )
 (func $runtime/instanceof/Cat#constructor (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   call $~lib/runtime/runtime.allocate
   i32.const 3
   call $~lib/runtime/runtime.register
  end
  call $runtime/instanceof/Animal#constructor
 )
 (func $runtime/instanceof/BlackCat#constructor (; 8 ;) (type $FUNCSIG$i) (result i32)
  call $~lib/runtime/runtime.allocate
  i32.const 4
  call $~lib/runtime/runtime.register
  call $runtime/instanceof/Cat#constructor
 )
 (func $start:runtime/instanceof (; 9 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 1
  i32.const 1
  call $~lib/runtime/__runtime_instanceof
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 8
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 1
  call $~lib/runtime/__runtime_instanceof
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 15
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  i32.const 1
  call $~lib/runtime/__runtime_instanceof
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 22
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 3
  call $~lib/runtime/__runtime_instanceof
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 29
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 4
  i32.const 3
  call $~lib/runtime/__runtime_instanceof
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 36
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 3
  call $~lib/runtime/__runtime_instanceof
  if
   i32.const 0
   i32.const 24
   i32.const 43
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 4
  call $~lib/runtime/__runtime_instanceof
  if
   i32.const 0
   i32.const 24
   i32.const 50
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  call $~lib/runtime/__runtime_instanceof
  if
   i32.const 0
   i32.const 24
   i32.const 57
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 160
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  call $runtime/instanceof/Animal#constructor
  global.set $runtime/instanceof/animal
  i32.const 0
  call $runtime/instanceof/Cat#constructor
  global.set $runtime/instanceof/cat
  call $runtime/instanceof/BlackCat#constructor
  global.set $runtime/instanceof/blackcat
  global.get $runtime/instanceof/animal
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 3
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 69
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/animal
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 4
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 70
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/cat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 3
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 73
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/cat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 4
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 74
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/blackcat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 3
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 77
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/blackcat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 4
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 78
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  call $runtime/instanceof/Animal#constructor
  global.set $runtime/instanceof/nullableAnimal
  i32.const 0
  call $runtime/instanceof/Cat#constructor
  global.set $runtime/instanceof/nullableCat
  call $runtime/instanceof/BlackCat#constructor
  global.set $runtime/instanceof/nullableBlackcat
  global.get $runtime/instanceof/nullableAnimal
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 84
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableAnimal
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 3
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 85
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableAnimal
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 4
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 86
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableCat
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 88
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableCat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 3
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 89
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableCat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 4
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 90
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableBlackcat
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 92
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableBlackcat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 3
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 93
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullableBlackcat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 4
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 94
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullAnimal
  if
   i32.const 0
   i32.const 24
   i32.const 100
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullAnimal
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 3
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 101
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullAnimal
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 4
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 102
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullCat
  if
   i32.const 0
   i32.const 24
   i32.const 104
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullCat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 3
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 105
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullCat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 4
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 106
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullBlackcat
  if
   i32.const 0
   i32.const 24
   i32.const 108
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullBlackcat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 3
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 109
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $runtime/instanceof/nullBlackcat
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 16
   i32.sub
   i32.load
   i32.const 4
   call $~lib/runtime/__runtime_instanceof
  else   
   i32.const 0
  end
  if
   i32.const 0
   i32.const 24
   i32.const 110
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $runtime/instanceof/main (; 10 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  i32.eqz
  if
   call $start:runtime/instanceof
   i32.const 1
   global.set $~lib/started
  end
 )
 (func $~lib/runtime/__runtime_instanceof (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $nope
   block $runtime/instanceof/BlackCat
    block $runtime/instanceof/Cat
     block $~lib/string/String
      block $runtime/instanceof/Animal
       local.get $0
       i32.const 1
       i32.sub
       br_table $runtime/instanceof/Animal $~lib/string/String $runtime/instanceof/Cat $runtime/instanceof/BlackCat $nope
      end
      local.get $1
      i32.const 1
      i32.eq
      return
     end
     local.get $1
     i32.const 2
     i32.eq
     return
    end
    local.get $1
    i32.const 3
    i32.eq
    local.get $1
    i32.const 1
    i32.eq
    i32.or
    return
   end
   local.get $1
   i32.const 4
   i32.eq
   local.get $1
   i32.const 3
   i32.eq
   i32.or
   local.get $1
   i32.const 1
   i32.eq
   i32.or
   return
  end
  i32.const 0
 )
 (func $null (; 12 ;) (type $FUNCSIG$v)
  nop
 )
)
