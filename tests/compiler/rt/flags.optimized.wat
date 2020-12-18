(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 1100) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 1148) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00r\00t\00/\00f\00l\00a\00g\00s\00.\00t\00s")
 (data (i32.const 1200) "D\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00a\08\00\00\02\00\00\00a\00\00\00\02\00\00\00a\00\00\00\02\00\00\00\a1\08\00\00\02\00\00\00\a1\00\00\00\02\00\00\00!\t\00\00\02\00\00\00!\01\00\00\02\00\00\00!\n\00\00\02\00\00\00!\02\00\00\02\00\00\00!\19\00\00\02\00\00\00!\1a\00\00\02\00\00\00b\08\00\00\00\00\00\00b\00\00\00\00\00\00\00\a2\08\00\00\00\00\00\00\a2\00\00\00\00\00\00\00\"\t\00\00\00\00\00\00\"\01\00\00\00\00\00\00\"\n\00\00\00\00\00\00\"\02\00\00\00\00\00\00\"\19\00\00\00\00\00\00\"\1a\00\00\00\00\00\00\"\04\00\00\00\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\00\"a\00\00\00\00\00\00h\08\00\00\00\00\00\00h\00\00\00\00\00\00\00\a8\08\00\00\00\00\00\00\a8\00\00\00\00\00\00\00(\t\00\00\00\00\00\00(\01\00\00\00\00\00\00(\n\00\00\00\00\00\00(\02\00\00\00\00\00\00(\19\00\00\00\00\00\00(\1a\00\00\00\00\00\00(\04\00\00\00\00\00\00(A\00\00\00\00\00\00(a\00\00\00\00\00\00p\08\08\00\00\00\00\00\b0\08\14\00\00\00\00\000\t\12\00\00\00\00\000\n\11\00\00\00\00\000\84\10\00\00\00\00\00p\08\82\00\00\00\00\00p\08\c2\00\00\00\00\000\c1\10\00\00\00\00\000\e1\10\00\00\00\00\000a\c2\00\00\00\00\000\t2\00\00\00\00\00 ")
 (data (i32.const 1660) "\02A\00\00\00\00\00\00 ")
 (data (i32.const 1684) "\08A\00\00\00\00\00\00 ")
 (data (i32.const 1708) "\10\t\82")
 (data (i32.const 1724) "\10A\12\00\00\00\00\00 \00\00\00\00\00\00\00 ")
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
   i32.const 2145
   i32.ne
   br_if $folding-inner0
   i32.const 4
   call $~lib/rt/__typeinfo
   i32.const 97
   i32.ne
   br_if $folding-inner0
   i32.const 5
   call $~lib/rt/__typeinfo
   i32.const 97
   i32.ne
   br_if $folding-inner0
   i32.const 6
   call $~lib/rt/__typeinfo
   i32.const 2209
   i32.ne
   br_if $folding-inner0
   i32.const 7
   call $~lib/rt/__typeinfo
   i32.const 161
   i32.ne
   br_if $folding-inner0
   i32.const 8
   call $~lib/rt/__typeinfo
   i32.const 2337
   i32.ne
   br_if $folding-inner0
   i32.const 9
   call $~lib/rt/__typeinfo
   i32.const 289
   i32.ne
   br_if $folding-inner0
   i32.const 10
   call $~lib/rt/__typeinfo
   i32.const 2593
   i32.ne
   br_if $folding-inner0
   i32.const 11
   call $~lib/rt/__typeinfo
   i32.const 545
   i32.ne
   br_if $folding-inner0
   i32.const 12
   call $~lib/rt/__typeinfo
   i32.const 6433
   i32.ne
   br_if $folding-inner0
   i32.const 13
   call $~lib/rt/__typeinfo
   i32.const 6689
   i32.ne
   br_if $folding-inner0
   i32.const 14
   call $~lib/rt/__typeinfo
   i32.const 2146
   i32.ne
   br_if $folding-inner0
   i32.const 15
   call $~lib/rt/__typeinfo
   i32.const 98
   i32.ne
   br_if $folding-inner0
   i32.const 16
   call $~lib/rt/__typeinfo
   i32.const 2210
   i32.ne
   br_if $folding-inner0
   i32.const 17
   call $~lib/rt/__typeinfo
   i32.const 162
   i32.ne
   br_if $folding-inner0
   i32.const 18
   call $~lib/rt/__typeinfo
   i32.const 2338
   i32.ne
   br_if $folding-inner0
   i32.const 19
   call $~lib/rt/__typeinfo
   i32.const 290
   i32.ne
   br_if $folding-inner0
   i32.const 20
   call $~lib/rt/__typeinfo
   i32.const 2594
   i32.ne
   br_if $folding-inner0
   i32.const 21
   call $~lib/rt/__typeinfo
   i32.const 546
   i32.ne
   br_if $folding-inner0
   i32.const 22
   call $~lib/rt/__typeinfo
   i32.const 6434
   i32.ne
   br_if $folding-inner0
   i32.const 23
   call $~lib/rt/__typeinfo
   i32.const 6690
   i32.ne
   br_if $folding-inner0
   i32.const 24
   call $~lib/rt/__typeinfo
   i32.const 1058
   i32.ne
   br_if $folding-inner0
   i32.const 26
   call $~lib/rt/__typeinfo
   i32.const 16674
   i32.ne
   br_if $folding-inner0
   i32.const 27
   call $~lib/rt/__typeinfo
   i32.const 24866
   i32.ne
   br_if $folding-inner0
   i32.const 28
   call $~lib/rt/__typeinfo
   i32.const 2152
   i32.ne
   br_if $folding-inner0
   i32.const 29
   call $~lib/rt/__typeinfo
   i32.const 104
   i32.ne
   br_if $folding-inner0
   i32.const 30
   call $~lib/rt/__typeinfo
   i32.const 2216
   i32.ne
   br_if $folding-inner0
   i32.const 31
   call $~lib/rt/__typeinfo
   i32.const 168
   i32.ne
   br_if $folding-inner0
   i32.const 32
   call $~lib/rt/__typeinfo
   i32.const 2344
   i32.ne
   br_if $folding-inner0
   i32.const 33
   call $~lib/rt/__typeinfo
   i32.const 296
   i32.ne
   br_if $folding-inner0
   i32.const 34
   call $~lib/rt/__typeinfo
   i32.const 2600
   i32.ne
   br_if $folding-inner0
   i32.const 35
   call $~lib/rt/__typeinfo
   i32.const 552
   i32.ne
   br_if $folding-inner0
   i32.const 36
   call $~lib/rt/__typeinfo
   i32.const 6440
   i32.ne
   br_if $folding-inner0
   i32.const 37
   call $~lib/rt/__typeinfo
   i32.const 6696
   i32.ne
   br_if $folding-inner0
   i32.const 38
   call $~lib/rt/__typeinfo
   i32.const 1064
   i32.ne
   br_if $folding-inner0
   i32.const 39
   call $~lib/rt/__typeinfo
   i32.const 16680
   i32.ne
   br_if $folding-inner0
   i32.const 40
   call $~lib/rt/__typeinfo
   i32.const 24872
   i32.ne
   br_if $folding-inner0
   i32.const 41
   call $~lib/rt/__typeinfo
   i32.const 526448
   i32.ne
   br_if $folding-inner0
   i32.const 42
   call $~lib/rt/__typeinfo
   i32.const 1312944
   i32.ne
   br_if $folding-inner0
   i32.const 43
   call $~lib/rt/__typeinfo
   i32.const 1182000
   i32.ne
   br_if $folding-inner0
   i32.const 44
   call $~lib/rt/__typeinfo
   i32.const 1116720
   i32.ne
   br_if $folding-inner0
   i32.const 45
   call $~lib/rt/__typeinfo
   i32.const 1082416
   i32.ne
   br_if $folding-inner0
   i32.const 46
   call $~lib/rt/__typeinfo
   i32.const 8521840
   i32.ne
   br_if $folding-inner0
   i32.const 47
   call $~lib/rt/__typeinfo
   i32.const 12716144
   i32.ne
   br_if $folding-inner0
   i32.const 48
   call $~lib/rt/__typeinfo
   i32.const 1098032
   i32.ne
   br_if $folding-inner0
   i32.const 49
   call $~lib/rt/__typeinfo
   i32.const 1106224
   i32.ne
   br_if $folding-inner0
   i32.const 50
   call $~lib/rt/__typeinfo
   i32.const 12738864
   i32.ne
   br_if $folding-inner0
   i32.const 51
   call $~lib/rt/__typeinfo
   i32.const 3279152
   i32.ne
   br_if $folding-inner0
   i32.const 52
   call $~lib/rt/__typeinfo
   i32.const 32
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
   i32.const 32
   i32.ne
   br_if $folding-inner0
   i32.const 59
   call $~lib/rt/__typeinfo
   br_if $folding-inner0
   i32.const 61
   call $~lib/rt/__typeinfo
   i32.const 32
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
   i32.const 32
   i32.ne
   br_if $folding-inner0
   i32.const 67
   call $~lib/rt/__typeinfo
   i32.const 32
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
