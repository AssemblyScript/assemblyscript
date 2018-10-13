(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (memory $0 1)
 (data (i32.const 8) "\06\00\00\00\01\d87\dch\00i\00R\d8b\df")
 (data (i32.const 24) "\12\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00-\00u\00t\00f\008\00.\00t\00s")
 (data (i32.const 72) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 104) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 160) "\02\00\00\00\01\d87\dc")
 (data (i32.const 168) "\02\00\00\00h\00i")
 (data (i32.const 176) "\02\00\00\00R\d8b\df")
 (data (i32.const 184) "\01")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/string-utf8/str (mut i32) (i32.const 8))
 (global $std/string-utf8/len (mut i32) (i32.const 0))
 (global $std/string-utf8/ptr (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/string/String#get:lengthUTF8 (; 1 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (i32.const 1)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $2)
     (get_local $4)
    )
    (block
     (set_local $2
      (if (result i32)
       (i32.lt_u
        (tee_local $3
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
        (i32.const 128)
       )
       (block (result i32)
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (get_local $3)
         (i32.const 2048)
        )
        (block (result i32)
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 2)
          )
         )
         (i32.add
          (get_local $2)
          (i32.const 1)
         )
        )
        (block (result i32)
         (if
          (tee_local $3
           (i32.eq
            (i32.and
             (get_local $3)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (set_local $3
           (i32.lt_u
            (i32.add
             (get_local $2)
             (i32.const 1)
            )
            (get_local $4)
           )
          )
         )
         (if
          (get_local $3)
          (set_local $3
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
          )
         )
         (if (result i32)
          (get_local $3)
          (block (result i32)
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 4)
            )
           )
           (i32.add
            (get_local $2)
            (i32.const 2)
           )
          )
          (block (result i32)
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
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
  (get_local $1)
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/string/String#toUTF8 (; 3 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $5
   (call $~lib/allocator/arena/__memory_allocate
    (call $~lib/string/String#get:lengthUTF8
     (get_local $0)
    )
   )
  )
  (set_local $7
   (i32.load
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $3)
     (get_local $7)
    )
    (block
     (if
      (i32.lt_u
       (tee_local $1
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
       (i32.const 128)
      )
      (block
       (i32.store8
        (i32.add
         (get_local $5)
         (get_local $2)
        )
        (get_local $1)
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
        (get_local $1)
        (i32.const 2048)
       )
       (block
        (i32.store8
         (tee_local $4
          (i32.add
           (get_local $5)
           (get_local $2)
          )
         )
         (i32.or
          (i32.shr_u
           (get_local $1)
           (i32.const 6)
          )
          (i32.const 192)
         )
        )
        (i32.store8 offset=1
         (get_local $4)
         (i32.or
          (i32.and
           (get_local $1)
           (i32.const 63)
          )
          (i32.const 128)
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
        (set_local $4
         (i32.add
          (get_local $5)
          (get_local $2)
         )
        )
        (if
         (tee_local $6
          (i32.eq
           (i32.and
            (get_local $1)
            (i32.const 64512)
           )
           (i32.const 55296)
          )
         )
         (set_local $6
          (i32.lt_u
           (i32.add
            (get_local $3)
            (i32.const 1)
           )
           (get_local $7)
          )
         )
        )
        (if
         (get_local $6)
         (if
          (i32.eq
           (i32.and
            (tee_local $6
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
            (i32.const 64512)
           )
           (i32.const 56320)
          )
          (block
           (i32.store8
            (get_local $4)
            (i32.or
             (i32.shr_u
              (tee_local $1
               (i32.add
                (i32.add
                 (i32.shl
                  (i32.and
                   (get_local $1)
                   (i32.const 1023)
                  )
                  (i32.const 10)
                 )
                 (i32.const 65536)
                )
                (i32.and
                 (get_local $6)
                 (i32.const 1023)
                )
               )
              )
              (i32.const 18)
             )
             (i32.const 240)
            )
           )
           (i32.store8 offset=1
            (get_local $4)
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
            (get_local $4)
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
            (get_local $4)
            (i32.or
             (i32.and
              (get_local $1)
              (i32.const 63)
             )
             (i32.const 128)
            )
           )
           (set_local $2
            (i32.add
             (get_local $2)
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
        (i32.store8
         (get_local $4)
         (i32.or
          (i32.shr_u
           (get_local $1)
           (i32.const 12)
          )
          (i32.const 224)
         )
        )
        (i32.store8 offset=1
         (get_local $4)
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
         (get_local $4)
         (i32.or
          (i32.and
           (get_local $1)
           (i32.const 63)
          )
          (i32.const 128)
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 3)
         )
        )
       )
      )
     )
     (set_local $3
      (i32.add
       (get_local $3)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.store8
   (i32.add
    (get_local $5)
    (get_local $2)
   )
   (i32.const 0)
  )
  (get_local $5)
 )
 (func $~lib/internal/string/allocateUnsafe (; 4 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (tee_local $1
    (i32.gt_s
     (get_local $0)
     (i32.const 0)
    )
   )
   (set_local $1
    (i32.le_s
     (get_local $0)
     (i32.const 536870910)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $1)
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
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/__memory_allocate
     (i32.add
      (i32.shl
       (get_local $0)
       (i32.const 1)
      )
      (i32.const 4)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/internal/memory/memcpy (; 5 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (loop $continue|0
   (if
    (tee_local $3
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $4
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (get_local $1)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
   )
   (block
    (loop $continue|1
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 16)
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
       (br $continue|1)
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
     (block
      (set_local $3
       (get_local $1)
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (get_local $1)
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
      (if
       (i32.ne
        (tee_local $3
         (i32.and
          (get_local $0)
          (i32.const 3)
         )
        )
        (i32.const 1)
       )
       (block
        (br_if $case1|2
         (i32.eq
          (get_local $3)
          (i32.const 2)
         )
        )
        (br_if $case2|2
         (i32.eq
          (get_local $3)
          (i32.const 3)
         )
        )
        (br $break|2)
       )
      )
      (set_local $5
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (tee_local $3
         (get_local $1)
        )
       )
      )
      (set_local $0
       (tee_local $1
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (i32.store8
       (get_local $1)
       (i32.load8_u
        (tee_local $1
         (i32.add
          (get_local $3)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $4
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (tee_local $3
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $4)
       (i32.load8_u
        (get_local $3)
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 3)
       )
      )
      (loop $continue|3
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 17)
        )
        (block
         (i32.store
          (get_local $0)
          (i32.or
           (i32.shr_u
            (get_local $5)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.const 8)
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
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $5
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.const 8)
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
            (get_local $5)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.const 8)
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
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $5
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
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
         (br $continue|3)
        )
       )
      )
      (br $break|2)
     )
     (set_local $5
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (get_local $0)
      (i32.load8_u
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 2)
      )
     )
     (loop $continue|4
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 18)
       )
       (block
        (i32.store
         (get_local $0)
         (i32.or
          (i32.shr_u
           (get_local $5)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.const 16)
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
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.const 16)
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
           (get_local $5)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.const 16)
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
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
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
        (br $continue|4)
       )
      )
     )
     (br $break|2)
    )
    (set_local $5
     (i32.load
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (get_local $1)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (loop $continue|5
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 19)
      )
      (block
       (i32.store
        (get_local $0)
        (i32.or
         (i32.shr_u
          (get_local $5)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.const 24)
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
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.const 24)
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
          (get_local $5)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.const 24)
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
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
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
       (br $continue|5)
      )
     )
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
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (block
    (set_local $3
     (get_local $1)
    )
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memmove (; 6 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
   )
   (set_local $3
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
  )
  (if
   (get_local $3)
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
      (loop $continue|0
       (if
        (i32.and
         (get_local $0)
         (i32.const 7)
        )
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
         (set_local $0
          (i32.add
           (tee_local $3
            (tee_local $4
             (get_local $0)
            )
           )
           (i32.const 1)
          )
         )
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (i32.store8
          (get_local $4)
          (i32.load8_u
           (get_local $3)
          )
         )
         (br $continue|0)
        )
       )
      )
      (loop $continue|1
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
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
         (br $continue|1)
        )
       )
      )
     )
    )
    (loop $continue|2
     (if
      (get_local $2)
      (block
       (set_local $0
        (i32.add
         (tee_local $3
          (tee_local $4
           (get_local $0)
          )
         )
         (i32.const 1)
        )
       )
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (get_local $4)
        (i32.load8_u
         (get_local $3)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $continue|2)
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
         (br $continue|3)
        )
       )
      )
      (loop $continue|4
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
        (block
         (i64.store
          (i32.add
           (get_local $0)
           (tee_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
          )
          (i64.load
           (i32.add
            (get_local $1)
            (get_local $2)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
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
 (func $~lib/allocator/arena/__memory_free (; 7 ;) (; has Stack IR ;) (type $FUNCSIG$v)
  (nop)
 )
 (func $~lib/string/String.fromUTF8 (; 8 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.lt_u
    (get_local $1)
    (i32.const 1)
   )
   (return
    (i32.const 64)
   )
  )
  (set_local $6
   (call $~lib/allocator/arena/__memory_allocate
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.lt_u
     (get_local $2)
     (get_local $1)
    )
    (block
     (set_local $2
      (i32.add
       (tee_local $4
        (get_local $2)
       )
       (i32.const 1)
      )
     )
     (if
      (i32.lt_u
       (tee_local $4
        (i32.load8_u
         (i32.add
          (get_local $0)
          (get_local $4)
         )
        )
       )
       (i32.const 128)
      )
      (block
       (i32.store16
        (i32.add
         (get_local $6)
         (get_local $3)
        )
        (get_local $4)
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
      (block
       (if
        (tee_local $5
         (i32.gt_u
          (get_local $4)
          (i32.const 191)
         )
        )
        (set_local $5
         (i32.lt_u
          (get_local $4)
          (i32.const 224)
         )
        )
       )
       (if
        (get_local $5)
        (block
         (if
          (i32.gt_u
           (i32.add
            (get_local $2)
            (i32.const 1)
           )
           (get_local $1)
          )
          (block
           (call $~lib/env/abort
            (i32.const 0)
            (i32.const 72)
            (i32.const 493)
            (i32.const 8)
           )
           (unreachable)
          )
         )
         (set_local $2
          (i32.add
           (tee_local $5
            (get_local $2)
           )
           (i32.const 1)
          )
         )
         (i32.store16
          (i32.add
           (get_local $6)
           (get_local $3)
          )
          (i32.or
           (i32.shl
            (i32.and
             (get_local $4)
             (i32.const 31)
            )
            (i32.const 6)
           )
           (i32.and
            (i32.load8_u
             (i32.add
              (get_local $0)
              (get_local $5)
             )
            )
            (i32.const 63)
           )
          )
         )
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 2)
          )
         )
        )
        (block
         (if
          (tee_local $5
           (i32.gt_u
            (get_local $4)
            (i32.const 239)
           )
          )
          (set_local $5
           (i32.lt_u
            (get_local $4)
            (i32.const 365)
           )
          )
         )
         (if
          (get_local $5)
          (block
           (if
            (i32.gt_u
             (i32.add
              (get_local $2)
              (i32.const 3)
             )
             (get_local $1)
            )
            (block
             (call $~lib/env/abort
              (i32.const 0)
              (i32.const 72)
              (i32.const 497)
              (i32.const 8)
             )
             (unreachable)
            )
           )
           (i32.store16
            (i32.add
             (get_local $6)
             (get_local $3)
            )
            (i32.add
             (i32.shr_u
              (tee_local $4
               (i32.sub
                (i32.or
                 (tee_local $4
                  (i32.or
                   (tee_local $4
                    (i32.or
                     (i32.shl
                      (i32.and
                       (get_local $4)
                       (i32.const 7)
                      )
                      (i32.const 18)
                     )
                     (i32.shl
                      (i32.and
                       (i32.load8_u
                        (i32.add
                         (get_local $0)
                         (tee_local $5
                          (get_local $2)
                         )
                        )
                       )
                       (i32.const 63)
                      )
                      (i32.const 12)
                     )
                    )
                   )
                   (i32.shl
                    (i32.and
                     (i32.load8_u
                      (i32.add
                       (get_local $0)
                       (tee_local $2
                        (i32.add
                         (get_local $2)
                         (i32.const 1)
                        )
                       )
                      )
                     )
                     (i32.const 63)
                    )
                    (i32.const 6)
                   )
                  )
                 )
                 (i32.and
                  (i32.load8_u
                   (i32.add
                    (get_local $0)
                    (tee_local $5
                     (tee_local $2
                      (i32.add
                       (get_local $2)
                       (i32.const 1)
                      )
                     )
                    )
                   )
                  )
                  (i32.const 63)
                 )
                )
                (i32.const 65536)
               )
              )
              (i32.const 10)
             )
             (i32.const 55296)
            )
           )
           (i32.store16
            (i32.add
             (get_local $6)
             (tee_local $3
              (i32.add
               (get_local $3)
               (i32.const 2)
              )
             )
            )
            (i32.add
             (i32.and
              (get_local $4)
              (i32.const 1023)
             )
             (i32.const 56320)
            )
           )
          )
          (block
           (if
            (i32.gt_u
             (i32.add
              (get_local $2)
              (i32.const 2)
             )
             (get_local $1)
            )
            (block
             (call $~lib/env/abort
              (i32.const 0)
              (i32.const 72)
              (i32.const 509)
              (i32.const 8)
             )
             (unreachable)
            )
           )
           (i32.store16
            (i32.add
             (get_local $6)
             (get_local $3)
            )
            (i32.or
             (tee_local $4
              (i32.or
               (i32.shl
                (i32.and
                 (get_local $4)
                 (i32.const 15)
                )
                (i32.const 12)
               )
               (i32.shl
                (i32.and
                 (i32.load8_u
                  (i32.add
                   (get_local $0)
                   (tee_local $5
                    (get_local $2)
                   )
                  )
                 )
                 (i32.const 63)
                )
                (i32.const 6)
               )
              )
             )
             (i32.and
              (i32.load8_u
               (i32.add
                (get_local $0)
                (tee_local $5
                 (tee_local $2
                  (i32.add
                   (get_local $2)
                   (i32.const 1)
                  )
                 )
                )
               )
              )
              (i32.const 63)
             )
            )
           )
          )
         )
         (set_local $3
          (i32.add
           (get_local $3)
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
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.ne
    (get_local $2)
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 518)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (call $~lib/internal/memory/memmove
   (tee_local $4
    (i32.add
     (tee_local $0
      (call $~lib/internal/string/allocateUnsafe
       (i32.shr_u
        (get_local $3)
        (i32.const 1)
       )
      )
     )
     (i32.const 4)
    )
   )
   (get_local $6)
   (get_local $3)
  )
  (call $~lib/allocator/arena/__memory_free)
  (get_local $0)
 )
 (func $~lib/internal/string/compareUnsafe (; 9 ;) (; has Stack IR ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 10 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
   (i32.eqz
    (tee_local $2
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
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
    (get_local $1)
    (get_local $2)
   )
  )
 )
 (func $start (; 11 ;) (; has Stack IR ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 192)
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
   (i32.ne
    (get_global $std/string-utf8/len)
    (i32.const 11)
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
   (i32.ne
    (i32.load8_u
     (get_global $std/string-utf8/ptr)
    )
    (i32.const 240)
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
   (i32.ne
    (i32.load8_u offset=1
     (get_global $std/string-utf8/ptr)
    )
    (i32.const 144)
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
   (i32.ne
    (i32.load8_u offset=2
     (get_global $std/string-utf8/ptr)
    )
    (i32.const 144)
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
   (i32.ne
    (i32.load8_u offset=3
     (get_global $std/string-utf8/ptr)
    )
    (i32.const 183)
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
   (i32.ne
    (i32.load8_u offset=4
     (get_global $std/string-utf8/ptr)
    )
    (i32.const 104)
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
   (i32.ne
    (i32.load8_u offset=5
     (get_global $std/string-utf8/ptr)
    )
    (i32.const 105)
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
   (i32.ne
    (i32.load8_u offset=6
     (get_global $std/string-utf8/ptr)
    )
    (i32.const 240)
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
   (i32.ne
    (i32.load8_u offset=7
     (get_global $std/string-utf8/ptr)
    )
    (i32.const 164)
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
   (i32.ne
    (i32.load8_u offset=8
     (get_global $std/string-utf8/ptr)
    )
    (i32.const 173)
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
   (i32.ne
    (i32.load8_u offset=9
     (get_global $std/string-utf8/ptr)
    )
    (i32.const 162)
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
   (i32.load8_u offset=10
    (get_global $std/string-utf8/ptr)
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
  (call $~lib/allocator/arena/__memory_free)
 )
 (func $null (; 12 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
