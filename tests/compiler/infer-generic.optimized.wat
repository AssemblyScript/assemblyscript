(module
 (type $none_=>_none (func))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_f32_i32_i32_=>_i32 (func (param i32 f32 i32 i32) (result i32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (memory $0 1)
 (data (i32.const 16) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00i\00n\00f\00e\00r\00-\00g\00e\00n\00e\00r\00i\00c\00.\00t\00s")
 (data (i32.const 64) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\80?\00\00\00@\00\00@@")
 (data (i32.const 96) "\10\00\00\00\01\00\00\00\03\00\00\00\10\00\00\00P\00\00\00P\00\00\00\0c\00\00\00\03")
 (global $~argumentsLength (mut i32) (i32.const 0))
 (export "__argumentsLength" (global $~argumentsLength))
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
 (func $~lib/array/Array<f32>#reduce<bool> (; 1 ;)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 124
  i32.load
  local.set $1
  loop $for-loop|0
   local.get $0
   local.get $1
   i32.const 124
   i32.load
   local.tee $2
   local.get $1
   local.get $2
   i32.lt_s
   select
   i32.lt_s
   if
    i32.const 4
    global.set $~argumentsLength
    local.get $3
    i32.const 116
    i32.load
    local.get $0
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.get $0
    i32.const 112
    call $start:infer-generic~anonymous|0
    local.set $3
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
 (func $infer-generic/test1 (; 2 ;) (param $0 f32) (result f32)
  local.get $0
 )
 (func $infer-generic/test2 (; 3 ;) (param $0 i32) (result i32)
  local.get $0
 )
 (func $~start (; 4 ;)
  call $~lib/array/Array<f32>#reduce<bool>
 )
)
