(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $export/add (; 0 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ export.ts:2:13
  (return
   ;;@ export.ts:2:9
   (i32.add
    (get_local $0)
    ;;@ export.ts:2:13
    (get_local $1)
   )
  )
 )
 (func $export/sub (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ export.ts:6:13
  (return
   ;;@ export.ts:6:9
   (i32.sub
    (get_local $0)
    ;;@ export.ts:6:13
    (get_local $1)
   )
  )
 )
 (func $export/mul (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ export.ts:12:13
  (return
   ;;@ export.ts:12:9
   (i32.mul
    (get_local $0)
    ;;@ export.ts:12:13
    (get_local $1)
   )
  )
 )
 (func $export/ns.two (; 3 ;) (type $v)
 )
 (func $start (; 4 ;) (type $v)
  ;;@ import.ts:11:0
  (drop
   (i32.add
    (i32.add
     (call $export/add
      ;;@ import.ts:11:4
      (i32.const 1)
      ;;@ import.ts:11:7
      (i32.const 2)
     )
     ;;@ import.ts:11:12
     (call $export/sub
      ;;@ import.ts:11:16
      (i32.const 2)
      ;;@ import.ts:11:19
      (i32.const 3)
     )
    )
    ;;@ import.ts:11:24
    (call $export/mul
     ;;@ import.ts:11:28
     (i32.const 3)
     ;;@ import.ts:11:31
     (i32.const 1)
    )
   )
  )
  ;;@ import.ts:13:11
  (call $export/ns.two)
 )
)
