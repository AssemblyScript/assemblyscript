(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1088) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1136) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00r\00t\00/\00f\00l\00a\00g\00s\00.\00t\00s")
 (data (i32.const 1184) "D\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\001\00\00\00\02\00\00\001\00\00\00\02\00\00\00Q\04\00\00\02\00\00\00Q\00\00\00\02\00\00\00\91\04\00\00\02\00\00\00\91\00\00\00\02\00\00\00\11\05\00\00\02\00\00\00\11\01\00\00\02\00\00\00\91\0c\00\00\02\00\00\00\11\0d\00\00\02\00\00\002\04\00\00\00\00\00\002\00\00\00\00\00\00\00R\04\00\00\00\00\00\00R\00\00\00\00\00\00\00\92\04\00\00\00\00\00\00\92\00\00\00\00\00\00\00\12\05\00\00\00\00\00\00\12\01\00\00\00\00\00\00\92\0c\00\00\00\00\00\00\12\0d\00\00\00\00\00\00\12\02\00\00\00\00\00\00\10\00\00\00\00\00\00\00\92 \00\00\00\00\00\00\920\00\00\00\00\00\004\04\00\00\00\00\00\004\00\00\00\00\00\00\00T\04\00\00\00\00\00\00T\00\00\00\00\00\00\00\94\04\00\00\00\00\00\00\94\00\00\00\00\00\00\00\14\05\00\00\00\00\00\00\14\01\00\00\00\00\00\00\94\0c\00\00\00\00\00\00\14\0d\00\00\00\00\00\00\14\02\00\00\00\00\00\00\94 \00\00\00\00\00\00\940\00\00\00\00\00\008\04\04\00\00\00\00\00X\04\n\00\00\00\00\00\98\04\t\00\00\00\00\00\18\85\08\00\00\00\00\00\18B\08\00\00\00\00\008\04A\00\00\00\00\008\04a\00\00\00\00\00\98`\08\00\00\00\00\00\98p\08\00\00\00\00\00\980a\00\00\00\00\00\98\04\19\00\00\00\00\00\10")
 (data (i32.const 1644) "\82 \00\00\00\00\00\00\10")
 (data (i32.const 1668) "\84 \00\00\00\00\00\00\10")
 (data (i32.const 1692) "\88\04A")
 (data (i32.const 1708) "\88 \t\00\00\00\00\00\10\00\00\00\00\00\00\00\10")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/__typeinfo (; 1 ;) (param $0 i32) (result i32)
  local.get $0
  i32.const 1184
  i32.load
  i32.gt_u
  if
   i32.const 1040
   i32.const 1104
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.shl
  i32.const 1188
  i32.add
  i32.load
 )
 (func $start:rt/flags (; 2 ;)
  block $folding-inner0
   i32.const 3
   call $~lib/rt/__typeinfo
   i32.const 1073
   i32.ne
   br_if $folding-inner0
   i32.const 4
   call $~lib/rt/__typeinfo
   i32.const 49
   i32.ne
   br_if $folding-inner0
   i32.const 5
   call $~lib/rt/__typeinfo
   i32.const 49
   i32.ne
   br_if $folding-inner0
   i32.const 6
   call $~lib/rt/__typeinfo
   i32.const 1105
   i32.ne
   br_if $folding-inner0
   i32.const 7
   call $~lib/rt/__typeinfo
   i32.const 81
   i32.ne
   br_if $folding-inner0
   i32.const 8
   call $~lib/rt/__typeinfo
   i32.const 1169
   i32.ne
   br_if $folding-inner0
   i32.const 9
   call $~lib/rt/__typeinfo
   i32.const 145
   i32.ne
   br_if $folding-inner0
   i32.const 10
   call $~lib/rt/__typeinfo
   i32.const 1297
   i32.ne
   br_if $folding-inner0
   i32.const 11
   call $~lib/rt/__typeinfo
   i32.const 273
   i32.ne
   br_if $folding-inner0
   i32.const 12
   call $~lib/rt/__typeinfo
   i32.const 3217
   i32.ne
   br_if $folding-inner0
   i32.const 13
   call $~lib/rt/__typeinfo
   i32.const 3345
   i32.ne
   br_if $folding-inner0
   i32.const 14
   call $~lib/rt/__typeinfo
   i32.const 1074
   i32.ne
   br_if $folding-inner0
   i32.const 15
   call $~lib/rt/__typeinfo
   i32.const 50
   i32.ne
   br_if $folding-inner0
   i32.const 16
   call $~lib/rt/__typeinfo
   i32.const 1106
   i32.ne
   br_if $folding-inner0
   i32.const 17
   call $~lib/rt/__typeinfo
   i32.const 82
   i32.ne
   br_if $folding-inner0
   i32.const 18
   call $~lib/rt/__typeinfo
   i32.const 1170
   i32.ne
   br_if $folding-inner0
   i32.const 19
   call $~lib/rt/__typeinfo
   i32.const 146
   i32.ne
   br_if $folding-inner0
   i32.const 20
   call $~lib/rt/__typeinfo
   i32.const 1298
   i32.ne
   br_if $folding-inner0
   i32.const 21
   call $~lib/rt/__typeinfo
   i32.const 274
   i32.ne
   br_if $folding-inner0
   i32.const 22
   call $~lib/rt/__typeinfo
   i32.const 3218
   i32.ne
   br_if $folding-inner0
   i32.const 23
   call $~lib/rt/__typeinfo
   i32.const 3346
   i32.ne
   br_if $folding-inner0
   i32.const 24
   call $~lib/rt/__typeinfo
   i32.const 530
   i32.ne
   br_if $folding-inner0
   i32.const 26
   call $~lib/rt/__typeinfo
   i32.const 8338
   i32.ne
   br_if $folding-inner0
   i32.const 27
   call $~lib/rt/__typeinfo
   i32.const 12434
   i32.ne
   br_if $folding-inner0
   i32.const 28
   call $~lib/rt/__typeinfo
   i32.const 1076
   i32.ne
   br_if $folding-inner0
   i32.const 29
   call $~lib/rt/__typeinfo
   i32.const 52
   i32.ne
   br_if $folding-inner0
   i32.const 30
   call $~lib/rt/__typeinfo
   i32.const 1108
   i32.ne
   br_if $folding-inner0
   i32.const 31
   call $~lib/rt/__typeinfo
   i32.const 84
   i32.ne
   br_if $folding-inner0
   i32.const 32
   call $~lib/rt/__typeinfo
   i32.const 1172
   i32.ne
   br_if $folding-inner0
   i32.const 33
   call $~lib/rt/__typeinfo
   i32.const 148
   i32.ne
   br_if $folding-inner0
   i32.const 34
   call $~lib/rt/__typeinfo
   i32.const 1300
   i32.ne
   br_if $folding-inner0
   i32.const 35
   call $~lib/rt/__typeinfo
   i32.const 276
   i32.ne
   br_if $folding-inner0
   i32.const 36
   call $~lib/rt/__typeinfo
   i32.const 3220
   i32.ne
   br_if $folding-inner0
   i32.const 37
   call $~lib/rt/__typeinfo
   i32.const 3348
   i32.ne
   br_if $folding-inner0
   i32.const 38
   call $~lib/rt/__typeinfo
   i32.const 532
   i32.ne
   br_if $folding-inner0
   i32.const 39
   call $~lib/rt/__typeinfo
   i32.const 8340
   i32.ne
   br_if $folding-inner0
   i32.const 40
   call $~lib/rt/__typeinfo
   i32.const 12436
   i32.ne
   br_if $folding-inner0
   i32.const 41
   call $~lib/rt/__typeinfo
   i32.const 263224
   i32.ne
   br_if $folding-inner0
   i32.const 42
   call $~lib/rt/__typeinfo
   i32.const 656472
   i32.ne
   br_if $folding-inner0
   i32.const 43
   call $~lib/rt/__typeinfo
   i32.const 591000
   i32.ne
   br_if $folding-inner0
   i32.const 44
   call $~lib/rt/__typeinfo
   i32.const 558360
   i32.ne
   br_if $folding-inner0
   i32.const 45
   call $~lib/rt/__typeinfo
   i32.const 541208
   i32.ne
   br_if $folding-inner0
   i32.const 46
   call $~lib/rt/__typeinfo
   i32.const 4260920
   i32.ne
   br_if $folding-inner0
   i32.const 47
   call $~lib/rt/__typeinfo
   i32.const 6358072
   i32.ne
   br_if $folding-inner0
   i32.const 48
   call $~lib/rt/__typeinfo
   i32.const 549016
   i32.ne
   br_if $folding-inner0
   i32.const 49
   call $~lib/rt/__typeinfo
   i32.const 553112
   i32.ne
   br_if $folding-inner0
   i32.const 50
   call $~lib/rt/__typeinfo
   i32.const 6369432
   i32.ne
   br_if $folding-inner0
   i32.const 51
   call $~lib/rt/__typeinfo
   i32.const 1639576
   i32.ne
   br_if $folding-inner0
   i32.const 52
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.ne
   br_if $folding-inner0
   i32.const 53
   call $~lib/rt/__typeinfo
   br_if $folding-inner0
   i32.const 54
   call $~lib/rt/__typeinfo
   br_if $folding-inner0
   i32.const 56
   call $~lib/rt/__typeinfo
   br_if $folding-inner0
   i32.const 58
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.ne
   br_if $folding-inner0
   i32.const 59
   call $~lib/rt/__typeinfo
   br_if $folding-inner0
   i32.const 61
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.ne
   br_if $folding-inner0
   i32.const 62
   call $~lib/rt/__typeinfo
   br_if $folding-inner0
   i32.const 64
   call $~lib/rt/__typeinfo
   br_if $folding-inner0
   i32.const 66
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.ne
   br_if $folding-inner0
   i32.const 67
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.ne
   br_if $folding-inner0
   return
  end
  i32.const 0
  i32.const 1152
  i32.const 6
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start (; 3 ;)
  call $start:rt/flags
 )
)
