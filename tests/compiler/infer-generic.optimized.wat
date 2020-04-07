(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_f32_i32_i32_=>_i32 (func (param i32 f32 i32 i32) (result i32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (memory $0 1)
 (data (i32.const 1024) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00n\00f\00e\00r\00-\00g\00e\00n\00e\00r\00i\00c\00.\00t\00s")
 (data (i32.const 1072) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 1104) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00@\04\00\00@\04\00\00\0c\00\00\00\03")
 (global $~argumentsLength (mut i32) (i32.const 0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "memory" (memory $0))
 (export "test1" (func $infer-generic/test1))
 (export "test2" (func $infer-generic/test2))
 (export "test3" (func $infer-generic/test2))
 (export "test4" (func $infer-generic/test2))
 (start $~start)
 (func $start:infer-generic~anonymous|0 (; 0 ;) (param $0 i32) (param $1 f32) (param $2 i32) (param $3 i32) (result i32)
  local.get $1
  f32.const 0
  f32.ne
  i32.const 0
  local.get $0
  select
 )
 (func $~setArgumentsLength (; 1 ;) (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $infer-generic/test1 (; 2 ;) (param $0 f32) (result f32)
  local.get $0
 )
 (func $infer-generic/test2 (; 3 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~start (; 4 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  i32.const 1132
  i32.load
  local.set $2
  loop $for-loop|0
   local.get $0
   local.get $2
   i32.const 1132
   i32.load
   local.tee $3
   local.get $2
   local.get $3
   i32.lt_s
   select
   i32.lt_s
   if
    i32.const 1124
    i32.load
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $4
    i32.const 4
    global.set $~argumentsLength
    local.get $1
    local.get $4
    local.get $0
    i32.const 1120
    call $start:infer-generic~anonymous|0
    local.set $1
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
)
