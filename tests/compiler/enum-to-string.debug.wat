(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func))
 (type $2 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $3 (func (param i32 i32 i32 i32)))
 (type $4 (func (param i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $enum-to-string/Enum.E0 i32 (i32.const 0))
 (global $enum-to-string/Enum.E1 i32 (i32.const 1))
 (global $enum-to-string/Enum.E2 i32 (i32.const 2))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $enum-to-string/v (mut i32) (i32.const 0))
 (global $enum-to-string/EnumWithInit.E0 i32 (i32.const 1))
 (global $enum-to-string/EnumWithInit.E1 i32 (i32.const 2))
 (global $enum-to-string/EnumWithInit.E2 i32 (i32.const 4))
 (global $enum-to-string/EnumWithDup.E0 i32 (i32.const 1))
 (global $enum-to-string/EnumWithDup.E1 i32 (i32.const 2))
 (global $enum-to-string/EnumWithDup.E2 i32 (i32.const 1))
 (global $~lib/memory/__data_end i32 (i32.const 268))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33036))
 (global $~lib/memory/__heap_base i32 (i32.const 33036))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00E\002\00\00\00\00\00\00\00\00\00")
 (data $1 (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00E\001\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 76) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00E\000\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 108) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00e\00n\00u\00m\00-\00t\00o\00-\00s\00t\00r\00i\00n\00g\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 172) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00C\00E\002\00\00\00\00\00\00\00")
 (data $5 (i32.const 204) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00C\00E\001\00\00\00\00\00\00\00")
 (data $6 (i32.const 236) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00C\00E\000\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $enum-to-string/Enum#__enum_to_string (param $0 i32) (result i32)
  global.get $enum-to-string/Enum.E2
  local.get $0
  i32.eq
  if
   i32.const 32
   return
  end
  global.get $enum-to-string/Enum.E1
  local.get $0
  i32.eq
  if
   i32.const 64
   return
  end
  global.get $enum-to-string/Enum.E0
  local.get $0
  i32.eq
  if
   i32.const 96
   return
  end
  unreachable
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/string/String#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/util/string/compareImpl (param $str1 i32) (param $index1 i32) (param $str2 i32) (param $index2 i32) (param $len i32) (result i32)
  (local $ptr1 i32)
  (local $ptr2 i32)
  (local $7 i32)
  (local $a i32)
  (local $b i32)
  local.get $str1
  local.get $index1
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr1
  local.get $str2
  local.get $index2
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr2
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $len
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $ptr1
   i32.const 7
   i32.and
   local.get $ptr2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $ptr1
     i64.load
     local.get $ptr2
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $ptr1
     i32.const 8
     i32.add
     local.set $ptr1
     local.get $ptr2
     i32.const 8
     i32.add
     local.set $ptr2
     local.get $len
     i32.const 4
     i32.sub
     local.set $len
     local.get $len
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $len
   local.tee $7
   i32.const 1
   i32.sub
   local.set $len
   local.get $7
   if
    local.get $ptr1
    i32.load16_u
    local.set $a
    local.get $ptr2
    i32.load16_u
    local.set $b
    local.get $a
    local.get $b
    i32.ne
    if
     local.get $a
     local.get $b
     i32.sub
     return
    end
    local.get $ptr1
    i32.const 2
    i32.add
    local.set $ptr1
    local.get $ptr2
    i32.const 2
    i32.add
    local.set $ptr2
    br $while-continue|1
   end
  end
  i32.const 0
  return
 )
 (func $enum-to-string/InlineEnum#__enum_to_string (param $0 i32) (result i32)
  i32.const 2
  local.get $0
  i32.eq
  if
   i32.const 192
   return
  end
  i32.const 1
  local.get $0
  i32.eq
  if
   i32.const 224
   return
  end
  i32.const 0
  local.get $0
  i32.eq
  if
   i32.const 256
   return
  end
  unreachable
 )
 (func $enum-to-string/EnumWithInit#__enum_to_string (param $0 i32) (result i32)
  global.get $enum-to-string/EnumWithInit.E2
  local.get $0
  i32.eq
  if
   i32.const 32
   return
  end
  global.get $enum-to-string/EnumWithInit.E1
  local.get $0
  i32.eq
  if
   i32.const 64
   return
  end
  global.get $enum-to-string/EnumWithInit.E0
  local.get $0
  i32.eq
  if
   i32.const 96
   return
  end
  unreachable
 )
 (func $enum-to-string/EnumWithDup#__enum_to_string (param $0 i32) (result i32)
  global.get $enum-to-string/EnumWithDup.E2
  local.get $0
  i32.eq
  if
   i32.const 32
   return
  end
  global.get $enum-to-string/EnumWithDup.E1
  local.get $0
  i32.eq
  if
   i32.const 64
   return
  end
  global.get $enum-to-string/EnumWithDup.E0
  local.get $0
  i32.eq
  if
   i32.const 96
   return
  end
  unreachable
 )
 (func $~start
  call $start:enum-to-string
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 33056
   i32.const 33104
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/string/String.__eq (param $left i32) (param $right i32) (result i32)
  (local $leftLength i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.get $right
  i32.eq
  if
   i32.const 1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $right
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  local.set $leftLength
  local.get $leftLength
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $leftLength
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $start:enum-to-string
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $enum-to-string/Enum.E0
  call $enum-to-string/Enum#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 96
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 7
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $enum-to-string/Enum.E1
  call $enum-to-string/Enum#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 8
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $enum-to-string/Enum.E2
  call $enum-to-string/Enum#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 9
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $enum-to-string/Enum.E2
  global.set $enum-to-string/v
  global.get $enum-to-string/v
  call $enum-to-string/Enum#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $enum-to-string/InlineEnum#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 256
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  call $enum-to-string/InlineEnum#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 224
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 2
  call $enum-to-string/InlineEnum#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 192
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $enum-to-string/EnumWithInit.E0
  call $enum-to-string/EnumWithInit#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 96
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 31
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $enum-to-string/EnumWithInit.E1
  call $enum-to-string/EnumWithInit#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 32
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $enum-to-string/EnumWithInit.E2
  call $enum-to-string/EnumWithInit#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 33
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $enum-to-string/EnumWithDup.E0
  call $enum-to-string/EnumWithDup#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 41
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $enum-to-string/EnumWithDup.E1
  call $enum-to-string/EnumWithDup#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 64
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 42
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $enum-to-string/EnumWithDup.E2
  call $enum-to-string/EnumWithDup#__enum_to_string
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 32
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 43
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
