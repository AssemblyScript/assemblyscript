(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (memory $0 1)
 (data (i32.const 20) "\01\00\00\00\01")
 (data (i32.const 32) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00a")
 (data (i32.const 64) "\04\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00a\00b")
 (data (i32.const 96) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00a\00b\00c")
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/util/hash/hashStr (; 0 ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const -2128831035
  local.set $1
  local.get $0
  local.tee $2
  if
   i32.const 0
   local.set $0
   local.get $2
   i32.const 16
   i32.sub
   i32.load offset=12
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.shl
   local.set $3
   loop $for-loop|0
    local.get $0
    local.get $3
    i32.lt_u
    if
     local.get $1
     local.get $0
     local.get $2
     i32.add
     i32.load8_u
     i32.xor
     i32.const 16777619
     i32.mul
     local.set $1
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
  end
 )
 (func $~start (; 1 ;)
  i32.const 0
  call $~lib/util/hash/hashStr
  i32.const 32
  call $~lib/util/hash/hashStr
  i32.const 48
  call $~lib/util/hash/hashStr
  i32.const 80
  call $~lib/util/hash/hashStr
  i32.const 112
  call $~lib/util/hash/hashStr
 )
)
