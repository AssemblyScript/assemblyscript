(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\02\00\00\00*\00\00\00r\00u\00n\00t\00i\00m\00e\00/\00i\00n\00s\00t\00a\00n\00c\00e\00o\00f\00.\00t\00s")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:runtime/instanceof (; 1 ;) (type $FUNCSIG$v)
  i32.const 1
  i32.const 1
  call $~lib/runtime/__runtime_instanceof
  i32.eqz
  if
   i32.const 0
   i32.const 16
   i32.const 7
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
   i32.const 16
   i32.const 14
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
   i32.const 16
   i32.const 21
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
   i32.const 16
   i32.const 28
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
   i32.const 16
   i32.const 35
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 3
  call $~lib/runtime/__runtime_instanceof
  if
   i32.const 0
   i32.const 16
   i32.const 42
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 4
  call $~lib/runtime/__runtime_instanceof
  if
   i32.const 0
   i32.const 16
   i32.const 49
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 3
  i32.const 4
  call $~lib/runtime/__runtime_instanceof
  if
   i32.const 0
   i32.const 16
   i32.const 56
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start (; 2 ;) (type $FUNCSIG$v)
  call $start:runtime/instanceof
 )
 (func $~lib/runtime/__runtime_instanceof (; 3 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $null (; 4 ;) (type $FUNCSIG$v)
  nop
 )
)
