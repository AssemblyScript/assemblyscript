(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $v (func))
 (memory $0 1)
 (data (i32.const 8) "\06\00\00\00\01\d87\dch\00i\00R\d8b\df")
 (data (i32.const 24) "\12\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00-\00u\00t\00f\008\00.\00t\00s\00")
 (data (i32.const 64) "\00\00\00\00")
 (data (i32.const 72) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 104) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 160) "\02\00\00\00\01\d87\dc")
 (data (i32.const 168) "\02\00\00\00h\00i\00")
 (data (i32.const 176) "\02\00\00\00R\d8b\df")
 (data (i32.const 184) "\01\00\00\00\00\00")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/string-utf8/str (mut i32) (i32.const 8))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $std/string-utf8/len (mut i32) (i32.const 0))
 (global $std/string-utf8/ptr (mut i32) (i32.const 0))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $HEAP_BASE i32 (i32.const 192))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/string/String#get:lengthUTF8 (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (i32.const 1)
  )
  (set_local $2
   (i32.const 0)
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
       (set_local $4
        (i32.load16_u offset=4
         (i32.add
          (get_local $0)
          (i32.shl
           (get_local $2)
           (i32.const 1)
          )
         )
        )
       )
       (if
        (i32.lt_u
         (get_local $4)
         (i32.const 128)
        )
        (block
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 1)
          )
         )
         (set_local $2
          (i32.add
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (if
         (i32.lt_u
          (get_local $4)
          (i32.const 2048)
         )
         (block
          (set_local $1
           (i32.add
            (get_local $1)
            (i32.const 2)
           )
          )
          (set_local $2
           (i32.add
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         (if
          (if (result i32)
           (tee_local $5
            (if (result i32)
             (tee_local $5
              (i32.eq
               (i32.and
                (get_local $4)
                (i32.const 64512)
               )
               (i32.const 55296)
              )
             )
             (i32.lt_u
              (i32.add
               (get_local $2)
               (i32.const 1)
              )
              (get_local $3)
             )
             (get_local $5)
            )
           )
           (i32.eq
            (i32.and
             (i32.load16_u offset=4
              (i32.add
               (get_local $0)
               (i32.shl
                (i32.add
                 (get_local $2)
                 (i32.const 1)
                )
                (i32.const 1)
               )
              )
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (get_local $5)
          )
          (block
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 4)
            )
           )
           (set_local $2
            (i32.add
             (get_local $2)
             (i32.const 2)
            )
           )
          )
          (block
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
           (set_local $2
            (i32.add
             (get_local $2)
             (i32.const 1)
            )
           )
          )
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (get_global $~lib/internal/allocator/MAX_SIZE_32)
   )
   (unreachable)
  )
  (set_local $1
   (get_global $~lib/allocator/arena/offset)
  )
  (set_local $4
   (i32.and
    (i32.add
     (i32.add
      (get_local $1)
      (select
       (tee_local $2
        (get_local $0)
       )
       (tee_local $3
        (i32.const 1)
       )
       (i32.gt_u
        (get_local $2)
        (get_local $3)
       )
      )
     )
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_local $5
   (current_memory)
  )
  (if
   (i32.gt_u
    (get_local $4)
    (i32.shl
     (get_local $5)
     (i32.const 16)
    )
   )
   (block
    (set_local $2
     (i32.shr_u
      (i32.and
       (i32.add
        (i32.sub
         (get_local $4)
         (get_local $1)
        )
        (i32.const 65535)
       )
       (i32.xor
        (i32.const 65535)
        (i32.const -1)
       )
      )
      (i32.const 16)
     )
    )
    (set_local $3
     (select
      (tee_local $3
       (get_local $5)
      )
      (tee_local $6
       (get_local $2)
      )
      (i32.gt_s
       (get_local $3)
       (get_local $6)
      )
     )
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $3)
      )
      (i32.const 0)
     )
     (if
      (i32.lt_s
       (grow_memory
        (get_local $2)
       )
       (i32.const 0)
      )
      (unreachable)
     )
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $4)
  )
  (get_local $1)
 )
 (func $~lib/string/String#toUTF8 (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $2
   (block $~lib/memory/memory.allocate|inlined.0 (result i32)
    (set_local $1
     (call $~lib/string/String#get:lengthUTF8
      (get_local $0)
     )
    )
    (br $~lib/memory/memory.allocate|inlined.0
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $1)
     )
    )
   )
  )
  (set_local $3
   (i32.const 0)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $5
   (i32.const 0)
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $3)
      (get_local $4)
     )
     (block
      (block
       (set_local $1
        (i32.load16_u offset=4
         (i32.add
          (get_local $0)
          (i32.shl
           (get_local $3)
           (i32.const 1)
          )
         )
        )
       )
       (if
        (i32.lt_u
         (get_local $1)
         (i32.const 128)
        )
        (block
         (i32.store8
          (i32.add
           (get_local $2)
           (get_local $5)
          )
          (get_local $1)
         )
         (set_local $5
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 1)
          )
         )
        )
        (if
         (i32.lt_u
          (get_local $1)
          (i32.const 2048)
         )
         (block
          (set_local $6
           (i32.add
            (get_local $2)
            (get_local $5)
           )
          )
          (i32.store8
           (get_local $6)
           (i32.or
            (i32.shr_u
             (get_local $1)
             (i32.const 6)
            )
            (i32.const 192)
           )
          )
          (i32.store8 offset=1
           (get_local $6)
           (i32.or
            (i32.and
             (get_local $1)
             (i32.const 63)
            )
            (i32.const 128)
           )
          )
          (set_local $5
           (i32.add
            (get_local $5)
            (i32.const 2)
           )
          )
          (set_local $3
           (i32.add
            (get_local $3)
            (i32.const 1)
           )
          )
         )
         (block
          (set_local $6
           (i32.add
            (get_local $2)
            (get_local $5)
           )
          )
          (if
           (if (result i32)
            (tee_local $7
             (i32.eq
              (i32.and
               (get_local $1)
               (i32.const 64512)
              )
              (i32.const 55296)
             )
            )
            (i32.lt_u
             (i32.add
              (get_local $3)
              (i32.const 1)
             )
             (get_local $4)
            )
            (get_local $7)
           )
           (block
            (set_local $7
             (i32.load16_u offset=4
              (i32.add
               (get_local $0)
               (i32.shl
                (i32.add
                 (get_local $3)
                 (i32.const 1)
                )
                (i32.const 1)
               )
              )
             )
            )
            (if
             (i32.eq
              (i32.and
               (get_local $7)
               (i32.const 64512)
              )
              (i32.const 56320)
             )
             (block
              (set_local $1
               (i32.add
                (i32.add
                 (i32.const 65536)
                 (i32.shl
                  (i32.and
                   (get_local $1)
                   (i32.const 1023)
                  )
                  (i32.const 10)
                 )
                )
                (i32.and
                 (get_local $7)
                 (i32.const 1023)
                )
               )
              )
              (i32.store8
               (get_local $6)
               (i32.or
                (i32.shr_u
                 (get_local $1)
                 (i32.const 18)
                )
                (i32.const 240)
               )
              )
              (i32.store8 offset=1
               (get_local $6)
               (i32.or
                (i32.and
                 (i32.shr_u
                  (get_local $1)
                  (i32.const 12)
                 )
                 (i32.const 63)
                )
                (i32.const 128)
               )
              )
              (i32.store8 offset=2
               (get_local $6)
               (i32.or
                (i32.and
                 (i32.shr_u
                  (get_local $1)
                  (i32.const 6)
                 )
                 (i32.const 63)
                )
                (i32.const 128)
               )
              )
              (i32.store8 offset=3
               (get_local $6)
               (i32.or
                (i32.and
                 (get_local $1)
                 (i32.const 63)
                )
                (i32.const 128)
               )
              )
              (set_local $5
               (i32.add
                (get_local $5)
                (i32.const 4)
               )
              )
              (set_local $3
               (i32.add
                (get_local $3)
                (i32.const 2)
               )
              )
              (br $continue|0)
             )
            )
           )
          )
          (i32.store8
           (get_local $6)
           (i32.or
            (i32.shr_u
             (get_local $1)
             (i32.const 12)
            )
            (i32.const 224)
           )
          )
          (i32.store8 offset=1
           (get_local $6)
           (i32.or
            (i32.and
             (i32.shr_u
              (get_local $1)
              (i32.const 6)
             )
             (i32.const 63)
            )
            (i32.const 128)
           )
          )
          (i32.store8 offset=2
           (get_local $6)
           (i32.or
            (i32.and
             (get_local $1)
             (i32.const 63)
            )
            (i32.const 128)
           )
          )
          (set_local $5
           (i32.add
            (get_local $5)
            (i32.const 3)
           )
          )
          (set_local $3
           (i32.add
            (get_local $3)
            (i32.const 1)
           )
          )
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (i32.store8
   (i32.add
    (get_local $2)
    (get_local $5)
   )
   (i32.const 0)
  )
  (get_local $2)
 )
 (func $~lib/internal/string/allocateUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (i32.gt_s
       (get_local $0)
       (i32.const 0)
      )
     )
     (i32.le_s
      (get_local $0)
      (get_global $~lib/internal/string/MAX_LENGTH)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 14)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $2
   (block $~lib/memory/memory.allocate|inlined.2 (result i32)
    (set_local $1
     (i32.add
      (get_global $~lib/internal/string/HEADER_SIZE)
      (i32.shl
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (br $~lib/memory/memory.allocate|inlined.2
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $1)
     )
    )
   )
  )
  (i32.store
   (get_local $2)
   (get_local $0)
  )
  (get_local $2)
 )
 (func $~lib/internal/memory/memcpy (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       (i32.store8
        (block (result i32)
         (set_local $0
          (i32.add
           (tee_local $5
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $1
           (i32.add
            (tee_local $5
             (get_local $1)
            )
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
    (i32.const 0)
   )
   (block
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 16)
       )
       (block
        (block
         (i32.store
          (get_local $0)
          (i32.load
           (get_local $1)
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 4)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 12)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 12)
           )
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 16)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $0)
       (i32.load16_u
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
     (i32.store8
      (block (result i32)
       (set_local $0
        (i32.add
         (tee_local $5
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $5
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    (return)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        (i32.and
         (get_local $0)
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      (block
       (set_local $3
        (i32.load
         (get_local $1)
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $0
          (i32.add
           (tee_local $5
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $1
           (i32.add
            (tee_local $5
             (get_local $1)
            )
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $0
          (i32.add
           (tee_local $5
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $1
           (i32.add
            (tee_local $5
             (get_local $1)
            )
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $0
          (i32.add
           (tee_local $5
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $1
           (i32.add
            (tee_local $5
             (get_local $1)
            )
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 3)
        )
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.ge_u
           (get_local $2)
           (i32.const 17)
          )
          (block
           (block
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.store
             (get_local $0)
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 4)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 8)
             )
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 12)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $1
             (i32.add
              (get_local $1)
              (i32.const 16)
             )
            )
            (set_local $0
             (i32.add
              (get_local $0)
              (i32.const 16)
             )
            )
            (set_local $2
             (i32.sub
              (get_local $2)
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       (br $break|2)
      )
     )
     (block
      (set_local $3
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $0
         (i32.add
          (tee_local $5
           (get_local $0)
          )
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $1
          (i32.add
           (tee_local $5
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $0
         (i32.add
          (tee_local $5
           (get_local $0)
          )
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $1
          (i32.add
           (tee_local $5
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 2)
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 18)
         )
         (block
          (block
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.store
            (get_local $0)
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 4)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 12)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 16)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 16)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      (br $break|2)
     )
    )
    (block
     (set_local $3
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $0
        (i32.add
         (tee_local $5
          (get_local $0)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $1
         (i32.add
          (tee_local $5
           (get_local $1)
          )
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (block $break|5
      (loop $continue|5
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 19)
        )
        (block
         (block
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.store
           (get_local $0)
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 4)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 8)
           )
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 12)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $1
           (i32.add
            (get_local $1)
            (i32.const 16)
           )
          )
          (set_local $0
           (i32.add
            (get_local $0)
            (i32.const 16)
           )
          )
          (set_local $2
           (i32.sub
            (get_local $2)
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     (br $break|2)
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 8)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 4)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 2)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $0
       (i32.add
        (tee_local $5
         (get_local $0)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $1
        (i32.add
         (tee_local $5
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (i32.store8
    (block (result i32)
     (set_local $0
      (i32.add
       (tee_local $5
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    (i32.load8_u
     (block (result i32)
      (set_local $1
       (i32.add
        (tee_local $5
         (get_local $1)
        )
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memmove (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
    (get_local $3)
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/internal/memory/memcpy
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (return)
   )
  )
  (if
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|0
       (loop $continue|0
        (if
         (i32.and
          (get_local $0)
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
           (i32.store8
            (block (result i32)
             (set_local $0
              (i32.add
               (tee_local $3
                (get_local $0)
               )
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            (i32.load8_u
             (block (result i32)
              (set_local $1
               (i32.add
                (tee_local $3
                 (get_local $1)
                )
                (i32.const 1)
               )
              )
              (get_local $3)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      (block $break|1
       (loop $continue|1
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (i64.store
            (get_local $0)
            (i64.load
             (get_local $1)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    (block $break|2
     (loop $continue|2
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (block (result i32)
           (set_local $0
            (i32.add
             (tee_local $3
              (get_local $0)
             )
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          (i32.load8_u
           (block (result i32)
            (set_local $1
             (i32.add
              (tee_local $3
               (get_local $1)
              )
              (i32.const 1)
             )
            )
            (get_local $3)
           )
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|3
       (loop $continue|3
        (if
         (i32.and
          (i32.add
           (get_local $0)
           (get_local $2)
          )
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (i32.store8
            (i32.add
             (get_local $0)
             (tee_local $2
              (i32.sub
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            (i32.load8_u
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (i64.store
            (i32.add
             (get_local $0)
             (get_local $2)
            )
            (i64.load
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    (block $break|5
     (loop $continue|5
      (if
       (get_local $2)
       (block
        (i32.store8
         (i32.add
          (get_local $0)
          (tee_local $2
           (i32.sub
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         (i32.load8_u
          (i32.add
           (get_local $1)
           (get_local $2)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/allocator/arena/__memory_free (; 7 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/string/String.fromUTF8 (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (i32.lt_u
    (get_local $1)
    (i32.const 1)
   )
   (return
    (i32.const 64)
   )
  )
  (set_local $2
   (i32.const 0)
  )
  (set_local $4
   (block $~lib/memory/memory.allocate|inlined.1 (result i32)
    (set_local $3
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $~lib/memory/memory.allocate|inlined.1
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $3)
     )
    )
   )
  )
  (set_local $5
   (i32.const 0)
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $2)
      (get_local $1)
     )
     (block
      (block
       (set_local $3
        (i32.load8_u
         (i32.add
          (get_local $0)
          (block (result i32)
           (set_local $2
            (i32.add
             (tee_local $3
              (get_local $2)
             )
             (i32.const 1)
            )
           )
           (get_local $3)
          )
         )
        )
       )
       (if
        (i32.lt_u
         (get_local $3)
         (i32.const 128)
        )
        (block
         (i32.store16
          (i32.add
           (get_local $4)
           (get_local $5)
          )
          (get_local $3)
         )
         (set_local $5
          (i32.add
           (get_local $5)
           (i32.const 2)
          )
         )
        )
        (if
         (if (result i32)
          (tee_local $6
           (i32.gt_u
            (get_local $3)
            (i32.const 191)
           )
          )
          (i32.lt_u
           (get_local $3)
           (i32.const 224)
          )
          (get_local $6)
         )
         (block
          (if
           (i32.eqz
            (i32.le_u
             (i32.add
              (get_local $2)
              (i32.const 1)
             )
             (get_local $1)
            )
           )
           (block
            (call $~lib/env/abort
             (i32.const 0)
             (i32.const 72)
             (i32.const 510)
             (i32.const 8)
            )
            (unreachable)
           )
          )
          (i32.store16
           (i32.add
            (get_local $4)
            (get_local $5)
           )
           (i32.or
            (i32.shl
             (i32.and
              (get_local $3)
              (i32.const 31)
             )
             (i32.const 6)
            )
            (i32.and
             (i32.load8_u
              (i32.add
               (get_local $0)
               (block (result i32)
                (set_local $2
                 (i32.add
                  (tee_local $6
                   (get_local $2)
                  )
                  (i32.const 1)
                 )
                )
                (get_local $6)
               )
              )
             )
             (i32.const 63)
            )
           )
          )
          (set_local $5
           (i32.add
            (get_local $5)
            (i32.const 2)
           )
          )
         )
         (if
          (if (result i32)
           (tee_local $6
            (i32.gt_u
             (get_local $3)
             (i32.const 239)
            )
           )
           (i32.lt_u
            (get_local $3)
            (i32.const 365)
           )
           (get_local $6)
          )
          (block
           (if
            (i32.eqz
             (i32.le_u
              (i32.add
               (get_local $2)
               (i32.const 3)
              )
              (get_local $1)
             )
            )
            (block
             (call $~lib/env/abort
              (i32.const 0)
              (i32.const 72)
              (i32.const 514)
              (i32.const 8)
             )
             (unreachable)
            )
           )
           (set_local $3
            (i32.sub
             (i32.or
              (i32.or
               (i32.or
                (i32.shl
                 (i32.and
                  (get_local $3)
                  (i32.const 7)
                 )
                 (i32.const 18)
                )
                (i32.shl
                 (i32.and
                  (i32.load8_u
                   (i32.add
                    (get_local $0)
                    (block (result i32)
                     (set_local $2
                      (i32.add
                       (tee_local $6
                        (get_local $2)
                       )
                       (i32.const 1)
                      )
                     )
                     (get_local $6)
                    )
                   )
                  )
                  (i32.const 63)
                 )
                 (i32.const 12)
                )
               )
               (i32.shl
                (i32.and
                 (i32.load8_u
                  (i32.add
                   (get_local $0)
                   (block (result i32)
                    (set_local $2
                     (i32.add
                      (tee_local $6
                       (get_local $2)
                      )
                      (i32.const 1)
                     )
                    )
                    (get_local $6)
                   )
                  )
                 )
                 (i32.const 63)
                )
                (i32.const 6)
               )
              )
              (i32.and
               (i32.load8_u
                (i32.add
                 (get_local $0)
                 (block (result i32)
                  (set_local $2
                   (i32.add
                    (tee_local $6
                     (get_local $2)
                    )
                    (i32.const 1)
                   )
                  )
                  (get_local $6)
                 )
                )
               )
               (i32.const 63)
              )
             )
             (i32.const 65536)
            )
           )
           (i32.store16
            (i32.add
             (get_local $4)
             (get_local $5)
            )
            (i32.add
             (i32.const 55296)
             (i32.shr_u
              (get_local $3)
              (i32.const 10)
             )
            )
           )
           (set_local $5
            (i32.add
             (get_local $5)
             (i32.const 2)
            )
           )
           (i32.store16
            (i32.add
             (get_local $4)
             (get_local $5)
            )
            (i32.add
             (i32.const 56320)
             (i32.and
              (get_local $3)
              (i32.const 1023)
             )
            )
           )
           (set_local $5
            (i32.add
             (get_local $5)
             (i32.const 2)
            )
           )
          )
          (block
           (if
            (i32.eqz
             (i32.le_u
              (i32.add
               (get_local $2)
               (i32.const 2)
              )
              (get_local $1)
             )
            )
            (block
             (call $~lib/env/abort
              (i32.const 0)
              (i32.const 72)
              (i32.const 526)
              (i32.const 8)
             )
             (unreachable)
            )
           )
           (i32.store16
            (i32.add
             (get_local $4)
             (get_local $5)
            )
            (i32.or
             (i32.or
              (i32.shl
               (i32.and
                (get_local $3)
                (i32.const 15)
               )
               (i32.const 12)
              )
              (i32.shl
               (i32.and
                (i32.load8_u
                 (i32.add
                  (get_local $0)
                  (block (result i32)
                   (set_local $2
                    (i32.add
                     (tee_local $6
                      (get_local $2)
                     )
                     (i32.const 1)
                    )
                   )
                   (get_local $6)
                  )
                 )
                )
                (i32.const 63)
               )
               (i32.const 6)
              )
             )
             (i32.and
              (i32.load8_u
               (i32.add
                (get_local $0)
                (block (result i32)
                 (set_local $2
                  (i32.add
                   (tee_local $6
                    (get_local $2)
                   )
                   (i32.const 1)
                  )
                 )
                 (get_local $6)
                )
               )
              )
              (i32.const 63)
             )
            )
           )
           (set_local $5
            (i32.add
             (get_local $5)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_local $2)
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 535)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $7
   (call $~lib/internal/string/allocateUnsafe
    (i32.shr_u
     (get_local $5)
     (i32.const 1)
    )
   )
  )
  (block $~lib/memory/memory.copy|inlined.0
   (set_local $3
    (i32.add
     (get_local $7)
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $3)
    (get_local $4)
    (get_local $5)
   )
  )
  (block $~lib/memory/memory.free|inlined.0
   (block
    (call $~lib/allocator/arena/__memory_free
     (get_local $4)
    )
    (br $~lib/memory/memory.free|inlined.0)
   )
  )
  (get_local $7)
 )
 (func $~lib/internal/string/compareUnsafe (; 9 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $5
   (i32.const 0)
  )
  (set_local $6
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (set_local $7
   (i32.add
    (get_local $2)
    (i32.shl
     (get_local $3)
     (i32.const 1)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $4)
      (i32.eqz
       (tee_local $5
        (i32.sub
         (i32.load16_u offset=4
          (get_local $6)
         )
         (i32.load16_u offset=4
          (get_local $7)
         )
        )
       )
      )
      (get_local $4)
     )
     (block
      (block
       (set_local $4
        (i32.sub
         (get_local $4)
         (i32.const 1)
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (set_local $7
        (i32.add
         (get_local $7)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (get_local $5)
 )
 (func $~lib/string/String.__eq (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $2
     (i32.eq
      (get_local $0)
      (i32.const 0)
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_local $3)
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $3)
   )
  )
 )
 (func $start (; 11 ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $std/string-utf8/len
   (call $~lib/string/String#get:lengthUTF8
    (get_global $std/string-utf8/str)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/string-utf8/len)
     (i32.const 11)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 7)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/string-utf8/ptr
   (call $~lib/string/String#toUTF8
    (get_global $std/string-utf8/str)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u
      (get_global $std/string-utf8/ptr)
     )
     (i32.const 240)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u offset=1
      (get_global $std/string-utf8/ptr)
     )
     (i32.const 144)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u offset=2
      (get_global $std/string-utf8/ptr)
     )
     (i32.const 144)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u offset=3
      (get_global $std/string-utf8/ptr)
     )
     (i32.const 183)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 14)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u offset=4
      (get_global $std/string-utf8/ptr)
     )
     (i32.const 104)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u offset=5
      (get_global $std/string-utf8/ptr)
     )
     (i32.const 105)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u offset=6
      (get_global $std/string-utf8/ptr)
     )
     (i32.const 240)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u offset=7
      (get_global $std/string-utf8/ptr)
     )
     (i32.const 164)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u offset=8
      (get_global $std/string-utf8/ptr)
     )
     (i32.const 173)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 19)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u offset=9
      (get_global $std/string-utf8/ptr)
     )
     (i32.const 162)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u offset=10
      (get_global $std/string-utf8/ptr)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromUTF8
      (get_global $std/string-utf8/ptr)
      (i32.const 0)
     )
     (i32.const 64)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromUTF8
      (get_global $std/string-utf8/ptr)
      (i32.sub
       (get_global $std/string-utf8/len)
       (i32.const 1)
      )
     )
     (get_global $std/string-utf8/str)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 24)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromUTF8
      (get_global $std/string-utf8/ptr)
      (i32.const 4)
     )
     (i32.const 160)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromUTF8
      (i32.add
       (get_global $std/string-utf8/ptr)
       (i32.const 4)
      )
      (i32.const 2)
     )
     (i32.const 168)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromUTF8
      (i32.add
       (get_global $std/string-utf8/ptr)
       (i32.const 6)
      )
      (i32.const 4)
     )
     (i32.const 176)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 27)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromUTF8
      (i32.add
       (get_global $std/string-utf8/ptr)
       (i32.const 10)
      )
      (i32.const 1)
     )
     (i32.const 184)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 24)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (block $~lib/memory/memory.free|inlined.1
   (set_local $0
    (get_global $std/string-utf8/ptr)
   )
   (block
    (call $~lib/allocator/arena/__memory_free
     (get_local $0)
    )
    (br $~lib/memory/memory.free|inlined.1)
   )
  )
 )
 (func $null (; 12 ;) (type $v)
 )
)
