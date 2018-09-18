(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d")
 (data (i32.const 40) "\11\00\00\00o\00b\00j\00e\00c\00t\00-\00l\00i\00t\00e\00r\00a\00l\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/memory/memory.allocate (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/allocator/arena/__memory_allocate
   (get_local $0)
  )
 )
 (func $~lib/internal/string/compareUnsafe (; 3 ;) (; has Stack IR ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (get_local $0)
  )
  (loop $continue|0
   (if
    (tee_local $0
     (if (result i32)
      (get_local $2)
      (i32.eqz
       (tee_local $4
        (i32.sub
         (i32.load16_u offset=4
          (get_local $3)
         )
         (i32.load16_u offset=4
          (get_local $1)
         )
        )
       )
      )
      (get_local $2)
     )
    )
    (block
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $4)
 )
 (func $~lib/string/String.__eq (; 4 ;) (; has Stack IR ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eq
    (get_local $0)
    (i32.const 8)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (tee_local $1
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (set_local $1
    (i32.const 0)
   )
  )
  (if
   (get_local $1)
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (tee_local $1
     (i32.load
      (get_local $0)
     )
    )
    (i32.load
     (i32.const 8)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 8)
    (get_local $1)
   )
  )
 )
 (func $object-literal/bar (; 5 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (if
   (i32.ne
    (i32.load
     (get_local $0)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 9)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 10)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $object-literal/bar2 (; 6 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (if
   (i32.ne
    (i32.load
     (get_local $0)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 26)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $object-literal/Foo2#test (; 7 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (if
   (i32.ne
    (i32.load
     (get_local $0)
    )
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 21)
     (i32.const 4)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 8 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 80)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (i32.store
   (tee_local $0
    (call $~lib/memory/memory.allocate
     (i32.const 8)
    )
   )
   (i32.const 1)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 8)
  )
  (call $object-literal/bar
   (get_local $0)
  )
  (i32.store
   (tee_local $0
    (call $~lib/memory/memory.allocate
     (i32.const 4)
    )
   )
   (i32.const 2)
  )
  (call $object-literal/bar2
   (get_local $0)
  )
  (i32.store
   (tee_local $0
    (call $~lib/memory/memory.allocate
     (i32.const 4)
    )
   )
   (i32.const 3)
  )
  (call $object-literal/Foo2#test
   (get_local $0)
  )
 )
 (func $null (; 9 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
