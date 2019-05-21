(module
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "$\00\00\00\01\00\00\00\10\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 64) "\14\00\00\00\01\00\00\00\10\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data (i32.const 104) "\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08")
 (export "memory" (memory $0))
 (export "__instanceof" (func $~lib/rt/__instanceof))
 (export "__typeinfo" (func $~lib/rt/__typeinfo))
 (func $~lib/rt/__instanceof (; 1 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=8
  local.tee $0
  if (result i32)
   local.get $0
   i32.const 104
   i32.load
   i32.le_u
  else   
   i32.const 0
  end
  if
   loop $continue|0
    local.get $0
    local.get $1
    i32.eq
    if
     i32.const 1
     return
    end
    local.get $0
    i32.const 3
    i32.shl
    i32.const 104
    i32.add
    i32.load offset=4
    local.tee $0
    br_if $continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/rt/__typeinfo (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
   i32.const 104
   i32.load
   i32.gt_u
  else   
   i32.const 1
  end
  if
   i32.const 24
   i32.const 80
   i32.const 23
   i32.const 34
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  i32.shl
  i32.const 104
  i32.add
  i32.load
 )
 (func $null (; 3 ;) (type $FUNCSIG$v)
  nop
 )
)
