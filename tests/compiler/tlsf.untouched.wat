(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $tlsf/ALIGN_SIZE_LOG2 i32 (i32.const 3))
 (global $tlsf/ALIGN_SIZE i32 (i32.const 8))
 (global $tlsf/SL_INDEX_COUNT_LOG2 i32 (i32.const 5))
 (global $tlsf/FL_INDEX_MAX i32 (i32.const 30))
 (global $tlsf/SL_INDEX_COUNT i32 (i32.const 32))
 (global $tlsf/FL_INDEX_SHIFT i32 (i32.const 8))
 (global $tlsf/FL_INDEX_COUNT i32 (i32.const 23))
 (global $tlsf/SMALL_BLOCK_SIZE i32 (i32.const 256))
 (global $tlsf/BLOCK$PREV_PHYS_BLOCK_OFFSET i32 (i32.const 0))
 (global $tlsf/BLOCK$TAGGED_SIZE_OFFSET i32 (i32.const 4))
 (global $tlsf/BLOCK$NEXT_FREE_OFFSET i32 (i32.const 8))
 (global $tlsf/BLOCK$PREV_FREE_OFFSET i32 (i32.const 12))
 (global $tlsf/BLOCK$SIZE i32 (i32.const 16))
 (global $tlsf/BLOCK_HEADER_FREE_BIT i32 (i32.const 1))
 (global $tlsf/BLOCK_HEADER_PREV_FREE_BIT i32 (i32.const 2))
 (global $tlsf/BLOCK_OVERHEAD i32 (i32.const 4))
 (global $tlsf/BLOCK_START_OFFSET i32 (i32.const 8))
 (global $tlsf/BLOCK_SIZE_MIN i32 (i32.const 12))
 (global $tlsf/BLOCK_SIZE_MAX i32 (i32.const 1073741824))
 (global $tlsf/CONTROL$FL_BITMAP_OFFSET i32 (i32.const 16))
 (global $tlsf/CONTROL$SL_BITMAP_OFFSET i32 (i32.const 20))
 (global $tlsf/CONTROL$BLOCKS_OFFSET i32 (i32.const 112))
 (global $tlsf/CONTROL$SIZE i32 (i32.const 3056))
 (global $HEAP_BASE i32 (i32.const 24))
 (memory $0 1)
 (data (i32.const 4) "\07\00\00\00t\00l\00s\00f\00.\00t\00s\00")
 (export "control$construct" (func $tlsf/control$construct))
 (export "memory" (memory $0))
 (start $start)
 (func $tlsf/fls (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (if (result i32)
    (i32.eqz
     (get_local $0)
    )
    (i32.const -1)
    (i32.sub
     (i32.const 31)
     (i32.clz
      (get_local $0)
     )
    )
   )
  )
 )
 (func $tlsf/ffs (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (if (result i32)
    (i32.eqz
     (get_local $0)
    )
    (i32.const -1)
    (i32.ctz
     (get_local $0)
    )
   )
  )
 )
 (func $tlsf/block$set_next_free (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $1)
  )
 )
 (func $tlsf/block$set_prev_free (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (get_local $1)
  )
 )
 (func $tlsf/control$set_fl_bitmap (; 5 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $1)
  )
 )
 (func $tlsf/control$set_sl_bitmap (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (if
   (i32.eqz
    (i32.lt_u
     (get_local $1)
     (i32.const 23)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 162)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $0)
     (i32.const 20)
    )
    (i32.mul
     (get_local $1)
     (i32.const 4)
    )
   )
   (get_local $2)
  )
 )
 (func $tlsf/control$set_block (; 7 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (if
   (i32.eqz
    (i32.lt_u
     (get_local $1)
     (i32.const 23)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 173)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.lt_u
     (get_local $2)
     (i32.const 32)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 174)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (i32.store
   (i32.add
    (i32.add
     (get_local $0)
     (i32.const 112)
    )
    (i32.mul
     (i32.add
      (i32.mul
       (get_local $1)
       (i32.const 32)
      )
      (get_local $2)
     )
     (i32.const 4)
    )
   )
   (get_local $3)
  )
 )
 (func $tlsf/control$construct (; 8 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (call $tlsf/block$set_next_free
   (get_local $0)
   (get_local $0)
  )
  (call $tlsf/block$set_prev_free
   (get_local $0)
   (get_local $0)
  )
  (call $tlsf/control$set_fl_bitmap
   (get_local $0)
   (i32.const 0)
  )
  (block $break|0
   (set_local $1
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_u
      (get_local $1)
      (i32.const 23)
     )
     (block
      (block
       (call $tlsf/control$set_sl_bitmap
        (get_local $0)
        (get_local $1)
        (i32.const 0)
       )
       (block $break|1
        (set_local $2
         (i32.const 0)
        )
        (loop $continue|1
         (if
          (i32.lt_u
           (get_local $2)
           (i32.const 32)
          )
          (block
           (call $tlsf/control$set_block
            (get_local $0)
            (get_local $1)
            (get_local $2)
            (get_local $0)
           )
           (set_local $2
            (i32.add
             (get_local $2)
             (i32.const 1)
            )
           )
           (br $continue|1)
          )
         )
        )
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
  )
 )
 (func $start (; 9 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (call $tlsf/fls
      (i32.const 0)
     )
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 10)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $tlsf/fls
      (i32.const 1)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $tlsf/fls
      (i32.const -2147483640)
     )
     (i32.const 31)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $tlsf/fls
      (i32.const 2147483647)
     )
     (i32.const 30)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $tlsf/ffs
      (i32.const 0)
     )
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $tlsf/ffs
      (i32.const 1)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $tlsf/ffs
      (i32.const -2147483648)
     )
     (i32.const 31)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 29)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $tlsf/control$construct
   (i32.load
    (i32.const 4)
   )
  )
 )
)
