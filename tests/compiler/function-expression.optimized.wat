(module
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00u\00n\00c\00t\00i\00o\00n\00-\00e\00x\00p\00r\00e\00s\00s\00i\00o\00n\00.\00t\00s")
 (table $0 12 funcref)
 (elem (i32.const 1) $start:function-expression~anonymous|0~nonClosure $start:function-expression~anonymous|0~nonClosure $start:function-expression~someName~nonClosure $start:function-expression~anonymous|2~nonClosure $start:function-expression~anonymous|3~nonClosure $start:function-expression~anonymous|4~nonClosure $start:function-expression~anonymous|5~nonClosure $start:function-expression~anonymous|3~nonClosure $start:function-expression~anonymous|4~nonClosure $start:function-expression~anonymous|5~nonClosure $start:function-expression~anonymous|2~nonClosure)
 (export "memory" (memory $0))
 (start $~start)
 (func $start:function-expression~anonymous|0~nonClosure (param $0 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~someName~nonClosure
  nop
 )
 (func $start:function-expression~anonymous|2~nonClosure (result i32)
  i32.const 1
 )
 (func $start:function-expression~anonymous|3~nonClosure (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $function-expression/testOmitted (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const -2147483648
  i32.and
  i32.const -2147483648
  i32.eq
  if (result i32)
   local.get $0
   i32.const 4
   i32.shl
   local.tee $0
   i32.load
   local.set $1
   local.get $0
   i32.const 1
   i32.const 2
   local.get $1
   call_indirect (type $i32_i32_i32_=>_i32)
  else
   i32.const 1
   i32.const 2
   local.get $0
   call_indirect (type $i32_i32_=>_i32)
  end
 )
 (func $start:function-expression~anonymous|4~nonClosure (param $0 i32) (param $1 i32) (result i32)
  local.get $0
 )
 (func $start:function-expression~anonymous|5~nonClosure (param $0 i32) (param $1 i32) (result i32)
  i32.const 42
 )
 (func $~start
  i32.const 5
  call $function-expression/testOmitted
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 21
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  call $function-expression/testOmitted
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 22
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 7
  call $function-expression/testOmitted
  i32.const 42
  i32.ne
  if
   i32.const 0
   i32.const 1040
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
)
