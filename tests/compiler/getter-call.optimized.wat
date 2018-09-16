(module
 (type $i (func (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (table 2 2 anyfunc)
 (elem (i32.const 0) $null $getter-call/C#get:x~anonymous|1)
 (memory $0 0)
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $getter-call/test))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 0 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741824)
   )
   (unreachable)
  )
  (if
   (i32.gt_u
    (tee_local $2
     (i32.and
      (i32.add
       (i32.add
        (tee_local $1
         (get_global $~lib/allocator/arena/offset)
        )
        (select
         (get_local $0)
         (i32.const 1)
         (i32.gt_u
          (get_local $0)
          (i32.const 1)
         )
        )
       )
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    (i32.shl
     (tee_local $3
      (current_memory)
     )
     (i32.const 16)
    )
   )
   (if
    (i32.lt_s
     (grow_memory
      (select
       (get_local $3)
       (tee_local $0
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (get_local $2)
            (get_local $1)
           )
           (i32.const 65535)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (i32.gt_s
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $0)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $2)
  )
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 1 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (call $~lib/allocator/arena/__memory_allocate
   (i32.const 0)
  )
 )
 (func $getter-call/C#get:x~anonymous|1 (; 2 ;) (; has Stack IR ;) (type $i) (result i32)
  (i32.const 42)
 )
 (func $getter-call/C#get:x (; 3 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const 1)
 )
 (func $getter-call/test (; 4 ;) (; has Stack IR ;) (type $i) (result i32)
  (local $0 i32)
  (set_local $0
   (call $~lib/memory/memory.allocate)
  )
  (set_global $~argc
   (i32.const 0)
  )
  (call_indirect (type $i)
   (call $getter-call/C#get:x)
  )
 )
 (func $start (; 5 ;) (; has Stack IR ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 8)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
 )
 (func $null (; 6 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
