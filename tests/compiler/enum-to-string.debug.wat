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
 (global $~lib/util/dtoa/LOG10_2_SIGNIFICAND i32 (i32.const 315653))
 (global $~lib/util/dtoa/LOG10_2_EXP i32 (i32.const 20))
 (global $~lib/util/dtoa/LOG2_POW10_SIGNIFICAND i32 (i32.const 217707))
 (global $~lib/util/dtoa/LOG2_POW10_EXP i32 (i32.const 16))
 (global $~lib/util/dtoa/gPow10Hi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gPow10Lo (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/DIV10_EXP i32 (i32.const 10))
 (global $~lib/util/dtoa/DIV10_SIG i64 (i64.const 103))
 (global $~lib/util/dtoa/NEG10 i64 (i64.const 246))
 (global $~lib/util/dtoa/DIV100_EXP i32 (i32.const 19))
 (global $~lib/util/dtoa/DIV100_SIG i64 (i64.const 5243))
 (global $~lib/util/dtoa/NEG100 i64 (i64.const 65436))
 (global $~lib/util/dtoa/DIV10K_EXP i32 (i32.const 40))
 (global $~lib/util/dtoa/DIV10K_SIG i64 (i64.const 109951163))
 (global $~lib/util/dtoa/NEG10K i64 (i64.const 4294957296))
 (global $~lib/util/dtoa/ZEROS i64 (i64.const 3472328296227680304))
 (global $~lib/util/dtoa/gBcd (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gBcdLen (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gDigHi (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigLo (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gDigits (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gSig (mut i64) (i64.const 0))
 (global $~lib/util/dtoa/gExp (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/gHasLastDigit (mut i32) (i32.const 0))
 (global $~lib/util/dtoa/DOUBLE_EXP_OFFSET i32 (i32.const 1075))
 (global $~lib/util/dtoa/DOUBLE_SIGNIFICAND_SIZE i32 (i32.const 52))
 (global $~lib/util/dtoa/DOUBLE_HIDDEN_BIT i64 (i64.const 4503599627370496))
 (global $~lib/util/dtoa/DOUBLE_SIGNIFICAND_MASK i64 (i64.const 4503599627370495))
 (global $~lib/util/dtoa/EXTRA_SHIFT i32 (i32.const 6))
 (global $~lib/util/dtoa/BIASED_HALF i64 (i64.const -9223372036854775802))
 (global $~lib/util/dtoa/DOUBLE_MAX_DIGITS10 i32 (i32.const 17))
 (global $~lib/util/dtoa/MIN_FIXED_DEC_EXP i32 (i32.const -6))
 (global $~lib/util/dtoa/MAX_FIXED_DEC_EXP i32 (i32.const 20))
 (global $~lib/util/dtoa/FLOAT_EXP_OFFSET i32 (i32.const 150))
 (global $~lib/util/dtoa/FLOAT_SIGNIFICAND_SIZE i32 (i32.const 23))
 (global $~lib/util/dtoa/FLOAT_HIDDEN_BIT i64 (i64.const 8388608))
 (global $~lib/util/dtoa/FLOAT_SIGNIFICAND_MASK i32 (i32.const 8388607))
 (global $~lib/util/dtoa/FLOAT_BIT i32 (i32.const 36))
 (global $~lib/util/dtoa/FLOAT_ONE_BIAS i64 (i64.const 17179869177))
 (global $~lib/util/dtoa/FLOAT_MAX_DIGITS10 i32 (i32.const 9))
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
 (global $~lib/memory/__data_end i32 (i32.const 1148))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33916))
 (global $~lib/memory/__heap_base i32 (i32.const 33916))
 (memory $0 1)
 (data $0 (i32.const 12) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00E\002\00\00\00\00\00\00\00\00\00")
 (data $1 (i32.const 44) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00E\001\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 76) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00E\000\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 112) "p\\\ea{\ce2~\8f\1a\c7C\c6\b0\b7\96\e5\ae\05\03\05\'\c6\ab\b7\bf7\cf\d0\b8\d1\ef\92\fe%\e5\1a\8eO\19\eb2\ebP\e2\a4?\14\bc\f5\88\r\b5P\99v\96!\dbH\bb\1a\c2\bd\f0\b4\15\07\c9{\ce\97\c0]\11l:\96\0b\13\9a\c7\1b\e0\c3V\df\84\f6\06\e3L6\12\197\c5\9e\b5p+\a8\ad\c5\9d\97\"\81E@|o\fc\dfNg\04\cd\c9\f2\c9\e6\0b\b96\d7\07\8f\a1\85\t\94\f8x9?\81:\0f \f4\'\8f\cb\ce\c8\a5\19\90\b9\a5o\a5\a0\84\14@aQY\84\00\a1\ed\cc\ce\1b\c2\d3\00\b4W\n?\16h\a9\00\90\acn2x\86\87\00\80z\17\b7&\d7\d8\00\00b\ac\c5\ebx\ad\00\00\e8\89\04#\c7\8a\00\00@v:k\0b\de\00\00\00\c5.\bc\a2\b1\00\00\00\04\bf\c9\1b\8e\00\00\00\a01\a9_\e3\00\00\00\80\f4 \e6\b5\00\00\00\00*\e7\84\91\00\00\00\00\10\a5\d4\e8\00\00\00\00@\b7C\ba\00\00\00\00\00\f9\02\95\00\00\00\00\00(k\ee\00\00\00\00\00 \bc\be\00\00\00\00\00\80\96\98\00\00\00\00\00\00$\f4\00\00\00\00\00\00P\c3\00\00\00\00\00\00@\9c\00\00\00\00\00\00\00\fa\00\00\00\00\00\00\00\c8\00\00\00\00\00\00\00\a0\00\00\00\00\00\00\00\80\cd\cc\cc\cc\cc\cc\cc\cc\0b\d7\a3p=\n\d7\a3<\dfO\8d\97n\12\83,e\19\e2X\17\b7\d1$\84G\1bG\ac\c5\a7\b6il\af\05\bd7\86\bdBz\e5\d5\94\bf\d6\fd\cea\84\11w\cc\ab\98\a5\b46A_p\89\bf\d5\ed\bd\ce\fe\e6\db\ff\aa$\cb\0b\ff\eb\af\cc\88Po\t\cc\bc\8c\14\0e\b4KB\13.\e1\10\d8\\\t5\dc$\b4\da\ac\b0:\f7|\1d\90\\\e1M\c4\be\94\95\e6J\b4\a462\aaw\b8\08]\1d\92\8e\ee\92\93\a6a\95\b6}J\1e\ec\eb\1a\11\92d\08\e5\bc\ef{\datP\a0\1d\97\b2,\f7\ba\80\00\c9\f1(\8a\92\95\00\9am\c1S;uD\cd\14\be\9aR\c5\ee\d3\ae\87\96\f7\db\9dXv%\06\12\c6I~\e0\91\b7\d1t\9e\0e\ca\00\83\f2\b5\87\fd?;\9a5\f5\f7\d2\ca2\fc\14^\f7_B\a2\f5\fcCK,\b3\ce\81\bb\949E\ad\1e\b1\cf")
 (data $4 (i32.const 728) "\"\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$!\"#$\"#$\"#$\"#$!\"#")
 (data $5 (i32.const 988) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00e\00n\00u\00m\00-\00t\00o\00-\00s\00t\00r\00i\00n\00g\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 1052) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00C\00E\002\00\00\00\00\00\00\00")
 (data $7 (i32.const 1084) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00C\00E\001\00\00\00\00\00\00\00")
 (data $8 (i32.const 1116) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00C\00E\000\00\00\00\00\00\00\00")
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
   i32.const 1072
   return
  end
  i32.const 1
  local.get $0
  i32.eq
  if
   i32.const 1104
   return
  end
  i32.const 0
  local.get $0
  i32.eq
  if
   i32.const 1136
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
   i32.const 33936
   i32.const 33984
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
   i32.const 1008
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
   i32.const 1008
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
   i32.const 1008
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
   i32.const 1008
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
  i32.const 1136
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1008
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
  i32.const 1104
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1008
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
  i32.const 1072
  call $~lib/string/String.__eq
  i32.eqz
  if
   i32.const 0
   i32.const 1008
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
   i32.const 1008
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
   i32.const 1008
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
   i32.const 1008
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
   i32.const 1008
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
   i32.const 1008
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
   i32.const 1008
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
