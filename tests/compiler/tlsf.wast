(module
 (type $ii (func (param i32) (result i32)))
 (type $i (func (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global $tlsf/ALIGN_SIZE_LOG2 i32 (i32.const 3))
 (global $tlsf/ALIGN_SIZE i32 (i32.const 8))
 (global $tlsf/BLOCK$PREV_PHYS_BLOCK_OFFSET i32 (i32.const 0))
 (global $tlsf/BLOCK$TAGGED_SIZE_OFFSET i32 (i32.const 4))
 (global $tlsf/BLOCK$NEXT_FREE_OFFSET i32 (i32.const 8))
 (global $tlsf/BLOCK$PREV_FREE_OFFSET i32 (i32.const 12))
 (global $tlsf/BLOCK$SIZE i32 (i32.const 16))
 (global $tlsf/CONTROL$FL_BITMAP_OFFSET i32 (i32.const 16))
 (global $tlsf/FL_INDEX_MAX i32 (i32.const 30))
 (global $tlsf/SL_INDEX_COUNT_LOG2 i32 (i32.const 5))
 (global $tlsf/FL_INDEX_SHIFT i32 (i32.const 8))
 (global $tlsf/FL_INDEX_COUNT i32 (i32.const 23))
 (global $tlsf/CONTROL$SL_BITMAP_OFFSET i32 (i32.const 20))
 (global $tlsf/SL_INDEX_COUNT i32 (i32.const 32))
 (global $tlsf/CONTROL$BLOCKS_OFFSET i32 (i32.const 112))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "control$construct" (func $tlsf/control$construct))
 (export "memory" (memory $0))
 (start $start)
 (func $tlsf/fls (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (if (result i32)
    (i32.eqz
     (get_local $0)
    )
    (i32.sub
     (i32.const 0)
     (i32.const 1)
    )
    (i32.sub
     (i32.const 31)
     (i32.clz
      (get_local $0)
     )
    )
   )
  )
 )
 (func $tlsf/ffs (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (if (result i32)
    (i32.eqz
     (get_local $0)
    )
    (i32.sub
     (i32.const 0)
     (i32.const 1)
    )
    (i32.ctz
     (get_local $0)
    )
   )
  )
 )
 (func $tlsf/block$set_next_free (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $1)
  )
 )
 (func $tlsf/block$set_prev_free (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (get_local $1)
  )
 )
 (func $tlsf/control$set_fl_bitmap (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $1)
  )
 )
 (func $tlsf/control$set_sl_bitmap (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (if
   (i32.eqz
    (i32.lt_u
     (get_local $1)
     (i32.const 23)
    )
   )
   (unreachable)
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
 (func $tlsf/control$set_block (; 6 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (if
   (i32.eqz
    (i32.lt_u
     (get_local $1)
     (i32.const 23)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.lt_u
     (get_local $2)
     (i32.const 32)
    )
   )
   (unreachable)
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
 (func $tlsf/control$construct (; 7 ;) (type $iv) (param $0 i32)
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
   (block
    (set_local $1
     (i32.const 0)
    )
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
        (block
         (set_local $2
          (i32.const 0)
         )
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
 (func $start (; 8 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (call $tlsf/fls
      (i32.const 0)
     )
     (i32.sub
      (i32.const 0)
      (i32.const 1)
     )
    )
   )
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (call $tlsf/ffs
      (i32.const 0)
     )
     (i32.sub
      (i32.const 0)
      (i32.const 1)
     )
    )
   )
   (unreachable)
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
   (unreachable)
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
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 8)
     (i32.const 8)
    )
   )
   (unreachable)
  )
  (call $tlsf/control$construct
   (i32.load
    (i32.const 4)
   )
  )
 )
)
(;
[program.elements]
  NaN
  Infinity
  isNaN
  isFinite
  clz
  ctz
  popcnt
  rotl
  rotr
  abs
  max
  min
  ceil
  floor
  copysign
  nearest
  reinterpret
  sqrt
  trunc
  load
  store
  sizeof
  select
  unreachable
  current_memory
  grow_memory
  parseInt
  parseFloat
  changetype
  assert
  i8
  i16
  i32
  i64
  u8
  u16
  u32
  u64
  bool
  f32
  f64
  isize
  usize
  HEAP_BASE
  tlsf/fls
  tlsf/ffs
  tlsf/ALIGN_SIZE_LOG2
  tlsf/ALIGN_SIZE
  tlsf/SL_INDEX_COUNT_LOG2
  tlsf/FL_INDEX_MAX
  tlsf/SL_INDEX_COUNT
  tlsf/FL_INDEX_SHIFT
  tlsf/FL_INDEX_COUNT
  tlsf/SMALL_BLOCK_SIZE
  tlsf/BLOCK$PREV_PHYS_BLOCK_OFFSET
  tlsf/BLOCK$TAGGED_SIZE_OFFSET
  tlsf/BLOCK$NEXT_FREE_OFFSET
  tlsf/BLOCK$PREV_FREE_OFFSET
  tlsf/BLOCK$SIZE
  tlsf/BLOCK_HEADER_FREE_BIT
  tlsf/BLOCK_HEADER_PREV_FREE_BIT
  tlsf/BLOCK_OVERHEAD
  tlsf/BLOCK_START_OFFSET
  tlsf/BLOCK_SIZE_MIN
  tlsf/BLOCK_SIZE_MAX
  tlsf/block$get_prev_phys_block
  tlsf/block$set_prev_phys_block
  tlsf/block$get_tagged_size
  tlsf/block$set_tagged_size
  tlsf/block_size
  tlsf/block_set_size
  tlsf/block$get_next_free
  tlsf/block$set_next_free
  tlsf/block$get_prev_free
  tlsf/block$set_prev_free
  tlsf/block_is_last
  tlsf/block_is_free
  tlsf/block_set_free
  tlsf/block_set_used
  tlsf/block_is_prev_free
  tlsf/block_set_prev_free
  tlsf/block_set_prev_used
  tlsf/block_from_ptr
  tlsf/block_to_ptr
  tlsf/CONTROL$FL_BITMAP_OFFSET
  tlsf/CONTROL$SL_BITMAP_OFFSET
  tlsf/CONTROL$BLOCKS_OFFSET
  tlsf/CONTROL$SIZE
  tlsf/control$get_fl_bitmap
  tlsf/control$set_fl_bitmap
  tlsf/control$get_sl_bitmap
  tlsf/control$set_sl_bitmap
  tlsf/control$get_block
  tlsf/control$set_block
  tlsf/control$construct
[program.exports]
  tlsf/control$construct
;)
