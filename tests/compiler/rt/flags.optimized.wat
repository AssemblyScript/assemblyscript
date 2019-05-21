(module
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 64) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 104) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00r\00t\00/\00f\00l\00a\00g\00s\00.\00t\00s")
 (data (i32.const 144) "-\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\19\00\00\00\03\00\00\00)\00\00\00\03\00\00\00I\00\00\00\03\00\00\00\89\00\00\00\03\00\00\00\t\01\00\00\03\00\00\00\08\00\00\00\00\00\00\00I\04\00\00\03\00\00\00I\06\00\00\03\00\00\00\1a\00\00\00\00\00\00\00*\00\00\00\00\00\00\00J\00\00\00\00\00\00\00\8a\00\00\00\00\00\00\00\n\01\00\00\00\00\00\00J\04\00\00\00\00\00\00J\06\00\00\00\00\00\00\1c\80\00\00\00\00\00\00,@\00\00\00\00\00\00L \00\00\00\00\00\00\8c\10\00\00\00\00\00\00\0c\t\00\00\00\00\00\00\1c \02\00\00\00\00\00\1c \03\00\00\00\00\00L\0c\00\00\00\00\00\00L\0e\00\00\00\00\00\00L&\03\00\00\00\00\00\08")
 (data (i32.const 420) "A\04\00\00\03\00\00\00\08")
 (data (i32.const 444) "B\04\00\00\00\00\00\00\08")
 (data (i32.const 468) "D \02")
 (data (i32.const 484) "D$\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/rt/__typeinfo (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 144
  i32.load
  i32.gt_u
  if
   i32.const 24
   i32.const 80
   i32.const 22
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.shl
  i32.const 148
  i32.add
  i32.load
 )
 (func $start:rt/flags (; 2 ;) (type $FUNCSIG$v)
  block $folding-inner0
   i32.const 4
   call $~lib/rt/__typeinfo
   i32.const 25
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 5
   call $~lib/rt/__typeinfo
   i32.const 41
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 6
   call $~lib/rt/__typeinfo
   i32.const 73
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 7
   call $~lib/rt/__typeinfo
   i32.const 137
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 8
   call $~lib/rt/__typeinfo
   i32.const 265
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 10
   call $~lib/rt/__typeinfo
   i32.const 1097
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 11
   call $~lib/rt/__typeinfo
   i32.const 1609
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 12
   call $~lib/rt/__typeinfo
   i32.const 26
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 13
   call $~lib/rt/__typeinfo
   i32.const 42
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 14
   call $~lib/rt/__typeinfo
   i32.const 74
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 15
   call $~lib/rt/__typeinfo
   i32.const 138
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 16
   call $~lib/rt/__typeinfo
   i32.const 266
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 17
   call $~lib/rt/__typeinfo
   i32.const 1098
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 18
   call $~lib/rt/__typeinfo
   i32.const 1610
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 19
   call $~lib/rt/__typeinfo
   i32.const 32796
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 20
   call $~lib/rt/__typeinfo
   i32.const 16428
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 21
   call $~lib/rt/__typeinfo
   i32.const 8268
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 22
   call $~lib/rt/__typeinfo
   i32.const 4236
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 23
   call $~lib/rt/__typeinfo
   i32.const 2316
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 24
   call $~lib/rt/__typeinfo
   i32.const 139292
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 25
   call $~lib/rt/__typeinfo
   i32.const 204828
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 26
   call $~lib/rt/__typeinfo
   i32.const 3148
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 27
   call $~lib/rt/__typeinfo
   i32.const 3660
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 28
   call $~lib/rt/__typeinfo
   i32.const 206412
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 29
   call $~lib/rt/__typeinfo
   i32.const 8
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 30
   call $~lib/rt/__typeinfo
   if
    br $folding-inner0
   end
   i32.const 31
   call $~lib/rt/__typeinfo
   if
    br $folding-inner0
   end
   i32.const 33
   call $~lib/rt/__typeinfo
   if
    br $folding-inner0
   end
   i32.const 35
   call $~lib/rt/__typeinfo
   i32.const 8
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 36
   call $~lib/rt/__typeinfo
   if
    br $folding-inner0
   end
   i32.const 38
   call $~lib/rt/__typeinfo
   i32.const 8
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 39
   call $~lib/rt/__typeinfo
   if
    br $folding-inner0
   end
   i32.const 41
   call $~lib/rt/__typeinfo
   if
    br $folding-inner0
   end
   i32.const 43
   call $~lib/rt/__typeinfo
   i32.const 8
   i32.ne
   if
    br $folding-inner0
   end
   i32.const 44
   call $~lib/rt/__typeinfo
   i32.const 8
   i32.ne
   if
    br $folding-inner0
   end
   return
  end
  i32.const 0
  i32.const 120
  i32.const 6
  i32.const 2
  call $~lib/builtins/abort
  unreachable
 )
 (func $start (; 3 ;) (type $FUNCSIG$v)
  call $start:rt/flags
 )
 (func $null (; 4 ;) (type $FUNCSIG$v)
  nop
 )
)
