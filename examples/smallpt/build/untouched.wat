(module
 (type $F (func (result f64)))
 (type $Iv (func (param i64)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $II (func (param i64) (result i64)))
 (type $iFFFi (func (param i32 f64 f64 f64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iF (func (param i32) (result f64)))
 (type $iFv (func (param i32 f64)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $iFii (func (param i32 f64 i32) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iFiiiii (func (param i32 f64 i32 i32 i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiFii (func (param i32 i32 f64 i32) (result i32)))
 (type $iiiiiii (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $v (func))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "JSMath" "cos" (func $~lib/math/JSMath.cos (param f64) (result f64)))
 (import "JSMath" "sin" (func $~lib/math/JSMath.sin (param f64) (result f64)))
 (import "env" "memory" (memory $0 (shared 1 65534)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $assembly/index/seed (mut i64) (i64.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1 (mut i64) (i64.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $assembly/index/loc17 (mut i32) (i32.const 0))
 (global $assembly/index/Refl_t.DIFF i32 (i32.const 0))
 (global $assembly/index/Refl_t.SPEC i32 (i32.const 1))
 (global $assembly/index/Refl_t.REFR i32 (i32.const 2))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $assembly/index/spheres (mut i32) (i32.const 0))
 (global $assembly/index/hit (mut i32) (i32.const 0))
 (global $assembly/index/_f (mut i32) (i32.const 0))
 (global $assembly/index/loc1 (mut i32) (i32.const 0))
 (global $assembly/index/loc2 (mut i32) (i32.const 0))
 (global $assembly/index/loc3 (mut i32) (i32.const 0))
 (global $assembly/index/loc4 (mut i32) (i32.const 0))
 (global $assembly/index/loc5 (mut i32) (i32.const 0))
 (global $assembly/index/loc6 (mut i32) (i32.const 0))
 (global $assembly/index/loc7 (mut i32) (i32.const 0))
 (global $assembly/index/loc8 (mut i32) (i32.const 0))
 (global $assembly/index/loc9 (mut i32) (i32.const 0))
 (global $assembly/index/loc10 (mut i32) (i32.const 0))
 (global $assembly/index/loc18 (mut i32) (i32.const 0))
 (global $assembly/index/loc19 (mut i32) (i32.const 0))
 (global $assembly/index/loc20 (mut i32) (i32.const 0))
 (global $assembly/index/loc_r1 (mut i32) (i32.const 0))
 (global $assembly/index/loc_r2 (mut i32) (i32.const 0))
 (global $assembly/index/black (mut i32) (i32.const 0))
 (global $assembly/index/red (mut i32) (i32.const 0))
 (global $assembly/index/params (mut i32) (i32.const 0))
 (global $assembly/index/dir (mut i32) (i32.const 0))
 (global $assembly/index/pos (mut i32) (i32.const 0))
 (global $assembly/index/cam (mut i32) (i32.const 0))
 (global $assembly/index/cx (mut i32) (i32.const 0))
 (global $assembly/index/cy (mut i32) (i32.const 0))
 (global $assembly/index/loc11 (mut i32) (i32.const 0))
 (global $assembly/index/loc12 (mut i32) (i32.const 0))
 (global $assembly/index/loc13 (mut i32) (i32.const 0))
 (global $assembly/index/loc14 (mut i32) (i32.const 0))
 (global $assembly/index/loc15 (mut i32) (i32.const 0))
 (global $assembly/index/loc16 (mut i32) (i32.const 0))
 (global $assembly/index/result (mut i32) (i32.const 0))
 (global $Infinity f64 (f64.const inf))
 (global $HEAP_BASE i32 (i32.const 128))
 (data (i32.const 8) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 36) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 68) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (export "_setargc" (func $~setargc))
 (export "Vec#constructor" (func $assembly/index/Vec#constructor|trampoline))
 (export "Vec#get:x" (func $Vec#get:x))
 (export "Vec#set:x" (func $Vec#set:x))
 (export "Vec#get:y" (func $Vec#get:y))
 (export "Vec#set:y" (func $Vec#set:y))
 (export "Vec#get:z" (func $Vec#get:z))
 (export "Vec#set:z" (func $Vec#set:z))
 (export "Vec#free" (func $assembly/index/Vec#free))
 (export "Vec#add" (func $assembly/index/Vec#add))
 (export "Vec#add_in" (func $assembly/index/Vec#add_in))
 (export "Vec#add2" (func $assembly/index/Vec#add2))
 (export "Vec#set" (func $assembly/index/Vec#set))
 (export "Vec#setFrom" (func $assembly/index/Vec#setFrom))
 (export "Vec#sub" (func $assembly/index/Vec#sub|trampoline))
 (export "Vec#sub2" (func $assembly/index/Vec#sub2))
 (export "Vec#sub_in" (func $assembly/index/Vec#sub_in))
 (export "Vec#mul" (func $assembly/index/Vec#mul))
 (export "Vec#mul_in" (func $assembly/index/Vec#mul_in))
 (export "Vec#multScalar" (func $assembly/index/Vec#multScalar))
 (export "Vec#multScalar2" (func $assembly/index/Vec#multScalar2))
 (export "Vec#multScalar_in" (func $assembly/index/Vec#multScalar_in))
 (export "Vec#mod" (func $assembly/index/Vec#mod))
 (export "Vec#mod_in" (func $assembly/index/Vec#mod_in))
 (export "Vec#mod2" (func $assembly/index/Vec#mod2))
 (export "Vec#length" (func $assembly/index/Vec#length))
 (export "Vec#norm" (func $assembly/index/Vec#norm))
 (export "Vec#norm_in" (func $assembly/index/Vec#norm_in))
 (export "Vec#dot" (func $assembly/index/Vec#dot))
 (export "Vec#clone" (func $assembly/index/Vec#clone|trampoline))
 (export "createPixels" (func $assembly/index/createPixels))
 (export "render" (func $assembly/index/render))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/math/murmurHash3 (; 4 ;) (type $II) (param $0 i64) (result i64)
  ;;@ ~lib/math.ts:102:2
  (set_local $0
   (i64.xor
    (get_local $0)
    ;;@ ~lib/math.ts:102:7
    (i64.shr_u
     (get_local $0)
     ;;@ ~lib/math.ts:102:12
     (i64.const 33)
    )
   )
  )
  ;;@ ~lib/math.ts:103:2
  (set_local $0
   (i64.mul
    (get_local $0)
    ;;@ ~lib/math.ts:103:7
    (i64.const -49064778989728563)
   )
  )
  ;;@ ~lib/math.ts:104:2
  (set_local $0
   (i64.xor
    (get_local $0)
    ;;@ ~lib/math.ts:104:7
    (i64.shr_u
     (get_local $0)
     ;;@ ~lib/math.ts:104:12
     (i64.const 33)
    )
   )
  )
  ;;@ ~lib/math.ts:105:2
  (set_local $0
   (i64.mul
    (get_local $0)
    ;;@ ~lib/math.ts:105:7
    (i64.const -4265267296055464877)
   )
  )
  ;;@ ~lib/math.ts:106:2
  (set_local $0
   (i64.xor
    (get_local $0)
    ;;@ ~lib/math.ts:106:7
    (i64.shr_u
     (get_local $0)
     ;;@ ~lib/math.ts:106:12
     (i64.const 33)
    )
   )
  )
  ;;@ ~lib/math.ts:107:9
  (get_local $0)
 )
 (func $~lib/math/NativeMath.seedRandom (; 5 ;) (type $Iv) (param $0 i64)
  ;;@ ~lib/math.ts:1000:4
  (if
   (i64.eqz
    ;;@ ~lib/math.ts:1000:11
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1000)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/math.ts:1001:4
  (set_global $~lib/math/random_seeded
   ;;@ ~lib/math.ts:1001:20
   (i32.const 1)
  )
  ;;@ ~lib/math.ts:1002:4
  (set_global $~lib/math/random_state0
   ;;@ ~lib/math.ts:1002:20
   (call $~lib/math/murmurHash3
    ;;@ ~lib/math.ts:1002:32
    (get_local $0)
   )
  )
  ;;@ ~lib/math.ts:1003:4
  (set_global $~lib/math/random_state1
   ;;@ ~lib/math.ts:1003:20
   (call $~lib/math/murmurHash3
    ;;@ ~lib/math.ts:1003:32
    (get_global $~lib/math/random_state0)
   )
  )
 )
 (func $~lib/allocator/arena/allocate_memory (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ ~lib/allocator/arena.ts:17:2
  (if
   ;;@ ~lib/allocator/arena.ts:17:6
   (get_local $0)
   ;;@ ~lib/allocator/arena.ts:17:12
   (block
    ;;@ ~lib/allocator/arena.ts:18:4
    (if
     ;;@ ~lib/allocator/arena.ts:18:8
     (i32.gt_u
      (get_local $0)
      ;;@ ~lib/allocator/arena.ts:18:15
      (i32.const 1073741824)
     )
     ;;@ ~lib/allocator/arena.ts:18:28
     (unreachable)
    )
    ;;@ ~lib/allocator/arena.ts:19:4
    (set_local $1
     ;;@ ~lib/allocator/arena.ts:19:14
     (get_global $~lib/allocator/arena/offset)
    )
    ;;@ ~lib/allocator/arena.ts:20:4
    (set_local $2
     ;;@ ~lib/allocator/arena.ts:20:17
     (i32.and
      (i32.add
       ;;@ ~lib/allocator/arena.ts:20:18
       (i32.add
        (get_local $1)
        ;;@ ~lib/allocator/arena.ts:20:24
        (get_local $0)
       )
       ;;@ ~lib/allocator/arena.ts:20:31
       (i32.const 7)
      )
      ;;@ ~lib/allocator/arena.ts:20:42
      (i32.xor
       ;;@ ~lib/allocator/arena.ts:20:43
       (i32.const 7)
       (i32.const -1)
      )
     )
    )
    ;;@ ~lib/allocator/arena.ts:21:4
    (set_local $3
     ;;@ ~lib/allocator/arena.ts:21:22
     (current_memory)
    )
    ;;@ ~lib/allocator/arena.ts:22:4
    (if
     ;;@ ~lib/allocator/arena.ts:22:8
     (i32.gt_u
      (get_local $2)
      ;;@ ~lib/allocator/arena.ts:22:17
      (i32.shl
       (get_local $3)
       ;;@ ~lib/allocator/arena.ts:22:39
       (i32.const 16)
      )
     )
     ;;@ ~lib/allocator/arena.ts:22:43
     (block
      ;;@ ~lib/allocator/arena.ts:23:6
      (set_local $4
       ;;@ ~lib/allocator/arena.ts:23:24
       (i32.shr_u
        (i32.and
         ;;@ ~lib/allocator/arena.ts:23:25
         (i32.add
          ;;@ ~lib/allocator/arena.ts:23:26
          (i32.sub
           (get_local $2)
           ;;@ ~lib/allocator/arena.ts:23:35
           (get_local $1)
          )
          ;;@ ~lib/allocator/arena.ts:23:41
          (i32.const 65535)
         )
         ;;@ ~lib/allocator/arena.ts:23:51
         (i32.xor
          ;;@ ~lib/allocator/arena.ts:23:52
          (i32.const 65535)
          (i32.const -1)
         )
        )
        ;;@ ~lib/allocator/arena.ts:23:64
        (i32.const 16)
       )
      )
      ;;@ ~lib/allocator/arena.ts:24:6
      (set_local $5
       ;;@ ~lib/allocator/arena.ts:24:24
       (select
        (tee_local $5
         ;;@ ~lib/allocator/arena.ts:24:28
         (get_local $3)
        )
        (tee_local $6
         ;;@ ~lib/allocator/arena.ts:24:41
         (get_local $4)
        )
        (i32.gt_s
         (get_local $5)
         (get_local $6)
        )
       )
      )
      ;;@ ~lib/allocator/arena.ts:25:6
      (if
       ;;@ ~lib/allocator/arena.ts:25:10
       (i32.lt_s
        (grow_memory
         ;;@ ~lib/allocator/arena.ts:25:22
         (get_local $5)
        )
        ;;@ ~lib/allocator/arena.ts:25:37
        (i32.const 0)
       )
       ;;@ ~lib/allocator/arena.ts:25:40
       (if
        ;;@ ~lib/allocator/arena.ts:26:12
        (i32.lt_s
         (grow_memory
          ;;@ ~lib/allocator/arena.ts:26:24
          (get_local $4)
         )
         ;;@ ~lib/allocator/arena.ts:26:39
         (i32.const 0)
        )
        ;;@ ~lib/allocator/arena.ts:26:42
        (unreachable)
       )
      )
     )
    )
    ;;@ ~lib/allocator/arena.ts:31:4
    (set_global $~lib/allocator/arena/offset
     ;;@ ~lib/allocator/arena.ts:31:13
     (get_local $2)
    )
    ;;@ ~lib/allocator/arena.ts:32:11
    (return
     (get_local $1)
    )
   )
  )
  ;;@ ~lib/allocator/arena.ts:34:9
  (i32.const 0)
 )
 (func $assembly/index/Vec#constructor (; 7 ;) (type $iFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  (local $4 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $4
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 24)
       )
      )
      (f64.store
       (get_local $4)
       (get_local $1)
      )
      (f64.store offset=8
       (get_local $4)
       (get_local $2)
      )
      (f64.store offset=16
       (get_local $4)
       (get_local $3)
      )
      (get_local $4)
     )
    )
   )
  )
 )
 (func $assembly/index/Vec#constructor|trampoline (; 8 ;) (type $iFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  (block $3of3
   (block $2of3
    (block $1of3
     (block $0of3
      (block $oob
       (br_table $0of3 $1of3 $2of3 $3of3 $oob
        (get_global $~argc)
       )
      )
      (unreachable)
     )
     (set_local $1
      ;;@ assembly/index.ts:20:34
      (f64.const 0)
     )
    )
    (set_local $2
     ;;@ assembly/index.ts:20:57
     (f64.const 0)
    )
   )
   (set_local $3
    ;;@ assembly/index.ts:20:80
    (f64.const 0)
   )
  )
  (call $assembly/index/Vec#constructor
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $~setargc (; 9 ;) (type $iv) (param $0 i32)
  (set_global $~argc
   (get_local $0)
  )
 )
 (func $Vec#get:x (; 10 ;) (type $iF) (param $0 i32) (result f64)
  (f64.load
   (get_local $0)
  )
 )
 (func $Vec#set:x (; 11 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (f64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $Vec#get:y (; 12 ;) (type $iF) (param $0 i32) (result f64)
  (f64.load offset=8
   (get_local $0)
  )
 )
 (func $Vec#set:y (; 13 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (f64.store offset=8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $Vec#get:z (; 14 ;) (type $iF) (param $0 i32) (result f64)
  (f64.load offset=16
   (get_local $0)
  )
 )
 (func $Vec#set:z (; 15 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (f64.store offset=16
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/allocator/arena/free_memory (; 16 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $assembly/index/Vec#free (; 17 ;) (type $iv) (param $0 i32)
  ;;@ assembly/index.ts:23:8
  (call $~lib/allocator/arena/free_memory
   ;;@ assembly/index.ts:23:20
   (get_local $0)
  )
 )
 (func $assembly/index/Vec#add (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:28:63
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:28:23
   (f64.add
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:28:32
    (f64.load
     (get_local $1)
    )
   )
   ;;@ assembly/index.ts:28:37
   (f64.add
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:28:46
    (f64.load offset=8
     (get_local $1)
    )
   )
   ;;@ assembly/index.ts:28:51
   (f64.add
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:28:60
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/index/Vec#add_in (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:31:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:31:17
   (f64.add
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:31:26
    (f64.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:32:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:32:17
   (f64.add
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:32:26
    (f64.load offset=8
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:33:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:33:17
   (f64.add
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:33:26
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:34:15
  (get_local $0)
 )
 (func $assembly/index/Vec#add2 (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ assembly/index.ts:37:8
  (f64.store
   (get_local $2)
   ;;@ assembly/index.ts:37:14
   (f64.add
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:37:23
    (f64.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:38:8
  (f64.store offset=8
   (get_local $2)
   ;;@ assembly/index.ts:38:14
   (f64.add
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:38:23
    (f64.load offset=8
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:39:8
  (f64.store offset=16
   (get_local $2)
   ;;@ assembly/index.ts:39:14
   (f64.add
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:39:23
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:40:15
  (get_local $2)
 )
 (func $assembly/index/Vec#set (; 21 ;) (type $iFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  ;;@ assembly/index.ts:43:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:43:17
   (get_local $1)
  )
  ;;@ assembly/index.ts:44:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:44:17
   (get_local $2)
  )
  ;;@ assembly/index.ts:45:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:45:17
   (get_local $3)
  )
  ;;@ assembly/index.ts:46:15
  (get_local $0)
 )
 (func $assembly/index/Vec#setFrom (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:49:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:49:17
   (f64.load
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:50:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:50:17
   (f64.load offset=8
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:51:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:51:17
   (f64.load offset=16
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:52:15
  (get_local $0)
 )
 (func $assembly/index/Vec#sub (; 23 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (block
    (f64.store
     (get_local $1)
     (f64.sub
      (f64.load
       (get_local $0)
      )
      (f64.load
       (get_local $1)
      )
     )
    )
    (f64.store offset=8
     (get_local $1)
     (f64.sub
      (f64.load offset=8
       (get_local $0)
      )
      (f64.load offset=8
       (get_local $1)
      )
     )
    )
    (f64.store offset=16
     (get_local $1)
     (f64.sub
      (f64.load offset=16
       (get_local $0)
      )
      (f64.load offset=16
       (get_local $1)
      )
     )
    )
    (return
     (get_local $1)
    )
   )
  )
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   (f64.sub
    (f64.load
     (get_local $0)
    )
    (f64.load
     (get_local $1)
    )
   )
   (f64.sub
    (f64.load offset=8
     (get_local $0)
    )
    (f64.load offset=8
     (get_local $1)
    )
   )
   (f64.sub
    (f64.load offset=16
     (get_local $0)
    )
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/index/Vec#sub|trampoline (; 24 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    ;;@ assembly/index.ts:55:32
    (i32.const 0)
   )
  )
  (call $assembly/index/Vec#sub
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $assembly/index/Vec#sub2 (; 25 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ assembly/index.ts:65:8
  (f64.store
   (get_local $2)
   ;;@ assembly/index.ts:65:14
   (f64.sub
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:65:23
    (f64.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:66:8
  (f64.store offset=8
   (get_local $2)
   ;;@ assembly/index.ts:66:14
   (f64.sub
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:66:23
    (f64.load offset=8
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:67:8
  (f64.store offset=16
   (get_local $2)
   ;;@ assembly/index.ts:67:14
   (f64.sub
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:67:23
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:68:15
  (get_local $2)
 )
 (func $assembly/index/Vec#sub_in (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:71:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:71:17
   (f64.sub
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:71:26
    (f64.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:72:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:72:17
   (f64.sub
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:72:26
    (f64.load offset=8
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:73:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:73:17
   (f64.sub
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:73:26
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:74:15
  (get_local $0)
 )
 (func $assembly/index/Vec#mul (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:79:63
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:79:23
   (f64.mul
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:79:32
    (f64.load
     (get_local $1)
    )
   )
   ;;@ assembly/index.ts:79:37
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:79:46
    (f64.load offset=8
     (get_local $1)
    )
   )
   ;;@ assembly/index.ts:79:51
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:79:60
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/index/Vec#mul_in (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:82:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:82:17
   (f64.mul
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:82:26
    (f64.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:83:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:83:17
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:83:26
    (f64.load offset=8
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:84:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:84:17
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:84:26
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:85:15
  (get_local $0)
 )
 (func $assembly/index/Vec#multScalar (; 29 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  ;;@ assembly/index.ts:89:57
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:89:23
   (f64.mul
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:89:32
    (get_local $1)
   )
   ;;@ assembly/index.ts:89:35
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:89:44
    (get_local $1)
   )
   ;;@ assembly/index.ts:89:47
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:89:56
    (get_local $1)
   )
  )
 )
 (func $assembly/index/Vec#multScalar2 (; 30 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  ;;@ assembly/index.ts:92:8
  (f64.store
   (get_local $2)
   ;;@ assembly/index.ts:92:14
   (f64.mul
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:92:23
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:93:8
  (f64.store offset=8
   (get_local $2)
   ;;@ assembly/index.ts:93:14
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:93:23
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:94:8
  (f64.store offset=16
   (get_local $2)
   ;;@ assembly/index.ts:94:14
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:94:23
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:95:15
  (get_local $2)
 )
 (func $assembly/index/Vec#multScalar_in (; 31 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  ;;@ assembly/index.ts:98:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:98:17
   (f64.mul
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:98:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:99:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:99:17
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:99:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:100:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:100:17
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:100:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:101:15
  (get_local $0)
 )
 (func $assembly/index/Vec#mod (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:105:108
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:105:23
   (f64.sub
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:105:32
     (f64.load offset=16
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:105:38
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:105:47
     (f64.load offset=8
      (get_local $1)
     )
    )
   )
   ;;@ assembly/index.ts:105:52
   (f64.sub
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:105:61
     (f64.load
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:105:67
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:105:76
     (f64.load offset=16
      (get_local $1)
     )
    )
   )
   ;;@ assembly/index.ts:105:81
   (f64.sub
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:105:90
     (f64.load offset=8
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:105:96
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:105:105
     (f64.load
      (get_local $1)
     )
    )
   )
  )
 )
 (func $assembly/index/Vec#mod_in (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:108:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:108:17
   (f64.sub
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:108:26
     (f64.load offset=16
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:108:32
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:108:41
     (f64.load offset=8
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:109:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:109:17
   (f64.sub
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:109:26
     (f64.load
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:109:32
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:109:41
     (f64.load offset=16
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:110:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:110:17
   (f64.sub
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:110:26
     (f64.load offset=8
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:110:32
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:110:41
     (f64.load
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:111:15
  (get_local $0)
 )
 (func $assembly/index/Vec#mod2 (; 34 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ assembly/index.ts:114:8
  (f64.store
   (get_local $2)
   ;;@ assembly/index.ts:114:14
   (f64.sub
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:114:23
     (f64.load offset=16
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:114:29
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:114:38
     (f64.load offset=8
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:115:8
  (f64.store offset=8
   (get_local $2)
   ;;@ assembly/index.ts:115:14
   (f64.sub
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:115:23
     (f64.load
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:115:29
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:115:38
     (f64.load offset=16
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:116:8
  (f64.store offset=16
   (get_local $2)
   ;;@ assembly/index.ts:116:14
   (f64.sub
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:116:23
     (f64.load offset=8
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:116:29
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:116:38
     (f64.load
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:117:15
  (get_local $2)
 )
 (func $assembly/index/Vec#length (; 35 ;) (type $iF) (param $0 i32) (result f64)
  ;;@ assembly/index.ts:121:78
  (f64.sqrt
   ;;@ assembly/index.ts:121:27
   (f64.add
    (f64.add
     (f64.mul
      (f64.load
       (get_local $0)
      )
      ;;@ assembly/index.ts:121:36
      (f64.load
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:121:45
     (f64.mul
      (f64.load offset=8
       (get_local $0)
      )
      ;;@ assembly/index.ts:121:54
      (f64.load offset=8
       (get_local $0)
      )
     )
    )
    ;;@ assembly/index.ts:121:63
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:121:72
     (f64.load offset=16
      (get_local $0)
     )
    )
   )
  )
 )
 (func $assembly/index/Vec#norm (; 36 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 f64)
  ;;@ assembly/index.ts:125:8
  (set_local $1
   ;;@ assembly/index.ts:125:21
   (call $assembly/index/Vec#length
    ;;@ assembly/index.ts:125:16
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:126:57
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:126:23
   (f64.div
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:126:32
    (get_local $1)
   )
   ;;@ assembly/index.ts:126:35
   (f64.div
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:126:44
    (get_local $1)
   )
   ;;@ assembly/index.ts:126:47
   (f64.div
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:126:56
    (get_local $1)
   )
  )
 )
 (func $assembly/index/Vec#norm_in (; 37 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 f64)
  ;;@ assembly/index.ts:130:8
  (set_local $1
   ;;@ assembly/index.ts:130:21
   (call $assembly/index/Vec#length
    ;;@ assembly/index.ts:130:16
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:131:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:131:17
   (f64.div
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:131:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:132:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:132:17
   (f64.div
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:132:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:133:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:133:17
   (f64.div
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:133:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:134:15
  (get_local $0)
 )
 (func $assembly/index/Vec#dot (; 38 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  ;;@ assembly/index.ts:138:56
  (f64.add
   ;;@ assembly/index.ts:138:15
   (f64.add
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:138:24
     (f64.load
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:138:30
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:138:39
     (f64.load offset=8
      (get_local $1)
     )
    )
   )
   ;;@ assembly/index.ts:138:45
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:138:54
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/index/Vec#clone (; 39 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (f64.store
   (get_local $1)
   (f64.load
    (get_local $0)
   )
  )
  (f64.store offset=8
   (get_local $1)
   (f64.load offset=8
    (get_local $0)
   )
  )
  (f64.store offset=16
   (get_local $1)
   (f64.load offset=16
    (get_local $0)
   )
  )
  (get_local $1)
 )
 (func $assembly/index/Vec#clone|trampoline (; 40 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    ;;@ assembly/index.ts:141:19
    (call $assembly/index/Vec#constructor
     (i32.const 0)
     ;;@ assembly/index.ts:20:34
     (f64.const 0)
     ;;@ assembly/index.ts:20:57
     (f64.const 0)
     ;;@ assembly/index.ts:20:80
     (f64.const 0)
    )
   )
  )
  (call $assembly/index/Vec#clone
   (get_local $0)
   (get_local $1)
  )
 )
 (func $assembly/index/Sphere#constructor (; 41 ;) (type $iFiiiii) (param $0 i32) (param $1 f64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $6
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 24)
       )
      )
      (f64.store
       (get_local $6)
       (get_local $1)
      )
      (i32.store offset=8
       (get_local $6)
       (get_local $2)
      )
      (i32.store offset=12
       (get_local $6)
       (get_local $3)
      )
      (i32.store offset=16
       (get_local $6)
       (get_local $4)
      )
      (i32.store offset=20
       (get_local $6)
       (get_local $5)
      )
      (get_local $6)
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/computeSize (; 42 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/internal/arraybuffer.ts:17:77
  (i32.shl
   ;;@ ~lib/internal/arraybuffer.ts:17:9
   (i32.const 1)
   ;;@ ~lib/internal/arraybuffer.ts:17:21
   (i32.sub
    ;;@ ~lib/internal/arraybuffer.ts:17:29
    (i32.const 32)
    ;;@ ~lib/internal/arraybuffer.ts:17:39
    (i32.clz
     ;;@ ~lib/internal/arraybuffer.ts:17:48
     (i32.sub
      (i32.add
       (get_local $0)
       ;;@ ~lib/internal/arraybuffer.ts:17:61
       (i32.const 8)
      )
      ;;@ ~lib/internal/arraybuffer.ts:17:75
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/allocUnsafe (; 43 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  ;;@ ~lib/internal/arraybuffer.ts:22:2
  (if
   (i32.eqz
    ;;@ ~lib/internal/arraybuffer.ts:22:9
    (i32.le_u
     (get_local $0)
     ;;@ ~lib/internal/arraybuffer.ts:22:28
     (i32.const 1073741816)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 68)
     (i32.const 22)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:23:2
  (set_local $1
   ;;@ ~lib/internal/arraybuffer.ts:23:15
   (call $~lib/allocator/arena/allocate_memory
    ;;@ ~lib/internal/arraybuffer.ts:23:31
    (call $~lib/internal/arraybuffer/computeSize
     ;;@ ~lib/internal/arraybuffer.ts:23:43
     (get_local $0)
    )
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:24:2
  (i32.store
   ;;@ ~lib/internal/arraybuffer.ts:24:13
   (get_local $1)
   ;;@ ~lib/internal/arraybuffer.ts:24:21
   (get_local $0)
  )
  ;;@ ~lib/internal/arraybuffer.ts:25:39
  (get_local $1)
 )
 (func $~lib/memory/set_memory (; 44 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  ;;@ ~lib/memory.ts:196:2
  (if
   ;;@ ~lib/memory.ts:196:6
   (i32.eqz
    ;;@ ~lib/memory.ts:196:7
    (get_local $2)
   )
   ;;@ ~lib/memory.ts:196:10
   (return)
  )
  ;;@ ~lib/memory.ts:197:2
  (i32.store8
   ;;@ ~lib/memory.ts:197:12
   (get_local $0)
   ;;@ ~lib/memory.ts:197:18
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:198:2
  (i32.store8
   ;;@ ~lib/memory.ts:198:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:198:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:198:23
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:198:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:199:2
  (if
   ;;@ ~lib/memory.ts:199:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:199:11
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:199:14
   (return)
  )
  ;;@ ~lib/memory.ts:201:2
  (i32.store8
   ;;@ ~lib/memory.ts:201:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:201:19
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:201:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:202:2
  (i32.store8
   ;;@ ~lib/memory.ts:202:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:202:19
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:202:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:203:2
  (i32.store8
   ;;@ ~lib/memory.ts:203:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:203:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:203:23
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:203:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:204:2
  (i32.store8
   ;;@ ~lib/memory.ts:204:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:204:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:204:23
    (i32.const 3)
   )
   ;;@ ~lib/memory.ts:204:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:205:2
  (if
   ;;@ ~lib/memory.ts:205:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:205:11
    (i32.const 6)
   )
   ;;@ ~lib/memory.ts:205:14
   (return)
  )
  ;;@ ~lib/memory.ts:206:2
  (i32.store8
   ;;@ ~lib/memory.ts:206:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:206:19
    (i32.const 3)
   )
   ;;@ ~lib/memory.ts:206:22
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:207:2
  (i32.store8
   ;;@ ~lib/memory.ts:207:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:207:19
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:207:23
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:207:26
   (get_local $1)
  )
  ;;@ ~lib/memory.ts:208:2
  (if
   ;;@ ~lib/memory.ts:208:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:208:11
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:208:14
   (return)
  )
  ;;@ ~lib/memory.ts:211:2
  (set_local $3
   ;;@ ~lib/memory.ts:211:17
   (i32.and
    (i32.sub
     (i32.const 0)
     ;;@ ~lib/memory.ts:211:18
     (get_local $0)
    )
    ;;@ ~lib/memory.ts:211:25
    (i32.const 3)
   )
  )
  ;;@ ~lib/memory.ts:212:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:212:10
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:213:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:213:7
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:214:2
  (set_local $2
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:214:7
    (i32.const -4)
   )
  )
  ;;@ ~lib/memory.ts:216:2
  (set_local $4
   ;;@ ~lib/memory.ts:216:17
   (i32.mul
    (i32.div_u
     (i32.const -1)
     ;;@ ~lib/memory.ts:216:27
     (i32.const 255)
    )
    (i32.and
     ;;@ ~lib/memory.ts:216:33
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  ;;@ ~lib/memory.ts:219:2
  (i32.store
   ;;@ ~lib/memory.ts:219:13
   (get_local $0)
   ;;@ ~lib/memory.ts:219:19
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:220:2
  (i32.store
   ;;@ ~lib/memory.ts:220:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:220:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:220:24
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:220:27
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:221:2
  (if
   ;;@ ~lib/memory.ts:221:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:221:11
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:221:14
   (return)
  )
  ;;@ ~lib/memory.ts:222:2
  (i32.store
   ;;@ ~lib/memory.ts:222:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:222:20
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:222:23
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:223:2
  (i32.store
   ;;@ ~lib/memory.ts:223:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:223:20
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:223:23
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:224:2
  (i32.store
   ;;@ ~lib/memory.ts:224:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:224:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:224:24
    (i32.const 12)
   )
   ;;@ ~lib/memory.ts:224:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:225:2
  (i32.store
   ;;@ ~lib/memory.ts:225:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:225:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:225:24
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:225:27
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:226:2
  (if
   ;;@ ~lib/memory.ts:226:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/memory.ts:226:11
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:226:15
   (return)
  )
  ;;@ ~lib/memory.ts:227:2
  (i32.store
   ;;@ ~lib/memory.ts:227:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:227:20
    (i32.const 12)
   )
   ;;@ ~lib/memory.ts:227:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:228:2
  (i32.store
   ;;@ ~lib/memory.ts:228:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:228:20
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:228:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:229:2
  (i32.store
   ;;@ ~lib/memory.ts:229:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:229:20
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:229:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:230:2
  (i32.store
   ;;@ ~lib/memory.ts:230:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:230:20
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:230:24
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:231:2
  (i32.store
   ;;@ ~lib/memory.ts:231:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:231:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:231:24
    (i32.const 28)
   )
   ;;@ ~lib/memory.ts:231:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:232:2
  (i32.store
   ;;@ ~lib/memory.ts:232:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:232:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:232:24
    (i32.const 24)
   )
   ;;@ ~lib/memory.ts:232:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:233:2
  (i32.store
   ;;@ ~lib/memory.ts:233:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:233:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:233:24
    (i32.const 20)
   )
   ;;@ ~lib/memory.ts:233:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:234:2
  (i32.store
   ;;@ ~lib/memory.ts:234:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/memory.ts:234:20
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:234:24
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:234:28
   (get_local $4)
  )
  ;;@ ~lib/memory.ts:237:2
  (set_local $3
   ;;@ ~lib/memory.ts:237:6
   (i32.add
    (i32.const 24)
    ;;@ ~lib/memory.ts:237:11
    (i32.and
     ;;@ ~lib/memory.ts:237:12
     (get_local $0)
     ;;@ ~lib/memory.ts:237:19
     (i32.const 4)
    )
   )
  )
  ;;@ ~lib/memory.ts:238:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/memory.ts:238:10
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:239:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/memory.ts:239:7
    (get_local $3)
   )
  )
  ;;@ ~lib/memory.ts:242:2
  (set_local $5
   ;;@ ~lib/memory.ts:242:17
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    ;;@ ~lib/memory.ts:242:28
    (i64.shl
     ;;@ ~lib/memory.ts:242:29
     (i64.extend_u/i32
      (get_local $4)
     )
     ;;@ ~lib/memory.ts:242:41
     (i64.const 32)
    )
   )
  )
  ;;@ ~lib/memory.ts:243:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/memory.ts:243:9
     (i32.ge_u
      (get_local $2)
      ;;@ ~lib/memory.ts:243:14
      (i32.const 32)
     )
     (block
      (block
       ;;@ ~lib/memory.ts:244:4
       (i64.store
        ;;@ ~lib/memory.ts:244:15
        (get_local $0)
        ;;@ ~lib/memory.ts:244:21
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:245:4
       (i64.store
        ;;@ ~lib/memory.ts:245:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:245:22
         (i32.const 8)
        )
        ;;@ ~lib/memory.ts:245:25
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:246:4
       (i64.store
        ;;@ ~lib/memory.ts:246:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:246:22
         (i32.const 16)
        )
        ;;@ ~lib/memory.ts:246:26
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:247:4
       (i64.store
        ;;@ ~lib/memory.ts:247:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:247:22
         (i32.const 24)
        )
        ;;@ ~lib/memory.ts:247:26
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:248:4
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/memory.ts:248:9
         (i32.const 32)
        )
       )
       ;;@ ~lib/memory.ts:249:4
       (set_local $0
        (i32.add
         (get_local $0)
         ;;@ ~lib/memory.ts:249:12
         (i32.const 32)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<Sphere>#constructor (; 45 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/array.ts:23:4
  (if
   ;;@ ~lib/array.ts:23:8
   (i32.gt_u
    (get_local $1)
    ;;@ ~lib/array.ts:23:22
    (i32.const 268435454)
   )
   ;;@ ~lib/array.ts:23:39
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/array.ts:24:4
  (set_local $2
   ;;@ ~lib/array.ts:24:21
   (i32.shl
    (get_local $1)
    ;;@ ~lib/array.ts:24:31
    (i32.const 2)
   )
  )
  ;;@ ~lib/array.ts:25:4
  (set_local $3
   ;;@ ~lib/array.ts:25:17
   (call $~lib/internal/arraybuffer/allocUnsafe
    ;;@ ~lib/array.ts:25:29
    (get_local $2)
   )
  )
  ;;@ ~lib/array.ts:26:4
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/allocator/arena/allocate_memory
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   ;;@ ~lib/array.ts:26:19
   (get_local $3)
  )
  ;;@ ~lib/array.ts:27:4
  (i32.store offset=4
   (get_local $0)
   ;;@ ~lib/array.ts:27:19
   (get_local $1)
  )
  ;;@ ~lib/array.ts:28:4
  (call $~lib/memory/set_memory
   ;;@ ~lib/array.ts:29:6
   (i32.add
    (get_local $3)
    ;;@ ~lib/array.ts:29:34
    (i32.const 8)
   )
   ;;@ ~lib/array.ts:30:6
   (i32.const 0)
   ;;@ ~lib/array.ts:31:6
   (get_local $2)
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Sphere>#__unchecked_set (; 46 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/array.ts:96:4
  (block $~lib/internal/arraybuffer/storeUnsafe<Sphere,Sphere>|inlined.0
   (set_local $3
    ;;@ ~lib/array.ts:96:21
    (i32.load
     (get_local $0)
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:69:2
   (i32.store offset=8
    ;;@ ~lib/internal/arraybuffer.ts:69:11
    (i32.add
     (get_local $3)
     ;;@ ~lib/internal/arraybuffer.ts:69:39
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:69:40
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:69:56
      (i32.const 2)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:69:71
    (get_local $2)
   )
  )
 )
 (func $assembly/index/Hit#constructor (; 47 ;) (type $iiFii) (param $0 i32) (param $1 i32) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $4
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 20)
       )
      )
      (i32.store
       (get_local $4)
       (get_local $1)
      )
      (f64.store offset=8
       (get_local $4)
       (get_local $2)
      )
      (i32.store offset=16
       (get_local $4)
       (get_local $3)
      )
      (get_local $4)
     )
    )
   )
  )
 )
 (func $assembly/index/Ray#constructor (; 48 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $3
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 8)
       )
      )
      (i32.store
       (get_local $3)
       (get_local $1)
      )
      (i32.store offset=4
       (get_local $3)
       (get_local $2)
      )
      (get_local $3)
     )
    )
   )
  )
 )
 (func $assembly/index/Ray#constructor|trampoline (; 49 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $oob
      (br_table $0of2 $1of2 $2of2 $oob
       (get_global $~argc)
      )
     )
     (unreachable)
    )
    (set_local $1
     ;;@ assembly/index.ts:157:32
     (call $assembly/index/Vec#constructor
      (i32.const 0)
      (f64.const 0)
      (f64.const 0)
      (f64.const 0)
     )
    )
   )
   (set_local $2
    ;;@ assembly/index.ts:157:59
    (call $assembly/index/Vec#constructor
     (i32.const 0)
     ;;@ assembly/index.ts:20:34
     (f64.const 0)
     ;;@ assembly/index.ts:20:57
     (f64.const 0)
     ;;@ assembly/index.ts:20:80
     (f64.const 0)
    )
   )
  )
  (call $assembly/index/Ray#constructor
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $assembly/index/Hit#constructor|trampoline (; 50 ;) (type $iiFii) (param $0 i32) (param $1 i32) (param $2 f64) (param $3 i32) (result i32)
  (block $3of3
   (block $2of3
    (block $1of3
     (block $0of3
      (block $oob
       (br_table $0of3 $1of3 $2of3 $3of3 $oob
        (get_global $~argc)
       )
      )
      (unreachable)
     )
     (set_local $1
      ;;@ assembly/index.ts:234:34
      (block (result i32)
       (set_global $~argc
        (i32.const 0)
       )
       (call $assembly/index/Ray#constructor|trampoline
        (i32.const 0)
        (i32.const 0)
        (i32.const 0)
       )
      )
     )
    )
    (set_local $2
     ;;@ assembly/index.ts:234:63
     (f64.const 0)
    )
   )
   (set_local $3
    ;;@ assembly/index.ts:234:83
    (i32.const -1)
   )
  )
  (call $assembly/index/Hit#constructor
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
  )
 )
 (func $assembly/index/Params#constructor (; 51 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $3
       (call $~lib/allocator/arena/allocate_memory
        (i32.const 8)
       )
      )
      (i32.store
       (get_local $3)
       (get_local $1)
      )
      (i32.store offset=4
       (get_local $3)
       (get_local $2)
      )
      (get_local $3)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<Vec>#constructor (; 52 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/array.ts:23:4
  (if
   ;;@ ~lib/array.ts:23:8
   (i32.gt_u
    (get_local $1)
    ;;@ ~lib/array.ts:23:22
    (i32.const 268435454)
   )
   ;;@ ~lib/array.ts:23:39
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/array.ts:24:4
  (set_local $2
   ;;@ ~lib/array.ts:24:21
   (i32.shl
    (get_local $1)
    ;;@ ~lib/array.ts:24:31
    (i32.const 2)
   )
  )
  ;;@ ~lib/array.ts:25:4
  (set_local $3
   ;;@ ~lib/array.ts:25:17
   (call $~lib/internal/arraybuffer/allocUnsafe
    ;;@ ~lib/array.ts:25:29
    (get_local $2)
   )
  )
  ;;@ ~lib/array.ts:26:4
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/allocator/arena/allocate_memory
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   ;;@ ~lib/array.ts:26:19
   (get_local $3)
  )
  ;;@ ~lib/array.ts:27:4
  (i32.store offset=4
   (get_local $0)
   ;;@ ~lib/array.ts:27:19
   (get_local $1)
  )
  ;;@ ~lib/array.ts:28:4
  (call $~lib/memory/set_memory
   ;;@ ~lib/array.ts:29:6
   (i32.add
    (get_local $3)
    ;;@ ~lib/array.ts:29:34
    (i32.const 8)
   )
   ;;@ ~lib/array.ts:30:6
   (i32.const 0)
   ;;@ ~lib/array.ts:31:6
   (get_local $2)
  )
  (get_local $0)
 )
 (func $~lib/memory/copy_memory (; 53 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/memory.ts:8:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/memory.ts:8:9
     (if (result i32)
      (get_local $2)
      ;;@ ~lib/memory.ts:8:14
      (i32.and
       ;;@ ~lib/memory.ts:8:15
       (get_local $1)
       ;;@ ~lib/memory.ts:8:21
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       ;;@ ~lib/memory.ts:9:4
       (i32.store8
        ;;@ ~lib/memory.ts:9:14
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:9:22
        (i32.load8_u
         ;;@ ~lib/memory.ts:9:31
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:10:4
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
  ;;@ ~lib/memory.ts:14:2
  (if
   ;;@ ~lib/memory.ts:14:6
   (i32.eq
    (i32.and
     ;;@ ~lib/memory.ts:14:7
     (get_local $0)
     ;;@ ~lib/memory.ts:14:14
     (i32.const 3)
    )
    ;;@ ~lib/memory.ts:14:20
    (i32.const 0)
   )
   ;;@ ~lib/memory.ts:14:23
   (block
    (block $break|1
     (loop $continue|1
      (if
       ;;@ ~lib/memory.ts:15:11
       (i32.ge_u
        (get_local $2)
        ;;@ ~lib/memory.ts:15:16
        (i32.const 16)
       )
       (block
        (block
         ;;@ ~lib/memory.ts:16:6
         (i32.store
          ;;@ ~lib/memory.ts:16:17
          (get_local $0)
          ;;@ ~lib/memory.ts:16:28
          (i32.load
           ;;@ ~lib/memory.ts:16:38
           (get_local $1)
          )
         )
         ;;@ ~lib/memory.ts:17:6
         (i32.store
          ;;@ ~lib/memory.ts:17:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:17:25
           (i32.const 4)
          )
          ;;@ ~lib/memory.ts:17:28
          (i32.load
           ;;@ ~lib/memory.ts:17:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:17:45
            (i32.const 4)
           )
          )
         )
         ;;@ ~lib/memory.ts:18:6
         (i32.store
          ;;@ ~lib/memory.ts:18:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:18:25
           (i32.const 8)
          )
          ;;@ ~lib/memory.ts:18:28
          (i32.load
           ;;@ ~lib/memory.ts:18:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:18:45
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/memory.ts:19:6
         (i32.store
          ;;@ ~lib/memory.ts:19:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:19:24
           (i32.const 12)
          )
          ;;@ ~lib/memory.ts:19:28
          (i32.load
           ;;@ ~lib/memory.ts:19:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:19:44
            (i32.const 12)
           )
          )
         )
         ;;@ ~lib/memory.ts:20:6
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:20:13
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:20:17
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ ~lib/memory.ts:20:25
           (i32.const 16)
          )
         )
         ;;@ ~lib/memory.ts:20:29
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ ~lib/memory.ts:20:34
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:22:4
    (if
     ;;@ ~lib/memory.ts:22:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:22:12
      (i32.const 8)
     )
     ;;@ ~lib/memory.ts:22:15
     (block
      ;;@ ~lib/memory.ts:23:6
      (i32.store
       ;;@ ~lib/memory.ts:23:17
       (get_local $0)
       ;;@ ~lib/memory.ts:23:27
       (i32.load
        ;;@ ~lib/memory.ts:23:37
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:24:6
      (i32.store
       ;;@ ~lib/memory.ts:24:17
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:24:24
        (i32.const 4)
       )
       ;;@ ~lib/memory.ts:24:27
       (i32.load
        ;;@ ~lib/memory.ts:24:37
        (i32.add
         (get_local $1)
         ;;@ ~lib/memory.ts:24:43
         (i32.const 4)
        )
       )
      )
      ;;@ ~lib/memory.ts:25:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:25:14
        (i32.const 8)
       )
      )
      ;;@ ~lib/memory.ts:25:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:25:24
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:27:4
    (if
     ;;@ ~lib/memory.ts:27:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:27:12
      (i32.const 4)
     )
     ;;@ ~lib/memory.ts:27:15
     (block
      ;;@ ~lib/memory.ts:28:6
      (i32.store
       ;;@ ~lib/memory.ts:28:17
       (get_local $0)
       ;;@ ~lib/memory.ts:28:23
       (i32.load
        ;;@ ~lib/memory.ts:28:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:29:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:29:14
        (i32.const 4)
       )
      )
      ;;@ ~lib/memory.ts:29:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:29:24
        (i32.const 4)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:31:4
    (if
     ;;@ ~lib/memory.ts:31:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:31:12
      (i32.const 2)
     )
     ;;@ ~lib/memory.ts:31:15
     (block
      ;;@ ~lib/memory.ts:32:6
      (i32.store16
       ;;@ ~lib/memory.ts:32:17
       (get_local $0)
       ;;@ ~lib/memory.ts:32:23
       (i32.load16_u
        ;;@ ~lib/memory.ts:32:33
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:33:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/memory.ts:33:14
        (i32.const 2)
       )
      )
      ;;@ ~lib/memory.ts:33:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/memory.ts:33:24
        (i32.const 2)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:35:4
    (if
     ;;@ ~lib/memory.ts:35:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/memory.ts:35:12
      (i32.const 1)
     )
     ;;@ ~lib/memory.ts:35:15
     (i32.store8
      ;;@ ~lib/memory.ts:36:16
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      ;;@ ~lib/memory.ts:36:24
      (i32.load8_u
       ;;@ ~lib/memory.ts:36:33
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    ;;@ ~lib/memory.ts:38:4
    (return)
   )
  )
  ;;@ ~lib/memory.ts:43:2
  (if
   ;;@ ~lib/memory.ts:43:6
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/memory.ts:43:11
    (i32.const 32)
   )
   ;;@ ~lib/memory.ts:43:15
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        ;;@ ~lib/memory.ts:44:12
        (i32.and
         (get_local $0)
         ;;@ ~lib/memory.ts:44:19
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:46:11
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:65:11
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/memory.ts:83:11
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      ;;@ ~lib/memory.ts:46:14
      (block
       ;;@ ~lib/memory.ts:47:8
       (set_local $3
        ;;@ ~lib/memory.ts:47:12
        (i32.load
         ;;@ ~lib/memory.ts:47:22
         (get_local $1)
        )
       )
       ;;@ ~lib/memory.ts:48:8
       (i32.store8
        ;;@ ~lib/memory.ts:48:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:48:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:48:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:49:8
       (i32.store8
        ;;@ ~lib/memory.ts:49:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:49:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:49:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:50:8
       (i32.store8
        ;;@ ~lib/memory.ts:50:18
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        ;;@ ~lib/memory.ts:50:26
        (i32.load8_u
         ;;@ ~lib/memory.ts:50:35
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       ;;@ ~lib/memory.ts:51:8
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/memory.ts:51:13
         (i32.const 3)
        )
       )
       ;;@ ~lib/memory.ts:52:8
       (block $break|3
        (loop $continue|3
         (if
          ;;@ ~lib/memory.ts:52:15
          (i32.ge_u
           (get_local $2)
           ;;@ ~lib/memory.ts:52:20
           (i32.const 17)
          )
          (block
           (block
            ;;@ ~lib/memory.ts:53:10
            (set_local $4
             ;;@ ~lib/memory.ts:53:14
             (i32.load
              ;;@ ~lib/memory.ts:53:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:53:30
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/memory.ts:54:10
            (i32.store
             ;;@ ~lib/memory.ts:54:21
             (get_local $0)
             ;;@ ~lib/memory.ts:54:27
             (i32.or
              (i32.shr_u
               (get_local $3)
               ;;@ ~lib/memory.ts:54:32
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:54:37
              (i32.shl
               (get_local $4)
               ;;@ ~lib/memory.ts:54:42
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:55:10
            (set_local $3
             ;;@ ~lib/memory.ts:55:14
             (i32.load
              ;;@ ~lib/memory.ts:55:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:55:30
               (i32.const 5)
              )
             )
            )
            ;;@ ~lib/memory.ts:56:10
            (i32.store
             ;;@ ~lib/memory.ts:56:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:56:28
              (i32.const 4)
             )
             ;;@ ~lib/memory.ts:56:31
             (i32.or
              (i32.shr_u
               (get_local $4)
               ;;@ ~lib/memory.ts:56:36
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:56:41
              (i32.shl
               (get_local $3)
               ;;@ ~lib/memory.ts:56:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:57:10
            (set_local $4
             ;;@ ~lib/memory.ts:57:14
             (i32.load
              ;;@ ~lib/memory.ts:57:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:57:30
               (i32.const 9)
              )
             )
            )
            ;;@ ~lib/memory.ts:58:10
            (i32.store
             ;;@ ~lib/memory.ts:58:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:58:28
              (i32.const 8)
             )
             ;;@ ~lib/memory.ts:58:31
             (i32.or
              (i32.shr_u
               (get_local $3)
               ;;@ ~lib/memory.ts:58:36
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:58:41
              (i32.shl
               (get_local $4)
               ;;@ ~lib/memory.ts:58:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:59:10
            (set_local $3
             ;;@ ~lib/memory.ts:59:14
             (i32.load
              ;;@ ~lib/memory.ts:59:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/memory.ts:59:30
               (i32.const 13)
              )
             )
            )
            ;;@ ~lib/memory.ts:60:10
            (i32.store
             ;;@ ~lib/memory.ts:60:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:60:28
              (i32.const 12)
             )
             ;;@ ~lib/memory.ts:60:32
             (i32.or
              (i32.shr_u
               (get_local $4)
               ;;@ ~lib/memory.ts:60:37
               (i32.const 24)
              )
              ;;@ ~lib/memory.ts:60:42
              (i32.shl
               (get_local $3)
               ;;@ ~lib/memory.ts:60:47
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/memory.ts:61:10
            (set_local $1
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:61:17
              (i32.const 16)
             )
            )
            ;;@ ~lib/memory.ts:61:21
            (set_local $0
             (i32.add
              (get_local $0)
              ;;@ ~lib/memory.ts:61:29
              (i32.const 16)
             )
            )
            ;;@ ~lib/memory.ts:61:33
            (set_local $2
             (i32.sub
              (get_local $2)
              ;;@ ~lib/memory.ts:61:38
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       ;;@ ~lib/memory.ts:63:8
       (br $break|2)
      )
     )
     ;;@ ~lib/memory.ts:65:14
     (block
      ;;@ ~lib/memory.ts:66:8
      (set_local $3
       ;;@ ~lib/memory.ts:66:12
       (i32.load
        ;;@ ~lib/memory.ts:66:22
        (get_local $1)
       )
      )
      ;;@ ~lib/memory.ts:67:8
      (i32.store8
       ;;@ ~lib/memory.ts:67:18
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:67:26
       (i32.load8_u
        ;;@ ~lib/memory.ts:67:35
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      ;;@ ~lib/memory.ts:68:8
      (i32.store8
       ;;@ ~lib/memory.ts:68:18
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       ;;@ ~lib/memory.ts:68:26
       (i32.load8_u
        ;;@ ~lib/memory.ts:68:35
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      ;;@ ~lib/memory.ts:69:8
      (set_local $2
       (i32.sub
        (get_local $2)
        ;;@ ~lib/memory.ts:69:13
        (i32.const 2)
       )
      )
      ;;@ ~lib/memory.ts:70:8
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/memory.ts:70:15
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:70:20
          (i32.const 18)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:71:10
           (set_local $4
            ;;@ ~lib/memory.ts:71:14
            (i32.load
             ;;@ ~lib/memory.ts:71:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:71:30
              (i32.const 2)
             )
            )
           )
           ;;@ ~lib/memory.ts:72:10
           (i32.store
            ;;@ ~lib/memory.ts:72:21
            (get_local $0)
            ;;@ ~lib/memory.ts:72:27
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ ~lib/memory.ts:72:32
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:72:37
             (i32.shl
              (get_local $4)
              ;;@ ~lib/memory.ts:72:42
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:73:10
           (set_local $3
            ;;@ ~lib/memory.ts:73:14
            (i32.load
             ;;@ ~lib/memory.ts:73:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:73:30
              (i32.const 6)
             )
            )
           )
           ;;@ ~lib/memory.ts:74:10
           (i32.store
            ;;@ ~lib/memory.ts:74:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:74:28
             (i32.const 4)
            )
            ;;@ ~lib/memory.ts:74:31
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ ~lib/memory.ts:74:36
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:74:41
             (i32.shl
              (get_local $3)
              ;;@ ~lib/memory.ts:74:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:75:10
           (set_local $4
            ;;@ ~lib/memory.ts:75:14
            (i32.load
             ;;@ ~lib/memory.ts:75:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:75:30
              (i32.const 10)
             )
            )
           )
           ;;@ ~lib/memory.ts:76:10
           (i32.store
            ;;@ ~lib/memory.ts:76:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:76:28
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:76:31
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ ~lib/memory.ts:76:36
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:76:41
             (i32.shl
              (get_local $4)
              ;;@ ~lib/memory.ts:76:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:77:10
           (set_local $3
            ;;@ ~lib/memory.ts:77:14
            (i32.load
             ;;@ ~lib/memory.ts:77:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:77:30
              (i32.const 14)
             )
            )
           )
           ;;@ ~lib/memory.ts:78:10
           (i32.store
            ;;@ ~lib/memory.ts:78:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:78:28
             (i32.const 12)
            )
            ;;@ ~lib/memory.ts:78:32
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ ~lib/memory.ts:78:37
              (i32.const 16)
             )
             ;;@ ~lib/memory.ts:78:42
             (i32.shl
              (get_local $3)
              ;;@ ~lib/memory.ts:78:47
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/memory.ts:79:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:79:17
             (i32.const 16)
            )
           )
           ;;@ ~lib/memory.ts:79:21
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:79:29
             (i32.const 16)
            )
           )
           ;;@ ~lib/memory.ts:79:33
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:79:38
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      ;;@ ~lib/memory.ts:81:8
      (br $break|2)
     )
    )
    ;;@ ~lib/memory.ts:83:14
    (block
     ;;@ ~lib/memory.ts:84:8
     (set_local $3
      ;;@ ~lib/memory.ts:84:12
      (i32.load
       ;;@ ~lib/memory.ts:84:22
       (get_local $1)
      )
     )
     ;;@ ~lib/memory.ts:85:8
     (i32.store8
      ;;@ ~lib/memory.ts:85:18
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      ;;@ ~lib/memory.ts:85:26
      (i32.load8_u
       ;;@ ~lib/memory.ts:85:35
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
     ;;@ ~lib/memory.ts:86:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/memory.ts:86:13
       (i32.const 1)
      )
     )
     ;;@ ~lib/memory.ts:87:8
     (block $break|5
      (loop $continue|5
       (if
        ;;@ ~lib/memory.ts:87:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/memory.ts:87:20
         (i32.const 19)
        )
        (block
         (block
          ;;@ ~lib/memory.ts:88:10
          (set_local $4
           ;;@ ~lib/memory.ts:88:14
           (i32.load
            ;;@ ~lib/memory.ts:88:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:88:30
             (i32.const 3)
            )
           )
          )
          ;;@ ~lib/memory.ts:89:10
          (i32.store
           ;;@ ~lib/memory.ts:89:21
           (get_local $0)
           ;;@ ~lib/memory.ts:89:27
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ ~lib/memory.ts:89:32
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:89:36
            (i32.shl
             (get_local $4)
             ;;@ ~lib/memory.ts:89:41
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:90:10
          (set_local $3
           ;;@ ~lib/memory.ts:90:14
           (i32.load
            ;;@ ~lib/memory.ts:90:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:90:30
             (i32.const 7)
            )
           )
          )
          ;;@ ~lib/memory.ts:91:10
          (i32.store
           ;;@ ~lib/memory.ts:91:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:91:28
            (i32.const 4)
           )
           ;;@ ~lib/memory.ts:91:31
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ ~lib/memory.ts:91:36
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:91:40
            (i32.shl
             (get_local $3)
             ;;@ ~lib/memory.ts:91:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:92:10
          (set_local $4
           ;;@ ~lib/memory.ts:92:14
           (i32.load
            ;;@ ~lib/memory.ts:92:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:92:30
             (i32.const 11)
            )
           )
          )
          ;;@ ~lib/memory.ts:93:10
          (i32.store
           ;;@ ~lib/memory.ts:93:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:93:28
            (i32.const 8)
           )
           ;;@ ~lib/memory.ts:93:31
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ ~lib/memory.ts:93:36
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:93:40
            (i32.shl
             (get_local $4)
             ;;@ ~lib/memory.ts:93:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:94:10
          (set_local $3
           ;;@ ~lib/memory.ts:94:14
           (i32.load
            ;;@ ~lib/memory.ts:94:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:94:30
             (i32.const 15)
            )
           )
          )
          ;;@ ~lib/memory.ts:95:10
          (i32.store
           ;;@ ~lib/memory.ts:95:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:95:28
            (i32.const 12)
           )
           ;;@ ~lib/memory.ts:95:32
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ ~lib/memory.ts:95:37
             (i32.const 8)
            )
            ;;@ ~lib/memory.ts:95:41
            (i32.shl
             (get_local $3)
             ;;@ ~lib/memory.ts:95:46
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/memory.ts:96:10
          (set_local $1
           (i32.add
            (get_local $1)
            ;;@ ~lib/memory.ts:96:17
            (i32.const 16)
           )
          )
          ;;@ ~lib/memory.ts:96:21
          (set_local $0
           (i32.add
            (get_local $0)
            ;;@ ~lib/memory.ts:96:29
            (i32.const 16)
           )
          )
          ;;@ ~lib/memory.ts:96:33
          (set_local $2
           (i32.sub
            (get_local $2)
            ;;@ ~lib/memory.ts:96:38
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     ;;@ ~lib/memory.ts:98:8
     (br $break|2)
    )
   )
  )
  ;;@ ~lib/memory.ts:104:2
  (if
   ;;@ ~lib/memory.ts:104:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:104:10
    (i32.const 16)
   )
   ;;@ ~lib/memory.ts:104:14
   (block
    ;;@ ~lib/memory.ts:105:4
    (i32.store8
     ;;@ ~lib/memory.ts:105:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:105:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:105:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:106:4
    (i32.store8
     ;;@ ~lib/memory.ts:106:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:106:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:106:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:107:4
    (i32.store8
     ;;@ ~lib/memory.ts:107:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:107:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:107:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:108:4
    (i32.store8
     ;;@ ~lib/memory.ts:108:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:108:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:108:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:109:4
    (i32.store8
     ;;@ ~lib/memory.ts:109:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:109:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:109:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:110:4
    (i32.store8
     ;;@ ~lib/memory.ts:110:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:110:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:110:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:111:4
    (i32.store8
     ;;@ ~lib/memory.ts:111:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:111:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:111:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:112:4
    (i32.store8
     ;;@ ~lib/memory.ts:112:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:112:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:112:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:113:4
    (i32.store8
     ;;@ ~lib/memory.ts:113:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:113:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:113:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:114:4
    (i32.store8
     ;;@ ~lib/memory.ts:114:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:114:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:114:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:115:4
    (i32.store8
     ;;@ ~lib/memory.ts:115:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:115:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:115:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:116:4
    (i32.store8
     ;;@ ~lib/memory.ts:116:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:116:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:116:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:117:4
    (i32.store8
     ;;@ ~lib/memory.ts:117:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:117:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:117:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:118:4
    (i32.store8
     ;;@ ~lib/memory.ts:118:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:118:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:118:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:119:4
    (i32.store8
     ;;@ ~lib/memory.ts:119:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:119:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:119:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:120:4
    (i32.store8
     ;;@ ~lib/memory.ts:120:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:120:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:120:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:122:2
  (if
   ;;@ ~lib/memory.ts:122:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:122:10
    (i32.const 8)
   )
   ;;@ ~lib/memory.ts:122:13
   (block
    ;;@ ~lib/memory.ts:123:4
    (i32.store8
     ;;@ ~lib/memory.ts:123:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:123:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:123:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:124:4
    (i32.store8
     ;;@ ~lib/memory.ts:124:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:124:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:124:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:125:4
    (i32.store8
     ;;@ ~lib/memory.ts:125:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:125:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:125:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:126:4
    (i32.store8
     ;;@ ~lib/memory.ts:126:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:126:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:126:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:127:4
    (i32.store8
     ;;@ ~lib/memory.ts:127:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:127:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:127:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:128:4
    (i32.store8
     ;;@ ~lib/memory.ts:128:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:128:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:128:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:129:4
    (i32.store8
     ;;@ ~lib/memory.ts:129:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:129:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:129:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:130:4
    (i32.store8
     ;;@ ~lib/memory.ts:130:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:130:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:130:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:132:2
  (if
   ;;@ ~lib/memory.ts:132:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:132:10
    (i32.const 4)
   )
   ;;@ ~lib/memory.ts:132:13
   (block
    ;;@ ~lib/memory.ts:133:4
    (i32.store8
     ;;@ ~lib/memory.ts:133:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:133:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:133:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:134:4
    (i32.store8
     ;;@ ~lib/memory.ts:134:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:134:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:134:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:135:4
    (i32.store8
     ;;@ ~lib/memory.ts:135:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:135:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:135:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:136:4
    (i32.store8
     ;;@ ~lib/memory.ts:136:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:136:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:136:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:138:2
  (if
   ;;@ ~lib/memory.ts:138:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:138:10
    (i32.const 2)
   )
   ;;@ ~lib/memory.ts:138:13
   (block
    ;;@ ~lib/memory.ts:139:4
    (i32.store8
     ;;@ ~lib/memory.ts:139:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:139:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:139:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    ;;@ ~lib/memory.ts:140:4
    (i32.store8
     ;;@ ~lib/memory.ts:140:14
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     ;;@ ~lib/memory.ts:140:22
     (i32.load8_u
      ;;@ ~lib/memory.ts:140:31
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  ;;@ ~lib/memory.ts:142:2
  (if
   ;;@ ~lib/memory.ts:142:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/memory.ts:142:10
    (i32.const 1)
   )
   ;;@ ~lib/memory.ts:142:13
   (i32.store8
    ;;@ ~lib/memory.ts:143:14
    (block (result i32)
     (set_local $5
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    ;;@ ~lib/memory.ts:143:22
    (i32.load8_u
     ;;@ ~lib/memory.ts:143:31
     (block (result i32)
      (set_local $5
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/memory/move_memory (; 54 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/memory.ts:151:2
  (if
   ;;@ ~lib/memory.ts:151:6
   (i32.eq
    (get_local $0)
    ;;@ ~lib/memory.ts:151:14
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:151:19
   (return)
  )
  ;;@ ~lib/memory.ts:152:2
  (if
   ;;@ ~lib/memory.ts:152:6
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       ;;@ ~lib/memory.ts:152:12
       (get_local $2)
      )
      ;;@ ~lib/memory.ts:152:17
      (get_local $0)
     )
    )
    (get_local $3)
    ;;@ ~lib/memory.ts:152:25
    (i32.le_u
     (i32.add
      (get_local $0)
      ;;@ ~lib/memory.ts:152:32
      (get_local $2)
     )
     ;;@ ~lib/memory.ts:152:37
     (get_local $1)
    )
   )
   ;;@ ~lib/memory.ts:152:42
   (block
    ;;@ ~lib/memory.ts:153:4
    (call $~lib/memory/copy_memory
     ;;@ ~lib/memory.ts:153:16
     (get_local $0)
     ;;@ ~lib/memory.ts:153:22
     (get_local $1)
     ;;@ ~lib/memory.ts:153:27
     (get_local $2)
    )
    ;;@ ~lib/memory.ts:154:4
    (return)
   )
  )
  ;;@ ~lib/memory.ts:156:2
  (if
   ;;@ ~lib/memory.ts:156:6
   (i32.lt_u
    (get_local $0)
    ;;@ ~lib/memory.ts:156:13
    (get_local $1)
   )
   ;;@ ~lib/memory.ts:156:18
   (block
    ;;@ ~lib/memory.ts:157:4
    (if
     ;;@ ~lib/memory.ts:157:8
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:157:9
       (get_local $1)
       ;;@ ~lib/memory.ts:157:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:157:21
      (i32.and
       ;;@ ~lib/memory.ts:157:22
       (get_local $0)
       ;;@ ~lib/memory.ts:157:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:157:33
     (block
      (block $break|0
       (loop $continue|0
        (if
         ;;@ ~lib/memory.ts:158:13
         (i32.and
          (get_local $0)
          ;;@ ~lib/memory.ts:158:20
          (i32.const 7)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:159:8
           (if
            ;;@ ~lib/memory.ts:159:12
            (i32.eqz
             ;;@ ~lib/memory.ts:159:13
             (get_local $2)
            )
            ;;@ ~lib/memory.ts:159:16
            (return)
           )
           ;;@ ~lib/memory.ts:160:8
           (set_local $2
            (i32.sub
             ;;@ ~lib/memory.ts:160:10
             (get_local $2)
             (i32.const 1)
            )
           )
           ;;@ ~lib/memory.ts:161:8
           (i32.store8
            ;;@ ~lib/memory.ts:161:18
            (block (result i32)
             (set_local $3
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            ;;@ ~lib/memory.ts:161:26
            (i32.load8_u
             ;;@ ~lib/memory.ts:161:35
             (block (result i32)
              (set_local $3
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $3)
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
      ;;@ ~lib/memory.ts:163:6
      (block $break|1
       (loop $continue|1
        (if
         ;;@ ~lib/memory.ts:163:13
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:163:18
          (i32.const 8)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:164:8
           (i64.store
            ;;@ ~lib/memory.ts:164:19
            (get_local $0)
            ;;@ ~lib/memory.ts:164:25
            (i64.load
             ;;@ ~lib/memory.ts:164:35
             (get_local $1)
            )
           )
           ;;@ ~lib/memory.ts:165:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:165:16
             (i32.const 8)
            )
           )
           ;;@ ~lib/memory.ts:166:8
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:166:16
             (i32.const 8)
            )
           )
           ;;@ ~lib/memory.ts:167:8
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/memory.ts:167:16
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
    ;;@ ~lib/memory.ts:170:4
    (block $break|2
     (loop $continue|2
      (if
       ;;@ ~lib/memory.ts:170:11
       (get_local $2)
       (block
        (block
         ;;@ ~lib/memory.ts:171:6
         (i32.store8
          ;;@ ~lib/memory.ts:171:16
          (block (result i32)
           (set_local $3
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          ;;@ ~lib/memory.ts:171:24
          (i32.load8_u
           ;;@ ~lib/memory.ts:171:33
           (block (result i32)
            (set_local $3
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $3)
              (i32.const 1)
             )
            )
            (get_local $3)
           )
          )
         )
         ;;@ ~lib/memory.ts:172:6
         (set_local $2
          (i32.sub
           ;;@ ~lib/memory.ts:172:8
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
   ;;@ ~lib/memory.ts:174:9
   (block
    ;;@ ~lib/memory.ts:175:4
    (if
     ;;@ ~lib/memory.ts:175:8
     (i32.eq
      (i32.and
       ;;@ ~lib/memory.ts:175:9
       (get_local $1)
       ;;@ ~lib/memory.ts:175:15
       (i32.const 7)
      )
      ;;@ ~lib/memory.ts:175:21
      (i32.and
       ;;@ ~lib/memory.ts:175:22
       (get_local $0)
       ;;@ ~lib/memory.ts:175:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/memory.ts:175:33
     (block
      (block $break|3
       (loop $continue|3
        (if
         ;;@ ~lib/memory.ts:176:13
         (i32.and
          (i32.add
           ;;@ ~lib/memory.ts:176:14
           (get_local $0)
           ;;@ ~lib/memory.ts:176:21
           (get_local $2)
          )
          ;;@ ~lib/memory.ts:176:26
          (i32.const 7)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:177:8
           (if
            ;;@ ~lib/memory.ts:177:12
            (i32.eqz
             ;;@ ~lib/memory.ts:177:13
             (get_local $2)
            )
            ;;@ ~lib/memory.ts:177:16
            (return)
           )
           ;;@ ~lib/memory.ts:178:8
           (i32.store8
            ;;@ ~lib/memory.ts:178:18
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:178:25
             (tee_local $2
              (i32.sub
               ;;@ ~lib/memory.ts:178:27
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/memory.ts:178:30
            (i32.load8_u
             ;;@ ~lib/memory.ts:178:39
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:178:45
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
      ;;@ ~lib/memory.ts:180:6
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/memory.ts:180:13
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/memory.ts:180:18
          (i32.const 8)
         )
         (block
          (block
           ;;@ ~lib/memory.ts:181:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/memory.ts:181:13
             (i32.const 8)
            )
           )
           ;;@ ~lib/memory.ts:182:8
           (i64.store
            ;;@ ~lib/memory.ts:182:19
            (i32.add
             (get_local $0)
             ;;@ ~lib/memory.ts:182:26
             (get_local $2)
            )
            ;;@ ~lib/memory.ts:182:29
            (i64.load
             ;;@ ~lib/memory.ts:182:39
             (i32.add
              (get_local $1)
              ;;@ ~lib/memory.ts:182:45
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
    ;;@ ~lib/memory.ts:185:4
    (block $break|5
     (loop $continue|5
      (if
       ;;@ ~lib/memory.ts:185:11
       (get_local $2)
       (block
        ;;@ ~lib/memory.ts:185:14
        (i32.store8
         ;;@ ~lib/memory.ts:186:16
         (i32.add
          (get_local $0)
          ;;@ ~lib/memory.ts:186:23
          (tee_local $2
           (i32.sub
            ;;@ ~lib/memory.ts:186:25
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         ;;@ ~lib/memory.ts:186:28
         (i32.load8_u
          ;;@ ~lib/memory.ts:186:37
          (i32.add
           (get_local $1)
           ;;@ ~lib/memory.ts:186:43
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
 (func $~lib/internal/arraybuffer/reallocUnsafe (; 55 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ ~lib/internal/arraybuffer.ts:30:2
  (set_local $2
   ;;@ ~lib/internal/arraybuffer.ts:30:22
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:31:2
  (if
   ;;@ ~lib/internal/arraybuffer.ts:31:6
   (i32.gt_s
    (get_local $1)
    ;;@ ~lib/internal/arraybuffer.ts:31:22
    (get_local $2)
   )
   ;;@ ~lib/internal/arraybuffer.ts:31:37
   (block
    ;;@ ~lib/internal/arraybuffer.ts:32:4
    (if
     (i32.eqz
      ;;@ ~lib/internal/arraybuffer.ts:32:11
      (i32.le_s
       (get_local $1)
       ;;@ ~lib/internal/arraybuffer.ts:32:28
       (i32.const 1073741816)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 68)
       (i32.const 32)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:33:4
    (if
     ;;@ ~lib/internal/arraybuffer.ts:33:8
     (i32.le_s
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:33:25
      (i32.sub
       ;;@ ~lib/internal/arraybuffer.ts:33:31
       (call $~lib/internal/arraybuffer/computeSize
        ;;@ ~lib/internal/arraybuffer.ts:33:43
        (get_local $2)
       )
       ;;@ ~lib/internal/arraybuffer.ts:33:60
       (i32.const 8)
      )
     )
     ;;@ ~lib/internal/arraybuffer.ts:33:74
     (block
      ;;@ ~lib/internal/arraybuffer.ts:34:6
      (i32.store
       ;;@ ~lib/internal/arraybuffer.ts:34:17
       (get_local $0)
       ;;@ ~lib/internal/arraybuffer.ts:34:44
       (get_local $1)
      )
      ;;@ ~lib/internal/arraybuffer.ts:35:6
      (call $~lib/memory/set_memory
       ;;@ ~lib/internal/arraybuffer.ts:36:8
       (i32.add
        (i32.add
         (get_local $0)
         ;;@ ~lib/internal/arraybuffer.ts:36:36
         (i32.const 8)
        )
        ;;@ ~lib/internal/arraybuffer.ts:36:50
        (get_local $2)
       )
       ;;@ ~lib/internal/arraybuffer.ts:37:8
       (i32.const 0)
       ;;@ ~lib/internal/arraybuffer.ts:38:8
       (i32.sub
        ;;@ ~lib/internal/arraybuffer.ts:38:16
        (get_local $1)
        ;;@ ~lib/internal/arraybuffer.ts:38:32
        (get_local $2)
       )
      )
     )
     ;;@ ~lib/internal/arraybuffer.ts:40:11
     (block
      ;;@ ~lib/internal/arraybuffer.ts:41:6
      (set_local $3
       ;;@ ~lib/internal/arraybuffer.ts:41:22
       (call $~lib/internal/arraybuffer/allocUnsafe
        ;;@ ~lib/internal/arraybuffer.ts:41:34
        (get_local $1)
       )
      )
      ;;@ ~lib/internal/arraybuffer.ts:42:6
      (call $~lib/memory/move_memory
       ;;@ ~lib/internal/arraybuffer.ts:43:8
       (i32.add
        (get_local $3)
        ;;@ ~lib/internal/arraybuffer.ts:43:39
        (i32.const 8)
       )
       ;;@ ~lib/internal/arraybuffer.ts:44:8
       (i32.add
        (get_local $0)
        ;;@ ~lib/internal/arraybuffer.ts:44:36
        (i32.const 8)
       )
       ;;@ ~lib/internal/arraybuffer.ts:45:8
       (get_local $2)
      )
      ;;@ ~lib/internal/arraybuffer.ts:47:6
      (call $~lib/memory/set_memory
       ;;@ ~lib/internal/arraybuffer.ts:48:8
       (i32.add
        (i32.add
         (get_local $3)
         ;;@ ~lib/internal/arraybuffer.ts:48:39
         (i32.const 8)
        )
        ;;@ ~lib/internal/arraybuffer.ts:48:53
        (get_local $2)
       )
       ;;@ ~lib/internal/arraybuffer.ts:49:8
       (i32.const 0)
       ;;@ ~lib/internal/arraybuffer.ts:50:8
       (i32.sub
        ;;@ ~lib/internal/arraybuffer.ts:50:16
        (get_local $1)
        ;;@ ~lib/internal/arraybuffer.ts:50:32
        (get_local $2)
       )
      )
      ;;@ ~lib/internal/arraybuffer.ts:52:13
      (return
       (get_local $3)
      )
     )
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:54:9
   (if
    ;;@ ~lib/internal/arraybuffer.ts:54:13
    (i32.lt_s
     (get_local $1)
     ;;@ ~lib/internal/arraybuffer.ts:54:29
     (get_local $2)
    )
    ;;@ ~lib/internal/arraybuffer.ts:54:44
    (block
     ;;@ ~lib/internal/arraybuffer.ts:56:4
     (if
      (i32.eqz
       ;;@ ~lib/internal/arraybuffer.ts:56:11
       (i32.ge_s
        (get_local $1)
        ;;@ ~lib/internal/arraybuffer.ts:56:28
        (i32.const 0)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 68)
        (i32.const 56)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     ;;@ ~lib/internal/arraybuffer.ts:57:4
     (i32.store
      ;;@ ~lib/internal/arraybuffer.ts:57:15
      (get_local $0)
      ;;@ ~lib/internal/arraybuffer.ts:57:42
      (get_local $1)
     )
    )
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:59:9
  (get_local $0)
 )
 (func $~lib/array/Array<Vec>#__set (; 56 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/array.ts:82:4
  (set_local $3
   ;;@ ~lib/array.ts:82:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:83:4
  (set_local $4
   ;;@ ~lib/array.ts:83:19
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    ;;@ ~lib/array.ts:83:41
    (i32.const 2)
   )
  )
  ;;@ ~lib/array.ts:84:4
  (if
   ;;@ ~lib/array.ts:84:8
   (i32.ge_u
    (get_local $1)
    ;;@ ~lib/array.ts:84:22
    (get_local $4)
   )
   ;;@ ~lib/array.ts:84:37
   (block
    ;;@ ~lib/array.ts:86:6
    (if
     ;;@ ~lib/array.ts:86:10
     (i32.ge_u
      (get_local $1)
      ;;@ ~lib/array.ts:86:24
      (i32.const 268435454)
     )
     ;;@ ~lib/array.ts:86:41
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 36)
       (i32.const 86)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/array.ts:87:6
    (set_local $3
     ;;@ ~lib/array.ts:87:15
     (call $~lib/internal/arraybuffer/reallocUnsafe
      ;;@ ~lib/array.ts:87:29
      (get_local $3)
      ;;@ ~lib/array.ts:87:37
      (i32.shl
       (i32.add
        ;;@ ~lib/array.ts:87:38
        (get_local $1)
        ;;@ ~lib/array.ts:87:46
        (i32.const 1)
       )
       ;;@ ~lib/array.ts:87:52
       (i32.const 2)
      )
     )
    )
    ;;@ ~lib/array.ts:88:6
    (i32.store
     (get_local $0)
     ;;@ ~lib/array.ts:88:21
     (get_local $3)
    )
    ;;@ ~lib/array.ts:89:6
    (i32.store offset=4
     (get_local $0)
     ;;@ ~lib/array.ts:89:21
     (i32.add
      (get_local $1)
      ;;@ ~lib/array.ts:89:29
      (i32.const 1)
     )
    )
   )
  )
  ;;@ ~lib/array.ts:91:4
  (block $~lib/internal/arraybuffer/storeUnsafe<Vec,Vec>|inlined.0
   ;;@ ~lib/internal/arraybuffer.ts:69:2
   (i32.store offset=8
    ;;@ ~lib/internal/arraybuffer.ts:69:11
    (i32.add
     (get_local $3)
     ;;@ ~lib/internal/arraybuffer.ts:69:39
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:69:40
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:69:56
      (i32.const 2)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:69:71
    (get_local $2)
   )
  )
 )
 (func $assembly/index/createPixels (; 57 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ assembly/index.ts:410:4
  (i32.store
   (get_global $assembly/index/params)
   ;;@ assembly/index.ts:410:19
   (get_local $0)
  )
  ;;@ assembly/index.ts:411:4
  (i32.store offset=4
   (get_global $assembly/index/params)
   ;;@ assembly/index.ts:411:20
   (get_local $1)
  )
  ;;@ assembly/index.ts:412:7
  (drop
   (call $assembly/index/Vec#set
    ;;@ assembly/index.ts:412:4
    (get_global $assembly/index/cx)
    ;;@ assembly/index.ts:412:11
    (f64.div
     (f64.mul
      ;;@ assembly/index.ts:412:12
      (f64.convert_s/i32
       (get_local $0)
      )
      ;;@ assembly/index.ts:412:23
      (f64.const 0.5135)
     )
     ;;@ assembly/index.ts:412:33
     (f64.convert_s/i32
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:412:43
    (f64.const 0)
    ;;@ assembly/index.ts:412:46
    (f64.const 0)
   )
  )
  ;;@ assembly/index.ts:415:9
  (drop
   (call $assembly/index/Vec#multScalar_in
    ;;@ assembly/index.ts:414:9
    (call $assembly/index/Vec#norm_in
     ;;@ assembly/index.ts:413:7
     (call $assembly/index/Vec#mod2
      ;;@ assembly/index.ts:413:4
      (get_global $assembly/index/cx)
      ;;@ assembly/index.ts:413:12
      (i32.load offset=4
       (get_global $assembly/index/cam)
      )
      ;;@ assembly/index.ts:413:19
      (get_global $assembly/index/cy)
     )
    )
    ;;@ assembly/index.ts:415:23
    (f64.const 0.5135)
   )
  )
  ;;@ assembly/index.ts:416:4
  (set_local $2
   ;;@ assembly/index.ts:416:14
   (i32.mul
    (get_local $0)
    ;;@ assembly/index.ts:416:18
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:417:4
  (set_local $3
   ;;@ assembly/index.ts:417:19
   (call $~lib/array/Array<Vec>#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:417:34
    (get_local $2)
   )
  )
  ;;@ assembly/index.ts:418:4
  (block $break|0
   ;;@ assembly/index.ts:418:9
   (set_local $4
    ;;@ assembly/index.ts:418:17
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:418:20
      (i32.lt_s
       (get_local $4)
       ;;@ assembly/index.ts:418:24
       (get_local $2)
      )
     )
    )
    ;;@ assembly/index.ts:418:34
    (call $~lib/array/Array<Vec>#__set
     ;;@ assembly/index.ts:419:8
     (get_local $3)
     ;;@ assembly/index.ts:419:10
     (get_local $4)
     ;;@ assembly/index.ts:419:15
     (call $assembly/index/Vec#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:20:34
      (f64.const 0)
      ;;@ assembly/index.ts:20:57
      (f64.const 0)
      ;;@ assembly/index.ts:20:80
      (f64.const 0)
     )
    )
    ;;@ assembly/index.ts:418:29
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/index.ts:421:11
  (get_local $3)
 )
 (func $~lib/math/NativeMath.random (; 58 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  ;;@ ~lib/math.ts:1007:4
  (if
   ;;@ ~lib/math.ts:1007:8
   (i32.eqz
    ;;@ ~lib/math.ts:1007:9
    (get_global $~lib/math/random_seeded)
   )
   ;;@ ~lib/math.ts:1007:24
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1007)
     (i32.const 24)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/math.ts:1008:4
  (set_local $0
   ;;@ ~lib/math.ts:1008:13
   (get_global $~lib/math/random_state0)
  )
  ;;@ ~lib/math.ts:1009:4
  (set_local $1
   ;;@ ~lib/math.ts:1009:13
   (get_global $~lib/math/random_state1)
  )
  ;;@ ~lib/math.ts:1010:4
  (set_global $~lib/math/random_state0
   ;;@ ~lib/math.ts:1010:20
   (get_local $1)
  )
  ;;@ ~lib/math.ts:1011:4
  (set_local $0
   (i64.xor
    (get_local $0)
    ;;@ ~lib/math.ts:1011:10
    (i64.shl
     (get_local $0)
     ;;@ ~lib/math.ts:1011:16
     (i64.const 23)
    )
   )
  )
  ;;@ ~lib/math.ts:1012:4
  (set_local $0
   (i64.xor
    (get_local $0)
    ;;@ ~lib/math.ts:1012:10
    (i64.shr_u
     (get_local $0)
     ;;@ ~lib/math.ts:1012:16
     (i64.const 17)
    )
   )
  )
  ;;@ ~lib/math.ts:1013:4
  (set_local $0
   (i64.xor
    (get_local $0)
    ;;@ ~lib/math.ts:1013:10
    (get_local $1)
   )
  )
  ;;@ ~lib/math.ts:1014:4
  (set_local $0
   (i64.xor
    (get_local $0)
    ;;@ ~lib/math.ts:1014:10
    (i64.shr_u
     (get_local $1)
     ;;@ ~lib/math.ts:1014:16
     (i64.const 26)
    )
   )
  )
  ;;@ ~lib/math.ts:1015:4
  (set_global $~lib/math/random_state1
   ;;@ ~lib/math.ts:1015:20
   (get_local $0)
  )
  ;;@ ~lib/math.ts:1016:4
  (set_local $2
   ;;@ ~lib/math.ts:1016:12
   (i64.or
    (i64.and
     ;;@ ~lib/math.ts:1016:13
     (i64.add
      ;;@ ~lib/math.ts:1016:14
      (get_local $1)
      ;;@ ~lib/math.ts:1016:19
      (get_local $0)
     )
     ;;@ ~lib/math.ts:1016:25
     (i64.const 4503599627370495)
    )
    ;;@ ~lib/math.ts:1016:47
    (i64.const 4607182418800017408)
   )
  )
  ;;@ ~lib/math.ts:1017:33
  (f64.sub
   ;;@ ~lib/math.ts:1017:11
   (f64.reinterpret/i64
    ;;@ ~lib/math.ts:1017:28
    (get_local $2)
   )
   ;;@ ~lib/math.ts:1017:33
   (f64.const 1)
  )
 )
 (func $assembly/index/rand (; 59 ;) (type $F) (result f64)
  ;;@ assembly/index.ts:15:36
  (call $~lib/math/NativeMath.random)
 )
 (func $assembly/index/Ray#set (; 60 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ assembly/index.ts:163:15
  (drop
   (call $assembly/index/Vec#setFrom
    ;;@ assembly/index.ts:163:8
    (i32.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:163:23
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:164:15
  (drop
   (call $assembly/index/Vec#setFrom
    ;;@ assembly/index.ts:164:8
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/index.ts:164:23
    (get_local $2)
   )
  )
  ;;@ assembly/index.ts:165:15
  (get_local $0)
 )
 (func $~lib/array/Array<Sphere>#get:length (; 61 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/array.ts:36:16
  (i32.load offset=4
   ;;@ ~lib/array.ts:36:11
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Sphere>#__get (; 62 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:69:4
  (set_local $2
   ;;@ ~lib/array.ts:69:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:72:23
  (if (result i32)
   ;;@ ~lib/array.ts:70:11
   (i32.lt_u
    (get_local $1)
    ;;@ ~lib/array.ts:70:24
    (i32.shr_u
     ;;@ ~lib/array.ts:70:30
     (i32.load
      (get_local $2)
     )
     ;;@ ~lib/array.ts:70:52
     (i32.const 2)
    )
   )
   ;;@ ~lib/array.ts:71:8
   (block $~lib/internal/arraybuffer/loadUnsafe<Sphere,Sphere>|inlined.0 (result i32)
    ;;@ ~lib/internal/arraybuffer.ts:64:91
    (i32.load offset=8
     ;;@ ~lib/internal/arraybuffer.ts:64:20
     (i32.add
      (get_local $2)
      ;;@ ~lib/internal/arraybuffer.ts:64:48
      (i32.shl
       ;;@ ~lib/internal/arraybuffer.ts:64:49
       (get_local $1)
       ;;@ ~lib/internal/arraybuffer.ts:64:65
       (i32.const 2)
      )
     )
    )
   )
   ;;@ ~lib/array.ts:72:8
   (unreachable)
  )
 )
 (func $assembly/index/Sphere#intersect (; 63 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  ;;@ assembly/index.ts:192:8
  (set_local $2
   ;;@ assembly/index.ts:192:29
   (call $assembly/index/Vec#sub2
    ;;@ assembly/index.ts:192:22
    (i32.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:192:34
    (i32.load
     (get_local $1)
    )
    ;;@ assembly/index.ts:192:39
    (get_global $assembly/index/loc17)
   )
  )
  (set_local $4
   ;;@ assembly/index.ts:194:18
   (f64.const 0.0001)
  )
  (set_local $5
   ;;@ assembly/index.ts:195:19
   (call $assembly/index/Vec#dot
    ;;@ assembly/index.ts:195:16
    (get_local $2)
    ;;@ assembly/index.ts:195:23
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  (set_local $6
   ;;@ assembly/index.ts:196:18
   (f64.add
    (f64.sub
     (f64.mul
      (get_local $5)
      ;;@ assembly/index.ts:196:22
      (get_local $5)
     )
     ;;@ assembly/index.ts:196:29
     (call $assembly/index/Vec#dot
      ;;@ assembly/index.ts:196:26
      (get_local $2)
      ;;@ assembly/index.ts:196:33
      (get_local $2)
     )
    )
    ;;@ assembly/index.ts:196:39
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:196:50
     (f64.load
      (get_local $0)
     )
    )
   )
  )
  ;;@ assembly/index.ts:197:8
  (if
   ;;@ assembly/index.ts:197:12
   (f64.lt
    (get_local $6)
    ;;@ assembly/index.ts:197:18
    (f64.const 0)
   )
   ;;@ assembly/index.ts:197:21
   (return
    ;;@ assembly/index.ts:198:19
    (f64.const 0)
   )
   ;;@ assembly/index.ts:199:15
   (set_local $6
    ;;@ assembly/index.ts:200:18
    (f64.sqrt
     ;;@ assembly/index.ts:200:30
     (get_local $6)
    )
   )
  )
  ;;@ assembly/index.ts:202:67
  (if (result f64)
   ;;@ assembly/index.ts:202:15
   (f64.gt
    (tee_local $3
     ;;@ assembly/index.ts:202:20
     (f64.sub
      (get_local $5)
      ;;@ assembly/index.ts:202:24
      (get_local $6)
     )
    )
    ;;@ assembly/index.ts:202:31
    (get_local $4)
   )
   ;;@ assembly/index.ts:202:37
   (get_local $3)
   ;;@ assembly/index.ts:202:41
   (if (result f64)
    (f64.gt
     (tee_local $3
      ;;@ assembly/index.ts:202:46
      (f64.add
       (get_local $5)
       ;;@ assembly/index.ts:202:50
       (get_local $6)
      )
     )
     ;;@ assembly/index.ts:202:57
     (get_local $4)
    )
    ;;@ assembly/index.ts:202:63
    (get_local $3)
    ;;@ assembly/index.ts:202:67
    (f64.const 0)
   )
  )
 )
 (func $assembly/index/Ray#copy (; 64 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/index.ts:159:15
  (drop
   (call $assembly/index/Vec#setFrom
    ;;@ assembly/index.ts:159:8
    (i32.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:159:23
    (i32.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:160:15
  (drop
   (call $assembly/index/Vec#setFrom
    ;;@ assembly/index.ts:160:8
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/index.ts:160:23
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/index/intersect (; 65 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  ;;@ assembly/index.ts:240:4
  (set_local $2
   ;;@ assembly/index.ts:240:19
   (f64.const inf)
  )
  ;;@ assembly/index.ts:241:4
  (set_local $3
   ;;@ assembly/index.ts:241:18
   (i32.const -1)
  )
  ;;@ assembly/index.ts:242:4
  (set_local $4
   ;;@ assembly/index.ts:242:17
   (call $~lib/array/Array<Sphere>#get:length
    (get_global $assembly/index/spheres)
   )
  )
  ;;@ assembly/index.ts:243:4
  (set_local $5
   ;;@ assembly/index.ts:243:19
   (f64.const 0)
  )
  ;;@ assembly/index.ts:244:4
  (set_local $6
   ;;@ assembly/index.ts:244:21
   (tee_local $2
    ;;@ assembly/index.ts:244:26
    (f64.const 1e20)
   )
  )
  ;;@ assembly/index.ts:245:4
  (block $break|0
   ;;@ assembly/index.ts:245:9
   (set_local $7
    ;;@ assembly/index.ts:245:17
    (get_local $4)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:245:20
      (block (result i32)
       (set_local $8
        (get_local $7)
       )
       (set_local $7
        (i32.sub
         (get_local $8)
         (i32.const 1)
        )
       )
       (get_local $8)
      )
     )
    )
    ;;@ assembly/index.ts:245:27
    (if
     (f64.ne
      ;;@ assembly/index.ts:246:12
      (if (result f64)
       (f64.ne
        (tee_local $9
         (tee_local $5
          ;;@ assembly/index.ts:246:28
          (call $assembly/index/Sphere#intersect
           ;;@ assembly/index.ts:246:17
           (call $~lib/array/Array<Sphere>#__get
            (get_global $assembly/index/spheres)
            ;;@ assembly/index.ts:246:25
            (get_local $7)
           )
           ;;@ assembly/index.ts:246:38
           (get_local $0)
          )
         )
        )
        (f64.const 0)
       )
       ;;@ assembly/index.ts:246:45
       (f64.convert_u/i32
        (f64.lt
         (get_local $5)
         ;;@ assembly/index.ts:246:49
         (get_local $2)
        )
       )
       (get_local $9)
      )
      (f64.const 0)
     )
     ;;@ assembly/index.ts:246:52
     (block
      ;;@ assembly/index.ts:247:12
      (set_local $2
       ;;@ assembly/index.ts:247:16
       (get_local $5)
      )
      ;;@ assembly/index.ts:248:12
      (set_local $3
       ;;@ assembly/index.ts:248:17
       (get_local $7)
      )
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/index.ts:251:4
  (f64.store offset=8
   (get_local $1)
   ;;@ assembly/index.ts:251:12
   (get_local $2)
  )
  ;;@ assembly/index.ts:252:4
  (i32.store offset=16
   (get_local $1)
   ;;@ assembly/index.ts:252:13
   (get_local $3)
  )
  ;;@ assembly/index.ts:253:12
  (call $assembly/index/Ray#copy
   ;;@ assembly/index.ts:253:4
   (i32.load
    (get_local $1)
   )
   ;;@ assembly/index.ts:253:17
   (get_local $0)
  )
  ;;@ assembly/index.ts:254:11
  (get_local $1)
 )
 (func $assembly/index/radiance (; 66 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  (local $25 f64)
  (local $26 i32)
  (local $27 i32)
  (local $28 f64)
  (local $29 f64)
  (local $30 f64)
  (local $31 f64)
  (local $32 f64)
  (local $33 f64)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 i32)
  (local $38 i32)
  ;;@ assembly/index.ts:279:4
  (drop
   (call $assembly/index/intersect
    ;;@ assembly/index.ts:279:14
    (get_local $0)
    ;;@ assembly/index.ts:279:17
    (get_global $assembly/index/hit)
   )
  )
  ;;@ assembly/index.ts:280:4
  (if
   ;;@ assembly/index.ts:280:8
   (f64.eq
    (f64.load offset=8
     (get_global $assembly/index/hit)
    )
    ;;@ assembly/index.ts:280:17
    (f64.const inf)
   )
   ;;@ assembly/index.ts:280:27
   (return
    ;;@ assembly/index.ts:281:15
    (get_global $assembly/index/black)
   )
  )
  ;;@ assembly/index.ts:283:4
  (set_local $4
   ;;@ assembly/index.ts:283:22
   (call $~lib/array/Array<Sphere>#__get
    (get_global $assembly/index/spheres)
    ;;@ assembly/index.ts:283:30
    (i32.load offset=16
     (get_global $assembly/index/hit)
    )
   )
  )
  ;;@ assembly/index.ts:284:8
  (drop
   (call $assembly/index/Vec#multScalar2
    ;;@ assembly/index.ts:284:4
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/index.ts:284:20
    (f64.load offset=8
     (get_global $assembly/index/hit)
    )
    ;;@ assembly/index.ts:284:27
    (get_global $assembly/index/loc1)
   )
  )
  ;;@ assembly/index.ts:286:4
  (set_local $5
   ;;@ assembly/index.ts:286:22
   (call $assembly/index/Vec#add2
    ;;@ assembly/index.ts:286:17
    (get_global $assembly/index/loc1)
    ;;@ assembly/index.ts:286:27
    (i32.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:286:32
    (get_global $assembly/index/loc2)
   )
  )
  ;;@ assembly/index.ts:287:4
  (set_local $6
   ;;@ assembly/index.ts:287:37
   (call $assembly/index/Vec#norm_in
    ;;@ assembly/index.ts:287:19
    (call $assembly/index/Vec#sub2
     ;;@ assembly/index.ts:287:17
     (get_local $5)
     ;;@ assembly/index.ts:287:24
     (i32.load offset=8
      (get_local $4)
     )
     ;;@ assembly/index.ts:287:31
     (get_global $assembly/index/loc3)
    )
   )
  )
  ;;@ assembly/index.ts:288:4
  (set_local $7
   ;;@ assembly/index.ts:288:18
   (if (result i32)
    (f64.lt
     ;;@ assembly/index.ts:288:20
     (call $assembly/index/Vec#dot
      ;;@ assembly/index.ts:288:18
      (get_local $6)
      ;;@ assembly/index.ts:288:24
      (i32.load offset=4
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:288:31
     (f64.const 0)
    )
    ;;@ assembly/index.ts:288:37
    (call $assembly/index/Vec#clone
     ;;@ assembly/index.ts:288:35
     (get_local $6)
     ;;@ assembly/index.ts:288:43
     (get_global $assembly/index/loc4)
    )
    ;;@ assembly/index.ts:288:53
    (call $assembly/index/Vec#multScalar2
     ;;@ assembly/index.ts:288:51
     (get_local $6)
     ;;@ assembly/index.ts:288:65
     (f64.const -1)
     ;;@ assembly/index.ts:288:69
     (get_global $assembly/index/loc4)
    )
   )
  )
  ;;@ assembly/index.ts:290:6
  (drop
   (call $assembly/index/Vec#setFrom
    ;;@ assembly/index.ts:290:4
    (get_local $3)
    ;;@ assembly/index.ts:290:14
    (i32.load offset=16
     (get_local $4)
    )
   )
  )
  ;;@ assembly/index.ts:292:4
  (set_local $9
   ;;@ assembly/index.ts:292:19
   (if (result f64)
    (if (result i32)
     (tee_local $8
      (f64.gt
       (f64.load
        (get_local $3)
       )
       ;;@ assembly/index.ts:292:25
       (f64.load offset=8
        (get_local $3)
       )
      )
     )
     ;;@ assembly/index.ts:292:32
     (f64.gt
      (f64.load
       (get_local $3)
      )
      ;;@ assembly/index.ts:292:38
      (f64.load offset=16
       (get_local $3)
      )
     )
     (get_local $8)
    )
    ;;@ assembly/index.ts:292:44
    (f64.load
     (get_local $3)
    )
    ;;@ assembly/index.ts:292:50
    (if (result f64)
     (f64.gt
      (f64.load offset=8
       (get_local $3)
      )
      ;;@ assembly/index.ts:292:56
      (f64.load offset=16
       (get_local $3)
      )
     )
     ;;@ assembly/index.ts:292:62
     (f64.load offset=8
      (get_local $3)
     )
     ;;@ assembly/index.ts:292:68
     (f64.load offset=16
      (get_local $3)
     )
    )
   )
  )
  ;;@ assembly/index.ts:294:4
  (if
   ;;@ assembly/index.ts:294:8
   (i32.gt_s
    (tee_local $1
     (i32.add
      ;;@ assembly/index.ts:294:10
      (get_local $1)
      (i32.const 1)
     )
    )
    ;;@ assembly/index.ts:294:18
    (i32.const 4)
   )
   ;;@ assembly/index.ts:294:21
   (if
    ;;@ assembly/index.ts:295:12
    (f64.lt
     (call $assembly/index/rand)
     ;;@ assembly/index.ts:295:21
     (get_local $9)
    )
    ;;@ assembly/index.ts:295:24
    (block
     ;;@ assembly/index.ts:296:14
     (drop
      (call $assembly/index/Vec#multScalar_in
       ;;@ assembly/index.ts:296:12
       (get_local $3)
       ;;@ assembly/index.ts:296:28
       (f64.div
        (f64.const 1)
        ;;@ assembly/index.ts:296:32
        (get_local $9)
       )
      )
     )
     ;;@ assembly/index.ts:297:14
     (drop
      (call $assembly/index/Vec#setFrom
       ;;@ assembly/index.ts:297:12
       (get_local $3)
       ;;@ assembly/index.ts:297:22
       (i32.load offset=12
        (get_local $4)
       )
      )
     )
     ;;@ assembly/index.ts:298:19
     (return
      (get_local $3)
     )
    )
    ;;@ assembly/index.ts:299:15
    (block
     ;;@ assembly/index.ts:300:14
     (drop
      (call $assembly/index/Vec#setFrom
       ;;@ assembly/index.ts:300:12
       (get_local $3)
       ;;@ assembly/index.ts:300:22
       (i32.load offset=12
        (get_local $4)
       )
      )
     )
     ;;@ assembly/index.ts:301:19
     (return
      (get_local $3)
     )
    )
   )
  )
  ;;@ assembly/index.ts:305:4
  (if
   ;;@ assembly/index.ts:305:8
   (i32.eq
    (i32.load offset=20
     (get_local $4)
    )
    ;;@ assembly/index.ts:305:20
    (i32.const 0)
   )
   ;;@ assembly/index.ts:305:33
   (block
    ;;@ assembly/index.ts:307:8
    (set_local $10
     ;;@ assembly/index.ts:307:24
     (f64.mul
      (f64.mul
       (f64.const 2)
       ;;@ assembly/index.ts:307:28
       (f64.const 3.141592653589793)
      )
      ;;@ assembly/index.ts:307:38
      (call $assembly/index/rand)
     )
    )
    ;;@ assembly/index.ts:308:8
    (set_local $11
     ;;@ assembly/index.ts:308:24
     (call $assembly/index/rand)
    )
    ;;@ assembly/index.ts:309:8
    (set_local $12
     ;;@ assembly/index.ts:309:25
     (f64.sqrt
      ;;@ assembly/index.ts:309:37
      (get_local $11)
     )
    )
    ;;@ assembly/index.ts:310:8
    (set_local $8
     ;;@ assembly/index.ts:310:21
     (get_local $7)
    )
    ;;@ assembly/index.ts:311:8
    (set_local $13
     ;;@ assembly/index.ts:311:21
     (get_global $assembly/index/loc5)
    )
    ;;@ assembly/index.ts:312:8
    (if
     ;;@ assembly/index.ts:312:12
     (f64.gt
      (f64.abs
       ;;@ assembly/index.ts:312:23
       (f64.load
        (get_local $8)
       )
      )
      ;;@ assembly/index.ts:312:30
      (f64.const 0.1)
     )
     ;;@ assembly/index.ts:312:35
     (drop
      (call $assembly/index/Vec#set
       ;;@ assembly/index.ts:313:12
       (get_local $13)
       ;;@ assembly/index.ts:313:18
       (f64.const 0)
       ;;@ assembly/index.ts:313:21
       (f64.const 1)
       ;;@ assembly/index.ts:313:24
       (f64.const 0)
      )
     )
     ;;@ assembly/index.ts:314:15
     (block
      ;;@ assembly/index.ts:315:14
      (drop
       (call $assembly/index/Vec#set
        ;;@ assembly/index.ts:315:12
        (get_local $13)
        ;;@ assembly/index.ts:315:18
        (f64.const 1)
        ;;@ assembly/index.ts:315:21
        (f64.const 1)
        ;;@ assembly/index.ts:315:24
        (f64.const 0)
       )
      )
      ;;@ assembly/index.ts:316:24
      (drop
       (call $assembly/index/Vec#norm_in
        ;;@ assembly/index.ts:316:14
        (call $assembly/index/Vec#mod_in
         ;;@ assembly/index.ts:316:12
         (get_local $13)
         ;;@ assembly/index.ts:316:21
         (get_local $8)
        )
       )
      )
     )
    )
    ;;@ assembly/index.ts:318:8
    (set_local $14
     ;;@ assembly/index.ts:318:23
     (call $assembly/index/Vec#mod2
      ;;@ assembly/index.ts:318:21
      (get_local $8)
      ;;@ assembly/index.ts:318:28
      (get_local $13)
      ;;@ assembly/index.ts:318:31
      (get_global $assembly/index/loc6)
     )
    )
    ;;@ assembly/index.ts:319:8
    (set_local $15
     ;;@ assembly/index.ts:323:13
     (call $assembly/index/Vec#norm_in
      ;;@ assembly/index.ts:322:13
      (call $assembly/index/Vec#add_in
       ;;@ assembly/index.ts:321:13
       (call $assembly/index/Vec#add_in
        ;;@ assembly/index.ts:320:13
        (call $assembly/index/Vec#multScalar_in
         ;;@ assembly/index.ts:319:21
         (get_local $13)
         ;;@ assembly/index.ts:320:27
         (f64.mul
          ;;@ assembly/index.ts:320:34
          (call $~lib/math/JSMath.cos
           ;;@ assembly/index.ts:320:38
           (get_local $10)
          )
          ;;@ assembly/index.ts:320:44
          (get_local $12)
         )
        )
        ;;@ assembly/index.ts:321:22
        (call $assembly/index/Vec#multScalar_in
         ;;@ assembly/index.ts:321:20
         (get_local $14)
         ;;@ assembly/index.ts:321:36
         (f64.mul
          ;;@ assembly/index.ts:321:43
          (call $~lib/math/JSMath.sin
           ;;@ assembly/index.ts:321:47
           (get_local $10)
          )
          ;;@ assembly/index.ts:321:53
          (get_local $12)
         )
        )
       )
       ;;@ assembly/index.ts:322:22
       (call $assembly/index/Vec#multScalar_in
        ;;@ assembly/index.ts:322:20
        (get_local $8)
        ;;@ assembly/index.ts:322:36
        (f64.sqrt
         ;;@ assembly/index.ts:322:48
         (f64.sub
          (f64.const 1)
          ;;@ assembly/index.ts:322:54
          (get_local $11)
         )
        )
       )
      )
     )
    )
    ;;@ assembly/index.ts:324:8
    (set_local $16
     ;;@ assembly/index.ts:324:25
     (call $assembly/index/Ray#set
      ;;@ assembly/index.ts:324:18
      (get_global $assembly/index/loc_r1)
      ;;@ assembly/index.ts:324:29
      (get_local $5)
      ;;@ assembly/index.ts:324:32
      (get_local $15)
     )
    )
    ;;@ assembly/index.ts:325:8
    (set_local $17
     ;;@ assembly/index.ts:325:23
     (call $assembly/index/Vec#set
      ;;@ assembly/index.ts:325:18
      (get_global $assembly/index/loc7)
      ;;@ assembly/index.ts:325:27
      (f64.const 0)
      ;;@ assembly/index.ts:325:30
      (f64.const 0)
      ;;@ assembly/index.ts:325:33
      (f64.const 0)
     )
    )
    ;;@ assembly/index.ts:326:8
    (drop
     (call $assembly/index/radiance
      ;;@ assembly/index.ts:326:17
      (get_local $16)
      ;;@ assembly/index.ts:326:22
      (get_local $1)
      ;;@ assembly/index.ts:326:29
      (get_local $2)
      ;;@ assembly/index.ts:326:33
      (get_local $17)
     )
    )
    ;;@ assembly/index.ts:327:10
    (drop
     (call $assembly/index/Vec#mul_in
      ;;@ assembly/index.ts:327:8
      (get_local $3)
      ;;@ assembly/index.ts:327:17
      (get_local $17)
     )
    )
    ;;@ assembly/index.ts:328:10
    (drop
     (call $assembly/index/Vec#add_in
      ;;@ assembly/index.ts:328:8
      (get_local $3)
      ;;@ assembly/index.ts:328:17
      (i32.load offset=12
       (get_local $4)
      )
     )
    )
    ;;@ assembly/index.ts:329:15
    (return
     (get_local $3)
    )
   )
   ;;@ assembly/index.ts:330:11
   (if
    ;;@ assembly/index.ts:330:15
    (i32.eq
     (i32.load offset=20
      (get_local $4)
     )
     ;;@ assembly/index.ts:330:27
     (i32.const 1)
    )
    ;;@ assembly/index.ts:330:40
    (block
     ;;@ assembly/index.ts:332:8
     (set_local $17
      ;;@ assembly/index.ts:332:21
      (call $assembly/index/Vec#sub2
       ;;@ assembly/index.ts:332:17
       (i32.load offset=4
        (get_local $0)
       )
       ;;@ assembly/index.ts:332:28
       (call $assembly/index/Vec#multScalar_in
        ;;@ assembly/index.ts:332:26
        (get_local $6)
        ;;@ assembly/index.ts:332:42
        (f64.mul
         (f64.const 2)
         ;;@ assembly/index.ts:332:48
         (call $assembly/index/Vec#dot
          ;;@ assembly/index.ts:332:46
          (get_local $6)
          ;;@ assembly/index.ts:332:52
          (i32.load offset=4
           (get_local $0)
          )
         )
        )
       )
       ;;@ assembly/index.ts:332:59
       (get_global $assembly/index/loc18)
      )
     )
     ;;@ assembly/index.ts:333:8
     (set_local $16
      ;;@ assembly/index.ts:333:25
      (call $assembly/index/Ray#set
       ;;@ assembly/index.ts:333:18
       (get_global $assembly/index/loc_r1)
       ;;@ assembly/index.ts:333:29
       (get_local $5)
       ;;@ assembly/index.ts:333:32
       (get_local $17)
      )
     )
     ;;@ assembly/index.ts:334:8
     (set_local $15
      ;;@ assembly/index.ts:334:23
      (call $assembly/index/Vec#set
       ;;@ assembly/index.ts:334:18
       (get_global $assembly/index/loc7)
       ;;@ assembly/index.ts:334:27
       (f64.const 0)
       ;;@ assembly/index.ts:334:30
       (f64.const 0)
       ;;@ assembly/index.ts:334:33
       (f64.const 0)
      )
     )
     ;;@ assembly/index.ts:335:8
     (drop
      (call $assembly/index/radiance
       ;;@ assembly/index.ts:335:17
       (get_local $16)
       ;;@ assembly/index.ts:335:22
       (get_local $1)
       ;;@ assembly/index.ts:335:29
       (get_local $2)
       ;;@ assembly/index.ts:335:33
       (get_local $15)
      )
     )
     ;;@ assembly/index.ts:336:10
     (drop
      (call $assembly/index/Vec#mul_in
       ;;@ assembly/index.ts:336:8
       (get_local $3)
       ;;@ assembly/index.ts:336:17
       (get_local $15)
      )
     )
     ;;@ assembly/index.ts:337:29
     (return
      ;;@ assembly/index.ts:337:17
      (call $assembly/index/Vec#add_in
       ;;@ assembly/index.ts:337:15
       (get_local $3)
       ;;@ assembly/index.ts:337:24
       (i32.load offset=12
        (get_local $4)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/index.ts:340:4
  (set_local $18
   ;;@ assembly/index.ts:340:14
   (call $assembly/index/Vec#multScalar2
    ;;@ assembly/index.ts:340:12
    (get_local $6)
    ;;@ assembly/index.ts:340:26
    (f64.mul
     (f64.const 2)
     ;;@ assembly/index.ts:340:32
     (call $assembly/index/Vec#dot
      ;;@ assembly/index.ts:340:30
      (get_local $6)
      ;;@ assembly/index.ts:340:36
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    ;;@ assembly/index.ts:340:42
    (get_global $assembly/index/loc19)
   )
  )
  ;;@ assembly/index.ts:341:8
  (drop
   (call $assembly/index/Vec#sub
    ;;@ assembly/index.ts:341:4
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/index.ts:341:12
    (get_local $18)
    ;;@ assembly/index.ts:341:15
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:342:4
  (set_local $19
   ;;@ assembly/index.ts:342:30
   (call $assembly/index/Ray#set
    ;;@ assembly/index.ts:342:23
    (get_global $assembly/index/loc_r1)
    ;;@ assembly/index.ts:342:34
    (get_local $5)
    ;;@ assembly/index.ts:342:37
    (get_local $18)
   )
  )
  ;;@ assembly/index.ts:343:4
  (set_local $20
   ;;@ assembly/index.ts:343:21
   (f64.gt
    ;;@ assembly/index.ts:343:23
    (call $assembly/index/Vec#dot
     ;;@ assembly/index.ts:343:21
     (get_local $6)
     ;;@ assembly/index.ts:343:27
     (get_local $7)
    )
    ;;@ assembly/index.ts:343:33
    (f64.const 0)
   )
  )
  (set_local $21
   ;;@ assembly/index.ts:344:20
   (f64.const 1)
  )
  (set_local $22
   ;;@ assembly/index.ts:345:13
   (f64.const 1.5)
  )
  ;;@ assembly/index.ts:346:4
  (set_local $23
   ;;@ assembly/index.ts:346:21
   (if (result f64)
    (get_local $20)
    ;;@ assembly/index.ts:346:28
    (f64.div
     (get_local $21)
     ;;@ assembly/index.ts:346:33
     (get_local $22)
    )
    ;;@ assembly/index.ts:346:38
    (f64.div
     (get_local $22)
     ;;@ assembly/index.ts:346:43
     (get_local $21)
    )
   )
  )
  ;;@ assembly/index.ts:347:4
  (set_local $24
   ;;@ assembly/index.ts:347:25
   (call $assembly/index/Vec#dot
    ;;@ assembly/index.ts:347:21
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/index.ts:347:29
    (get_local $7)
   )
  )
  ;;@ assembly/index.ts:348:4
  (set_local $25
   ;;@ assembly/index.ts:348:23
   (f64.const 0)
  )
  ;;@ assembly/index.ts:350:4
  (if
   ;;@ assembly/index.ts:350:8
   (f64.lt
    (tee_local $25
     ;;@ assembly/index.ts:350:17
     (f64.sub
      (f64.const 1)
      ;;@ assembly/index.ts:350:21
      (f64.mul
       (f64.mul
        (get_local $23)
        ;;@ assembly/index.ts:350:27
        (get_local $23)
       )
       ;;@ assembly/index.ts:350:33
       (f64.sub
        ;;@ assembly/index.ts:350:34
        (f64.const 1)
        ;;@ assembly/index.ts:350:38
        (f64.mul
         (get_local $24)
         ;;@ assembly/index.ts:350:44
         (get_local $24)
        )
       )
      )
     )
    )
    ;;@ assembly/index.ts:350:52
    (f64.const 0)
   )
   ;;@ assembly/index.ts:350:55
   (block
    ;;@ assembly/index.ts:352:8
    (set_local $15
     ;;@ assembly/index.ts:352:23
     (call $assembly/index/Vec#set
      ;;@ assembly/index.ts:352:18
      (get_global $assembly/index/loc7)
      ;;@ assembly/index.ts:352:27
      (f64.const 0)
      ;;@ assembly/index.ts:352:30
      (f64.const 0)
      ;;@ assembly/index.ts:352:33
      (f64.const 0)
     )
    )
    ;;@ assembly/index.ts:353:8
    (drop
     (call $assembly/index/radiance
      ;;@ assembly/index.ts:353:17
      (get_local $19)
      ;;@ assembly/index.ts:353:26
      (get_local $1)
      ;;@ assembly/index.ts:353:33
      (get_local $2)
      ;;@ assembly/index.ts:353:37
      (get_local $15)
     )
    )
    ;;@ assembly/index.ts:354:10
    (drop
     (call $assembly/index/Vec#mul_in
      ;;@ assembly/index.ts:354:8
      (get_local $3)
      ;;@ assembly/index.ts:354:17
      (get_local $15)
     )
    )
    ;;@ assembly/index.ts:355:29
    (return
     ;;@ assembly/index.ts:355:17
     (call $assembly/index/Vec#add_in
      ;;@ assembly/index.ts:355:15
      (get_local $3)
      ;;@ assembly/index.ts:355:24
      (i32.load offset=12
       (get_local $4)
      )
     )
    )
   )
  )
  ;;@ assembly/index.ts:358:4
  (set_local $26
   ;;@ assembly/index.ts:358:15
   (call $assembly/index/Vec#multScalar2
    ;;@ assembly/index.ts:358:13
    (get_local $6)
    ;;@ assembly/index.ts:358:27
    (f64.mul
     (if (result f64)
      ;;@ assembly/index.ts:358:28
      (get_local $20)
      ;;@ assembly/index.ts:358:35
      (f64.const 1)
      ;;@ assembly/index.ts:358:39
      (f64.const -1)
     )
     ;;@ assembly/index.ts:358:45
     (f64.add
      ;;@ assembly/index.ts:358:46
      (f64.mul
       (get_local $24)
       ;;@ assembly/index.ts:358:52
       (get_local $23)
      )
      ;;@ assembly/index.ts:358:58
      (f64.sqrt
       ;;@ assembly/index.ts:358:70
       (get_local $25)
      )
     )
    )
    ;;@ assembly/index.ts:358:79
    (get_global $assembly/index/loc8)
   )
  )
  ;;@ assembly/index.ts:359:4
  (set_local $27
   ;;@ assembly/index.ts:362:9
   (call $assembly/index/Vec#norm_in
    ;;@ assembly/index.ts:361:9
    (call $assembly/index/Vec#sub_in
     ;;@ assembly/index.ts:360:9
     (call $assembly/index/Vec#multScalar2
      ;;@ assembly/index.ts:359:20
      (i32.load offset=4
       (get_local $0)
      )
      ;;@ assembly/index.ts:360:21
      (get_local $23)
      ;;@ assembly/index.ts:360:26
      (get_global $assembly/index/loc9)
     )
     ;;@ assembly/index.ts:361:16
     (get_local $26)
    )
   )
  )
  (set_local $28
   ;;@ assembly/index.ts:363:19
   (f64.sub
    (get_local $22)
    ;;@ assembly/index.ts:363:24
    (get_local $21)
   )
  )
  (set_local $29
   ;;@ assembly/index.ts:364:12
   (f64.add
    (get_local $22)
    ;;@ assembly/index.ts:364:17
    (get_local $21)
   )
  )
  (set_local $30
   ;;@ assembly/index.ts:365:13
   (f64.div
    (f64.mul
     ;;@ assembly/index.ts:365:14
     (get_local $28)
     ;;@ assembly/index.ts:365:18
     (get_local $28)
    )
    ;;@ assembly/index.ts:365:23
    (f64.mul
     ;;@ assembly/index.ts:365:24
     (get_local $29)
     ;;@ assembly/index.ts:365:28
     (get_local $29)
    )
   )
  )
  (set_local $31
   ;;@ assembly/index.ts:366:12
   (f64.sub
    (f64.convert_s/i32
     (i32.const 1)
    )
    ;;@ assembly/index.ts:366:16
    (if (result f64)
     ;;@ assembly/index.ts:366:17
     (get_local $20)
     ;;@ assembly/index.ts:366:24
     (f64.neg
      ;;@ assembly/index.ts:366:25
      (get_local $24)
     )
     ;;@ assembly/index.ts:366:36
     (call $assembly/index/Vec#dot
      ;;@ assembly/index.ts:366:31
      (get_local $27)
      ;;@ assembly/index.ts:366:40
      (get_local $6)
     )
    )
   )
  )
  (set_local $32
   ;;@ assembly/index.ts:367:20
   (f64.add
    (get_local $30)
    ;;@ assembly/index.ts:367:25
    (f64.mul
     (f64.mul
      (f64.mul
       (f64.mul
        (f64.mul
         (f64.sub
          ;;@ assembly/index.ts:367:26
          (f64.const 1)
          ;;@ assembly/index.ts:367:30
          (get_local $30)
         )
         ;;@ assembly/index.ts:367:36
         (get_local $31)
        )
        ;;@ assembly/index.ts:367:40
        (get_local $31)
       )
       ;;@ assembly/index.ts:367:44
       (get_local $31)
      )
      ;;@ assembly/index.ts:367:48
      (get_local $31)
     )
     ;;@ assembly/index.ts:367:52
     (get_local $31)
    )
   )
  )
  (set_local $33
   ;;@ assembly/index.ts:368:13
   (f64.sub
    (f64.convert_s/i32
     (i32.const 1)
    )
    ;;@ assembly/index.ts:368:17
    (get_local $32)
   )
  )
  (set_local $34
   ;;@ assembly/index.ts:369:12
   (f64.add
    (f64.const 0.25)
    ;;@ assembly/index.ts:369:19
    (f64.mul
     (f64.const 0.5)
     ;;@ assembly/index.ts:369:25
     (get_local $32)
    )
   )
  )
  (set_local $35
   ;;@ assembly/index.ts:370:13
   (f64.div
    (get_local $32)
    ;;@ assembly/index.ts:370:18
    (get_local $34)
   )
  )
  (set_local $36
   ;;@ assembly/index.ts:371:13
   (f64.div
    (get_local $33)
    ;;@ assembly/index.ts:371:18
    (f64.sub
     ;;@ assembly/index.ts:371:19
     (f64.const 1)
     ;;@ assembly/index.ts:371:23
     (get_local $34)
    )
   )
  )
  ;;@ assembly/index.ts:372:4
  (set_local $37
   ;;@ assembly/index.ts:372:21
   (call $assembly/index/Ray#set
    ;;@ assembly/index.ts:372:14
    (get_global $assembly/index/loc_r1)
    ;;@ assembly/index.ts:372:25
    (get_local $5)
    ;;@ assembly/index.ts:372:28
    (get_local $27)
   )
  )
  ;;@ assembly/index.ts:374:4
  (set_local $38
   ;;@ assembly/index.ts:374:25
   (call $assembly/index/Vec#set
    ;;@ assembly/index.ts:374:19
    (get_global $assembly/index/loc10)
    ;;@ assembly/index.ts:374:29
    (f64.const 0)
    ;;@ assembly/index.ts:374:32
    (f64.const 0)
    ;;@ assembly/index.ts:374:35
    (f64.const 0)
   )
  )
  ;;@ assembly/index.ts:375:4
  (if
   ;;@ assembly/index.ts:375:8
   (i32.gt_s
    (get_local $1)
    ;;@ assembly/index.ts:375:16
    (i32.const 2)
   )
   ;;@ assembly/index.ts:375:19
   (if
    ;;@ assembly/index.ts:376:12
    (f64.lt
     (call $assembly/index/rand)
     ;;@ assembly/index.ts:376:21
     (get_local $34)
    )
    ;;@ assembly/index.ts:376:24
    (drop
     (call $assembly/index/Vec#multScalar_in
      ;;@ assembly/index.ts:377:12
      (call $assembly/index/radiance
       ;;@ assembly/index.ts:377:21
       (get_local $19)
       ;;@ assembly/index.ts:377:30
       (get_local $1)
       ;;@ assembly/index.ts:377:37
       (get_local $2)
       ;;@ assembly/index.ts:377:41
       (get_local $38)
      )
      ;;@ assembly/index.ts:377:60
      (get_local $35)
     )
    )
    ;;@ assembly/index.ts:378:15
    (drop
     (call $assembly/index/Vec#multScalar_in
      ;;@ assembly/index.ts:379:12
      (call $assembly/index/radiance
       ;;@ assembly/index.ts:379:21
       (get_local $37)
       ;;@ assembly/index.ts:379:26
       (get_local $1)
       ;;@ assembly/index.ts:379:33
       (get_local $2)
       ;;@ assembly/index.ts:379:37
       (get_local $38)
      )
      ;;@ assembly/index.ts:379:56
      (get_local $36)
     )
    )
   )
   ;;@ assembly/index.ts:381:11
   (block
    ;;@ assembly/index.ts:382:40
    (drop
     (call $assembly/index/Vec#multScalar_in
      ;;@ assembly/index.ts:382:8
      (call $assembly/index/radiance
       ;;@ assembly/index.ts:382:17
       (get_local $37)
       ;;@ assembly/index.ts:382:22
       (get_local $1)
       ;;@ assembly/index.ts:382:29
       (get_local $2)
       ;;@ assembly/index.ts:382:33
       (get_global $assembly/index/loc20)
      )
      ;;@ assembly/index.ts:382:54
      (get_local $33)
     )
    )
    ;;@ assembly/index.ts:385:13
    (drop
     (call $assembly/index/Vec#add_in
      ;;@ assembly/index.ts:384:13
      (call $assembly/index/Vec#multScalar_in
       ;;@ assembly/index.ts:383:8
       (call $assembly/index/radiance
        ;;@ assembly/index.ts:383:17
        (get_local $19)
        ;;@ assembly/index.ts:383:26
        (get_local $1)
        ;;@ assembly/index.ts:383:33
        (get_local $2)
        ;;@ assembly/index.ts:383:37
        (get_local $38)
       )
       ;;@ assembly/index.ts:384:27
       (get_local $32)
      )
      ;;@ assembly/index.ts:385:20
      (get_global $assembly/index/loc20)
     )
    )
   )
  )
  ;;@ assembly/index.ts:387:6
  (drop
   (call $assembly/index/Vec#mul_in
    ;;@ assembly/index.ts:387:4
    (get_local $3)
    ;;@ assembly/index.ts:387:13
    (get_local $38)
   )
  )
  ;;@ assembly/index.ts:388:25
  (call $assembly/index/Vec#add_in
   ;;@ assembly/index.ts:388:11
   (get_local $3)
   ;;@ assembly/index.ts:388:20
   (i32.load offset=12
    (get_local $4)
   )
  )
 )
 (func $assembly/index/clamp (; 67 ;) (type $FF) (param $0 f64) (result f64)
  ;;@ assembly/index.ts:228:43
  (if (result f64)
   ;;@ assembly/index.ts:228:11
   (f64.lt
    (get_local $0)
    ;;@ assembly/index.ts:228:15
    (f64.const 0)
   )
   ;;@ assembly/index.ts:228:21
   (f64.const 0)
   ;;@ assembly/index.ts:228:27
   (if (result f64)
    (f64.gt
     (get_local $0)
     ;;@ assembly/index.ts:228:31
     (f64.const 1)
    )
    ;;@ assembly/index.ts:228:37
    (f64.const 1)
    ;;@ assembly/index.ts:228:43
    (get_local $0)
   )
  )
 )
 (func $~lib/array/Array<Vec>#__get (; 68 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:69:4
  (set_local $2
   ;;@ ~lib/array.ts:69:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:72:23
  (if (result i32)
   ;;@ ~lib/array.ts:70:11
   (i32.lt_u
    (get_local $1)
    ;;@ ~lib/array.ts:70:24
    (i32.shr_u
     ;;@ ~lib/array.ts:70:30
     (i32.load
      (get_local $2)
     )
     ;;@ ~lib/array.ts:70:52
     (i32.const 2)
    )
   )
   ;;@ ~lib/array.ts:71:8
   (block $~lib/internal/arraybuffer/loadUnsafe<Vec,Vec>|inlined.0 (result i32)
    ;;@ ~lib/internal/arraybuffer.ts:64:91
    (i32.load offset=8
     ;;@ ~lib/internal/arraybuffer.ts:64:20
     (i32.add
      (get_local $2)
      ;;@ ~lib/internal/arraybuffer.ts:64:48
      (i32.shl
       ;;@ ~lib/internal/arraybuffer.ts:64:49
       (get_local $1)
       ;;@ ~lib/internal/arraybuffer.ts:64:65
       (i32.const 2)
      )
     )
    )
   )
   ;;@ ~lib/array.ts:72:8
   (unreachable)
  )
 )
 (func $assembly/index/render (; 69 ;) (type $iiiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  ;;@ assembly/index.ts:426:4
  (set_local $6
   ;;@ assembly/index.ts:426:13
   (i32.wrap/i64
    (get_global $assembly/index/seed)
   )
  )
  ;;@ assembly/index.ts:428:4
  (block $break|0
   ;;@ assembly/index.ts:428:9
   (set_local $7
    ;;@ assembly/index.ts:428:22
    (get_local $3)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:428:26
      (i32.lt_s
       (get_local $7)
       ;;@ assembly/index.ts:428:30
       (i32.add
        (get_local $3)
        ;;@ assembly/index.ts:428:35
        (get_local $5)
       )
      )
     )
    )
    ;;@ assembly/index.ts:428:43
    (block $break|1
     ;;@ assembly/index.ts:431:13
     (set_local $8
      ;;@ assembly/index.ts:431:26
      (get_local $2)
     )
     (loop $repeat|1
      (br_if $break|1
       (i32.eqz
        ;;@ assembly/index.ts:431:30
        (i32.lt_s
         (get_local $8)
         ;;@ assembly/index.ts:431:34
         (i32.add
          (get_local $2)
          ;;@ assembly/index.ts:431:39
          (get_local $4)
         )
        )
       )
      )
      ;;@ assembly/index.ts:431:47
      (block $break|2
       ;;@ assembly/index.ts:433:17
       (set_local $9
        ;;@ assembly/index.ts:433:31
        (i32.const 0)
       )
       (loop $repeat|2
        (br_if $break|2
         (i32.eqz
          ;;@ assembly/index.ts:433:34
          (i32.lt_s
           (get_local $9)
           ;;@ assembly/index.ts:433:39
           (i32.const 2)
          )
         )
        )
        ;;@ assembly/index.ts:433:48
        (block
         ;;@ assembly/index.ts:435:16
         (set_local $10
          ;;@ assembly/index.ts:435:24
          (i32.add
           (i32.mul
            (get_local $7)
            ;;@ assembly/index.ts:435:28
            (i32.load
             (get_global $assembly/index/params)
            )
           )
           ;;@ assembly/index.ts:435:43
           (get_local $8)
          )
         )
         ;;@ assembly/index.ts:437:16
         (block $break|3
          ;;@ assembly/index.ts:437:21
          (set_local $11
           ;;@ assembly/index.ts:437:35
           (i32.const 0)
          )
          (loop $repeat|3
           (br_if $break|3
            (i32.eqz
             ;;@ assembly/index.ts:437:38
             (i32.lt_s
              (get_local $11)
              ;;@ assembly/index.ts:437:43
              (i32.const 2)
             )
            )
           )
           ;;@ assembly/index.ts:437:52
           (block
            ;;@ assembly/index.ts:438:27
            (drop
             (call $assembly/index/Vec#set
              ;;@ assembly/index.ts:438:20
              (get_global $assembly/index/result)
              ;;@ assembly/index.ts:438:31
              (f64.const 0)
              ;;@ assembly/index.ts:438:34
              (f64.const 0)
              ;;@ assembly/index.ts:438:37
              (f64.const 0)
             )
            )
            ;;@ assembly/index.ts:439:20
            (block $break|4
             ;;@ assembly/index.ts:439:25
             (set_local $12
              ;;@ assembly/index.ts:439:38
              (i32.const 0)
             )
             (loop $repeat|4
              (br_if $break|4
               (i32.eqz
                ;;@ assembly/index.ts:439:41
                (i32.lt_s
                 (get_local $12)
                 ;;@ assembly/index.ts:439:45
                 (get_local $1)
                )
               )
              )
              ;;@ assembly/index.ts:439:57
              (block
               (set_local $13
                ;;@ assembly/index.ts:440:40
                (f64.mul
                 (f64.const 2)
                 ;;@ assembly/index.ts:440:46
                 (call $assembly/index/rand)
                )
               )
               (set_local $14
                ;;@ assembly/index.ts:441:33
                (if (result f64)
                 (f64.lt
                  (get_local $13)
                  ;;@ assembly/index.ts:441:38
                  (f64.const 1)
                 )
                 ;;@ assembly/index.ts:441:44
                 (f64.sub
                  (f64.sqrt
                   ;;@ assembly/index.ts:441:56
                   (get_local $13)
                  )
                  ;;@ assembly/index.ts:441:62
                  (f64.const 1)
                 )
                 ;;@ assembly/index.ts:441:68
                 (f64.sub
                  (f64.const 1)
                  ;;@ assembly/index.ts:441:74
                  (f64.sqrt
                   ;;@ assembly/index.ts:441:86
                   (f64.sub
                    (f64.const 2)
                    ;;@ assembly/index.ts:441:92
                    (get_local $13)
                   )
                  )
                 )
                )
               )
               (set_local $15
                ;;@ assembly/index.ts:443:40
                (f64.mul
                 (f64.const 2)
                 ;;@ assembly/index.ts:443:46
                 (call $assembly/index/rand)
                )
               )
               (set_local $16
                ;;@ assembly/index.ts:444:33
                (if (result f64)
                 (f64.lt
                  (get_local $15)
                  ;;@ assembly/index.ts:444:38
                  (f64.const 1)
                 )
                 ;;@ assembly/index.ts:444:44
                 (f64.sub
                  (f64.sqrt
                   ;;@ assembly/index.ts:444:56
                   (get_local $15)
                  )
                  ;;@ assembly/index.ts:444:62
                  (f64.const 1)
                 )
                 ;;@ assembly/index.ts:444:68
                 (f64.sub
                  (f64.const 1)
                  ;;@ assembly/index.ts:444:74
                  (f64.sqrt
                   ;;@ assembly/index.ts:444:86
                   (f64.sub
                    (f64.const 2)
                    ;;@ assembly/index.ts:444:92
                    (get_local $15)
                   )
                  )
                 )
                )
               )
               ;;@ assembly/index.ts:446:24
               (set_local $17
                ;;@ assembly/index.ts:446:36
                (call $assembly/index/Vec#multScalar2
                 ;;@ assembly/index.ts:446:33
                 (get_global $assembly/index/cx)
                 ;;@ assembly/index.ts:446:48
                 (f64.sub
                  ;;@ assembly/index.ts:446:56
                  (f64.div
                   (f64.add
                    ;;@ assembly/index.ts:446:57
                    (f64.div
                     (f64.add
                      ;;@ assembly/index.ts:446:58
                      (f64.add
                       (f64.convert_s/i32
                        (get_local $11)
                       )
                       ;;@ assembly/index.ts:446:63
                       (f64.const 0.5)
                      )
                      ;;@ assembly/index.ts:446:69
                      (get_local $14)
                     )
                     ;;@ assembly/index.ts:446:75
                     (f64.const 2)
                    )
                    (f64.convert_s/i32
                     ;;@ assembly/index.ts:446:81
                     (get_local $8)
                    )
                   )
                   (f64.convert_s/i32
                    ;;@ assembly/index.ts:446:86
                    (i32.load
                     (get_global $assembly/index/params)
                    )
                   )
                  )
                  ;;@ assembly/index.ts:446:101
                  (f64.const 0.5)
                 )
                 ;;@ assembly/index.ts:446:107
                 (get_global $assembly/index/loc11)
                )
               )
               ;;@ assembly/index.ts:447:24
               (set_local $18
                ;;@ assembly/index.ts:447:36
                (call $assembly/index/Vec#multScalar2
                 ;;@ assembly/index.ts:447:33
                 (get_global $assembly/index/cy)
                 ;;@ assembly/index.ts:447:48
                 (f64.sub
                  ;;@ assembly/index.ts:447:56
                  (f64.div
                   (f64.add
                    ;;@ assembly/index.ts:447:57
                    (f64.div
                     (f64.add
                      ;;@ assembly/index.ts:447:58
                      (f64.add
                       (f64.convert_s/i32
                        (get_local $9)
                       )
                       ;;@ assembly/index.ts:447:63
                       (f64.const 0.5)
                      )
                      ;;@ assembly/index.ts:447:69
                      (get_local $16)
                     )
                     ;;@ assembly/index.ts:447:75
                     (f64.const 2)
                    )
                    (f64.convert_s/i32
                     ;;@ assembly/index.ts:447:81
                     (get_local $7)
                    )
                   )
                   (f64.convert_s/i32
                    ;;@ assembly/index.ts:447:86
                    (i32.load offset=4
                     (get_global $assembly/index/params)
                    )
                   )
                  )
                  ;;@ assembly/index.ts:447:102
                  (f64.const 0.5)
                 )
                 ;;@ assembly/index.ts:447:108
                 (get_global $assembly/index/loc12)
                )
               )
               ;;@ assembly/index.ts:448:27
               (drop
                (call $assembly/index/Vec#add_in
                 ;;@ assembly/index.ts:448:24
                 (get_local $17)
                 ;;@ assembly/index.ts:448:34
                 (get_local $18)
                )
               )
               ;;@ assembly/index.ts:449:27
               (drop
                (call $assembly/index/Vec#add_in
                 ;;@ assembly/index.ts:449:24
                 (get_local $17)
                 ;;@ assembly/index.ts:449:34
                 (i32.load offset=4
                  (get_global $assembly/index/cam)
                 )
                )
               )
               ;;@ assembly/index.ts:450:24
               (set_local $19
                ;;@ assembly/index.ts:450:36
                (call $assembly/index/Vec#multScalar2
                 ;;@ assembly/index.ts:450:33
                 (get_local $17)
                 ;;@ assembly/index.ts:450:48
                 (f64.const 140)
                 ;;@ assembly/index.ts:450:53
                 (get_global $assembly/index/loc13)
                )
               )
               ;;@ assembly/index.ts:451:27
               (drop
                (call $assembly/index/Vec#add_in
                 ;;@ assembly/index.ts:451:24
                 (get_local $19)
                 ;;@ assembly/index.ts:451:34
                 (i32.load
                  (get_global $assembly/index/cam)
                 )
                )
               )
               ;;@ assembly/index.ts:452:24
               (set_local $20
                ;;@ assembly/index.ts:452:36
                (call $assembly/index/Vec#norm_in
                 ;;@ assembly/index.ts:452:33
                 (get_local $17)
                )
               )
               ;;@ assembly/index.ts:453:24
               (set_local $21
                ;;@ assembly/index.ts:453:41
                (call $assembly/index/Ray#set
                 ;;@ assembly/index.ts:453:34
                 (get_global $assembly/index/loc_r2)
                 ;;@ assembly/index.ts:453:45
                 (get_local $19)
                 ;;@ assembly/index.ts:453:49
                 (get_local $20)
                )
               )
               ;;@ assembly/index.ts:454:24
               (set_local $22
                ;;@ assembly/index.ts:454:34
                (call $assembly/index/radiance
                 ;;@ assembly/index.ts:454:43
                 (get_local $21)
                 ;;@ assembly/index.ts:454:48
                 (i32.const 0)
                 ;;@ assembly/index.ts:454:51
                 (get_local $6)
                 ;;@ assembly/index.ts:454:55
                 (get_global $assembly/index/loc15)
                )
               )
               ;;@ assembly/index.ts:455:28
               (drop
                (call $assembly/index/Vec#multScalar_in
                 ;;@ assembly/index.ts:455:24
                 (get_local $22)
                 ;;@ assembly/index.ts:455:42
                 (f64.div
                  (f64.const 1)
                  ;;@ assembly/index.ts:455:48
                  (f64.convert_s/i32
                   (get_local $1)
                  )
                 )
                )
               )
               ;;@ assembly/index.ts:456:31
               (drop
                (call $assembly/index/Vec#add_in
                 ;;@ assembly/index.ts:456:24
                 (get_global $assembly/index/result)
                 ;;@ assembly/index.ts:456:38
                 (get_local $22)
                )
               )
              )
              ;;@ assembly/index.ts:439:52
              (set_local $12
               (i32.add
                (get_local $12)
                (i32.const 1)
               )
              )
              (br $repeat|4)
             )
            )
            ;;@ assembly/index.ts:460:20
            (set_local $16
             ;;@ assembly/index.ts:460:29
             (call $assembly/index/clamp
              ;;@ assembly/index.ts:460:35
              (f64.load
               (get_global $assembly/index/result)
              )
             )
            )
            ;;@ assembly/index.ts:461:20
            (set_local $15
             ;;@ assembly/index.ts:461:29
             (call $assembly/index/clamp
              ;;@ assembly/index.ts:461:35
              (f64.load offset=8
               (get_global $assembly/index/result)
              )
             )
            )
            ;;@ assembly/index.ts:462:20
            (set_local $14
             ;;@ assembly/index.ts:462:29
             (call $assembly/index/clamp
              ;;@ assembly/index.ts:462:35
              (f64.load offset=16
               (get_global $assembly/index/result)
              )
             )
            )
            ;;@ assembly/index.ts:463:20
            (set_local $12
             ;;@ assembly/index.ts:463:35
             (call $assembly/index/Vec#set
              ;;@ assembly/index.ts:463:29
              (get_global $assembly/index/loc16)
              ;;@ assembly/index.ts:463:39
              (get_local $16)
              ;;@ assembly/index.ts:463:43
              (get_local $15)
              ;;@ assembly/index.ts:463:47
              (get_local $14)
             )
            )
            ;;@ assembly/index.ts:464:23
            (drop
             (call $assembly/index/Vec#multScalar_in
              ;;@ assembly/index.ts:464:20
              (get_local $12)
              ;;@ assembly/index.ts:464:37
              (f64.const 0.5)
             )
            )
            ;;@ assembly/index.ts:466:20
            (set_local $22
             ;;@ assembly/index.ts:466:29
             (call $~lib/array/Array<Vec>#__get
              (get_local $0)
              ;;@ assembly/index.ts:466:31
              (get_local $10)
             )
            )
            ;;@ assembly/index.ts:467:23
            (drop
             (call $assembly/index/Vec#add_in
              ;;@ assembly/index.ts:467:20
              (get_local $22)
              ;;@ assembly/index.ts:467:30
              (get_local $12)
             )
            )
           )
           ;;@ assembly/index.ts:437:46
           (set_local $11
            (i32.add
             (get_local $11)
             (i32.const 1)
            )
           )
           (br $repeat|3)
          )
         )
        )
        ;;@ assembly/index.ts:433:42
        (set_local $9
         (i32.add
          (get_local $9)
          (i32.const 1)
         )
        )
        (br $repeat|2)
       )
      )
      ;;@ assembly/index.ts:431:42
      (set_local $8
       (i32.add
        (get_local $8)
        (i32.const 1)
       )
      )
      (br $repeat|1)
     )
    )
    ;;@ assembly/index.ts:428:38
    (set_local $7
     (i32.add
      (get_local $7)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/index.ts:473:11
  (get_local $0)
 )
 (func $start (; 70 ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   ;;@ ~lib/allocator/arena.ts:12:25
   (i32.and
    (i32.add
     ;;@ ~lib/allocator/arena.ts:12:26
     (get_global $HEAP_BASE)
     ;;@ ~lib/allocator/arena.ts:12:38
     (i32.const 7)
    )
    ;;@ ~lib/allocator/arena.ts:12:49
    (i32.xor
     ;;@ ~lib/allocator/arena.ts:12:50
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   ;;@ ~lib/allocator/arena.ts:13:20
   (get_global $~lib/allocator/arena/startOffset)
  )
  (nop)
  (nop)
  (set_global $assembly/index/seed
   ;;@ assembly/index.ts:8:11
   (i64.reinterpret/f64
    ;;@ assembly/index.ts:8:35
    (call $~lib/math/JSMath.random)
   )
  )
  ;;@ assembly/index.ts:9:11
  (call $~lib/math/NativeMath.seedRandom
   ;;@ assembly/index.ts:9:22
   (get_global $assembly/index/seed)
  )
  (set_global $assembly/index/loc17
   ;;@ assembly/index.ts:180:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/spheres
   ;;@ assembly/index.ts:210:24
   (block (result i32)
    (set_local $0
     (call $~lib/array/Array<Sphere>#constructor
      (i32.const 0)
      (i32.const 9)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $0)
     (i32.const 0)
     ;;@ assembly/index.ts:212:4
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:212:15
      (f64.const 1e5)
      ;;@ assembly/index.ts:212:20
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 100001)
       ;;@ assembly/index.ts:212:37
       (f64.const 40.8)
       ;;@ assembly/index.ts:212:43
       (f64.const 81.6)
      )
      ;;@ assembly/index.ts:212:50
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:212:61
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:212:69
       (f64.const 0.75)
       ;;@ assembly/index.ts:212:75
       (f64.const 0)
       ;;@ assembly/index.ts:212:78
       (f64.const 0)
      )
      ;;@ assembly/index.ts:212:82
      (i32.const 0)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $0)
     (i32.const 1)
     ;;@ assembly/index.ts:213:4
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:213:15
      (f64.const 1e5)
      ;;@ assembly/index.ts:213:20
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:213:28
       (f64.add
        (f64.const -1e5)
        ;;@ assembly/index.ts:213:35
        (f64.const 99)
       )
       ;;@ assembly/index.ts:213:39
       (f64.const 40.8)
       ;;@ assembly/index.ts:213:45
       (f64.const 81.6)
      )
      ;;@ assembly/index.ts:213:52
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:213:63
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:213:71
       (f64.const 0)
       ;;@ assembly/index.ts:213:74
       (f64.const 0.75)
       ;;@ assembly/index.ts:213:80
       (f64.const 0)
      )
      ;;@ assembly/index.ts:213:84
      (i32.const 0)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $0)
     (i32.const 2)
     ;;@ assembly/index.ts:214:4
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:214:15
      (f64.const 1e5)
      ;;@ assembly/index.ts:214:20
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:214:28
       (f64.const 50)
       ;;@ assembly/index.ts:214:32
       (f64.const 40.8)
       ;;@ assembly/index.ts:214:38
       (f64.const 1e5)
      )
      ;;@ assembly/index.ts:214:44
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:214:55
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:214:63
       (f64.const 0.75)
       ;;@ assembly/index.ts:214:69
       (f64.const 0.75)
       ;;@ assembly/index.ts:214:75
       (f64.const 0.75)
      )
      ;;@ assembly/index.ts:214:82
      (i32.const 0)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $0)
     (i32.const 3)
     ;;@ assembly/index.ts:215:4
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:215:15
      (f64.const 1e5)
      ;;@ assembly/index.ts:215:20
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:215:28
       (f64.const 50)
       ;;@ assembly/index.ts:215:32
       (f64.const 40.8)
       ;;@ assembly/index.ts:215:38
       (f64.add
        (f64.const -1e5)
        ;;@ assembly/index.ts:215:45
        (f64.const 170)
       )
      )
      ;;@ assembly/index.ts:215:51
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:215:62
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:215:73
      (i32.const 0)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $0)
     (i32.const 4)
     ;;@ assembly/index.ts:216:4
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:216:15
      (f64.const 1e5)
      ;;@ assembly/index.ts:216:20
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:216:28
       (f64.const 50)
       ;;@ assembly/index.ts:216:32
       (f64.const 1e5)
       ;;@ assembly/index.ts:216:37
       (f64.const 81.6)
      )
      ;;@ assembly/index.ts:216:44
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:216:55
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:216:63
       (f64.const 0.75)
       ;;@ assembly/index.ts:216:69
       (f64.const 0.75)
       ;;@ assembly/index.ts:216:75
       (f64.const 0.75)
      )
      ;;@ assembly/index.ts:216:82
      (i32.const 0)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $0)
     (i32.const 5)
     ;;@ assembly/index.ts:217:4
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:217:15
      (f64.const 1e5)
      ;;@ assembly/index.ts:217:20
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:217:28
       (f64.const 50)
       ;;@ assembly/index.ts:217:32
       (f64.add
        (f64.const -1e5)
        ;;@ assembly/index.ts:217:39
        (f64.const 81.6)
       )
       ;;@ assembly/index.ts:217:45
       (f64.const 81.6)
      )
      ;;@ assembly/index.ts:217:52
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:217:63
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:217:71
       (f64.const 0.75)
       ;;@ assembly/index.ts:217:77
       (f64.const 0.75)
       ;;@ assembly/index.ts:217:83
       (f64.const 0.75)
      )
      ;;@ assembly/index.ts:217:90
      (i32.const 0)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $0)
     (i32.const 6)
     ;;@ assembly/index.ts:218:4
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:218:15
      (f64.const 16.5)
      ;;@ assembly/index.ts:218:21
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:218:29
       (f64.const 27)
       ;;@ assembly/index.ts:218:33
       (f64.const 16.5)
       ;;@ assembly/index.ts:218:39
       (f64.const 47)
      )
      ;;@ assembly/index.ts:218:44
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:218:55
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:218:63
       (f64.const 0.999)
       ;;@ assembly/index.ts:218:70
       (f64.const 0.999)
       ;;@ assembly/index.ts:218:77
       (f64.const 0.999)
      )
      ;;@ assembly/index.ts:218:85
      (i32.const 1)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $0)
     (i32.const 7)
     ;;@ assembly/index.ts:219:4
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:219:15
      (f64.const 16.5)
      ;;@ assembly/index.ts:219:21
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:219:29
       (f64.const 73)
       ;;@ assembly/index.ts:219:33
       (f64.const 16.5)
       ;;@ assembly/index.ts:219:39
       (f64.const 78)
      )
      ;;@ assembly/index.ts:219:44
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:219:55
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:219:63
       (f64.const 0.999)
       ;;@ assembly/index.ts:219:70
       (f64.const 0.999)
       ;;@ assembly/index.ts:219:77
       (f64.const 0.999)
      )
      ;;@ assembly/index.ts:219:85
      (i32.const 2)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $0)
     (i32.const 8)
     ;;@ assembly/index.ts:220:4
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:220:15
      (f64.const 600)
      ;;@ assembly/index.ts:220:20
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:220:28
       (f64.const 50)
       ;;@ assembly/index.ts:220:32
       (f64.sub
        (f64.const 681.6)
        ;;@ assembly/index.ts:220:40
        (f64.const 0.27)
       )
       ;;@ assembly/index.ts:220:46
       (f64.const 81.6)
      )
      ;;@ assembly/index.ts:220:53
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:220:61
       (f64.const 150)
       ;;@ assembly/index.ts:220:66
       (f64.const 50)
       ;;@ assembly/index.ts:220:70
       (f64.const 50)
      )
      ;;@ assembly/index.ts:220:75
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:220:86
      (i32.const 0)
     )
    )
    (get_local $0)
   )
  )
  (set_global $assembly/index/hit
   ;;@ assembly/index.ts:257:15
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $assembly/index/Hit#constructor|trampoline
     (i32.const 0)
     (i32.const 0)
     (f64.const 0)
     (i32.const 0)
    )
   )
  )
  (set_global $assembly/index/_f
   ;;@ assembly/index.ts:258:9
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc1
   ;;@ assembly/index.ts:259:11
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc2
   ;;@ assembly/index.ts:260:11
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc3
   ;;@ assembly/index.ts:261:11
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc4
   ;;@ assembly/index.ts:262:11
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc5
   ;;@ assembly/index.ts:263:11
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc6
   ;;@ assembly/index.ts:264:11
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc7
   ;;@ assembly/index.ts:265:11
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc8
   ;;@ assembly/index.ts:266:11
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc9
   ;;@ assembly/index.ts:267:11
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc10
   ;;@ assembly/index.ts:268:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc18
   ;;@ assembly/index.ts:269:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc19
   ;;@ assembly/index.ts:270:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc20
   ;;@ assembly/index.ts:271:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc_r1
   ;;@ assembly/index.ts:273:13
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $assembly/index/Ray#constructor|trampoline
     (i32.const 0)
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_global $assembly/index/loc_r2
   ;;@ assembly/index.ts:274:13
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $assembly/index/Ray#constructor|trampoline
     (i32.const 0)
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (set_global $assembly/index/black
   ;;@ assembly/index.ts:275:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:275:20
    (f64.const 0)
    ;;@ assembly/index.ts:275:23
    (f64.const 0)
    ;;@ assembly/index.ts:275:26
    (f64.const 0)
   )
  )
  (set_global $assembly/index/red
   ;;@ assembly/index.ts:276:10
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:276:18
    (f64.const 1)
    ;;@ assembly/index.ts:276:21
    (f64.const 0)
    ;;@ assembly/index.ts:276:24
    (f64.const 0)
   )
  )
  (set_global $assembly/index/params
   ;;@ assembly/index.ts:394:13
   (call $assembly/index/Params#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:392:36
    (i32.const 0)
    ;;@ assembly/index.ts:392:60
    (i32.const 0)
   )
  )
  (set_global $assembly/index/dir
   ;;@ assembly/index.ts:396:10
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:396:18
    (f64.const 0)
    ;;@ assembly/index.ts:396:21
    (f64.const -0.042612)
    ;;@ assembly/index.ts:396:32
    (f64.const -1)
   )
  )
  (set_global $assembly/index/pos
   ;;@ assembly/index.ts:397:10
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:397:18
    (f64.const 50)
    ;;@ assembly/index.ts:397:22
    (f64.const 52)
    ;;@ assembly/index.ts:397:26
    (f64.const 295.6)
   )
  )
  (set_global $assembly/index/cam
   ;;@ assembly/index.ts:398:15
   (call $assembly/index/Ray#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:398:23
    (get_global $assembly/index/pos)
    ;;@ assembly/index.ts:398:32
    (call $assembly/index/Vec#norm_in
     ;;@ assembly/index.ts:398:28
     (get_global $assembly/index/dir)
    )
   )
  )
  (set_global $assembly/index/cx
   ;;@ assembly/index.ts:399:14
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/cy
   ;;@ assembly/index.ts:400:14
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc11
   ;;@ assembly/index.ts:401:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc12
   ;;@ assembly/index.ts:402:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc13
   ;;@ assembly/index.ts:403:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc14
   ;;@ assembly/index.ts:404:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc15
   ;;@ assembly/index.ts:405:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/loc16
   ;;@ assembly/index.ts:406:12
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  (set_global $assembly/index/result
   ;;@ assembly/index.ts:407:13
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
 )
)
