(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 0 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (drop
   (i32.add
    (i32.add
     (block (result i32)
      (block $__inlined_func$export/add (result i32)
       (set_local $0
        (i32.const 1)
       )
       (set_local $1
        (i32.const 2)
       )
       (i32.add
        (get_local $0)
        (get_local $1)
       )
      )
     )
     (block (result i32)
      (block $__inlined_func$export/sub (result i32)
       (set_local $2
        (i32.const 2)
       )
       (set_local $3
        (i32.const 3)
       )
       (i32.sub
        (get_local $2)
        (get_local $3)
       )
      )
     )
    )
    (block (result i32)
     (block $__inlined_func$export/mul (result i32)
      (set_local $4
       (i32.const 3)
      )
      (set_local $5
       (i32.const 1)
      )
      (i32.mul
       (get_local $4)
       (get_local $5)
      )
     )
    )
   )
  )
  (block
   (block $__inlined_func$export/ns.two
    (nop)
   )
  )
 )
)
