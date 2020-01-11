(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (memory $0 0)
 (table $0 1 funcref)
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (export "memory" (memory $0))
 (start $~start)
 (func $export/add (; 0 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $export/sub (; 1 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $export/mul (; 2 ;) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.mul
 )
 (func $export/ns.two (; 3 ;)
  nop
 )
 (func $export-default/theDefault (; 4 ;)
  nop
 )
 (func $start:import (; 5 ;)
  global.get $export/a
  global.get $export/b
  call $export/add
  global.get $export/b
  global.get $export/c
  call $export/sub
  i32.add
  global.get $export/c
  global.get $export/a
  call $export/mul
  i32.add
  drop
  call $export/ns.two
  global.get $export/a
  global.get $export/b
  call $export/add
  global.get $export/b
  global.get $export/c
  call $export/sub
  i32.add
  global.get $export/c
  global.get $export/a
  call $export/mul
  i32.add
  drop
  call $export/ns.two
  call $export/ns.two
  call $export-default/theDefault
 )
 (func $~start (; 6 ;)
  call $start:import
 )
)
