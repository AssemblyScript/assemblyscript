(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $_ (func))
 (memory $0 0)
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 8))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $export/add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $export/sub (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.sub
 )
 (func $export/mul (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.mul
 )
 (func $export/ns.two (; 3 ;) (type $_)
  nop
 )
 (func $start:import (; 4 ;) (type $_)
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
 )
 (func $start (; 5 ;) (type $_)
  call $start:import
 )
 (func $null (; 6 ;) (type $_)
 )
)
