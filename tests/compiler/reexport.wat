(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (global $export/a i32 (i32.const 1))
 (global $export/b i32 (i32.const 2))
 (global $export/c i32 (i32.const 3))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "add" (func $export/add))
 (export "renamed_sub" (func $export/sub))
 (export "renamed_mul" (func $export/mul))
 (export "rerenamed_mul" (func $export/mul))
 (export "a" (global $export/a))
 (export "renamed_b" (global $export/b))
 (export "renamed_c" (global $export/c))
 (export "rerenamed_c" (global $export/c))
 (export "renamed_add" (func $export/add))
 (export "rerenamed_sub" (func $export/mul))
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
  ;;@ reexport.ts:24:0
  (drop
   (i32.add
    (call $export/add
     ;;@ reexport.ts:24:13
     (i32.const 1)
     ;;@ reexport.ts:24:16
     (i32.const 2)
    )
    ;;@ reexport.ts:24:21
    (call $export/mul
     ;;@ reexport.ts:24:34
     (i32.const 3)
     ;;@ reexport.ts:24:37
     (i32.const 4)
    )
   )
  )
 )
)
