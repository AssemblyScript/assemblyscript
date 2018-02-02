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
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "control$construct" (func $tlsf/control$construct))
 (export "memory" (memory $0))
 (start $start)
 (func $tlsf/fls (; 0 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ tlsf.ts:7:39
  (return
   ;;@ tlsf.ts:7:9
   (if (result i32)
    (i32.eqz
     ;;@ tlsf.ts:7:10
     (get_local $0)
    )
    ;;@ tlsf.ts:7:17
    (i32.sub
     (i32.const 0)
     ;;@ tlsf.ts:7:18
     (i32.const 1)
    )
    ;;@ tlsf.ts:7:21
    (i32.sub
     (i32.const 31)
     ;;@ tlsf.ts:7:26
     (i32.clz
      ;;@ tlsf.ts:7:35
      (get_local $0)
     )
    )
   )
  )
 )
 (func $tlsf/ffs (; 1 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ tlsf.ts:17:35
  (return
   ;;@ tlsf.ts:17:9
   (if (result i32)
    (i32.eqz
     ;;@ tlsf.ts:17:10
     (get_local $0)
    )
    ;;@ tlsf.ts:17:17
    (i32.sub
     (i32.const 0)
     ;;@ tlsf.ts:17:18
     (i32.const 1)
    )
    ;;@ tlsf.ts:17:22
    (i32.ctz
     ;;@ tlsf.ts:17:31
     (get_local $0)
    )
   )
  )
 )
 (func $tlsf/block$set_next_free (; 2 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ tlsf.ts:89:2
  (i32.store
   ;;@ tlsf.ts:89:15
   (i32.add
    (get_local $0)
    ;;@ tlsf.ts:89:23
    (i32.const 8)
   )
   ;;@ tlsf.ts:89:47
   (get_local $1)
  )
 )
 (func $tlsf/block$set_prev_free (; 3 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ tlsf.ts:97:2
  (i32.store
   ;;@ tlsf.ts:97:15
   (i32.add
    (get_local $0)
    ;;@ tlsf.ts:97:23
    (i32.const 12)
   )
   ;;@ tlsf.ts:97:47
   (get_local $1)
  )
 )
 (func $tlsf/control$set_fl_bitmap (; 4 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ tlsf.ts:153:2
  (i32.store
   ;;@ tlsf.ts:153:13
   (i32.add
    (get_local $0)
    ;;@ tlsf.ts:153:19
    (i32.const 16)
   )
   ;;@ tlsf.ts:153:45
   (get_local $1)
  )
 )
 (func $tlsf/control$set_sl_bitmap (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  ;;@ tlsf.ts:162:2
  (if
   (i32.eqz
    ;;@ tlsf.ts:162:9
    (i32.lt_u
     (get_local $1)
     ;;@ tlsf.ts:162:19
     (i32.const 23)
    )
   )
   (unreachable)
  )
  ;;@ tlsf.ts:163:2
  (i32.store
   ;;@ tlsf.ts:163:13
   (i32.add
    (i32.add
     (get_local $0)
     ;;@ tlsf.ts:163:19
     (i32.const 20)
    )
    ;;@ tlsf.ts:163:46
    (i32.mul
     (get_local $1)
     ;;@ tlsf.ts:163:56
     (i32.const 4)
    )
   )
   ;;@ tlsf.ts:163:71
   (get_local $2)
  )
 )
 (func $tlsf/control$set_block (; 6 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ tlsf.ts:173:2
  (if
   (i32.eqz
    ;;@ tlsf.ts:173:9
    (i32.lt_u
     (get_local $1)
     ;;@ tlsf.ts:173:19
     (i32.const 23)
    )
   )
   (unreachable)
  )
  ;;@ tlsf.ts:174:2
  (if
   (i32.eqz
    ;;@ tlsf.ts:174:9
    (i32.lt_u
     (get_local $2)
     ;;@ tlsf.ts:174:19
     (i32.const 32)
    )
   )
   (unreachable)
  )
  ;;@ tlsf.ts:175:2
  (i32.store
   ;;@ tlsf.ts:175:15
   (i32.add
    (i32.add
     (get_local $0)
     ;;@ tlsf.ts:175:21
     (i32.const 112)
    )
    ;;@ tlsf.ts:175:45
    (i32.mul
     (i32.add
      ;;@ tlsf.ts:175:46
      (i32.mul
       (get_local $1)
       ;;@ tlsf.ts:175:56
       (i32.const 32)
      )
      ;;@ tlsf.ts:175:73
      (get_local $2)
     )
     ;;@ tlsf.ts:175:84
     (i32.const 4)
    )
   )
   ;;@ tlsf.ts:175:101
   (get_local $3)
  )
 )
 (func $tlsf/control$construct (; 7 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ tlsf.ts:180:2
  (call $tlsf/block$set_next_free
   ;;@ tlsf.ts:180:22
   (get_local $0)
   ;;@ tlsf.ts:180:27
   (get_local $0)
  )
  ;;@ tlsf.ts:181:2
  (call $tlsf/block$set_prev_free
   ;;@ tlsf.ts:181:22
   (get_local $0)
   ;;@ tlsf.ts:181:27
   (get_local $0)
  )
  ;;@ tlsf.ts:182:2
  (call $tlsf/control$set_fl_bitmap
   ;;@ tlsf.ts:182:24
   (get_local $0)
   ;;@ tlsf.ts:182:29
   (i32.const 0)
  )
  ;;@ tlsf.ts:183:2
  (block $break|0
   ;;@ tlsf.ts:183:7
   (set_local $1
    ;;@ tlsf.ts:183:28
    (i32.const 0)
   )
   (loop $continue|0
    (if
     ;;@ tlsf.ts:183:31
     (i32.lt_u
      (get_local $1)
      ;;@ tlsf.ts:183:41
      (i32.const 23)
     )
     (block
      (block
       ;;@ tlsf.ts:184:4
       (call $tlsf/control$set_sl_bitmap
        ;;@ tlsf.ts:184:26
        (get_local $0)
        ;;@ tlsf.ts:184:31
        (get_local $1)
        ;;@ tlsf.ts:184:40
        (i32.const 0)
       )
       ;;@ tlsf.ts:185:4
       (block $break|1
        ;;@ tlsf.ts:185:9
        (set_local $2
         ;;@ tlsf.ts:185:30
         (i32.const 0)
        )
        (loop $continue|1
         (if
          ;;@ tlsf.ts:185:33
          (i32.lt_u
           (get_local $2)
           ;;@ tlsf.ts:185:43
           (i32.const 32)
          )
          (block
           ;;@ tlsf.ts:186:6
           (call $tlsf/control$set_block
            ;;@ tlsf.ts:186:24
            (get_local $0)
            ;;@ tlsf.ts:186:29
            (get_local $1)
            ;;@ tlsf.ts:186:38
            (get_local $2)
            ;;@ tlsf.ts:186:47
            (get_local $0)
           )
           ;;@ tlsf.ts:185:59
           (set_local $2
            (i32.add
             ;;@ tlsf.ts:185:61
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
      ;;@ tlsf.ts:183:57
      (set_local $1
       (i32.add
        ;;@ tlsf.ts:183:59
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
  ;;@ tlsf.ts:10:0
  (if
   (i32.eqz
    ;;@ tlsf.ts:10:7
    (i32.eq
     (call $tlsf/fls
      ;;@ tlsf.ts:10:11
      (i32.const 0)
     )
     ;;@ tlsf.ts:10:17
     (i32.sub
      (i32.const 0)
      ;;@ tlsf.ts:10:18
      (i32.const 1)
     )
    )
   )
   (unreachable)
  )
  ;;@ tlsf.ts:11:0
  (if
   (i32.eqz
    ;;@ tlsf.ts:11:7
    (i32.eq
     (call $tlsf/fls
      ;;@ tlsf.ts:11:11
      (i32.const 1)
     )
     ;;@ tlsf.ts:11:17
     (i32.const 0)
    )
   )
   (unreachable)
  )
  ;;@ tlsf.ts:12:0
  (if
   (i32.eqz
    ;;@ tlsf.ts:12:7
    (i32.eq
     (call $tlsf/fls
      ;;@ tlsf.ts:12:11
      (i32.const -2147483640)
     )
     ;;@ tlsf.ts:12:26
     (i32.const 31)
    )
   )
   (unreachable)
  )
  ;;@ tlsf.ts:13:0
  (if
   (i32.eqz
    ;;@ tlsf.ts:13:7
    (i32.eq
     (call $tlsf/fls
      ;;@ tlsf.ts:13:11
      (i32.const 2147483647)
     )
     ;;@ tlsf.ts:13:26
     (i32.const 30)
    )
   )
   (unreachable)
  )
  ;;@ tlsf.ts:20:0
  (if
   (i32.eqz
    ;;@ tlsf.ts:20:7
    (i32.eq
     (call $tlsf/ffs
      ;;@ tlsf.ts:20:11
      (i32.const 0)
     )
     ;;@ tlsf.ts:20:17
     (i32.sub
      (i32.const 0)
      ;;@ tlsf.ts:20:18
      (i32.const 1)
     )
    )
   )
   (unreachable)
  )
  ;;@ tlsf.ts:21:0
  (if
   (i32.eqz
    ;;@ tlsf.ts:21:7
    (i32.eq
     (call $tlsf/ffs
      ;;@ tlsf.ts:21:11
      (i32.const 1)
     )
     ;;@ tlsf.ts:21:17
     (i32.const 0)
    )
   )
   (unreachable)
  )
  ;;@ tlsf.ts:22:0
  (if
   (i32.eqz
    ;;@ tlsf.ts:22:7
    (i32.eq
     (call $tlsf/ffs
      ;;@ tlsf.ts:22:11
      (i32.const -2147483648)
     )
     ;;@ tlsf.ts:22:26
     (i32.const 31)
    )
   )
   (unreachable)
  )
  ;;@ tlsf.ts:29:0
  (if
   (i32.eqz
    ;;@ tlsf.ts:29:7
    (i32.eq
     (i32.const 8)
     ;;@ tlsf.ts:29:21
     (i32.const 8)
    )
   )
   (unreachable)
  )
  ;;@ tlsf.ts:190:0
  (call $tlsf/control$construct
   ;;@ tlsf.ts:190:18
   (i32.load
    ;;@ tlsf.ts:190:30
    (i32.const 4)
   )
  )
 )
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: abort
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  FUNCTION_PROTOTYPE: tlsf/fls
  FUNCTION_PROTOTYPE: tlsf/ffs
  GLOBAL: tlsf/ALIGN_SIZE_LOG2
  GLOBAL: tlsf/ALIGN_SIZE
  GLOBAL: tlsf/SL_INDEX_COUNT_LOG2
  GLOBAL: tlsf/FL_INDEX_MAX
  GLOBAL: tlsf/SL_INDEX_COUNT
  GLOBAL: tlsf/FL_INDEX_SHIFT
  GLOBAL: tlsf/FL_INDEX_COUNT
  GLOBAL: tlsf/SMALL_BLOCK_SIZE
  GLOBAL: tlsf/BLOCK$PREV_PHYS_BLOCK_OFFSET
  GLOBAL: tlsf/BLOCK$TAGGED_SIZE_OFFSET
  GLOBAL: tlsf/BLOCK$NEXT_FREE_OFFSET
  GLOBAL: tlsf/BLOCK$PREV_FREE_OFFSET
  GLOBAL: tlsf/BLOCK$SIZE
  GLOBAL: tlsf/BLOCK_HEADER_FREE_BIT
  GLOBAL: tlsf/BLOCK_HEADER_PREV_FREE_BIT
  GLOBAL: tlsf/BLOCK_OVERHEAD
  GLOBAL: tlsf/BLOCK_START_OFFSET
  GLOBAL: tlsf/BLOCK_SIZE_MIN
  GLOBAL: tlsf/BLOCK_SIZE_MAX
  FUNCTION_PROTOTYPE: tlsf/block$get_prev_phys_block
  FUNCTION_PROTOTYPE: tlsf/block$set_prev_phys_block
  FUNCTION_PROTOTYPE: tlsf/block$get_tagged_size
  FUNCTION_PROTOTYPE: tlsf/block$set_tagged_size
  FUNCTION_PROTOTYPE: tlsf/block_size
  FUNCTION_PROTOTYPE: tlsf/block_set_size
  FUNCTION_PROTOTYPE: tlsf/block$get_next_free
  FUNCTION_PROTOTYPE: tlsf/block$set_next_free
  FUNCTION_PROTOTYPE: tlsf/block$get_prev_free
  FUNCTION_PROTOTYPE: tlsf/block$set_prev_free
  FUNCTION_PROTOTYPE: tlsf/block_is_last
  FUNCTION_PROTOTYPE: tlsf/block_is_free
  FUNCTION_PROTOTYPE: tlsf/block_set_free
  FUNCTION_PROTOTYPE: tlsf/block_set_used
  FUNCTION_PROTOTYPE: tlsf/block_is_prev_free
  FUNCTION_PROTOTYPE: tlsf/block_set_prev_free
  FUNCTION_PROTOTYPE: tlsf/block_set_prev_used
  FUNCTION_PROTOTYPE: tlsf/block_from_ptr
  FUNCTION_PROTOTYPE: tlsf/block_to_ptr
  GLOBAL: tlsf/CONTROL$FL_BITMAP_OFFSET
  GLOBAL: tlsf/CONTROL$SL_BITMAP_OFFSET
  GLOBAL: tlsf/CONTROL$BLOCKS_OFFSET
  GLOBAL: tlsf/CONTROL$SIZE
  FUNCTION_PROTOTYPE: tlsf/control$get_fl_bitmap
  FUNCTION_PROTOTYPE: tlsf/control$set_fl_bitmap
  FUNCTION_PROTOTYPE: tlsf/control$get_sl_bitmap
  FUNCTION_PROTOTYPE: tlsf/control$set_sl_bitmap
  FUNCTION_PROTOTYPE: tlsf/control$get_block
  FUNCTION_PROTOTYPE: tlsf/control$set_block
  FUNCTION_PROTOTYPE: tlsf/control$construct
[program.exports]
  FUNCTION_PROTOTYPE: tlsf/control$construct
;)
