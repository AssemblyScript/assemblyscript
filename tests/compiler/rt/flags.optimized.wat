(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "<")
 (data (i32.const 1048) "\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1100) ",")
 (data (i32.const 1112) "\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1148) ",")
 (data (i32.const 1160) "\01\00\00\00\16\00\00\00r\00t\00/\00f\00l\00a\00g\00s\00.\00t\00s")
 (data (i32.const 1200) "4\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 1228) "A\08\00\00\02\00\00\00A\00\00\00\02\00\00\00A\00\00\00\02\00\00\00\81\08\00\00\02\00\00\00\81\00\00\00\02\00\00\00\01\t\00\00\02\00\00\00\01\01\00\00\02\00\00\00\01\n\00\00\02\00\00\00\01\02\00\00\02\00\00\00\01\19\00\00\02\00\00\00\01\1a\00\00\02\00\00\00B\08\00\00\00\00\00\00B\00\00\00\00\00\00\00\82\08\00\00\00\00\00\00\82\00\00\00\00\00\00\00\02\t\00\00\00\00\00\00\02\01\00\00\00\00\00\00\02\n\00\00\00\00\00\00\02\02\00\00\00\00\00\00\02\19\00\00\00\00\00\00\02\1a\00\00\00\00\00\00\02\04\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02a\00\00\00\00\00\00H\08\00\00\00\00\00\00H\00\00\00\00\00\00\00\88\08\00\00\00\00\00\00\88\00\00\00\00\00\00\00\08\t\00\00\00\00\00\00\08\01\00\00\00\00\00\00\08\n\00\00\00\00\00\00\08\02\00\00\00\00\00\00\08\19\00\00\00\00\00\00\08\1a\00\00\00\00\00\00\08\04\00\00\00\00\00\00\08A\00\00\00\00\00\00\08a\00\00\00\00\00\00P\08\08\00\00\00\00\00\90\08\14\00\00\00\00\00\10\t\12\00\00\00\00\00\10\n\11\00\00\00\00\00\10\84\10\00\00\00\00\00P\08\82\00\00\00\00\00P\08\c2\00\00\00\00\00\10\c1\10\00\00\00\00\00\10\e1\10\00\00\00\00\00\10a\c2\00\00\00\00\00\10\t2")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/__typeinfo (param $0 i32) (result i32)
  local.get $0
  i32.const 1200
  i32.load
  i32.gt_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.shl
  i32.const 1204
  i32.add
  i32.load
 )
 (func $start:rt/flags
  block $folding-inner0
   i32.const 3
   call $~lib/rt/__typeinfo
   i32.const 2113
   i32.ne
   br_if $folding-inner0
   i32.const 4
   call $~lib/rt/__typeinfo
   i32.const 65
   i32.ne
   br_if $folding-inner0
   i32.const 5
   call $~lib/rt/__typeinfo
   i32.const 65
   i32.ne
   br_if $folding-inner0
   i32.const 6
   call $~lib/rt/__typeinfo
   i32.const 2177
   i32.ne
   br_if $folding-inner0
   i32.const 7
   call $~lib/rt/__typeinfo
   i32.const 129
   i32.ne
   br_if $folding-inner0
   i32.const 8
   call $~lib/rt/__typeinfo
   i32.const 2305
   i32.ne
   br_if $folding-inner0
   i32.const 9
   call $~lib/rt/__typeinfo
   i32.const 257
   i32.ne
   br_if $folding-inner0
   i32.const 10
   call $~lib/rt/__typeinfo
   i32.const 2561
   i32.ne
   br_if $folding-inner0
   i32.const 11
   call $~lib/rt/__typeinfo
   i32.const 513
   i32.ne
   br_if $folding-inner0
   i32.const 12
   call $~lib/rt/__typeinfo
   i32.const 6401
   i32.ne
   br_if $folding-inner0
   i32.const 13
   call $~lib/rt/__typeinfo
   i32.const 6657
   i32.ne
   br_if $folding-inner0
   i32.const 14
   call $~lib/rt/__typeinfo
   i32.const 2114
   i32.ne
   br_if $folding-inner0
   i32.const 15
   call $~lib/rt/__typeinfo
   i32.const 66
   i32.ne
   br_if $folding-inner0
   i32.const 16
   call $~lib/rt/__typeinfo
   i32.const 2178
   i32.ne
   br_if $folding-inner0
   i32.const 17
   call $~lib/rt/__typeinfo
   i32.const 130
   i32.ne
   br_if $folding-inner0
   i32.const 18
   call $~lib/rt/__typeinfo
   i32.const 2306
   i32.ne
   br_if $folding-inner0
   i32.const 19
   call $~lib/rt/__typeinfo
   i32.const 258
   i32.ne
   br_if $folding-inner0
   i32.const 20
   call $~lib/rt/__typeinfo
   i32.const 2562
   i32.ne
   br_if $folding-inner0
   i32.const 21
   call $~lib/rt/__typeinfo
   i32.const 514
   i32.ne
   br_if $folding-inner0
   i32.const 22
   call $~lib/rt/__typeinfo
   i32.const 6402
   i32.ne
   br_if $folding-inner0
   i32.const 23
   call $~lib/rt/__typeinfo
   i32.const 6658
   i32.ne
   br_if $folding-inner0
   i32.const 24
   call $~lib/rt/__typeinfo
   i32.const 1026
   i32.ne
   br_if $folding-inner0
   i32.const 26
   call $~lib/rt/__typeinfo
   i32.const 16642
   i32.ne
   br_if $folding-inner0
   i32.const 27
   call $~lib/rt/__typeinfo
   i32.const 24834
   i32.ne
   br_if $folding-inner0
   i32.const 28
   call $~lib/rt/__typeinfo
   i32.const 2120
   i32.ne
   br_if $folding-inner0
   i32.const 29
   call $~lib/rt/__typeinfo
   i32.const 72
   i32.ne
   br_if $folding-inner0
   i32.const 30
   call $~lib/rt/__typeinfo
   i32.const 2184
   i32.ne
   br_if $folding-inner0
   i32.const 31
   call $~lib/rt/__typeinfo
   i32.const 136
   i32.ne
   br_if $folding-inner0
   i32.const 32
   call $~lib/rt/__typeinfo
   i32.const 2312
   i32.ne
   br_if $folding-inner0
   i32.const 33
   call $~lib/rt/__typeinfo
   i32.const 264
   i32.ne
   br_if $folding-inner0
   i32.const 34
   call $~lib/rt/__typeinfo
   i32.const 2568
   i32.ne
   br_if $folding-inner0
   i32.const 35
   call $~lib/rt/__typeinfo
   i32.const 520
   i32.ne
   br_if $folding-inner0
   i32.const 36
   call $~lib/rt/__typeinfo
   i32.const 6408
   i32.ne
   br_if $folding-inner0
   i32.const 37
   call $~lib/rt/__typeinfo
   i32.const 6664
   i32.ne
   br_if $folding-inner0
   i32.const 38
   call $~lib/rt/__typeinfo
   i32.const 1032
   i32.ne
   br_if $folding-inner0
   i32.const 39
   call $~lib/rt/__typeinfo
   i32.const 16648
   i32.ne
   br_if $folding-inner0
   i32.const 40
   call $~lib/rt/__typeinfo
   i32.const 24840
   i32.ne
   br_if $folding-inner0
   i32.const 41
   call $~lib/rt/__typeinfo
   i32.const 526416
   i32.ne
   br_if $folding-inner0
   i32.const 42
   call $~lib/rt/__typeinfo
   i32.const 1312912
   i32.ne
   br_if $folding-inner0
   i32.const 43
   call $~lib/rt/__typeinfo
   i32.const 1181968
   i32.ne
   br_if $folding-inner0
   i32.const 44
   call $~lib/rt/__typeinfo
   i32.const 1116688
   i32.ne
   br_if $folding-inner0
   i32.const 45
   call $~lib/rt/__typeinfo
   i32.const 1082384
   i32.ne
   br_if $folding-inner0
   i32.const 46
   call $~lib/rt/__typeinfo
   i32.const 8521808
   i32.ne
   br_if $folding-inner0
   i32.const 47
   call $~lib/rt/__typeinfo
   i32.const 12716112
   i32.ne
   br_if $folding-inner0
   i32.const 48
   call $~lib/rt/__typeinfo
   i32.const 1098000
   i32.ne
   br_if $folding-inner0
   i32.const 49
   call $~lib/rt/__typeinfo
   i32.const 1106192
   i32.ne
   br_if $folding-inner0
   i32.const 50
   call $~lib/rt/__typeinfo
   i32.const 12738832
   i32.ne
   br_if $folding-inner0
   i32.const 51
   call $~lib/rt/__typeinfo
   i32.const 3279120
   i32.ne
   br_if $folding-inner0
   return
  end
  i32.const 0
  i32.const 1168
  i32.const 6
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  call $start:rt/flags
 )
)
