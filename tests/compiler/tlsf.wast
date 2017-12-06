(module
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (global $tlsf/ALIGN_SIZE_LOG2 i32 (i32.const 3))
 (global $tlsf/ALIGN_SIZE (mut i32) (i32.const 0))
 (global $tlsf/BLOCK_PREV_PHYS_OFFSET i32 (i32.const 0))
 (global $tlsf/BLOCK_SIZE_OFFSET (mut i32) (i32.const 0))
 (global $tlsf/BLOCK_NEXT_FREE_OFFSET (mut i32) (i32.const 0))
 (global $tlsf/BLOCK_PREV_FREE_OFFSET (mut i32) (i32.const 0))
 (global $tlsf/CONTROL_FL_BITMAP_OFFSET (mut i32) (i32.const 0))
 (global $tlsf/FL_INDEX_MAX i32 (i32.const 30))
 (global $tlsf/SL_INDEX_COUNT_LOG2 i32 (i32.const 5))
 (global $tlsf/FL_INDEX_SHIFT (mut i32) (i32.const 0))
 (global $tlsf/FL_INDEX_COUNT (mut i32) (i32.const 0))
 (global $tlsf/SL_INDEX_COUNT (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 4) "\08\00\00\00")
 (export "control_construct" (func $tlsf/control_construct))
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
 (func $tlsf/block_set_next_free (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (i32.add
    (get_local $0)
    (get_global $tlsf/BLOCK_NEXT_FREE_OFFSET)
   )
   (get_local $1)
  )
 )
 (func $tlsf/block_set_prev_free (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (i32.add
    (get_local $0)
    (get_global $tlsf/BLOCK_PREV_FREE_OFFSET)
   )
   (get_local $1)
  )
 )
 (func $tlsf/control_set_fl (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (i32.store
   (i32.add
    (get_local $0)
    (get_global $tlsf/CONTROL_FL_BITMAP_OFFSET)
   )
   (get_local $1)
  )
 )
 (func $tlsf/control_set_sl (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (if
   (i32.eqz
    (i32.lt_s
     (get_local $1)
     (get_global $tlsf/FL_INDEX_COUNT)
    )
   )
   (unreachable)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.mul
     (get_local $1)
     (i32.const 4)
    )
   )
   (get_local $2)
  )
 )
 (func $tlsf/control_set_block (; 6 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (if
   (i32.eqz
    (i32.lt_s
     (get_local $1)
     (get_global $tlsf/FL_INDEX_COUNT)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.lt_s
     (get_local $2)
     (get_global $tlsf/SL_INDEX_COUNT)
    )
   )
   (unreachable)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.mul
     (i32.add
      (i32.mul
       (get_local $1)
       (get_global $tlsf/SL_INDEX_COUNT)
      )
      (get_local $2)
     )
     (i32.const 4)
    )
   )
   (get_local $3)
  )
 )
 (func $tlsf/control_construct (; 7 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (call $tlsf/block_set_next_free
   (get_local $0)
   (get_local $0)
  )
  (call $tlsf/block_set_prev_free
   (get_local $0)
   (get_local $0)
  )
  (call $tlsf/control_set_fl
   (get_local $0)
   (i32.const 0)
  )
  (block $break|1.1
   (block
    (set_local $1
     (i32.const 0)
    )
   )
   (loop $continue|1.1
    (if
     (i32.lt_s
      (get_local $1)
      (get_global $tlsf/FL_INDEX_COUNT)
     )
     (block
      (block
       (call $tlsf/control_set_sl
        (get_local $0)
        (get_local $1)
        (i32.const 0)
       )
       (block $break|1.2
        (block
         (set_local $2
          (i32.const 0)
         )
        )
        (loop $continue|1.2
         (if
          (i32.lt_s
           (get_local $2)
           (get_global $tlsf/SL_INDEX_COUNT)
          )
          (block
           (call $tlsf/control_set_block
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
           (br $continue|1.2)
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
      (br $continue|1.1)
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
  (set_global $tlsf/ALIGN_SIZE
   (i32.shl
    (i32.const 1)
    (get_global $tlsf/ALIGN_SIZE_LOG2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $tlsf/ALIGN_SIZE)
     (i32.const 8)
    )
   )
   (unreachable)
  )
  (set_global $tlsf/BLOCK_SIZE_OFFSET
   (i32.add
    (get_global $tlsf/BLOCK_PREV_PHYS_OFFSET)
    (i32.const 4)
   )
  )
  (set_global $tlsf/BLOCK_NEXT_FREE_OFFSET
   (i32.add
    (get_global $tlsf/BLOCK_SIZE_OFFSET)
    (i32.const 4)
   )
  )
  (set_global $tlsf/BLOCK_PREV_FREE_OFFSET
   (i32.add
    (get_global $tlsf/BLOCK_NEXT_FREE_OFFSET)
    (i32.const 4)
   )
  )
  (set_global $tlsf/CONTROL_FL_BITMAP_OFFSET
   (i32.add
    (get_global $tlsf/BLOCK_PREV_FREE_OFFSET)
    (i32.const 4)
   )
  )
  (set_global $tlsf/FL_INDEX_SHIFT
   (i32.add
    (get_global $tlsf/SL_INDEX_COUNT_LOG2)
    (get_global $tlsf/ALIGN_SIZE_LOG2)
   )
  )
  (set_global $tlsf/FL_INDEX_COUNT
   (i32.add
    (i32.sub
     (get_global $tlsf/FL_INDEX_MAX)
     (get_global $tlsf/FL_INDEX_SHIFT)
    )
    (i32.const 1)
   )
  )
  (set_global $tlsf/SL_INDEX_COUNT
   (i32.shl
    (i32.const 1)
    (get_global $tlsf/SL_INDEX_COUNT_LOG2)
   )
  )
  (call $tlsf/control_construct
   (i32.load
    (i32.const 8)
   )
  )
 )
)
(;
[program.elements]
  clz
  ctz
  popcnt
  rotl
  rotr
  abs
  ceil
  copysign
  floor
  max
  min
  nearest
  sqrt
  trunc
  current_memory
  grow_memory
  unreachable
  load
  store
  reinterpret
  select
  sizeof
  isNaN
  isFinite
  assert
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
  tlsf/BLOCK_PREV_PHYS_OFFSET
  tlsf/BLOCK_SIZE_OFFSET
  tlsf/BLOCK_NEXT_FREE_OFFSET
  tlsf/BLOCK_PREV_FREE_OFFSET
  tlsf/block_get_prev_phys_block
  tlsf/block_set_prev_phys_block
  tlsf/block_get_size
  tlsf/block_set_size
  tlsf/block_get_next_free
  tlsf/block_set_next_free
  tlsf/block_get_prev_free
  tlsf/block_set_prev_free
  tlsf/CONTROL_FL_BITMAP_OFFSET
  tlsf/CONTROL_SL_BITMAP_OFFSET
  tlsf/CONTROL_BLOCKS_OFFSET
  tlsf/control_get_fl
  tlsf/control_set_fl
  tlsf/control_get_sl
  tlsf/control_set_sl
  tlsf/control_get_block
  tlsf/control_set_block
  tlsf/control_construct
[program.exports]
  tlsf/control_construct
;)
