(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (global $infer-type/i i32 (i32.const 10))
 (global $infer-type/I i64 (i64.const 4294967296))
 (global $infer-type/F f64 (f64.const 1.5))
 (global $infer-type/ri (mut i32) (i32.const 0))
 (global $infer-type/rI (mut i64) (i64.const 0))
 (global $infer-type/rf (mut f32) (f32.const 0))
 (global $infer-type/rF (mut f64) (f64.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $infer-type/locals (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f64)
  (local $3 i32)
  (local $4 i64)
  (local $5 f64)
  ;;@ infer-type.ts:11:2
  (set_local $0
   ;;@ infer-type.ts:11:11
   (i32.const 10)
  )
  ;;@ infer-type.ts:12:2
  (set_local $1
   ;;@ infer-type.ts:12:11
   (i64.const 4294967296)
  )
  ;;@ infer-type.ts:13:2
  (set_local $2
   ;;@ infer-type.ts:13:11
   (f64.const 1.5)
  )
  ;;@ infer-type.ts:14:2
  (set_local $3
   ;;@ infer-type.ts:14:11
   (i32.const 10)
  )
  ;;@ infer-type.ts:15:2
  (set_local $4
   ;;@ infer-type.ts:15:11
   (i64.const 4294967296)
  )
  ;;@ infer-type.ts:16:2
  (set_local $5
   ;;@ infer-type.ts:16:11
   (f64.const 1.5)
  )
 )
 (func $infer-type/reti (; 1 ;) (type $i) (result i32)
  ;;@ infer-type.ts:21:9
  (return
   (i32.const 0)
  )
 )
 (func $infer-type/retI (; 2 ;) (type $I) (result i64)
  ;;@ infer-type.ts:27:9
  (return
   (i64.const 0)
  )
 )
 (func $infer-type/retf (; 3 ;) (type $f) (result f32)
  ;;@ infer-type.ts:33:9
  (return
   (f32.const 0)
  )
 )
 (func $infer-type/refF (; 4 ;) (type $F) (result f64)
  ;;@ infer-type.ts:39:9
  (return
   (f64.const 0)
  )
 )
 (func $start (; 5 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  ;;@ infer-type.ts:2:0
  (drop
   (i32.const 10)
  )
  ;;@ infer-type.ts:5:0
  (drop
   (i64.const 4294967296)
  )
  ;;@ infer-type.ts:8:0
  (drop
   (f64.const 1.5)
  )
  ;;@ infer-type.ts:18:0
  (call $infer-type/locals)
  (set_global $infer-type/ri
   ;;@ infer-type.ts:23:9
   (call $infer-type/reti)
  )
  ;;@ infer-type.ts:24:0
  (drop
   (get_global $infer-type/ri)
  )
  (set_global $infer-type/rI
   ;;@ infer-type.ts:29:9
   (call $infer-type/retI)
  )
  ;;@ infer-type.ts:30:0
  (drop
   (get_global $infer-type/rI)
  )
  (set_global $infer-type/rf
   ;;@ infer-type.ts:35:9
   (call $infer-type/retf)
  )
  ;;@ infer-type.ts:36:0
  (drop
   (get_global $infer-type/rf)
  )
  (set_global $infer-type/rF
   ;;@ infer-type.ts:41:9
   (call $infer-type/refF)
  )
  ;;@ infer-type.ts:42:0
  (drop
   (get_global $infer-type/rF)
  )
  ;;@ infer-type.ts:44:0
  (block $break|0
   (block
    (set_local $0
     ;;@ infer-type.ts:44:13
     (i32.const 0)
    )
    (set_local $1
     ;;@ infer-type.ts:44:20
     (i32.const 10)
    )
   )
   (loop $continue|0
    (if
     ;;@ infer-type.ts:44:24
     (i32.lt_s
      (get_local $0)
      ;;@ infer-type.ts:44:28
      (get_local $1)
     )
     (block
      (block
       ;;@ infer-type.ts:45:2
       (nop)
      )
      ;;@ infer-type.ts:44:31
      (set_local $0
       (i32.add
        ;;@ infer-type.ts:44:33
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
 )
)
