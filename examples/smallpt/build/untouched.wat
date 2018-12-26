(module
 (type $i (func (result i32)))
 (type $iv (func (param i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iFFFi (func (param i32 f64 f64 f64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $iFii (func (param i32 f64 i32) (result i32)))
 (type $iF (func (param i32) (result f64)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iFiiiii (func (param i32 f64 i32 i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiFii (func (param i32 i32 f64 i32) (result i32)))
 (type $iiiiiiv (func (param i32 i32 i32 i32 i32 i32)))
 (type $F (func (result f64)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $iiiF (func (param i32 i32 i32) (result f64)))
 (type $iiv (func (param i32 i32)))
 (type $FF (func (param f64) (result f64)))
 (type $v (func))
 (type $iFv (func (param i32 f64)))
 (import "env" "memory" (memory $0 (shared 32767 32767)))
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (table 1 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (import "JSMath" "cos" (func $~lib/math/JSMath.cos (param f64) (result f64)))
 (import "JSMath" "sin" (func $~lib/math/JSMath.sin (param f64) (result f64)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/atomic/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/atomic/offset_ptr (mut i32) (i32.const 0))
 (global $assembly/index/context (mut i32) (i32.const 0))
 (global $assembly/index/Refl_t.DIFF (mut i32) (i32.const 0))
 (global $assembly/index/Refl_t.SPEC (mut i32) (i32.const 1))
 (global $assembly/index/Refl_t.REFR (mut i32) (i32.const 2))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~argc (mut i32) (i32.const 0))
 (global $Infinity f64 (f64.const inf))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $HEAP_BASE i32 (i32.const 100))
 (export "memory" (memory $0))
 (export "GET_MEMORY_TOP" (func $assembly/index/GET_MEMORY_TOP))
 (export "SET_MEMORY_TOP" (func $assembly/index/SET_MEMORY_TOP))
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
 (export "getPixels" (func $assembly/index/getPixels))
 (export "setPixels" (func $assembly/index/setPixels))
 (export "setContext" (func $assembly/index/setContext))
 (export "getContext" (func $assembly/index/getContext))
 (export "createContext" (func $assembly/index/createContext))
 (export "createLocals" (func $assembly/index/createLocals))
 (export "render" (func $assembly/index/render))
 (start $start)
 (func $~lib/allocator/atomic/allocator_get_offset (; 4 ;) (type $i) (result i32)
  ;;@ ~lib/allocator/atomic.ts:8:38
  (i32.atomic.load
   ;;@ ~lib/allocator/atomic.ts:8:28
   (get_global $~lib/allocator/atomic/offset_ptr)
  )
 )
 (func $assembly/index/GET_MEMORY_TOP (; 5 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:15:32
  (call $~lib/allocator/atomic/allocator_get_offset)
 )
 (func $~lib/allocator/atomic/allocator_set_offset (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ ~lib/allocator/atomic.ts:12:65
  (i32.atomic.rmw.cmpxchg
   ;;@ ~lib/allocator/atomic.ts:12:31
   (get_global $~lib/allocator/atomic/offset_ptr)
   ;;@ ~lib/allocator/atomic.ts:12:43
   (get_local $0)
   ;;@ ~lib/allocator/atomic.ts:12:55
   (get_local $1)
  )
 )
 (func $assembly/index/SET_MEMORY_TOP (; 7 ;) (type $iv) (param $0 i32)
  ;;@ assembly/index.ts:19:4
  (drop
   (call $~lib/allocator/atomic/allocator_set_offset
    ;;@ assembly/index.ts:19:25
    (call $assembly/index/GET_MEMORY_TOP)
    ;;@ assembly/index.ts:19:43
    (get_local $0)
   )
  )
 )
 (func $~lib/allocator/atomic/__memory_allocate (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ ~lib/allocator/atomic.ts:16:2
  (if
   ;;@ ~lib/allocator/atomic.ts:16:6
   (get_local $0)
   ;;@ ~lib/allocator/atomic.ts:16:12
   (block
    ;;@ ~lib/allocator/atomic.ts:17:4
    (if
     ;;@ ~lib/allocator/atomic.ts:17:8
     (i32.gt_u
      (get_local $0)
      ;;@ ~lib/allocator/atomic.ts:17:15
      (get_global $~lib/internal/allocator/MAX_SIZE_32)
     )
     ;;@ ~lib/allocator/atomic.ts:17:28
     (unreachable)
    )
    ;;@ ~lib/allocator/atomic.ts:20:4
    (block $break|0
     (loop $continue|0
      ;;@ ~lib/allocator/atomic.ts:20:7
      (block
       ;;@ ~lib/allocator/atomic.ts:21:6
       (set_local $1
        ;;@ ~lib/allocator/atomic.ts:21:22
        (call $~lib/allocator/atomic/allocator_get_offset)
       )
       ;;@ ~lib/allocator/atomic.ts:22:6
       (set_local $2
        ;;@ ~lib/allocator/atomic.ts:22:12
        (i32.and
         (i32.add
          ;;@ ~lib/allocator/atomic.ts:22:13
          (i32.add
           (get_local $1)
           ;;@ ~lib/allocator/atomic.ts:22:29
           (get_local $0)
          )
          ;;@ ~lib/allocator/atomic.ts:22:36
          (get_global $~lib/internal/allocator/AL_MASK)
         )
         ;;@ ~lib/allocator/atomic.ts:22:47
         (i32.xor
          ;;@ ~lib/allocator/atomic.ts:22:48
          (get_global $~lib/internal/allocator/AL_MASK)
          (i32.const -1)
         )
        )
       )
       ;;@ ~lib/allocator/atomic.ts:23:6
       (set_local $3
        ;;@ ~lib/allocator/atomic.ts:23:31
        (current_memory)
       )
       ;;@ ~lib/allocator/atomic.ts:24:6
       (if
        ;;@ ~lib/allocator/atomic.ts:24:10
        (i32.gt_u
         (get_local $2)
         ;;@ ~lib/allocator/atomic.ts:24:16
         (i32.shl
          (get_local $3)
          ;;@ ~lib/allocator/atomic.ts:24:40
          (i32.const 16)
         )
        )
        ;;@ ~lib/allocator/atomic.ts:24:44
        (block
         ;;@ ~lib/allocator/atomic.ts:25:8
         (set_local $4
          ;;@ ~lib/allocator/atomic.ts:25:26
          (i32.shr_u
           (i32.and
            ;;@ ~lib/allocator/atomic.ts:25:27
            (i32.add
             ;;@ ~lib/allocator/atomic.ts:25:28
             (i32.sub
              (get_local $2)
              ;;@ ~lib/allocator/atomic.ts:25:34
              (get_local $1)
             )
             ;;@ ~lib/allocator/atomic.ts:25:50
             (i32.const 65535)
            )
            ;;@ ~lib/allocator/atomic.ts:25:60
            (i32.xor
             ;;@ ~lib/allocator/atomic.ts:25:61
             (i32.const 65535)
             (i32.const -1)
            )
           )
           ;;@ ~lib/allocator/atomic.ts:25:73
           (i32.const 16)
          )
         )
         ;;@ ~lib/allocator/atomic.ts:26:8
         (set_local $5
          ;;@ ~lib/allocator/atomic.ts:26:26
          (select
           (tee_local $5
            ;;@ ~lib/allocator/atomic.ts:26:30
            (get_local $3)
           )
           (tee_local $6
            ;;@ ~lib/allocator/atomic.ts:26:43
            (get_local $4)
           )
           (i32.gt_s
            (get_local $5)
            (get_local $6)
           )
          )
         )
         ;;@ ~lib/allocator/atomic.ts:27:8
         (if
          ;;@ ~lib/allocator/atomic.ts:27:12
          (i32.lt_s
           ;;@ ~lib/allocator/atomic.ts:27:19
           (grow_memory
            ;;@ ~lib/allocator/atomic.ts:27:24
            (get_local $5)
           )
           ;;@ ~lib/allocator/atomic.ts:27:39
           (i32.const 0)
          )
          ;;@ ~lib/allocator/atomic.ts:27:42
          (if
           ;;@ ~lib/allocator/atomic.ts:28:14
           (i32.lt_s
            ;;@ ~lib/allocator/atomic.ts:28:21
            (grow_memory
             ;;@ ~lib/allocator/atomic.ts:28:26
             (get_local $4)
            )
            ;;@ ~lib/allocator/atomic.ts:28:41
            (i32.const 0)
           )
           ;;@ ~lib/allocator/atomic.ts:28:44
           (unreachable)
          )
         )
        )
       )
      )
      (br_if $continue|0
       ;;@ ~lib/allocator/atomic.ts:34:6
       (i32.ne
        ;;@ ~lib/allocator/atomic.ts:34:13
        (i32.atomic.rmw.cmpxchg
         ;;@ ~lib/allocator/atomic.ts:34:28
         (get_global $~lib/allocator/atomic/offset_ptr)
         ;;@ ~lib/allocator/atomic.ts:34:40
         (get_local $1)
         ;;@ ~lib/allocator/atomic.ts:34:55
         (get_local $2)
        )
        ;;@ ~lib/allocator/atomic.ts:34:63
        (get_local $1)
       )
      )
     )
    )
    ;;@ ~lib/allocator/atomic.ts:37:11
    (return
     (get_local $1)
    )
   )
  )
  ;;@ ~lib/allocator/atomic.ts:39:9
  (i32.const 0)
 )
 (func $~lib/memory/memory.allocate (; 9 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/memory.ts:41:4
  (return
   ;;@ ~lib/memory.ts:41:45
   (call $~lib/allocator/atomic/__memory_allocate
    ;;@ ~lib/memory.ts:41:63
    (get_local $0)
   )
  )
 )
 (func $assembly/index/Vec#constructor (; 10 ;) (type $iFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  (local $4 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $4
       (call $~lib/memory/memory.allocate
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
 (func $~lib/allocator/atomic/__memory_free (; 11 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $assembly/index/Vec#free (; 12 ;) (type $iv) (param $0 i32)
  ;;@ assembly/index.ts:32:8
  (call $~lib/allocator/atomic/__memory_free
   ;;@ assembly/index.ts:32:22
   (get_local $0)
  )
 )
 (func $assembly/index/Vec#add (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:37:63
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:37:23
   (f64.add
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:37:32
    (f64.load
     (get_local $1)
    )
   )
   ;;@ assembly/index.ts:37:37
   (f64.add
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:37:46
    (f64.load offset=8
     (get_local $1)
    )
   )
   ;;@ assembly/index.ts:37:51
   (f64.add
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:37:60
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/index/Vec#add_in (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:40:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:40:17
   (f64.add
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:40:26
    (f64.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:41:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:41:17
   (f64.add
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:41:26
    (f64.load offset=8
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:42:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:42:17
   (f64.add
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:42:26
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:43:15
  (get_local $0)
 )
 (func $assembly/index/Vec#add2 (; 15 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ assembly/index.ts:46:8
  (f64.store
   (get_local $2)
   ;;@ assembly/index.ts:46:14
   (f64.add
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:46:23
    (f64.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:47:8
  (f64.store offset=8
   (get_local $2)
   ;;@ assembly/index.ts:47:14
   (f64.add
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:47:23
    (f64.load offset=8
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:48:8
  (f64.store offset=16
   (get_local $2)
   ;;@ assembly/index.ts:48:14
   (f64.add
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:48:23
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:49:15
  (get_local $2)
 )
 (func $assembly/index/Vec#set (; 16 ;) (type $iFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  ;;@ assembly/index.ts:52:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:52:17
   (get_local $1)
  )
  ;;@ assembly/index.ts:53:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:53:17
   (get_local $2)
  )
  ;;@ assembly/index.ts:54:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:54:17
   (get_local $3)
  )
  ;;@ assembly/index.ts:55:15
  (get_local $0)
 )
 (func $assembly/index/Vec#setFrom (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:58:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:58:17
   (f64.load
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:59:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:59:17
   (f64.load offset=8
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:60:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:60:17
   (f64.load offset=16
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:61:15
  (get_local $0)
 )
 (func $assembly/index/Vec#sub (; 18 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ assembly/index.ts:65:8
  (if
   (i32.and
    ;;@ assembly/index.ts:65:12
    (get_local $2)
    (i32.const 1)
   )
   ;;@ assembly/index.ts:65:21
   (block
    ;;@ assembly/index.ts:66:12
    (f64.store
     (get_local $1)
     ;;@ assembly/index.ts:66:18
     (f64.sub
      (f64.load
       (get_local $0)
      )
      ;;@ assembly/index.ts:66:27
      (f64.load
       (get_local $1)
      )
     )
    )
    ;;@ assembly/index.ts:67:12
    (f64.store offset=8
     (get_local $1)
     ;;@ assembly/index.ts:67:18
     (f64.sub
      (f64.load offset=8
       (get_local $0)
      )
      ;;@ assembly/index.ts:67:27
      (f64.load offset=8
       (get_local $1)
      )
     )
    )
    ;;@ assembly/index.ts:68:12
    (f64.store offset=16
     (get_local $1)
     ;;@ assembly/index.ts:68:18
     (f64.sub
      (f64.load offset=16
       (get_local $0)
      )
      ;;@ assembly/index.ts:68:27
      (f64.load offset=16
       (get_local $1)
      )
     )
    )
    ;;@ assembly/index.ts:69:19
    (return
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:71:63
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:71:23
   (f64.sub
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:71:32
    (f64.load
     (get_local $1)
    )
   )
   ;;@ assembly/index.ts:71:37
   (f64.sub
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:71:46
    (f64.load offset=8
     (get_local $1)
    )
   )
   ;;@ assembly/index.ts:71:51
   (f64.sub
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:71:60
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/index/Vec#sub2 (; 19 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ assembly/index.ts:74:8
  (f64.store
   (get_local $2)
   ;;@ assembly/index.ts:74:14
   (f64.sub
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:74:23
    (f64.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:75:8
  (f64.store offset=8
   (get_local $2)
   ;;@ assembly/index.ts:75:14
   (f64.sub
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:75:23
    (f64.load offset=8
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:76:8
  (f64.store offset=16
   (get_local $2)
   ;;@ assembly/index.ts:76:14
   (f64.sub
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:76:23
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:77:15
  (get_local $2)
 )
 (func $assembly/index/Vec#sub_in (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:80:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:80:17
   (f64.sub
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:80:26
    (f64.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:81:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:81:17
   (f64.sub
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:81:26
    (f64.load offset=8
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:82:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:82:17
   (f64.sub
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:82:26
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:83:15
  (get_local $0)
 )
 (func $assembly/index/Vec#mul (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:88:63
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:88:23
   (f64.mul
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:88:32
    (f64.load
     (get_local $1)
    )
   )
   ;;@ assembly/index.ts:88:37
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:88:46
    (f64.load offset=8
     (get_local $1)
    )
   )
   ;;@ assembly/index.ts:88:51
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:88:60
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/index/Vec#mul_in (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:91:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:91:17
   (f64.mul
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:91:26
    (f64.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:92:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:92:17
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:92:26
    (f64.load offset=8
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:93:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:93:17
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:93:26
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:94:15
  (get_local $0)
 )
 (func $assembly/index/Vec#multScalar (; 23 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  ;;@ assembly/index.ts:98:57
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:98:23
   (f64.mul
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:98:32
    (get_local $1)
   )
   ;;@ assembly/index.ts:98:35
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:98:44
    (get_local $1)
   )
   ;;@ assembly/index.ts:98:47
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:98:56
    (get_local $1)
   )
  )
 )
 (func $assembly/index/Vec#multScalar2 (; 24 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  ;;@ assembly/index.ts:101:8
  (f64.store
   (get_local $2)
   ;;@ assembly/index.ts:101:14
   (f64.mul
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:101:23
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:102:8
  (f64.store offset=8
   (get_local $2)
   ;;@ assembly/index.ts:102:14
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:102:23
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:103:8
  (f64.store offset=16
   (get_local $2)
   ;;@ assembly/index.ts:103:14
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:103:23
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:104:15
  (get_local $2)
 )
 (func $assembly/index/Vec#multScalar_in (; 25 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  ;;@ assembly/index.ts:107:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:107:17
   (f64.mul
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:107:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:108:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:108:17
   (f64.mul
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:108:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:109:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:109:17
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:109:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:110:15
  (get_local $0)
 )
 (func $assembly/index/Vec#mod (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:114:108
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:114:23
   (f64.sub
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:114:32
     (f64.load offset=16
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:114:38
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:114:47
     (f64.load offset=8
      (get_local $1)
     )
    )
   )
   ;;@ assembly/index.ts:114:52
   (f64.sub
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:114:61
     (f64.load
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:114:67
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:114:76
     (f64.load offset=16
      (get_local $1)
     )
    )
   )
   ;;@ assembly/index.ts:114:81
   (f64.sub
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:114:90
     (f64.load offset=8
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:114:96
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:114:105
     (f64.load
      (get_local $1)
     )
    )
   )
  )
 )
 (func $assembly/index/Vec#mod_in (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:117:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:117:17
   (f64.sub
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:117:26
     (f64.load offset=16
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:117:32
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:117:41
     (f64.load offset=8
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:118:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:118:17
   (f64.sub
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:118:26
     (f64.load
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:118:32
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:118:41
     (f64.load offset=16
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:119:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:119:17
   (f64.sub
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:119:26
     (f64.load offset=8
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:119:32
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:119:41
     (f64.load
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:120:15
  (get_local $0)
 )
 (func $assembly/index/Vec#mod2 (; 28 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ assembly/index.ts:123:8
  (f64.store
   (get_local $2)
   ;;@ assembly/index.ts:123:14
   (f64.sub
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:123:23
     (f64.load offset=16
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:123:29
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:123:38
     (f64.load offset=8
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:124:8
  (f64.store offset=8
   (get_local $2)
   ;;@ assembly/index.ts:124:14
   (f64.sub
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:124:23
     (f64.load
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:124:29
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:124:38
     (f64.load offset=16
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:125:8
  (f64.store offset=16
   (get_local $2)
   ;;@ assembly/index.ts:125:14
   (f64.sub
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:125:23
     (f64.load offset=8
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:125:29
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:125:38
     (f64.load
      (get_local $1)
     )
    )
   )
  )
  ;;@ assembly/index.ts:126:15
  (get_local $2)
 )
 (func $assembly/index/Vec#length (; 29 ;) (type $iF) (param $0 i32) (result f64)
  ;;@ assembly/index.ts:130:78
  (f64.sqrt
   ;;@ assembly/index.ts:130:27
   (f64.add
    (f64.add
     (f64.mul
      (f64.load
       (get_local $0)
      )
      ;;@ assembly/index.ts:130:36
      (f64.load
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:130:45
     (f64.mul
      (f64.load offset=8
       (get_local $0)
      )
      ;;@ assembly/index.ts:130:54
      (f64.load offset=8
       (get_local $0)
      )
     )
    )
    ;;@ assembly/index.ts:130:63
    (f64.mul
     (f64.load offset=16
      (get_local $0)
     )
     ;;@ assembly/index.ts:130:72
     (f64.load offset=16
      (get_local $0)
     )
    )
   )
  )
 )
 (func $assembly/index/Vec#norm (; 30 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 f64)
  ;;@ assembly/index.ts:134:8
  (set_local $1
   ;;@ assembly/index.ts:134:21
   (call $assembly/index/Vec#length
    ;;@ assembly/index.ts:134:16
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:135:57
  (call $assembly/index/Vec#constructor
   (i32.const 0)
   ;;@ assembly/index.ts:135:23
   (f64.div
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:135:32
    (get_local $1)
   )
   ;;@ assembly/index.ts:135:35
   (f64.div
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:135:44
    (get_local $1)
   )
   ;;@ assembly/index.ts:135:47
   (f64.div
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:135:56
    (get_local $1)
   )
  )
 )
 (func $assembly/index/Vec#norm_in (; 31 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 f64)
  ;;@ assembly/index.ts:139:8
  (set_local $1
   ;;@ assembly/index.ts:139:21
   (call $assembly/index/Vec#length
    ;;@ assembly/index.ts:139:16
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:140:8
  (f64.store
   (get_local $0)
   ;;@ assembly/index.ts:140:17
   (f64.div
    (f64.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:140:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:141:8
  (f64.store offset=8
   (get_local $0)
   ;;@ assembly/index.ts:141:17
   (f64.div
    (f64.load offset=8
     (get_local $0)
    )
    ;;@ assembly/index.ts:141:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:142:8
  (f64.store offset=16
   (get_local $0)
   ;;@ assembly/index.ts:142:17
   (f64.div
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:142:26
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:143:15
  (get_local $0)
 )
 (func $assembly/index/Vec#dot (; 32 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  ;;@ assembly/index.ts:147:56
  (f64.add
   ;;@ assembly/index.ts:147:15
   (f64.add
    (f64.mul
     (f64.load
      (get_local $0)
     )
     ;;@ assembly/index.ts:147:24
     (f64.load
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:147:30
    (f64.mul
     (f64.load offset=8
      (get_local $0)
     )
     ;;@ assembly/index.ts:147:39
     (f64.load offset=8
      (get_local $1)
     )
    )
   )
   ;;@ assembly/index.ts:147:45
   (f64.mul
    (f64.load offset=16
     (get_local $0)
    )
    ;;@ assembly/index.ts:147:54
    (f64.load offset=16
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/index/Vec#clone (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ assembly/index.ts:151:8
  (f64.store
   (get_local $1)
   ;;@ assembly/index.ts:151:14
   (f64.load
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:152:8
  (f64.store offset=8
   (get_local $1)
   ;;@ assembly/index.ts:152:14
   (f64.load offset=8
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:153:8
  (f64.store offset=16
   (get_local $1)
   ;;@ assembly/index.ts:153:14
   (f64.load offset=16
    (get_local $0)
   )
  )
  ;;@ assembly/index.ts:154:15
  (get_local $1)
 )
 (func $assembly/index/getPixels (; 34 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:292:19
  (i32.load
   ;;@ assembly/index.ts:292:11
   (get_global $assembly/index/context)
  )
 )
 (func $assembly/index/setPixels (; 35 ;) (type $iv) (param $0 i32)
  ;;@ assembly/index.ts:296:4
  (i32.store
   (get_global $assembly/index/context)
   ;;@ assembly/index.ts:296:21
   (get_local $0)
  )
 )
 (func $assembly/index/setContext (; 36 ;) (type $iv) (param $0 i32)
  ;;@ assembly/index.ts:300:4
  (set_global $assembly/index/context
   ;;@ assembly/index.ts:300:14
   (get_local $0)
  )
 )
 (func $assembly/index/getContext (; 37 ;) (type $i) (result i32)
  ;;@ assembly/index.ts:304:11
  (get_global $assembly/index/context)
 )
 (func $assembly/index/Context#constructor (; 38 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $3
       (call $~lib/memory/memory.allocate
        (i32.const 36)
       )
      )
      (i32.store
       (get_local $3)
       (i32.const 0)
      )
      (i32.store offset=4
       (get_local $3)
       (i32.const 0)
      )
      (i32.store offset=8
       (get_local $3)
       (i32.const 0)
      )
      (i32.store offset=12
       (get_local $3)
       (i32.const 0)
      )
      (i32.store offset=16
       (get_local $3)
       (i32.const 0)
      )
      (i32.store offset=20
       (get_local $3)
       (i32.const 0)
      )
      (i32.store offset=24
       (get_local $3)
       (i32.const 0)
      )
      (i32.store offset=28
       (get_local $3)
       (get_local $1)
      )
      (i32.store offset=32
       (get_local $3)
       (get_local $2)
      )
      (get_local $3)
     )
    )
   )
  )
 )
 (func $assembly/index/Sphere#constructor (; 39 ;) (type $iFiiiii) (param $0 i32) (param $1 f64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $6
       (call $~lib/memory/memory.allocate
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
 (func $~lib/internal/arraybuffer/computeSize (; 40 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ ~lib/internal/arraybuffer.ts:15:77
  (i32.shl
   ;;@ ~lib/internal/arraybuffer.ts:15:9
   (i32.const 1)
   ;;@ ~lib/internal/arraybuffer.ts:15:21
   (i32.sub
    ;;@ ~lib/internal/arraybuffer.ts:15:29
    (i32.const 32)
    ;;@ ~lib/internal/arraybuffer.ts:15:39
    (i32.clz
     ;;@ ~lib/internal/arraybuffer.ts:15:48
     (i32.sub
      (i32.add
       (get_local $0)
       ;;@ ~lib/internal/arraybuffer.ts:15:61
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      ;;@ ~lib/internal/arraybuffer.ts:15:75
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 41 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ ~lib/internal/arraybuffer.ts:23:2
  (if
   (i32.eqz
    ;;@ ~lib/internal/arraybuffer.ts:23:9
    (i32.le_u
     (get_local $0)
     ;;@ ~lib/internal/arraybuffer.ts:23:28
     (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:25:2
  (set_local $1
   ;;@ ~lib/internal/arraybuffer.ts:28:20
   (block $~lib/memory/memory.allocate|inlined.0 (result i32)
    (set_local $2
     ;;@ ~lib/internal/arraybuffer.ts:28:29
     (call $~lib/internal/arraybuffer/computeSize
      ;;@ ~lib/internal/arraybuffer.ts:28:41
      (get_local $0)
     )
    )
    ;;@ ~lib/memory.ts:41:4
    (br $~lib/memory/memory.allocate|inlined.0
     ;;@ ~lib/memory.ts:41:45
     (call $~lib/allocator/atomic/__memory_allocate
      ;;@ ~lib/memory.ts:41:63
      (get_local $2)
     )
    )
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:30:2
  (i32.store
   ;;@ ~lib/internal/arraybuffer.ts:30:13
   (get_local $1)
   ;;@ ~lib/internal/arraybuffer.ts:30:21
   (get_local $0)
  )
  ;;@ ~lib/internal/arraybuffer.ts:31:39
  (get_local $1)
 )
 (func $~lib/internal/memory/memset (; 42 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  ;;@ ~lib/internal/memory.ts:191:2
  (if
   ;;@ ~lib/internal/memory.ts:191:6
   (i32.eqz
    ;;@ ~lib/internal/memory.ts:191:7
    (get_local $2)
   )
   ;;@ ~lib/internal/memory.ts:191:10
   (return)
  )
  ;;@ ~lib/internal/memory.ts:192:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:192:12
   (get_local $0)
   ;;@ ~lib/internal/memory.ts:192:18
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:193:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:193:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:193:19
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:193:23
    (i32.const 1)
   )
   ;;@ ~lib/internal/memory.ts:193:26
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:194:2
  (if
   ;;@ ~lib/internal/memory.ts:194:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:194:11
    (i32.const 2)
   )
   ;;@ ~lib/internal/memory.ts:194:14
   (return)
  )
  ;;@ ~lib/internal/memory.ts:196:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:196:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:196:19
    (i32.const 1)
   )
   ;;@ ~lib/internal/memory.ts:196:22
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:197:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:197:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:197:19
    (i32.const 2)
   )
   ;;@ ~lib/internal/memory.ts:197:22
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:198:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:198:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:198:19
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:198:23
    (i32.const 2)
   )
   ;;@ ~lib/internal/memory.ts:198:26
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:199:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:199:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:199:19
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:199:23
    (i32.const 3)
   )
   ;;@ ~lib/internal/memory.ts:199:26
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:200:2
  (if
   ;;@ ~lib/internal/memory.ts:200:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:200:11
    (i32.const 6)
   )
   ;;@ ~lib/internal/memory.ts:200:14
   (return)
  )
  ;;@ ~lib/internal/memory.ts:201:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:201:12
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:201:19
    (i32.const 3)
   )
   ;;@ ~lib/internal/memory.ts:201:22
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:202:2
  (i32.store8
   ;;@ ~lib/internal/memory.ts:202:12
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:202:19
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:202:23
    (i32.const 4)
   )
   ;;@ ~lib/internal/memory.ts:202:26
   (get_local $1)
  )
  ;;@ ~lib/internal/memory.ts:203:2
  (if
   ;;@ ~lib/internal/memory.ts:203:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:203:11
    (i32.const 8)
   )
   ;;@ ~lib/internal/memory.ts:203:14
   (return)
  )
  ;;@ ~lib/internal/memory.ts:206:2
  (set_local $3
   ;;@ ~lib/internal/memory.ts:206:17
   (i32.and
    (i32.sub
     (i32.const 0)
     ;;@ ~lib/internal/memory.ts:206:18
     (get_local $0)
    )
    ;;@ ~lib/internal/memory.ts:206:25
    (i32.const 3)
   )
  )
  ;;@ ~lib/internal/memory.ts:207:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:207:10
    (get_local $3)
   )
  )
  ;;@ ~lib/internal/memory.ts:208:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:208:7
    (get_local $3)
   )
  )
  ;;@ ~lib/internal/memory.ts:209:2
  (set_local $2
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:209:7
    (i32.const -4)
   )
  )
  ;;@ ~lib/internal/memory.ts:211:2
  (set_local $4
   ;;@ ~lib/internal/memory.ts:211:17
   (i32.mul
    (i32.div_u
     (i32.const -1)
     ;;@ ~lib/internal/memory.ts:211:27
     (i32.const 255)
    )
    (i32.and
     ;;@ ~lib/internal/memory.ts:211:33
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  ;;@ ~lib/internal/memory.ts:214:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:214:13
   (get_local $0)
   ;;@ ~lib/internal/memory.ts:214:19
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:215:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:215:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:215:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:215:24
    (i32.const 4)
   )
   ;;@ ~lib/internal/memory.ts:215:27
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:216:2
  (if
   ;;@ ~lib/internal/memory.ts:216:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:216:11
    (i32.const 8)
   )
   ;;@ ~lib/internal/memory.ts:216:14
   (return)
  )
  ;;@ ~lib/internal/memory.ts:217:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:217:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:217:20
    (i32.const 4)
   )
   ;;@ ~lib/internal/memory.ts:217:23
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:218:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:218:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:218:20
    (i32.const 8)
   )
   ;;@ ~lib/internal/memory.ts:218:23
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:219:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:219:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:219:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:219:24
    (i32.const 12)
   )
   ;;@ ~lib/internal/memory.ts:219:28
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:220:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:220:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:220:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:220:24
    (i32.const 8)
   )
   ;;@ ~lib/internal/memory.ts:220:27
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:221:2
  (if
   ;;@ ~lib/internal/memory.ts:221:6
   (i32.le_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:221:11
    (i32.const 24)
   )
   ;;@ ~lib/internal/memory.ts:221:15
   (return)
  )
  ;;@ ~lib/internal/memory.ts:222:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:222:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:222:20
    (i32.const 12)
   )
   ;;@ ~lib/internal/memory.ts:222:24
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:223:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:223:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:223:20
    (i32.const 16)
   )
   ;;@ ~lib/internal/memory.ts:223:24
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:224:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:224:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:224:20
    (i32.const 20)
   )
   ;;@ ~lib/internal/memory.ts:224:24
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:225:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:225:13
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:225:20
    (i32.const 24)
   )
   ;;@ ~lib/internal/memory.ts:225:24
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:226:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:226:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:226:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:226:24
    (i32.const 28)
   )
   ;;@ ~lib/internal/memory.ts:226:28
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:227:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:227:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:227:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:227:24
    (i32.const 24)
   )
   ;;@ ~lib/internal/memory.ts:227:28
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:228:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:228:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:228:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:228:24
    (i32.const 20)
   )
   ;;@ ~lib/internal/memory.ts:228:28
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:229:2
  (i32.store
   ;;@ ~lib/internal/memory.ts:229:13
   (i32.sub
    (i32.add
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:229:20
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:229:24
    (i32.const 16)
   )
   ;;@ ~lib/internal/memory.ts:229:28
   (get_local $4)
  )
  ;;@ ~lib/internal/memory.ts:232:2
  (set_local $3
   ;;@ ~lib/internal/memory.ts:232:6
   (i32.add
    (i32.const 24)
    ;;@ ~lib/internal/memory.ts:232:11
    (i32.and
     ;;@ ~lib/internal/memory.ts:232:12
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:232:19
     (i32.const 4)
    )
   )
  )
  ;;@ ~lib/internal/memory.ts:233:2
  (set_local $0
   (i32.add
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:233:10
    (get_local $3)
   )
  )
  ;;@ ~lib/internal/memory.ts:234:2
  (set_local $2
   (i32.sub
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:234:7
    (get_local $3)
   )
  )
  ;;@ ~lib/internal/memory.ts:237:2
  (set_local $5
   ;;@ ~lib/internal/memory.ts:237:17
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    ;;@ ~lib/internal/memory.ts:237:28
    (i64.shl
     ;;@ ~lib/internal/memory.ts:237:29
     (i64.extend_u/i32
      (get_local $4)
     )
     ;;@ ~lib/internal/memory.ts:237:41
     (i64.const 32)
    )
   )
  )
  ;;@ ~lib/internal/memory.ts:238:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/internal/memory.ts:238:9
     (i32.ge_u
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:238:14
      (i32.const 32)
     )
     (block
      ;;@ ~lib/internal/memory.ts:238:18
      (block
       ;;@ ~lib/internal/memory.ts:239:4
       (i64.store
        ;;@ ~lib/internal/memory.ts:239:15
        (get_local $0)
        ;;@ ~lib/internal/memory.ts:239:21
        (get_local $5)
       )
       ;;@ ~lib/internal/memory.ts:240:4
       (i64.store
        ;;@ ~lib/internal/memory.ts:240:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/internal/memory.ts:240:22
         (i32.const 8)
        )
        ;;@ ~lib/internal/memory.ts:240:25
        (get_local $5)
       )
       ;;@ ~lib/internal/memory.ts:241:4
       (i64.store
        ;;@ ~lib/internal/memory.ts:241:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/internal/memory.ts:241:22
         (i32.const 16)
        )
        ;;@ ~lib/internal/memory.ts:241:26
        (get_local $5)
       )
       ;;@ ~lib/internal/memory.ts:242:4
       (i64.store
        ;;@ ~lib/internal/memory.ts:242:15
        (i32.add
         (get_local $0)
         ;;@ ~lib/internal/memory.ts:242:22
         (i32.const 24)
        )
        ;;@ ~lib/internal/memory.ts:242:26
        (get_local $5)
       )
       ;;@ ~lib/internal/memory.ts:243:4
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/internal/memory.ts:243:9
         (i32.const 32)
        )
       )
       ;;@ ~lib/internal/memory.ts:244:4
       (set_local $0
        (i32.add
         (get_local $0)
         ;;@ ~lib/internal/memory.ts:244:12
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
 (func $~lib/array/Array<Sphere>#constructor (; 43 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
     (i32.const 8)
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
   (call $~lib/internal/arraybuffer/allocateUnsafe
    ;;@ ~lib/array.ts:25:32
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
        (call $~lib/memory/memory.allocate
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
  ;;@ ~lib/array.ts:28:11
  (block $~lib/memory/memory.fill|inlined.0
   (set_local $4
    ;;@ ~lib/array.ts:29:6
    (i32.add
     (get_local $3)
     ;;@ ~lib/array.ts:29:34
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    ;;@ ~lib/array.ts:30:6
    (i32.const 0)
   )
   ;;@ ~lib/memory.ts:15:4
   (call $~lib/internal/memory/memset
    ;;@ ~lib/memory.ts:15:11
    (get_local $4)
    ;;@ ~lib/memory.ts:15:17
    (get_local $5)
    ;;@ ~lib/memory.ts:15:20
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Sphere>#__unchecked_set (; 44 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/array.ts:98:4
  (block $~lib/internal/arraybuffer/storeUnsafe<Sphere,Sphere>|inlined.0
   (set_local $3
    ;;@ ~lib/array.ts:98:21
    (i32.load
     (get_local $0)
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:72:2
   (i32.store offset=8
    ;;@ ~lib/internal/arraybuffer.ts:72:11
    (i32.add
     (get_local $3)
     ;;@ ~lib/internal/arraybuffer.ts:72:39
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:72:40
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:72:56
      (i32.const 2)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:72:71
    (get_local $2)
   )
  )
 )
 (func $assembly/index/Ray#constructor (; 45 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $3
       (call $~lib/memory/memory.allocate
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
 (func $~lib/array/Array<Vec>#constructor (; 46 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
     (i32.const 8)
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
   (call $~lib/internal/arraybuffer/allocateUnsafe
    ;;@ ~lib/array.ts:25:32
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
        (call $~lib/memory/memory.allocate
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
  ;;@ ~lib/array.ts:28:11
  (block $~lib/memory/memory.fill|inlined.1
   (set_local $4
    ;;@ ~lib/array.ts:29:6
    (i32.add
     (get_local $3)
     ;;@ ~lib/array.ts:29:34
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    ;;@ ~lib/array.ts:30:6
    (i32.const 0)
   )
   ;;@ ~lib/memory.ts:15:4
   (call $~lib/internal/memory/memset
    ;;@ ~lib/memory.ts:15:11
    (get_local $4)
    ;;@ ~lib/memory.ts:15:17
    (get_local $5)
    ;;@ ~lib/memory.ts:15:20
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/memory/memcpy (; 47 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ ~lib/internal/memory.ts:6:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ ~lib/internal/memory.ts:6:9
     (if (result i32)
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:6:14
      (i32.and
       ;;@ ~lib/internal/memory.ts:6:15
       (get_local $1)
       ;;@ ~lib/internal/memory.ts:6:21
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      ;;@ ~lib/internal/memory.ts:6:25
      (block
       ;;@ ~lib/internal/memory.ts:7:4
       (i32.store8
        ;;@ ~lib/internal/memory.ts:7:14
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
        ;;@ ~lib/internal/memory.ts:7:22
        (i32.load8_u
         ;;@ ~lib/internal/memory.ts:7:31
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
       ;;@ ~lib/internal/memory.ts:8:4
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
  ;;@ ~lib/internal/memory.ts:12:2
  (if
   ;;@ ~lib/internal/memory.ts:12:6
   (i32.eq
    (i32.and
     ;;@ ~lib/internal/memory.ts:12:7
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:12:14
     (i32.const 3)
    )
    ;;@ ~lib/internal/memory.ts:12:20
    (i32.const 0)
   )
   ;;@ ~lib/internal/memory.ts:12:23
   (block
    ;;@ ~lib/internal/memory.ts:13:4
    (block $break|1
     (loop $continue|1
      (if
       ;;@ ~lib/internal/memory.ts:13:11
       (i32.ge_u
        (get_local $2)
        ;;@ ~lib/internal/memory.ts:13:16
        (i32.const 16)
       )
       (block
        ;;@ ~lib/internal/memory.ts:13:20
        (block
         ;;@ ~lib/internal/memory.ts:14:6
         (i32.store
          ;;@ ~lib/internal/memory.ts:14:17
          (get_local $0)
          ;;@ ~lib/internal/memory.ts:14:28
          (i32.load
           ;;@ ~lib/internal/memory.ts:14:38
           (get_local $1)
          )
         )
         ;;@ ~lib/internal/memory.ts:15:6
         (i32.store
          ;;@ ~lib/internal/memory.ts:15:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:15:25
           (i32.const 4)
          )
          ;;@ ~lib/internal/memory.ts:15:28
          (i32.load
           ;;@ ~lib/internal/memory.ts:15:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/internal/memory.ts:15:45
            (i32.const 4)
           )
          )
         )
         ;;@ ~lib/internal/memory.ts:16:6
         (i32.store
          ;;@ ~lib/internal/memory.ts:16:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:16:25
           (i32.const 8)
          )
          ;;@ ~lib/internal/memory.ts:16:28
          (i32.load
           ;;@ ~lib/internal/memory.ts:16:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/internal/memory.ts:16:45
            (i32.const 8)
           )
          )
         )
         ;;@ ~lib/internal/memory.ts:17:6
         (i32.store
          ;;@ ~lib/internal/memory.ts:17:17
          (i32.add
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:17:24
           (i32.const 12)
          )
          ;;@ ~lib/internal/memory.ts:17:28
          (i32.load
           ;;@ ~lib/internal/memory.ts:17:38
           (i32.add
            (get_local $1)
            ;;@ ~lib/internal/memory.ts:17:44
            (i32.const 12)
           )
          )
         )
         ;;@ ~lib/internal/memory.ts:18:6
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ ~lib/internal/memory.ts:18:13
           (i32.const 16)
          )
         )
         ;;@ ~lib/internal/memory.ts:18:17
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:18:25
           (i32.const 16)
          )
         )
         ;;@ ~lib/internal/memory.ts:18:29
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ ~lib/internal/memory.ts:18:34
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    ;;@ ~lib/internal/memory.ts:20:4
    (if
     ;;@ ~lib/internal/memory.ts:20:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:20:12
      (i32.const 8)
     )
     ;;@ ~lib/internal/memory.ts:20:15
     (block
      ;;@ ~lib/internal/memory.ts:21:6
      (i32.store
       ;;@ ~lib/internal/memory.ts:21:17
       (get_local $0)
       ;;@ ~lib/internal/memory.ts:21:27
       (i32.load
        ;;@ ~lib/internal/memory.ts:21:37
        (get_local $1)
       )
      )
      ;;@ ~lib/internal/memory.ts:22:6
      (i32.store
       ;;@ ~lib/internal/memory.ts:22:17
       (i32.add
        (get_local $0)
        ;;@ ~lib/internal/memory.ts:22:24
        (i32.const 4)
       )
       ;;@ ~lib/internal/memory.ts:22:27
       (i32.load
        ;;@ ~lib/internal/memory.ts:22:37
        (i32.add
         (get_local $1)
         ;;@ ~lib/internal/memory.ts:22:43
         (i32.const 4)
        )
       )
      )
      ;;@ ~lib/internal/memory.ts:23:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/internal/memory.ts:23:14
        (i32.const 8)
       )
      )
      ;;@ ~lib/internal/memory.ts:23:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/internal/memory.ts:23:24
        (i32.const 8)
       )
      )
     )
    )
    ;;@ ~lib/internal/memory.ts:25:4
    (if
     ;;@ ~lib/internal/memory.ts:25:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:25:12
      (i32.const 4)
     )
     ;;@ ~lib/internal/memory.ts:25:15
     (block
      ;;@ ~lib/internal/memory.ts:26:6
      (i32.store
       ;;@ ~lib/internal/memory.ts:26:17
       (get_local $0)
       ;;@ ~lib/internal/memory.ts:26:23
       (i32.load
        ;;@ ~lib/internal/memory.ts:26:33
        (get_local $1)
       )
      )
      ;;@ ~lib/internal/memory.ts:27:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/internal/memory.ts:27:14
        (i32.const 4)
       )
      )
      ;;@ ~lib/internal/memory.ts:27:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/internal/memory.ts:27:24
        (i32.const 4)
       )
      )
     )
    )
    ;;@ ~lib/internal/memory.ts:29:4
    (if
     ;;@ ~lib/internal/memory.ts:29:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:29:12
      (i32.const 2)
     )
     ;;@ ~lib/internal/memory.ts:29:15
     (block
      ;;@ ~lib/internal/memory.ts:30:6
      (i32.store16
       ;;@ ~lib/internal/memory.ts:30:17
       (get_local $0)
       ;;@ ~lib/internal/memory.ts:30:23
       (i32.load16_u
        ;;@ ~lib/internal/memory.ts:30:33
        (get_local $1)
       )
      )
      ;;@ ~lib/internal/memory.ts:31:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ ~lib/internal/memory.ts:31:14
        (i32.const 2)
       )
      )
      ;;@ ~lib/internal/memory.ts:31:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ ~lib/internal/memory.ts:31:24
        (i32.const 2)
       )
      )
     )
    )
    ;;@ ~lib/internal/memory.ts:33:4
    (if
     ;;@ ~lib/internal/memory.ts:33:8
     (i32.and
      (get_local $2)
      ;;@ ~lib/internal/memory.ts:33:12
      (i32.const 1)
     )
     ;;@ ~lib/internal/memory.ts:33:15
     (i32.store8
      ;;@ ~lib/internal/memory.ts:34:16
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
      ;;@ ~lib/internal/memory.ts:34:24
      (i32.load8_u
       ;;@ ~lib/internal/memory.ts:34:33
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
    ;;@ ~lib/internal/memory.ts:36:4
    (return)
   )
  )
  ;;@ ~lib/internal/memory.ts:41:2
  (if
   ;;@ ~lib/internal/memory.ts:41:6
   (i32.ge_u
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:41:11
    (i32.const 32)
   )
   ;;@ ~lib/internal/memory.ts:41:15
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        ;;@ ~lib/internal/memory.ts:42:12
        (i32.and
         (get_local $0)
         ;;@ ~lib/internal/memory.ts:42:19
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/internal/memory.ts:44:11
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/internal/memory.ts:63:11
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         ;;@ ~lib/internal/memory.ts:81:11
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      ;;@ ~lib/internal/memory.ts:44:14
      (block
       ;;@ ~lib/internal/memory.ts:45:8
       (set_local $3
        ;;@ ~lib/internal/memory.ts:45:12
        (i32.load
         ;;@ ~lib/internal/memory.ts:45:22
         (get_local $1)
        )
       )
       ;;@ ~lib/internal/memory.ts:46:8
       (i32.store8
        ;;@ ~lib/internal/memory.ts:46:18
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
        ;;@ ~lib/internal/memory.ts:46:26
        (i32.load8_u
         ;;@ ~lib/internal/memory.ts:46:35
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
       ;;@ ~lib/internal/memory.ts:47:8
       (i32.store8
        ;;@ ~lib/internal/memory.ts:47:18
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
        ;;@ ~lib/internal/memory.ts:47:26
        (i32.load8_u
         ;;@ ~lib/internal/memory.ts:47:35
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
       ;;@ ~lib/internal/memory.ts:48:8
       (i32.store8
        ;;@ ~lib/internal/memory.ts:48:18
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
        ;;@ ~lib/internal/memory.ts:48:26
        (i32.load8_u
         ;;@ ~lib/internal/memory.ts:48:35
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
       ;;@ ~lib/internal/memory.ts:49:8
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ ~lib/internal/memory.ts:49:13
         (i32.const 3)
        )
       )
       ;;@ ~lib/internal/memory.ts:50:8
       (block $break|3
        (loop $continue|3
         (if
          ;;@ ~lib/internal/memory.ts:50:15
          (i32.ge_u
           (get_local $2)
           ;;@ ~lib/internal/memory.ts:50:20
           (i32.const 17)
          )
          (block
           ;;@ ~lib/internal/memory.ts:50:24
           (block
            ;;@ ~lib/internal/memory.ts:51:10
            (set_local $4
             ;;@ ~lib/internal/memory.ts:51:14
             (i32.load
              ;;@ ~lib/internal/memory.ts:51:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/internal/memory.ts:51:30
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:52:10
            (i32.store
             ;;@ ~lib/internal/memory.ts:52:21
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:52:27
             (i32.or
              (i32.shr_u
               (get_local $3)
               ;;@ ~lib/internal/memory.ts:52:32
               (i32.const 24)
              )
              ;;@ ~lib/internal/memory.ts:52:37
              (i32.shl
               (get_local $4)
               ;;@ ~lib/internal/memory.ts:52:42
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:53:10
            (set_local $3
             ;;@ ~lib/internal/memory.ts:53:14
             (i32.load
              ;;@ ~lib/internal/memory.ts:53:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/internal/memory.ts:53:30
               (i32.const 5)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:54:10
            (i32.store
             ;;@ ~lib/internal/memory.ts:54:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/internal/memory.ts:54:28
              (i32.const 4)
             )
             ;;@ ~lib/internal/memory.ts:54:31
             (i32.or
              (i32.shr_u
               (get_local $4)
               ;;@ ~lib/internal/memory.ts:54:36
               (i32.const 24)
              )
              ;;@ ~lib/internal/memory.ts:54:41
              (i32.shl
               (get_local $3)
               ;;@ ~lib/internal/memory.ts:54:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:55:10
            (set_local $4
             ;;@ ~lib/internal/memory.ts:55:14
             (i32.load
              ;;@ ~lib/internal/memory.ts:55:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/internal/memory.ts:55:30
               (i32.const 9)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:56:10
            (i32.store
             ;;@ ~lib/internal/memory.ts:56:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/internal/memory.ts:56:28
              (i32.const 8)
             )
             ;;@ ~lib/internal/memory.ts:56:31
             (i32.or
              (i32.shr_u
               (get_local $3)
               ;;@ ~lib/internal/memory.ts:56:36
               (i32.const 24)
              )
              ;;@ ~lib/internal/memory.ts:56:41
              (i32.shl
               (get_local $4)
               ;;@ ~lib/internal/memory.ts:56:46
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:57:10
            (set_local $3
             ;;@ ~lib/internal/memory.ts:57:14
             (i32.load
              ;;@ ~lib/internal/memory.ts:57:24
              (i32.add
               (get_local $1)
               ;;@ ~lib/internal/memory.ts:57:30
               (i32.const 13)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:58:10
            (i32.store
             ;;@ ~lib/internal/memory.ts:58:21
             (i32.add
              (get_local $0)
              ;;@ ~lib/internal/memory.ts:58:28
              (i32.const 12)
             )
             ;;@ ~lib/internal/memory.ts:58:32
             (i32.or
              (i32.shr_u
               (get_local $4)
               ;;@ ~lib/internal/memory.ts:58:37
               (i32.const 24)
              )
              ;;@ ~lib/internal/memory.ts:58:42
              (i32.shl
               (get_local $3)
               ;;@ ~lib/internal/memory.ts:58:47
               (i32.const 8)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:59:10
            (set_local $1
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:59:17
              (i32.const 16)
             )
            )
            ;;@ ~lib/internal/memory.ts:59:21
            (set_local $0
             (i32.add
              (get_local $0)
              ;;@ ~lib/internal/memory.ts:59:29
              (i32.const 16)
             )
            )
            ;;@ ~lib/internal/memory.ts:59:33
            (set_local $2
             (i32.sub
              (get_local $2)
              ;;@ ~lib/internal/memory.ts:59:38
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       ;;@ ~lib/internal/memory.ts:61:8
       (br $break|2)
      )
     )
     ;;@ ~lib/internal/memory.ts:63:14
     (block
      ;;@ ~lib/internal/memory.ts:64:8
      (set_local $3
       ;;@ ~lib/internal/memory.ts:64:12
       (i32.load
        ;;@ ~lib/internal/memory.ts:64:22
        (get_local $1)
       )
      )
      ;;@ ~lib/internal/memory.ts:65:8
      (i32.store8
       ;;@ ~lib/internal/memory.ts:65:18
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
       ;;@ ~lib/internal/memory.ts:65:26
       (i32.load8_u
        ;;@ ~lib/internal/memory.ts:65:35
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
      ;;@ ~lib/internal/memory.ts:66:8
      (i32.store8
       ;;@ ~lib/internal/memory.ts:66:18
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
       ;;@ ~lib/internal/memory.ts:66:26
       (i32.load8_u
        ;;@ ~lib/internal/memory.ts:66:35
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
      ;;@ ~lib/internal/memory.ts:67:8
      (set_local $2
       (i32.sub
        (get_local $2)
        ;;@ ~lib/internal/memory.ts:67:13
        (i32.const 2)
       )
      )
      ;;@ ~lib/internal/memory.ts:68:8
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/internal/memory.ts:68:15
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/internal/memory.ts:68:20
          (i32.const 18)
         )
         (block
          ;;@ ~lib/internal/memory.ts:68:24
          (block
           ;;@ ~lib/internal/memory.ts:69:10
           (set_local $4
            ;;@ ~lib/internal/memory.ts:69:14
            (i32.load
             ;;@ ~lib/internal/memory.ts:69:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:69:30
              (i32.const 2)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:70:10
           (i32.store
            ;;@ ~lib/internal/memory.ts:70:21
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:70:27
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ ~lib/internal/memory.ts:70:32
              (i32.const 16)
             )
             ;;@ ~lib/internal/memory.ts:70:37
             (i32.shl
              (get_local $4)
              ;;@ ~lib/internal/memory.ts:70:42
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:71:10
           (set_local $3
            ;;@ ~lib/internal/memory.ts:71:14
            (i32.load
             ;;@ ~lib/internal/memory.ts:71:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:71:30
              (i32.const 6)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:72:10
           (i32.store
            ;;@ ~lib/internal/memory.ts:72:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:72:28
             (i32.const 4)
            )
            ;;@ ~lib/internal/memory.ts:72:31
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ ~lib/internal/memory.ts:72:36
              (i32.const 16)
             )
             ;;@ ~lib/internal/memory.ts:72:41
             (i32.shl
              (get_local $3)
              ;;@ ~lib/internal/memory.ts:72:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:73:10
           (set_local $4
            ;;@ ~lib/internal/memory.ts:73:14
            (i32.load
             ;;@ ~lib/internal/memory.ts:73:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:73:30
              (i32.const 10)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:74:10
           (i32.store
            ;;@ ~lib/internal/memory.ts:74:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:74:28
             (i32.const 8)
            )
            ;;@ ~lib/internal/memory.ts:74:31
            (i32.or
             (i32.shr_u
              (get_local $3)
              ;;@ ~lib/internal/memory.ts:74:36
              (i32.const 16)
             )
             ;;@ ~lib/internal/memory.ts:74:41
             (i32.shl
              (get_local $4)
              ;;@ ~lib/internal/memory.ts:74:46
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:75:10
           (set_local $3
            ;;@ ~lib/internal/memory.ts:75:14
            (i32.load
             ;;@ ~lib/internal/memory.ts:75:24
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:75:30
              (i32.const 14)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:76:10
           (i32.store
            ;;@ ~lib/internal/memory.ts:76:21
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:76:28
             (i32.const 12)
            )
            ;;@ ~lib/internal/memory.ts:76:32
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ ~lib/internal/memory.ts:76:37
              (i32.const 16)
             )
             ;;@ ~lib/internal/memory.ts:76:42
             (i32.shl
              (get_local $3)
              ;;@ ~lib/internal/memory.ts:76:47
              (i32.const 16)
             )
            )
           )
           ;;@ ~lib/internal/memory.ts:77:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:77:17
             (i32.const 16)
            )
           )
           ;;@ ~lib/internal/memory.ts:77:21
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:77:29
             (i32.const 16)
            )
           )
           ;;@ ~lib/internal/memory.ts:77:33
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/internal/memory.ts:77:38
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      ;;@ ~lib/internal/memory.ts:79:8
      (br $break|2)
     )
    )
    ;;@ ~lib/internal/memory.ts:81:14
    (block
     ;;@ ~lib/internal/memory.ts:82:8
     (set_local $3
      ;;@ ~lib/internal/memory.ts:82:12
      (i32.load
       ;;@ ~lib/internal/memory.ts:82:22
       (get_local $1)
      )
     )
     ;;@ ~lib/internal/memory.ts:83:8
     (i32.store8
      ;;@ ~lib/internal/memory.ts:83:18
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
      ;;@ ~lib/internal/memory.ts:83:26
      (i32.load8_u
       ;;@ ~lib/internal/memory.ts:83:35
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
     ;;@ ~lib/internal/memory.ts:84:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ ~lib/internal/memory.ts:84:13
       (i32.const 1)
      )
     )
     ;;@ ~lib/internal/memory.ts:85:8
     (block $break|5
      (loop $continue|5
       (if
        ;;@ ~lib/internal/memory.ts:85:15
        (i32.ge_u
         (get_local $2)
         ;;@ ~lib/internal/memory.ts:85:20
         (i32.const 19)
        )
        (block
         ;;@ ~lib/internal/memory.ts:85:24
         (block
          ;;@ ~lib/internal/memory.ts:86:10
          (set_local $4
           ;;@ ~lib/internal/memory.ts:86:14
           (i32.load
            ;;@ ~lib/internal/memory.ts:86:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:86:30
             (i32.const 3)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:87:10
          (i32.store
           ;;@ ~lib/internal/memory.ts:87:21
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:87:27
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ ~lib/internal/memory.ts:87:32
             (i32.const 8)
            )
            ;;@ ~lib/internal/memory.ts:87:36
            (i32.shl
             (get_local $4)
             ;;@ ~lib/internal/memory.ts:87:41
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:88:10
          (set_local $3
           ;;@ ~lib/internal/memory.ts:88:14
           (i32.load
            ;;@ ~lib/internal/memory.ts:88:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:88:30
             (i32.const 7)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:89:10
          (i32.store
           ;;@ ~lib/internal/memory.ts:89:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:89:28
            (i32.const 4)
           )
           ;;@ ~lib/internal/memory.ts:89:31
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ ~lib/internal/memory.ts:89:36
             (i32.const 8)
            )
            ;;@ ~lib/internal/memory.ts:89:40
            (i32.shl
             (get_local $3)
             ;;@ ~lib/internal/memory.ts:89:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:90:10
          (set_local $4
           ;;@ ~lib/internal/memory.ts:90:14
           (i32.load
            ;;@ ~lib/internal/memory.ts:90:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:90:30
             (i32.const 11)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:91:10
          (i32.store
           ;;@ ~lib/internal/memory.ts:91:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:91:28
            (i32.const 8)
           )
           ;;@ ~lib/internal/memory.ts:91:31
           (i32.or
            (i32.shr_u
             (get_local $3)
             ;;@ ~lib/internal/memory.ts:91:36
             (i32.const 8)
            )
            ;;@ ~lib/internal/memory.ts:91:40
            (i32.shl
             (get_local $4)
             ;;@ ~lib/internal/memory.ts:91:45
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:92:10
          (set_local $3
           ;;@ ~lib/internal/memory.ts:92:14
           (i32.load
            ;;@ ~lib/internal/memory.ts:92:24
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:92:30
             (i32.const 15)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:93:10
          (i32.store
           ;;@ ~lib/internal/memory.ts:93:21
           (i32.add
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:93:28
            (i32.const 12)
           )
           ;;@ ~lib/internal/memory.ts:93:32
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ ~lib/internal/memory.ts:93:37
             (i32.const 8)
            )
            ;;@ ~lib/internal/memory.ts:93:41
            (i32.shl
             (get_local $3)
             ;;@ ~lib/internal/memory.ts:93:46
             (i32.const 24)
            )
           )
          )
          ;;@ ~lib/internal/memory.ts:94:10
          (set_local $1
           (i32.add
            (get_local $1)
            ;;@ ~lib/internal/memory.ts:94:17
            (i32.const 16)
           )
          )
          ;;@ ~lib/internal/memory.ts:94:21
          (set_local $0
           (i32.add
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:94:29
            (i32.const 16)
           )
          )
          ;;@ ~lib/internal/memory.ts:94:33
          (set_local $2
           (i32.sub
            (get_local $2)
            ;;@ ~lib/internal/memory.ts:94:38
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     ;;@ ~lib/internal/memory.ts:96:8
     (br $break|2)
    )
   )
  )
  ;;@ ~lib/internal/memory.ts:102:2
  (if
   ;;@ ~lib/internal/memory.ts:102:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:102:10
    (i32.const 16)
   )
   ;;@ ~lib/internal/memory.ts:102:14
   (block
    ;;@ ~lib/internal/memory.ts:103:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:103:14
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
     ;;@ ~lib/internal/memory.ts:103:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:103:31
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
    ;;@ ~lib/internal/memory.ts:104:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:104:14
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
     ;;@ ~lib/internal/memory.ts:104:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:104:31
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
    ;;@ ~lib/internal/memory.ts:105:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:105:14
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
     ;;@ ~lib/internal/memory.ts:105:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:105:31
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
    ;;@ ~lib/internal/memory.ts:106:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:106:14
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
     ;;@ ~lib/internal/memory.ts:106:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:106:31
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
    ;;@ ~lib/internal/memory.ts:107:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:107:14
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
     ;;@ ~lib/internal/memory.ts:107:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:107:31
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
    ;;@ ~lib/internal/memory.ts:108:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:108:14
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
     ;;@ ~lib/internal/memory.ts:108:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:108:31
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
    ;;@ ~lib/internal/memory.ts:109:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:109:14
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
     ;;@ ~lib/internal/memory.ts:109:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:109:31
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
    ;;@ ~lib/internal/memory.ts:110:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:110:14
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
     ;;@ ~lib/internal/memory.ts:110:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:110:31
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
    ;;@ ~lib/internal/memory.ts:111:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:111:14
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
     ;;@ ~lib/internal/memory.ts:111:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:111:31
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
    ;;@ ~lib/internal/memory.ts:112:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:112:14
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
     ;;@ ~lib/internal/memory.ts:112:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:112:31
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
    ;;@ ~lib/internal/memory.ts:113:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:113:14
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
     ;;@ ~lib/internal/memory.ts:113:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:113:31
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
    ;;@ ~lib/internal/memory.ts:114:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:114:14
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
     ;;@ ~lib/internal/memory.ts:114:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:114:31
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
    ;;@ ~lib/internal/memory.ts:115:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:115:14
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
     ;;@ ~lib/internal/memory.ts:115:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:115:31
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
    ;;@ ~lib/internal/memory.ts:116:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:116:14
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
     ;;@ ~lib/internal/memory.ts:116:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:116:31
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
    ;;@ ~lib/internal/memory.ts:117:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:117:14
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
     ;;@ ~lib/internal/memory.ts:117:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:117:31
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
    ;;@ ~lib/internal/memory.ts:118:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:118:14
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
     ;;@ ~lib/internal/memory.ts:118:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:118:31
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
  ;;@ ~lib/internal/memory.ts:120:2
  (if
   ;;@ ~lib/internal/memory.ts:120:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:120:10
    (i32.const 8)
   )
   ;;@ ~lib/internal/memory.ts:120:13
   (block
    ;;@ ~lib/internal/memory.ts:121:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:121:14
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
     ;;@ ~lib/internal/memory.ts:121:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:121:31
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
    ;;@ ~lib/internal/memory.ts:122:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:122:14
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
     ;;@ ~lib/internal/memory.ts:122:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:122:31
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
    ;;@ ~lib/internal/memory.ts:123:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:123:14
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
     ;;@ ~lib/internal/memory.ts:123:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:123:31
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
    ;;@ ~lib/internal/memory.ts:124:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:124:14
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
     ;;@ ~lib/internal/memory.ts:124:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:124:31
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
    ;;@ ~lib/internal/memory.ts:125:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:125:14
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
     ;;@ ~lib/internal/memory.ts:125:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:125:31
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
    ;;@ ~lib/internal/memory.ts:126:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:126:14
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
     ;;@ ~lib/internal/memory.ts:126:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:126:31
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
    ;;@ ~lib/internal/memory.ts:127:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:127:14
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
     ;;@ ~lib/internal/memory.ts:127:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:127:31
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
    ;;@ ~lib/internal/memory.ts:128:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:128:14
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
     ;;@ ~lib/internal/memory.ts:128:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:128:31
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
  ;;@ ~lib/internal/memory.ts:130:2
  (if
   ;;@ ~lib/internal/memory.ts:130:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:130:10
    (i32.const 4)
   )
   ;;@ ~lib/internal/memory.ts:130:13
   (block
    ;;@ ~lib/internal/memory.ts:131:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:131:14
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
     ;;@ ~lib/internal/memory.ts:131:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:131:31
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
    ;;@ ~lib/internal/memory.ts:132:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:132:14
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
     ;;@ ~lib/internal/memory.ts:132:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:132:31
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
    ;;@ ~lib/internal/memory.ts:133:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:133:14
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
     ;;@ ~lib/internal/memory.ts:133:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:133:31
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
    ;;@ ~lib/internal/memory.ts:134:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:134:14
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
     ;;@ ~lib/internal/memory.ts:134:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:134:31
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
  ;;@ ~lib/internal/memory.ts:136:2
  (if
   ;;@ ~lib/internal/memory.ts:136:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:136:10
    (i32.const 2)
   )
   ;;@ ~lib/internal/memory.ts:136:13
   (block
    ;;@ ~lib/internal/memory.ts:137:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:137:14
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
     ;;@ ~lib/internal/memory.ts:137:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:137:31
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
    ;;@ ~lib/internal/memory.ts:138:4
    (i32.store8
     ;;@ ~lib/internal/memory.ts:138:14
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
     ;;@ ~lib/internal/memory.ts:138:22
     (i32.load8_u
      ;;@ ~lib/internal/memory.ts:138:31
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
  ;;@ ~lib/internal/memory.ts:140:2
  (if
   ;;@ ~lib/internal/memory.ts:140:6
   (i32.and
    (get_local $2)
    ;;@ ~lib/internal/memory.ts:140:10
    (i32.const 1)
   )
   ;;@ ~lib/internal/memory.ts:140:13
   (i32.store8
    ;;@ ~lib/internal/memory.ts:141:14
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
    ;;@ ~lib/internal/memory.ts:141:22
    (i32.load8_u
     ;;@ ~lib/internal/memory.ts:141:31
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
 (func $~lib/internal/memory/memmove (; 48 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  ;;@ ~lib/internal/memory.ts:147:2
  (if
   ;;@ ~lib/internal/memory.ts:147:6
   (i32.eq
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:147:14
    (get_local $1)
   )
   ;;@ ~lib/internal/memory.ts:147:19
   (return)
  )
  ;;@ ~lib/internal/memory.ts:148:2
  (if
   ;;@ ~lib/internal/memory.ts:148:6
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       ;;@ ~lib/internal/memory.ts:148:12
       (get_local $2)
      )
      ;;@ ~lib/internal/memory.ts:148:17
      (get_local $0)
     )
    )
    (get_local $3)
    ;;@ ~lib/internal/memory.ts:148:25
    (i32.le_u
     (i32.add
      (get_local $0)
      ;;@ ~lib/internal/memory.ts:148:32
      (get_local $2)
     )
     ;;@ ~lib/internal/memory.ts:148:37
     (get_local $1)
    )
   )
   ;;@ ~lib/internal/memory.ts:148:42
   (block
    ;;@ ~lib/internal/memory.ts:149:4
    (call $~lib/internal/memory/memcpy
     ;;@ ~lib/internal/memory.ts:149:11
     (get_local $0)
     ;;@ ~lib/internal/memory.ts:149:17
     (get_local $1)
     ;;@ ~lib/internal/memory.ts:149:22
     (get_local $2)
    )
    ;;@ ~lib/internal/memory.ts:150:4
    (return)
   )
  )
  ;;@ ~lib/internal/memory.ts:152:2
  (if
   ;;@ ~lib/internal/memory.ts:152:6
   (i32.lt_u
    (get_local $0)
    ;;@ ~lib/internal/memory.ts:152:13
    (get_local $1)
   )
   ;;@ ~lib/internal/memory.ts:152:18
   (block
    ;;@ ~lib/internal/memory.ts:153:4
    (if
     ;;@ ~lib/internal/memory.ts:153:8
     (i32.eq
      (i32.and
       ;;@ ~lib/internal/memory.ts:153:9
       (get_local $1)
       ;;@ ~lib/internal/memory.ts:153:15
       (i32.const 7)
      )
      ;;@ ~lib/internal/memory.ts:153:21
      (i32.and
       ;;@ ~lib/internal/memory.ts:153:22
       (get_local $0)
       ;;@ ~lib/internal/memory.ts:153:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/internal/memory.ts:153:33
     (block
      ;;@ ~lib/internal/memory.ts:154:6
      (block $break|0
       (loop $continue|0
        (if
         ;;@ ~lib/internal/memory.ts:154:13
         (i32.and
          (get_local $0)
          ;;@ ~lib/internal/memory.ts:154:20
          (i32.const 7)
         )
         (block
          ;;@ ~lib/internal/memory.ts:154:23
          (block
           ;;@ ~lib/internal/memory.ts:155:8
           (if
            ;;@ ~lib/internal/memory.ts:155:12
            (i32.eqz
             ;;@ ~lib/internal/memory.ts:155:13
             (get_local $2)
            )
            ;;@ ~lib/internal/memory.ts:155:16
            (return)
           )
           ;;@ ~lib/internal/memory.ts:156:8
           (set_local $2
            (i32.sub
             ;;@ ~lib/internal/memory.ts:156:10
             (get_local $2)
             (i32.const 1)
            )
           )
           ;;@ ~lib/internal/memory.ts:157:8
           (i32.store8
            ;;@ ~lib/internal/memory.ts:157:18
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
            ;;@ ~lib/internal/memory.ts:157:26
            (i32.load8_u
             ;;@ ~lib/internal/memory.ts:157:35
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
      ;;@ ~lib/internal/memory.ts:159:6
      (block $break|1
       (loop $continue|1
        (if
         ;;@ ~lib/internal/memory.ts:159:13
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/internal/memory.ts:159:18
          (i32.const 8)
         )
         (block
          ;;@ ~lib/internal/memory.ts:159:21
          (block
           ;;@ ~lib/internal/memory.ts:160:8
           (i64.store
            ;;@ ~lib/internal/memory.ts:160:19
            (get_local $0)
            ;;@ ~lib/internal/memory.ts:160:25
            (i64.load
             ;;@ ~lib/internal/memory.ts:160:35
             (get_local $1)
            )
           )
           ;;@ ~lib/internal/memory.ts:161:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/internal/memory.ts:161:16
             (i32.const 8)
            )
           )
           ;;@ ~lib/internal/memory.ts:162:8
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:162:16
             (i32.const 8)
            )
           )
           ;;@ ~lib/internal/memory.ts:163:8
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ ~lib/internal/memory.ts:163:16
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
    ;;@ ~lib/internal/memory.ts:166:4
    (block $break|2
     (loop $continue|2
      (if
       ;;@ ~lib/internal/memory.ts:166:11
       (get_local $2)
       (block
        ;;@ ~lib/internal/memory.ts:166:14
        (block
         ;;@ ~lib/internal/memory.ts:167:6
         (i32.store8
          ;;@ ~lib/internal/memory.ts:167:16
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
          ;;@ ~lib/internal/memory.ts:167:24
          (i32.load8_u
           ;;@ ~lib/internal/memory.ts:167:33
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
         ;;@ ~lib/internal/memory.ts:168:6
         (set_local $2
          (i32.sub
           ;;@ ~lib/internal/memory.ts:168:8
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
   ;;@ ~lib/internal/memory.ts:170:9
   (block
    ;;@ ~lib/internal/memory.ts:171:4
    (if
     ;;@ ~lib/internal/memory.ts:171:8
     (i32.eq
      (i32.and
       ;;@ ~lib/internal/memory.ts:171:9
       (get_local $1)
       ;;@ ~lib/internal/memory.ts:171:15
       (i32.const 7)
      )
      ;;@ ~lib/internal/memory.ts:171:21
      (i32.and
       ;;@ ~lib/internal/memory.ts:171:22
       (get_local $0)
       ;;@ ~lib/internal/memory.ts:171:29
       (i32.const 7)
      )
     )
     ;;@ ~lib/internal/memory.ts:171:33
     (block
      ;;@ ~lib/internal/memory.ts:172:6
      (block $break|3
       (loop $continue|3
        (if
         ;;@ ~lib/internal/memory.ts:172:13
         (i32.and
          (i32.add
           ;;@ ~lib/internal/memory.ts:172:14
           (get_local $0)
           ;;@ ~lib/internal/memory.ts:172:21
           (get_local $2)
          )
          ;;@ ~lib/internal/memory.ts:172:26
          (i32.const 7)
         )
         (block
          ;;@ ~lib/internal/memory.ts:172:29
          (block
           ;;@ ~lib/internal/memory.ts:173:8
           (if
            ;;@ ~lib/internal/memory.ts:173:12
            (i32.eqz
             ;;@ ~lib/internal/memory.ts:173:13
             (get_local $2)
            )
            ;;@ ~lib/internal/memory.ts:173:16
            (return)
           )
           ;;@ ~lib/internal/memory.ts:174:8
           (i32.store8
            ;;@ ~lib/internal/memory.ts:174:18
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:174:25
             (tee_local $2
              (i32.sub
               ;;@ ~lib/internal/memory.ts:174:27
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            ;;@ ~lib/internal/memory.ts:174:30
            (i32.load8_u
             ;;@ ~lib/internal/memory.ts:174:39
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:174:45
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
      ;;@ ~lib/internal/memory.ts:176:6
      (block $break|4
       (loop $continue|4
        (if
         ;;@ ~lib/internal/memory.ts:176:13
         (i32.ge_u
          (get_local $2)
          ;;@ ~lib/internal/memory.ts:176:18
          (i32.const 8)
         )
         (block
          ;;@ ~lib/internal/memory.ts:176:21
          (block
           ;;@ ~lib/internal/memory.ts:177:8
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ ~lib/internal/memory.ts:177:13
             (i32.const 8)
            )
           )
           ;;@ ~lib/internal/memory.ts:178:8
           (i64.store
            ;;@ ~lib/internal/memory.ts:178:19
            (i32.add
             (get_local $0)
             ;;@ ~lib/internal/memory.ts:178:26
             (get_local $2)
            )
            ;;@ ~lib/internal/memory.ts:178:29
            (i64.load
             ;;@ ~lib/internal/memory.ts:178:39
             (i32.add
              (get_local $1)
              ;;@ ~lib/internal/memory.ts:178:45
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
    ;;@ ~lib/internal/memory.ts:181:4
    (block $break|5
     (loop $continue|5
      (if
       ;;@ ~lib/internal/memory.ts:181:11
       (get_local $2)
       (block
        ;;@ ~lib/internal/memory.ts:181:14
        (i32.store8
         ;;@ ~lib/internal/memory.ts:182:16
         (i32.add
          (get_local $0)
          ;;@ ~lib/internal/memory.ts:182:23
          (tee_local $2
           (i32.sub
            ;;@ ~lib/internal/memory.ts:182:25
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         ;;@ ~lib/internal/memory.ts:182:28
         (i32.load8_u
          ;;@ ~lib/internal/memory.ts:182:37
          (i32.add
           (get_local $1)
           ;;@ ~lib/internal/memory.ts:182:43
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
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 49 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ ~lib/internal/arraybuffer.ts:35:2
  (set_local $2
   ;;@ ~lib/internal/arraybuffer.ts:35:22
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:36:2
  (if
   ;;@ ~lib/internal/arraybuffer.ts:36:6
   (i32.gt_s
    (get_local $1)
    ;;@ ~lib/internal/arraybuffer.ts:36:22
    (get_local $2)
   )
   ;;@ ~lib/internal/arraybuffer.ts:36:37
   (block
    ;;@ ~lib/internal/arraybuffer.ts:37:4
    (if
     (i32.eqz
      ;;@ ~lib/internal/arraybuffer.ts:37:11
      (i32.le_s
       (get_local $1)
       ;;@ ~lib/internal/arraybuffer.ts:37:28
       (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 40)
       (i32.const 37)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:38:4
    (if
     ;;@ ~lib/internal/arraybuffer.ts:38:8
     (i32.le_s
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:38:25
      (i32.sub
       ;;@ ~lib/internal/arraybuffer.ts:38:31
       (call $~lib/internal/arraybuffer/computeSize
        ;;@ ~lib/internal/arraybuffer.ts:38:43
        (get_local $2)
       )
       ;;@ ~lib/internal/arraybuffer.ts:38:60
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
     )
     ;;@ ~lib/internal/arraybuffer.ts:38:74
     (block
      ;;@ ~lib/internal/arraybuffer.ts:39:6
      (i32.store
       ;;@ ~lib/internal/arraybuffer.ts:39:17
       (get_local $0)
       ;;@ ~lib/internal/arraybuffer.ts:39:44
       (get_local $1)
      )
      ;;@ ~lib/internal/arraybuffer.ts:40:13
      (block $~lib/memory/memory.fill|inlined.2
       (set_local $3
        ;;@ ~lib/internal/arraybuffer.ts:41:8
        (i32.add
         (i32.add
          (get_local $0)
          ;;@ ~lib/internal/arraybuffer.ts:41:36
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         ;;@ ~lib/internal/arraybuffer.ts:41:50
         (get_local $2)
        )
       )
       (set_local $4
        ;;@ ~lib/internal/arraybuffer.ts:42:8
        (i32.const 0)
       )
       (set_local $5
        ;;@ ~lib/internal/arraybuffer.ts:43:8
        (i32.sub
         ;;@ ~lib/internal/arraybuffer.ts:43:16
         (get_local $1)
         ;;@ ~lib/internal/arraybuffer.ts:43:32
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $5)
       )
      )
     )
     ;;@ ~lib/internal/arraybuffer.ts:45:11
     (block
      ;;@ ~lib/internal/arraybuffer.ts:46:6
      (set_local $5
       ;;@ ~lib/internal/arraybuffer.ts:46:22
       (call $~lib/internal/arraybuffer/allocateUnsafe
        ;;@ ~lib/internal/arraybuffer.ts:46:37
        (get_local $1)
       )
      )
      ;;@ ~lib/internal/arraybuffer.ts:47:13
      (block $~lib/memory/memory.copy|inlined.0
       (set_local $4
        ;;@ ~lib/internal/arraybuffer.ts:48:8
        (i32.add
         (get_local $5)
         ;;@ ~lib/internal/arraybuffer.ts:48:39
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (set_local $3
        ;;@ ~lib/internal/arraybuffer.ts:49:8
        (i32.add
         (get_local $0)
         ;;@ ~lib/internal/arraybuffer.ts:49:36
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       ;;@ ~lib/memory.ts:20:4
       (call $~lib/internal/memory/memmove
        ;;@ ~lib/memory.ts:20:12
        (get_local $4)
        ;;@ ~lib/memory.ts:20:18
        (get_local $3)
        ;;@ ~lib/memory.ts:20:23
        (get_local $2)
       )
      )
      ;;@ ~lib/internal/arraybuffer.ts:52:13
      (block $~lib/memory/memory.fill|inlined.3
       (set_local $3
        ;;@ ~lib/internal/arraybuffer.ts:53:8
        (i32.add
         (i32.add
          (get_local $5)
          ;;@ ~lib/internal/arraybuffer.ts:53:39
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         ;;@ ~lib/internal/arraybuffer.ts:53:53
         (get_local $2)
        )
       )
       (set_local $4
        ;;@ ~lib/internal/arraybuffer.ts:54:8
        (i32.const 0)
       )
       (set_local $6
        ;;@ ~lib/internal/arraybuffer.ts:55:8
        (i32.sub
         ;;@ ~lib/internal/arraybuffer.ts:55:16
         (get_local $1)
         ;;@ ~lib/internal/arraybuffer.ts:55:32
         (get_local $2)
        )
       )
       ;;@ ~lib/memory.ts:15:4
       (call $~lib/internal/memory/memset
        ;;@ ~lib/memory.ts:15:11
        (get_local $3)
        ;;@ ~lib/memory.ts:15:17
        (get_local $4)
        ;;@ ~lib/memory.ts:15:20
        (get_local $6)
       )
      )
      ;;@ ~lib/internal/arraybuffer.ts:57:13
      (return
       (get_local $5)
      )
     )
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:59:9
   (if
    ;;@ ~lib/internal/arraybuffer.ts:59:13
    (i32.lt_s
     (get_local $1)
     ;;@ ~lib/internal/arraybuffer.ts:59:29
     (get_local $2)
    )
    ;;@ ~lib/internal/arraybuffer.ts:59:44
    (block
     ;;@ ~lib/internal/arraybuffer.ts:61:4
     (if
      (i32.eqz
       ;;@ ~lib/internal/arraybuffer.ts:61:11
       (i32.ge_s
        (get_local $1)
        ;;@ ~lib/internal/arraybuffer.ts:61:28
        (i32.const 0)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 40)
        (i32.const 61)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     ;;@ ~lib/internal/arraybuffer.ts:62:4
     (i32.store
      ;;@ ~lib/internal/arraybuffer.ts:62:15
      (get_local $0)
      ;;@ ~lib/internal/arraybuffer.ts:62:42
      (get_local $1)
     )
    )
   )
  )
  ;;@ ~lib/internal/arraybuffer.ts:64:9
  (get_local $0)
 )
 (func $~lib/array/Array<Vec>#__set (; 50 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  ;;@ ~lib/array.ts:83:4
  (set_local $3
   ;;@ ~lib/array.ts:83:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:84:4
  (set_local $4
   ;;@ ~lib/array.ts:84:19
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    ;;@ ~lib/array.ts:84:41
    (i32.const 2)
   )
  )
  ;;@ ~lib/array.ts:85:4
  (if
   ;;@ ~lib/array.ts:85:8
   (i32.ge_u
    (get_local $1)
    ;;@ ~lib/array.ts:85:22
    (get_local $4)
   )
   ;;@ ~lib/array.ts:85:37
   (block
    ;;@ ~lib/array.ts:87:6
    (if
     ;;@ ~lib/array.ts:87:10
     (i32.ge_u
      (get_local $1)
      ;;@ ~lib/array.ts:87:24
      (i32.const 268435454)
     )
     ;;@ ~lib/array.ts:87:41
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 87)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    ;;@ ~lib/array.ts:88:6
    (set_local $3
     ;;@ ~lib/array.ts:88:15
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      ;;@ ~lib/array.ts:88:32
      (get_local $3)
      ;;@ ~lib/array.ts:88:40
      (i32.shl
       (i32.add
        ;;@ ~lib/array.ts:88:41
        (get_local $1)
        ;;@ ~lib/array.ts:88:49
        (i32.const 1)
       )
       ;;@ ~lib/array.ts:88:55
       (i32.const 2)
      )
     )
    )
    ;;@ ~lib/array.ts:89:6
    (i32.store
     (get_local $0)
     ;;@ ~lib/array.ts:89:21
     (get_local $3)
    )
    ;;@ ~lib/array.ts:90:6
    (i32.store offset=4
     (get_local $0)
     ;;@ ~lib/array.ts:90:21
     (i32.add
      (get_local $1)
      ;;@ ~lib/array.ts:90:29
      (i32.const 1)
     )
    )
   )
  )
  ;;@ ~lib/array.ts:92:4
  (block $~lib/internal/arraybuffer/storeUnsafe<Vec,Vec>|inlined.0
   ;;@ ~lib/internal/arraybuffer.ts:72:2
   (i32.store offset=8
    ;;@ ~lib/internal/arraybuffer.ts:72:11
    (i32.add
     (get_local $3)
     ;;@ ~lib/internal/arraybuffer.ts:72:39
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:72:40
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:72:56
      (i32.const 2)
     )
    )
    ;;@ ~lib/internal/arraybuffer.ts:72:71
    (get_local $2)
   )
  )
 )
 (func $assembly/index/createContext (; 51 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  ;;@ assembly/index.ts:308:4
  (set_global $assembly/index/context
   ;;@ assembly/index.ts:308:14
   (call $assembly/index/Context#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:255:36
    (i32.const 0)
    ;;@ assembly/index.ts:255:60
    (i32.const 0)
   )
  )
  ;;@ assembly/index.ts:309:4
  (i32.store offset=24
   (get_global $assembly/index/context)
   ;;@ assembly/index.ts:309:22
   (block (result i32)
    (set_local $2
     (call $~lib/array/Array<Sphere>#constructor
      (i32.const 0)
      (i32.const 9)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $2)
     (i32.const 0)
     ;;@ assembly/index.ts:311:8
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:311:19
      (f64.const 1e5)
      ;;@ assembly/index.ts:311:24
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 100001)
       ;;@ assembly/index.ts:311:41
       (f64.const 40.8)
       ;;@ assembly/index.ts:311:47
       (f64.const 81.6)
      )
      ;;@ assembly/index.ts:311:54
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:311:65
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:311:73
       (f64.const 0.75)
       ;;@ assembly/index.ts:311:79
       (f64.const 0)
       ;;@ assembly/index.ts:311:82
       (f64.const 0)
      )
      ;;@ assembly/index.ts:311:86
      (get_global $assembly/index/Refl_t.DIFF)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $2)
     (i32.const 1)
     ;;@ assembly/index.ts:312:8
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:312:19
      (f64.const 1e5)
      ;;@ assembly/index.ts:312:24
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:312:32
       (f64.add
        (f64.const -1e5)
        ;;@ assembly/index.ts:312:39
        (f64.const 99)
       )
       ;;@ assembly/index.ts:312:43
       (f64.const 40.8)
       ;;@ assembly/index.ts:312:49
       (f64.const 81.6)
      )
      ;;@ assembly/index.ts:312:56
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:312:67
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:312:75
       (f64.const 0)
       ;;@ assembly/index.ts:312:78
       (f64.const 0.75)
       ;;@ assembly/index.ts:312:84
       (f64.const 0)
      )
      ;;@ assembly/index.ts:312:88
      (get_global $assembly/index/Refl_t.DIFF)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $2)
     (i32.const 2)
     ;;@ assembly/index.ts:313:8
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:313:19
      (f64.const 1e5)
      ;;@ assembly/index.ts:313:24
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:313:32
       (f64.const 50)
       ;;@ assembly/index.ts:313:36
       (f64.const 40.8)
       ;;@ assembly/index.ts:313:42
       (f64.const 1e5)
      )
      ;;@ assembly/index.ts:313:48
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:313:59
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:313:67
       (f64.const 0.75)
       ;;@ assembly/index.ts:313:73
       (f64.const 0.75)
       ;;@ assembly/index.ts:313:79
       (f64.const 0.75)
      )
      ;;@ assembly/index.ts:313:86
      (get_global $assembly/index/Refl_t.DIFF)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $2)
     (i32.const 3)
     ;;@ assembly/index.ts:314:8
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:314:19
      (f64.const 1e5)
      ;;@ assembly/index.ts:314:24
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:314:32
       (f64.const 50)
       ;;@ assembly/index.ts:314:36
       (f64.const 40.8)
       ;;@ assembly/index.ts:314:42
       (f64.add
        (f64.const -1e5)
        ;;@ assembly/index.ts:314:49
        (f64.const 170)
       )
      )
      ;;@ assembly/index.ts:314:55
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:314:66
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:314:77
      (get_global $assembly/index/Refl_t.DIFF)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $2)
     (i32.const 4)
     ;;@ assembly/index.ts:315:8
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:315:19
      (f64.const 1e5)
      ;;@ assembly/index.ts:315:24
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:315:32
       (f64.const 50)
       ;;@ assembly/index.ts:315:36
       (f64.const 1e5)
       ;;@ assembly/index.ts:315:41
       (f64.const 81.6)
      )
      ;;@ assembly/index.ts:315:48
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:315:59
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:315:67
       (f64.const 0.75)
       ;;@ assembly/index.ts:315:73
       (f64.const 0.75)
       ;;@ assembly/index.ts:315:79
       (f64.const 0.75)
      )
      ;;@ assembly/index.ts:315:86
      (get_global $assembly/index/Refl_t.DIFF)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $2)
     (i32.const 5)
     ;;@ assembly/index.ts:316:8
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:316:19
      (f64.const 1e5)
      ;;@ assembly/index.ts:316:24
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:316:32
       (f64.const 50)
       ;;@ assembly/index.ts:316:36
       (f64.add
        (f64.const -1e5)
        ;;@ assembly/index.ts:316:43
        (f64.const 81.6)
       )
       ;;@ assembly/index.ts:316:49
       (f64.const 81.6)
      )
      ;;@ assembly/index.ts:316:56
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:316:67
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:316:75
       (f64.const 0.75)
       ;;@ assembly/index.ts:316:81
       (f64.const 0.75)
       ;;@ assembly/index.ts:316:87
       (f64.const 0.75)
      )
      ;;@ assembly/index.ts:316:94
      (get_global $assembly/index/Refl_t.DIFF)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $2)
     (i32.const 6)
     ;;@ assembly/index.ts:317:8
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:317:19
      (f64.const 16.5)
      ;;@ assembly/index.ts:317:25
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:317:33
       (f64.const 27)
       ;;@ assembly/index.ts:317:37
       (f64.const 16.5)
       ;;@ assembly/index.ts:317:43
       (f64.const 47)
      )
      ;;@ assembly/index.ts:317:48
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:317:59
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:317:67
       (f64.const 0.999)
       ;;@ assembly/index.ts:317:74
       (f64.const 0.999)
       ;;@ assembly/index.ts:317:81
       (f64.const 0.999)
      )
      ;;@ assembly/index.ts:317:89
      (get_global $assembly/index/Refl_t.SPEC)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $2)
     (i32.const 7)
     ;;@ assembly/index.ts:318:8
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:318:19
      (f64.const 16.5)
      ;;@ assembly/index.ts:318:25
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:318:33
       (f64.const 73)
       ;;@ assembly/index.ts:318:37
       (f64.const 16.5)
       ;;@ assembly/index.ts:318:43
       (f64.const 78)
      )
      ;;@ assembly/index.ts:318:48
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:318:59
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:318:67
       (f64.const 0.999)
       ;;@ assembly/index.ts:318:74
       (f64.const 0.999)
       ;;@ assembly/index.ts:318:81
       (f64.const 0.999)
      )
      ;;@ assembly/index.ts:318:89
      (get_global $assembly/index/Refl_t.REFR)
     )
    )
    (call $~lib/array/Array<Sphere>#__unchecked_set
     (get_local $2)
     (i32.const 8)
     ;;@ assembly/index.ts:319:8
     (call $assembly/index/Sphere#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:319:19
      (f64.const 600)
      ;;@ assembly/index.ts:319:24
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:319:32
       (f64.const 50)
       ;;@ assembly/index.ts:319:36
       (f64.sub
        (f64.const 681.6)
        ;;@ assembly/index.ts:319:44
        (f64.const 0.27)
       )
       ;;@ assembly/index.ts:319:50
       (f64.const 81.6)
      )
      ;;@ assembly/index.ts:319:57
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       ;;@ assembly/index.ts:319:65
       (f64.const 112)
       ;;@ assembly/index.ts:319:70
       (f64.const 112)
       ;;@ assembly/index.ts:319:75
       (f64.const 112)
      )
      ;;@ assembly/index.ts:319:81
      (call $assembly/index/Vec#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
      )
      ;;@ assembly/index.ts:319:92
      (get_global $assembly/index/Refl_t.DIFF)
     )
    )
    (get_local $2)
   )
  )
  ;;@ assembly/index.ts:321:4
  (i32.store offset=4
   (get_global $assembly/index/context)
   ;;@ assembly/index.ts:321:18
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:321:26
    (f64.const 0)
    ;;@ assembly/index.ts:321:29
    (f64.const -0.042612)
    ;;@ assembly/index.ts:321:40
    (f64.const -1)
   )
  )
  ;;@ assembly/index.ts:322:4
  (i32.store offset=8
   (get_global $assembly/index/context)
   ;;@ assembly/index.ts:322:18
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:322:26
    (f64.const 50)
    ;;@ assembly/index.ts:322:30
    (f64.const 52)
    ;;@ assembly/index.ts:322:34
    (f64.const 295.6)
   )
  )
  ;;@ assembly/index.ts:323:4
  (i32.store offset=12
   (get_global $assembly/index/context)
   ;;@ assembly/index.ts:323:18
   (call $assembly/index/Ray#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:323:26
    (i32.load offset=8
     (get_global $assembly/index/context)
    )
    ;;@ assembly/index.ts:323:51
    (call $assembly/index/Vec#norm_in
     ;;@ assembly/index.ts:323:39
     (i32.load offset=4
      (get_global $assembly/index/context)
     )
    )
   )
  )
  ;;@ assembly/index.ts:324:4
  (i32.store offset=16
   (get_global $assembly/index/context)
   ;;@ assembly/index.ts:324:17
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  ;;@ assembly/index.ts:325:4
  (i32.store offset=20
   (get_global $assembly/index/context)
   ;;@ assembly/index.ts:325:17
   (call $assembly/index/Vec#constructor
    (i32.const 0)
    (f64.const 0)
    (f64.const 0)
    (f64.const 0)
   )
  )
  ;;@ assembly/index.ts:326:4
  (i32.store offset=28
   (get_global $assembly/index/context)
   ;;@ assembly/index.ts:326:20
   (get_local $0)
  )
  ;;@ assembly/index.ts:327:4
  (i32.store offset=32
   (get_global $assembly/index/context)
   ;;@ assembly/index.ts:327:21
   (get_local $1)
  )
  ;;@ assembly/index.ts:328:15
  (drop
   (call $assembly/index/Vec#set
    ;;@ assembly/index.ts:328:4
    (i32.load offset=16
     (get_global $assembly/index/context)
    )
    ;;@ assembly/index.ts:328:19
    (f64.div
     (f64.mul
      ;;@ assembly/index.ts:328:20
      (f64.convert_s/i32
       (get_local $0)
      )
      ;;@ assembly/index.ts:328:31
      (f64.const 0.5135)
     )
     ;;@ assembly/index.ts:328:41
     (f64.convert_s/i32
      (get_local $1)
     )
    )
    ;;@ assembly/index.ts:328:51
    (f64.const 0)
    ;;@ assembly/index.ts:328:54
    (f64.const 0)
   )
  )
  ;;@ assembly/index.ts:332:9
  (drop
   (call $assembly/index/Vec#multScalar_in
    ;;@ assembly/index.ts:331:9
    (call $assembly/index/Vec#norm_in
     ;;@ assembly/index.ts:330:9
     (call $assembly/index/Vec#mod2
      ;;@ assembly/index.ts:329:4
      (i32.load offset=16
       (get_global $assembly/index/context)
      )
      ;;@ assembly/index.ts:330:14
      (i32.load offset=4
       (i32.load offset=12
        (get_global $assembly/index/context)
       )
      )
      ;;@ assembly/index.ts:330:29
      (i32.load offset=20
       (get_global $assembly/index/context)
      )
     )
    )
    ;;@ assembly/index.ts:332:23
    (f64.const 0.5135)
   )
  )
  ;;@ assembly/index.ts:333:4
  (set_local $3
   ;;@ assembly/index.ts:333:14
   (i32.mul
    (get_local $0)
    ;;@ assembly/index.ts:333:18
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:334:4
  (i32.store
   (get_global $assembly/index/context)
   ;;@ assembly/index.ts:334:21
   (call $~lib/array/Array<Vec>#constructor
    (i32.const 0)
    ;;@ assembly/index.ts:334:36
    (get_local $3)
   )
  )
  ;;@ assembly/index.ts:335:4
  (block $break|0
   ;;@ assembly/index.ts:335:9
   (set_local $2
    ;;@ assembly/index.ts:335:17
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:335:20
      (i32.lt_s
       (get_local $2)
       ;;@ assembly/index.ts:335:24
       (get_local $3)
      )
     )
    )
    ;;@ assembly/index.ts:336:8
    (call $~lib/array/Array<Vec>#__set
     (i32.load
      (get_global $assembly/index/context)
     )
     ;;@ assembly/index.ts:336:23
     (get_local $2)
     ;;@ assembly/index.ts:336:28
     (call $assembly/index/Vec#constructor
      (i32.const 0)
      ;;@ assembly/index.ts:29:34
      (f64.const 0)
      ;;@ assembly/index.ts:29:57
      (f64.const 0)
      ;;@ assembly/index.ts:29:80
      (f64.const 0)
     )
    )
    ;;@ assembly/index.ts:335:29
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/index.ts:338:11
  (get_global $assembly/index/context)
 )
 (func $assembly/index/Hit#constructor (; 52 ;) (type $iiFii) (param $0 i32) (param $1 i32) (param $2 f64) (param $3 i32) (result i32)
  (local $4 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $4
       (call $~lib/memory/memory.allocate
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
 (func $assembly/index/Ray#constructor|trampoline (; 53 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (get_global $~argc)
      )
     )
     (unreachable)
    )
    (set_local $1
     ;;@ assembly/index.ts:159:32
     (call $assembly/index/Vec#constructor
      (i32.const 0)
      (f64.const 0)
      (f64.const 0)
      (f64.const 0)
     )
    )
   )
   (set_local $2
    ;;@ assembly/index.ts:159:59
    (call $assembly/index/Vec#constructor
     (i32.const 0)
     ;;@ assembly/index.ts:29:34
     (f64.const 0)
     ;;@ assembly/index.ts:29:57
     (f64.const 0)
     ;;@ assembly/index.ts:29:80
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
 (func $assembly/index/Hit#constructor|trampoline (; 54 ;) (type $iiFii) (param $0 i32) (param $1 i32) (param $2 f64) (param $3 i32) (result i32)
  (block $3of3
   (block $2of3
    (block $1of3
     (block $0of3
      (block $outOfRange
       (br_table $0of3 $1of3 $2of3 $3of3 $outOfRange
        (get_global $~argc)
       )
      )
      (unreachable)
     )
     (set_local $1
      ;;@ assembly/index.ts:221:34
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
     ;;@ assembly/index.ts:221:63
     (f64.const 0)
    )
   )
   (set_local $3
    ;;@ assembly/index.ts:221:83
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
 (func $assembly/index/Locals#constructor (; 55 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $1
       (call $~lib/memory/memory.allocate
        (i32.const 108)
       )
      )
      (i32.store
       (get_local $1)
       ;;@ assembly/index.ts:260:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        ;;@ assembly/index.ts:260:25
        (f64.const 0)
        ;;@ assembly/index.ts:260:28
        (f64.const 0)
        ;;@ assembly/index.ts:260:31
        (f64.const 0)
       )
      )
      (i32.store offset=4
       (get_local $1)
       ;;@ assembly/index.ts:261:15
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        ;;@ assembly/index.ts:261:23
        (f64.const 1)
        ;;@ assembly/index.ts:261:26
        (f64.const 0)
        ;;@ assembly/index.ts:261:29
        (f64.const 0)
       )
      )
      (i32.store offset=8
       (get_local $1)
       ;;@ assembly/index.ts:262:15
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
      (i32.store offset=12
       (get_local $1)
       ;;@ assembly/index.ts:263:14
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=16
       (get_local $1)
       ;;@ assembly/index.ts:264:16
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=20
       (get_local $1)
       ;;@ assembly/index.ts:265:16
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=24
       (get_local $1)
       ;;@ assembly/index.ts:266:16
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=28
       (get_local $1)
       ;;@ assembly/index.ts:267:16
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=32
       (get_local $1)
       ;;@ assembly/index.ts:268:16
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=36
       (get_local $1)
       ;;@ assembly/index.ts:269:16
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=40
       (get_local $1)
       ;;@ assembly/index.ts:270:16
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=44
       (get_local $1)
       ;;@ assembly/index.ts:271:16
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=48
       (get_local $1)
       ;;@ assembly/index.ts:272:16
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=52
       (get_local $1)
       ;;@ assembly/index.ts:273:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=56
       (get_local $1)
       ;;@ assembly/index.ts:274:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=60
       (get_local $1)
       ;;@ assembly/index.ts:275:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=64
       (get_local $1)
       ;;@ assembly/index.ts:276:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=68
       (get_local $1)
       ;;@ assembly/index.ts:277:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=72
       (get_local $1)
       ;;@ assembly/index.ts:278:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=76
       (get_local $1)
       ;;@ assembly/index.ts:279:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=80
       (get_local $1)
       ;;@ assembly/index.ts:280:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=84
       (get_local $1)
       ;;@ assembly/index.ts:281:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=88
       (get_local $1)
       ;;@ assembly/index.ts:282:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=92
       (get_local $1)
       ;;@ assembly/index.ts:283:17
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        (f64.const 0)
        (f64.const 0)
        (f64.const 0)
       )
      )
      (i32.store offset=96
       (get_local $1)
       ;;@ assembly/index.ts:284:18
       (call $assembly/index/Vec#constructor
        (i32.const 0)
        ;;@ assembly/index.ts:29:34
        (f64.const 0)
        ;;@ assembly/index.ts:29:57
        (f64.const 0)
        ;;@ assembly/index.ts:29:80
        (f64.const 0)
       )
      )
      (i32.store offset=100
       (get_local $1)
       ;;@ assembly/index.ts:285:18
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
      (i32.store offset=104
       (get_local $1)
       ;;@ assembly/index.ts:286:18
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
      (get_local $1)
     )
    )
   )
  )
 )
 (func $assembly/index/createLocals (; 56 ;) (type $i) (result i32)
  (local $0 i32)
  ;;@ assembly/index.ts:342:4
  (set_local $0
   ;;@ assembly/index.ts:342:17
   (call $assembly/index/Locals#constructor
    (i32.const 0)
   )
  )
  ;;@ assembly/index.ts:343:11
  (get_local $0)
 )
 (func $assembly/index/rand (; 57 ;) (type $F) (result f64)
  ;;@ assembly/index.ts:24:25
  (call $~lib/math/JSMath.random)
 )
 (func $assembly/index/Ray#set (; 58 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ assembly/index.ts:165:15
  (drop
   (call $assembly/index/Vec#setFrom
    ;;@ assembly/index.ts:165:8
    (i32.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:165:23
    (get_local $1)
   )
  )
  ;;@ assembly/index.ts:166:15
  (drop
   (call $assembly/index/Vec#setFrom
    ;;@ assembly/index.ts:166:8
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/index.ts:166:23
    (get_local $2)
   )
  )
  ;;@ assembly/index.ts:167:15
  (get_local $0)
 )
 (func $~lib/array/Array<Sphere>#__get (; 59 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:70:4
  (set_local $2
   ;;@ ~lib/array.ts:70:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:73:23
  (if (result i32)
   ;;@ ~lib/array.ts:71:11
   (i32.lt_u
    (get_local $1)
    ;;@ ~lib/array.ts:71:24
    (i32.shr_u
     ;;@ ~lib/array.ts:71:30
     (i32.load
      (get_local $2)
     )
     ;;@ ~lib/array.ts:71:52
     (i32.const 2)
    )
   )
   ;;@ ~lib/array.ts:72:8
   (block $~lib/internal/arraybuffer/loadUnsafe<Sphere,Sphere>|inlined.0 (result i32)
    ;;@ ~lib/internal/arraybuffer.ts:68:91
    (i32.load offset=8
     ;;@ ~lib/internal/arraybuffer.ts:68:20
     (i32.add
      (get_local $2)
      ;;@ ~lib/internal/arraybuffer.ts:68:48
      (i32.shl
       ;;@ ~lib/internal/arraybuffer.ts:68:49
       (get_local $1)
       ;;@ ~lib/internal/arraybuffer.ts:68:65
       (i32.const 2)
      )
     )
    )
   )
   ;;@ ~lib/array.ts:73:8
   (unreachable)
  )
 )
 (func $assembly/index/Sphere#intersect (; 60 ;) (type $iiiF) (param $0 i32) (param $1 i32) (param $2 i32) (result f64)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  ;;@ assembly/index.ts:192:8
  (set_local $3
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
    (i32.load offset=80
     (get_local $2)
    )
   )
  )
  ;;@ assembly/index.ts:194:8
  (set_local $5
   ;;@ assembly/index.ts:194:18
   (f64.const 0.0001)
  )
  ;;@ assembly/index.ts:195:8
  (set_local $6
   ;;@ assembly/index.ts:195:19
   (call $assembly/index/Vec#dot
    ;;@ assembly/index.ts:195:16
    (get_local $3)
    ;;@ assembly/index.ts:195:23
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:196:8
  (set_local $7
   ;;@ assembly/index.ts:196:18
   (f64.add
    (f64.sub
     (f64.mul
      (get_local $6)
      ;;@ assembly/index.ts:196:22
      (get_local $6)
     )
     ;;@ assembly/index.ts:196:29
     (call $assembly/index/Vec#dot
      ;;@ assembly/index.ts:196:26
      (get_local $3)
      ;;@ assembly/index.ts:196:33
      (get_local $3)
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
    (get_local $7)
    ;;@ assembly/index.ts:197:18
    (f64.const 0)
   )
   ;;@ assembly/index.ts:197:21
   (return
    ;;@ assembly/index.ts:198:19
    (f64.const 0)
   )
   ;;@ assembly/index.ts:199:15
   (set_local $7
    ;;@ assembly/index.ts:200:18
    (f64.sqrt
     ;;@ assembly/index.ts:200:30
     (get_local $7)
    )
   )
  )
  ;;@ assembly/index.ts:202:67
  (if (result f64)
   ;;@ assembly/index.ts:202:15
   (f64.gt
    (tee_local $4
     ;;@ assembly/index.ts:202:20
     (f64.sub
      (get_local $6)
      ;;@ assembly/index.ts:202:24
      (get_local $7)
     )
    )
    ;;@ assembly/index.ts:202:31
    (get_local $5)
   )
   ;;@ assembly/index.ts:202:37
   (get_local $4)
   ;;@ assembly/index.ts:202:41
   (if (result f64)
    (f64.gt
     (tee_local $4
      ;;@ assembly/index.ts:202:46
      (f64.add
       (get_local $6)
       ;;@ assembly/index.ts:202:50
       (get_local $7)
      )
     )
     ;;@ assembly/index.ts:202:57
     (get_local $5)
    )
    ;;@ assembly/index.ts:202:63
    (get_local $4)
    ;;@ assembly/index.ts:202:67
    (f64.const 0)
   )
  )
 )
 (func $assembly/index/Ray#copy (; 61 ;) (type $iiv) (param $0 i32) (param $1 i32)
  ;;@ assembly/index.ts:161:15
  (drop
   (call $assembly/index/Vec#setFrom
    ;;@ assembly/index.ts:161:8
    (i32.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:161:23
    (i32.load
     (get_local $1)
    )
   )
  )
  ;;@ assembly/index.ts:162:15
  (drop
   (call $assembly/index/Vec#setFrom
    ;;@ assembly/index.ts:162:8
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/index.ts:162:23
    (i32.load offset=4
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/index/intersect (; 62 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  ;;@ assembly/index.ts:228:4
  (set_local $3
   ;;@ assembly/index.ts:228:19
   (f64.const inf)
  )
  ;;@ assembly/index.ts:229:4
  (set_local $4
   ;;@ assembly/index.ts:229:18
   (i32.const -1)
  )
  ;;@ assembly/index.ts:230:4
  (set_local $6
   ;;@ assembly/index.ts:230:17
   (block $~lib/array/Array<Sphere>#get:length|inlined.0 (result i32)
    (set_local $5
     (i32.load offset=24
      (get_global $assembly/index/context)
     )
    )
    ;;@ ~lib/array.ts:37:16
    (i32.load offset=4
     ;;@ ~lib/array.ts:37:11
     (get_local $5)
    )
   )
  )
  ;;@ assembly/index.ts:231:4
  (set_local $7
   ;;@ assembly/index.ts:231:19
   (f64.const 0)
  )
  ;;@ assembly/index.ts:233:4
  (block $break|0
   ;;@ assembly/index.ts:233:9
   (set_local $5
    ;;@ assembly/index.ts:233:17
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:233:20
      (i32.lt_s
       (get_local $5)
       ;;@ assembly/index.ts:233:24
       (get_local $6)
      )
     )
    )
    ;;@ assembly/index.ts:233:32
    (block
     ;;@ assembly/index.ts:234:8
     (set_local $7
      ;;@ assembly/index.ts:234:31
      (call $assembly/index/Sphere#intersect
       ;;@ assembly/index.ts:234:12
       (call $~lib/array/Array<Sphere>#__get
        (i32.load offset=24
         (get_global $assembly/index/context)
        )
        ;;@ assembly/index.ts:234:28
        (get_local $5)
       )
       ;;@ assembly/index.ts:234:41
       (get_local $0)
       ;;@ assembly/index.ts:234:44
       (get_local $2)
      )
     )
     ;;@ assembly/index.ts:235:8
     (if
      (f64.ne
       ;;@ assembly/index.ts:235:12
       (if (result f64)
        (f64.ne
         (get_local $7)
         (f64.const 0)
        )
        ;;@ assembly/index.ts:235:17
        (f64.convert_u/i32
         (f64.lt
          (get_local $7)
          ;;@ assembly/index.ts:235:21
          (get_local $3)
         )
        )
        (get_local $7)
       )
       (f64.const 0)
      )
      ;;@ assembly/index.ts:235:24
      (block
       ;;@ assembly/index.ts:236:12
       (set_local $3
        ;;@ assembly/index.ts:236:16
        (get_local $7)
       )
       ;;@ assembly/index.ts:237:12
       (set_local $4
        ;;@ assembly/index.ts:237:17
        (get_local $5)
       )
      )
     )
    )
    ;;@ assembly/index.ts:233:27
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  ;;@ assembly/index.ts:240:4
  (f64.store offset=8
   (get_local $1)
   ;;@ assembly/index.ts:240:12
   (get_local $3)
  )
  ;;@ assembly/index.ts:241:4
  (i32.store offset=16
   (get_local $1)
   ;;@ assembly/index.ts:241:13
   (get_local $4)
  )
  ;;@ assembly/index.ts:243:12
  (call $assembly/index/Ray#copy
   ;;@ assembly/index.ts:243:4
   (i32.load
    (get_local $1)
   )
   ;;@ assembly/index.ts:243:17
   (get_local $0)
  )
  ;;@ assembly/index.ts:244:11
  (get_local $1)
 )
 (func $~lib/array/Array<Sphere>#__unchecked_get (; 63 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:78:46
  (block $~lib/internal/arraybuffer/loadUnsafe<Sphere,Sphere>|inlined.1 (result i32)
   (set_local $2
    ;;@ ~lib/array.ts:78:27
    (i32.load
     (get_local $0)
    )
   )
   ;;@ ~lib/internal/arraybuffer.ts:68:91
   (i32.load offset=8
    ;;@ ~lib/internal/arraybuffer.ts:68:20
    (i32.add
     (get_local $2)
     ;;@ ~lib/internal/arraybuffer.ts:68:48
     (i32.shl
      ;;@ ~lib/internal/arraybuffer.ts:68:49
      (get_local $1)
      ;;@ ~lib/internal/arraybuffer.ts:68:65
      (i32.const 2)
     )
    )
   )
  )
 )
 (func $assembly/index/radiance (; 64 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  ;;@ assembly/index.ts:348:4
  (drop
   (call $assembly/index/intersect
    ;;@ assembly/index.ts:348:14
    (get_local $0)
    ;;@ assembly/index.ts:348:17
    (i32.load offset=8
     (get_local $3)
    )
    ;;@ assembly/index.ts:348:29
    (get_local $3)
   )
  )
  ;;@ assembly/index.ts:350:4
  (if
   ;;@ assembly/index.ts:350:8
   (f64.eq
    (f64.load offset=8
     (i32.load offset=8
      (get_local $3)
     )
    )
    ;;@ assembly/index.ts:350:24
    (f64.const inf)
   )
   ;;@ assembly/index.ts:350:34
   (return
    ;;@ assembly/index.ts:351:15
    (i32.load
     (get_local $3)
    )
   )
  )
  ;;@ assembly/index.ts:354:4
  (set_local $4
   ;;@ assembly/index.ts:354:22
   (call $~lib/array/Array<Sphere>#__unchecked_get
    ;;@ assembly/index.ts:354:32
    (i32.load offset=24
     (get_global $assembly/index/context)
    )
    ;;@ assembly/index.ts:354:48
    (i32.load offset=16
     (i32.load offset=8
      (get_local $3)
     )
    )
   )
  )
  ;;@ assembly/index.ts:356:8
  (drop
   (call $assembly/index/Vec#multScalar2
    ;;@ assembly/index.ts:356:4
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/index.ts:356:20
    (f64.load offset=8
     (i32.load offset=8
      (get_local $3)
     )
    )
    ;;@ assembly/index.ts:356:34
    (i32.load offset=16
     (get_local $3)
    )
   )
  )
  ;;@ assembly/index.ts:358:4
  (set_local $5
   ;;@ assembly/index.ts:358:29
   (call $assembly/index/Vec#add2
    ;;@ assembly/index.ts:358:17
    (i32.load offset=16
     (get_local $3)
    )
    ;;@ assembly/index.ts:358:34
    (i32.load
     (get_local $0)
    )
    ;;@ assembly/index.ts:358:39
    (i32.load offset=20
     (get_local $3)
    )
   )
  )
  ;;@ assembly/index.ts:359:4
  (set_local $6
   ;;@ assembly/index.ts:359:44
   (call $assembly/index/Vec#norm_in
    ;;@ assembly/index.ts:359:19
    (call $assembly/index/Vec#sub2
     ;;@ assembly/index.ts:359:17
     (get_local $5)
     ;;@ assembly/index.ts:359:24
     (i32.load offset=8
      (get_local $4)
     )
     ;;@ assembly/index.ts:359:31
     (i32.load offset=24
      (get_local $3)
     )
    )
   )
  )
  ;;@ assembly/index.ts:360:4
  (set_local $7
   ;;@ assembly/index.ts:360:18
   (if (result i32)
    (f64.lt
     ;;@ assembly/index.ts:360:20
     (call $assembly/index/Vec#dot
      ;;@ assembly/index.ts:360:18
      (get_local $6)
      ;;@ assembly/index.ts:360:24
      (i32.load offset=4
       (get_local $0)
      )
     )
     ;;@ assembly/index.ts:360:31
     (f64.const 0)
    )
    ;;@ assembly/index.ts:360:37
    (call $assembly/index/Vec#clone
     ;;@ assembly/index.ts:360:35
     (get_local $6)
     ;;@ assembly/index.ts:360:43
     (i32.load offset=28
      (get_local $3)
     )
    )
    ;;@ assembly/index.ts:360:60
    (call $assembly/index/Vec#multScalar2
     ;;@ assembly/index.ts:360:58
     (get_local $6)
     ;;@ assembly/index.ts:360:72
     (f64.const -1)
     ;;@ assembly/index.ts:360:76
     (i32.load offset=28
      (get_local $3)
     )
    )
   )
  )
  ;;@ assembly/index.ts:361:4
  (if
   ;;@ assembly/index.ts:361:8
   (i32.eqz
    ;;@ assembly/index.ts:361:9
    (get_local $2)
   )
   ;;@ assembly/index.ts:361:12
   (set_local $2
    ;;@ assembly/index.ts:362:12
    (i32.load offset=12
     (get_local $3)
    )
   )
  )
  ;;@ assembly/index.ts:364:6
  (drop
   (call $assembly/index/Vec#setFrom
    ;;@ assembly/index.ts:364:4
    (get_local $2)
    ;;@ assembly/index.ts:364:14
    (i32.load offset=16
     (get_local $4)
    )
   )
  )
  ;;@ assembly/index.ts:366:4
  (set_local $9
   ;;@ assembly/index.ts:366:19
   (if (result f64)
    (if (result i32)
     (tee_local $8
      (f64.gt
       (f64.load
        (get_local $2)
       )
       ;;@ assembly/index.ts:366:25
       (f64.load offset=8
        (get_local $2)
       )
      )
     )
     ;;@ assembly/index.ts:366:32
     (f64.gt
      (f64.load
       (get_local $2)
      )
      ;;@ assembly/index.ts:366:38
      (f64.load offset=16
       (get_local $2)
      )
     )
     (get_local $8)
    )
    ;;@ assembly/index.ts:366:44
    (f64.load
     (get_local $2)
    )
    ;;@ assembly/index.ts:366:50
    (if (result f64)
     (f64.gt
      (f64.load offset=8
       (get_local $2)
      )
      ;;@ assembly/index.ts:366:56
      (f64.load offset=16
       (get_local $2)
      )
     )
     ;;@ assembly/index.ts:366:62
     (f64.load offset=8
      (get_local $2)
     )
     ;;@ assembly/index.ts:366:68
     (f64.load offset=16
      (get_local $2)
     )
    )
   )
  )
  ;;@ assembly/index.ts:367:4
  (if
   ;;@ assembly/index.ts:367:8
   (i32.gt_s
    (tee_local $1
     (i32.add
      ;;@ assembly/index.ts:367:10
      (get_local $1)
      (i32.const 1)
     )
    )
    ;;@ assembly/index.ts:367:18
    (i32.const 5)
   )
   ;;@ assembly/index.ts:367:21
   (block
    ;;@ assembly/index.ts:368:8
    (if
     ;;@ assembly/index.ts:368:12
     (f64.lt
      (call $assembly/index/rand)
      ;;@ assembly/index.ts:368:21
      (get_local $9)
     )
     ;;@ assembly/index.ts:368:24
     (block
      ;;@ assembly/index.ts:369:14
      (drop
       (call $assembly/index/Vec#multScalar_in
        ;;@ assembly/index.ts:369:12
        (get_local $2)
        ;;@ assembly/index.ts:369:28
        (f64.div
         (f64.const 1)
         ;;@ assembly/index.ts:369:32
         (get_local $9)
        )
       )
      )
      ;;@ assembly/index.ts:370:14
      (drop
       (call $assembly/index/Vec#setFrom
        ;;@ assembly/index.ts:370:12
        (get_local $2)
        ;;@ assembly/index.ts:370:22
        (i32.load offset=12
         (get_local $4)
        )
       )
      )
      ;;@ assembly/index.ts:371:19
      (return
       (get_local $2)
      )
     )
     ;;@ assembly/index.ts:372:15
     (block
      ;;@ assembly/index.ts:373:14
      (drop
       (call $assembly/index/Vec#setFrom
        ;;@ assembly/index.ts:373:12
        (get_local $2)
        ;;@ assembly/index.ts:373:22
        (i32.load offset=12
         (get_local $4)
        )
       )
      )
      ;;@ assembly/index.ts:374:19
      (return
       (get_local $2)
      )
     )
    )
    (unreachable)
   )
  )
  ;;@ assembly/index.ts:378:4
  (if
   ;;@ assembly/index.ts:378:8
   (i32.eq
    (i32.load offset=20
     (get_local $4)
    )
    ;;@ assembly/index.ts:378:20
    (get_global $assembly/index/Refl_t.DIFF)
   )
   ;;@ assembly/index.ts:378:33
   (block
    ;;@ assembly/index.ts:380:8
    (set_local $10
     ;;@ assembly/index.ts:380:24
     (f64.mul
      (f64.mul
       (f64.const 2)
       ;;@ assembly/index.ts:380:28
       (get_global $~lib/math/NativeMath.PI)
      )
      ;;@ assembly/index.ts:380:38
      (call $assembly/index/rand)
     )
    )
    ;;@ assembly/index.ts:381:8
    (set_local $11
     ;;@ assembly/index.ts:381:24
     (call $assembly/index/rand)
    )
    ;;@ assembly/index.ts:382:8
    (set_local $12
     ;;@ assembly/index.ts:382:25
     (f64.sqrt
      ;;@ assembly/index.ts:382:37
      (get_local $11)
     )
    )
    ;;@ assembly/index.ts:383:8
    (set_local $8
     ;;@ assembly/index.ts:383:21
     (get_local $7)
    )
    ;;@ assembly/index.ts:384:8
    (set_local $13
     ;;@ assembly/index.ts:384:21
     (i32.load offset=32
      (get_local $3)
     )
    )
    ;;@ assembly/index.ts:385:8
    (if
     ;;@ assembly/index.ts:385:12
     (f64.gt
      (f64.abs
       ;;@ assembly/index.ts:385:23
       (f64.load
        (get_local $8)
       )
      )
      ;;@ assembly/index.ts:385:30
      (f64.const 0.1)
     )
     ;;@ assembly/index.ts:385:35
     (drop
      (call $assembly/index/Vec#set
       ;;@ assembly/index.ts:386:12
       (get_local $13)
       ;;@ assembly/index.ts:386:18
       (f64.const 0)
       ;;@ assembly/index.ts:386:21
       (f64.const 1)
       ;;@ assembly/index.ts:386:24
       (f64.const 0)
      )
     )
     ;;@ assembly/index.ts:387:15
     (block
      ;;@ assembly/index.ts:388:14
      (drop
       (call $assembly/index/Vec#set
        ;;@ assembly/index.ts:388:12
        (get_local $13)
        ;;@ assembly/index.ts:388:18
        (f64.const 1)
        ;;@ assembly/index.ts:388:21
        (f64.const 1)
        ;;@ assembly/index.ts:388:24
        (f64.const 0)
       )
      )
      ;;@ assembly/index.ts:389:24
      (drop
       (call $assembly/index/Vec#norm_in
        ;;@ assembly/index.ts:389:14
        (call $assembly/index/Vec#mod_in
         ;;@ assembly/index.ts:389:12
         (get_local $13)
         ;;@ assembly/index.ts:389:21
         (get_local $8)
        )
       )
      )
     )
    )
    ;;@ assembly/index.ts:391:8
    (set_local $14
     ;;@ assembly/index.ts:391:23
     (call $assembly/index/Vec#mod2
      ;;@ assembly/index.ts:391:21
      (get_local $8)
      ;;@ assembly/index.ts:391:28
      (get_local $13)
      ;;@ assembly/index.ts:391:31
      (i32.load offset=36
       (get_local $3)
      )
     )
    )
    ;;@ assembly/index.ts:392:8
    (set_local $15
     ;;@ assembly/index.ts:396:13
     (call $assembly/index/Vec#norm_in
      ;;@ assembly/index.ts:395:13
      (call $assembly/index/Vec#add_in
       ;;@ assembly/index.ts:394:13
       (call $assembly/index/Vec#add_in
        ;;@ assembly/index.ts:393:13
        (call $assembly/index/Vec#multScalar_in
         ;;@ assembly/index.ts:392:21
         (get_local $13)
         ;;@ assembly/index.ts:393:27
         (f64.mul
          ;;@ assembly/index.ts:393:34
          (call $~lib/math/JSMath.cos
           ;;@ assembly/index.ts:393:38
           (get_local $10)
          )
          ;;@ assembly/index.ts:393:44
          (get_local $12)
         )
        )
        ;;@ assembly/index.ts:394:22
        (call $assembly/index/Vec#multScalar_in
         ;;@ assembly/index.ts:394:20
         (get_local $14)
         ;;@ assembly/index.ts:394:36
         (f64.mul
          ;;@ assembly/index.ts:394:43
          (call $~lib/math/JSMath.sin
           ;;@ assembly/index.ts:394:47
           (get_local $10)
          )
          ;;@ assembly/index.ts:394:53
          (get_local $12)
         )
        )
       )
       ;;@ assembly/index.ts:395:22
       (call $assembly/index/Vec#multScalar_in
        ;;@ assembly/index.ts:395:20
        (get_local $8)
        ;;@ assembly/index.ts:395:36
        (f64.sqrt
         ;;@ assembly/index.ts:395:48
         (f64.sub
          (f64.const 1)
          ;;@ assembly/index.ts:395:54
          (get_local $11)
         )
        )
       )
      )
     )
    )
    ;;@ assembly/index.ts:397:8
    (set_local $16
     ;;@ assembly/index.ts:397:32
     (call $assembly/index/Ray#set
      ;;@ assembly/index.ts:397:18
      (i32.load offset=100
       (get_local $3)
      )
      ;;@ assembly/index.ts:397:36
      (get_local $5)
      ;;@ assembly/index.ts:397:39
      (get_local $15)
     )
    )
    ;;@ assembly/index.ts:398:8
    (set_local $17
     ;;@ assembly/index.ts:398:30
     (call $assembly/index/Vec#set
      ;;@ assembly/index.ts:398:18
      (i32.load offset=40
       (get_local $3)
      )
      ;;@ assembly/index.ts:398:34
      (f64.const 0)
      ;;@ assembly/index.ts:398:37
      (f64.const 0)
      ;;@ assembly/index.ts:398:40
      (f64.const 0)
     )
    )
    ;;@ assembly/index.ts:399:8
    (drop
     (call $assembly/index/radiance
      ;;@ assembly/index.ts:399:17
      (get_local $16)
      ;;@ assembly/index.ts:399:22
      (get_local $1)
      ;;@ assembly/index.ts:399:29
      (get_local $17)
      ;;@ assembly/index.ts:399:34
      (get_local $3)
     )
    )
    ;;@ assembly/index.ts:400:10
    (drop
     (call $assembly/index/Vec#mul_in
      ;;@ assembly/index.ts:400:8
      (get_local $2)
      ;;@ assembly/index.ts:400:17
      (get_local $17)
     )
    )
    ;;@ assembly/index.ts:401:10
    (drop
     (call $assembly/index/Vec#add_in
      ;;@ assembly/index.ts:401:8
      (get_local $2)
      ;;@ assembly/index.ts:401:17
      (i32.load offset=12
       (get_local $4)
      )
     )
    )
    ;;@ assembly/index.ts:402:15
    (return
     (get_local $2)
    )
   )
   ;;@ assembly/index.ts:403:11
   (if
    ;;@ assembly/index.ts:403:15
    (i32.eq
     (i32.load offset=20
      (get_local $4)
     )
     ;;@ assembly/index.ts:403:27
     (get_global $assembly/index/Refl_t.SPEC)
    )
    ;;@ assembly/index.ts:403:40
    (block
     ;;@ assembly/index.ts:405:8
     (set_local $17
      ;;@ assembly/index.ts:405:21
      (call $assembly/index/Vec#sub2
       ;;@ assembly/index.ts:405:17
       (i32.load offset=4
        (get_local $0)
       )
       ;;@ assembly/index.ts:405:28
       (call $assembly/index/Vec#multScalar_in
        ;;@ assembly/index.ts:405:26
        (get_local $6)
        ;;@ assembly/index.ts:405:42
        (f64.mul
         (f64.const 2)
         ;;@ assembly/index.ts:405:48
         (call $assembly/index/Vec#dot
          ;;@ assembly/index.ts:405:46
          (get_local $6)
          ;;@ assembly/index.ts:405:52
          (i32.load offset=4
           (get_local $0)
          )
         )
        )
       )
       ;;@ assembly/index.ts:405:59
       (i32.load offset=84
        (get_local $3)
       )
      )
     )
     ;;@ assembly/index.ts:406:8
     (set_local $16
      ;;@ assembly/index.ts:406:32
      (call $assembly/index/Ray#set
       ;;@ assembly/index.ts:406:18
       (i32.load offset=100
        (get_local $3)
       )
       ;;@ assembly/index.ts:406:36
       (get_local $5)
       ;;@ assembly/index.ts:406:39
       (get_local $17)
      )
     )
     ;;@ assembly/index.ts:407:8
     (set_local $15
      ;;@ assembly/index.ts:407:30
      (call $assembly/index/Vec#set
       ;;@ assembly/index.ts:407:18
       (i32.load offset=40
        (get_local $3)
       )
       ;;@ assembly/index.ts:407:34
       (f64.const 0)
       ;;@ assembly/index.ts:407:37
       (f64.const 0)
       ;;@ assembly/index.ts:407:40
       (f64.const 0)
      )
     )
     ;;@ assembly/index.ts:408:8
     (drop
      (call $assembly/index/radiance
       ;;@ assembly/index.ts:408:17
       (get_local $16)
       ;;@ assembly/index.ts:408:22
       (get_local $1)
       ;;@ assembly/index.ts:408:29
       (get_local $15)
       ;;@ assembly/index.ts:408:34
       (get_local $3)
      )
     )
     ;;@ assembly/index.ts:409:10
     (drop
      (call $assembly/index/Vec#mul_in
       ;;@ assembly/index.ts:409:8
       (get_local $2)
       ;;@ assembly/index.ts:409:17
       (get_local $15)
      )
     )
     ;;@ assembly/index.ts:410:29
     (return
      ;;@ assembly/index.ts:410:17
      (call $assembly/index/Vec#add_in
       ;;@ assembly/index.ts:410:15
       (get_local $2)
       ;;@ assembly/index.ts:410:24
       (i32.load offset=12
        (get_local $4)
       )
      )
     )
    )
   )
  )
  ;;@ assembly/index.ts:413:4
  (set_local $18
   ;;@ assembly/index.ts:413:14
   (call $assembly/index/Vec#multScalar2
    ;;@ assembly/index.ts:413:12
    (get_local $6)
    ;;@ assembly/index.ts:413:26
    (f64.mul
     (f64.const 2)
     ;;@ assembly/index.ts:413:32
     (call $assembly/index/Vec#dot
      ;;@ assembly/index.ts:413:30
      (get_local $6)
      ;;@ assembly/index.ts:413:36
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    ;;@ assembly/index.ts:413:42
    (i32.load offset=88
     (get_local $3)
    )
   )
  )
  ;;@ assembly/index.ts:414:8
  (drop
   (call $assembly/index/Vec#sub
    ;;@ assembly/index.ts:414:4
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/index.ts:414:12
    (get_local $18)
    ;;@ assembly/index.ts:414:15
    (i32.const 1)
   )
  )
  ;;@ assembly/index.ts:415:4
  (set_local $19
   ;;@ assembly/index.ts:415:37
   (call $assembly/index/Ray#set
    ;;@ assembly/index.ts:415:23
    (i32.load offset=100
     (get_local $3)
    )
    ;;@ assembly/index.ts:415:41
    (get_local $5)
    ;;@ assembly/index.ts:415:44
    (get_local $18)
   )
  )
  ;;@ assembly/index.ts:416:4
  (set_local $20
   ;;@ assembly/index.ts:416:21
   (f64.gt
    ;;@ assembly/index.ts:416:23
    (call $assembly/index/Vec#dot
     ;;@ assembly/index.ts:416:21
     (get_local $6)
     ;;@ assembly/index.ts:416:27
     (get_local $7)
    )
    ;;@ assembly/index.ts:416:33
    (f64.const 0)
   )
  )
  (set_local $21
   ;;@ assembly/index.ts:417:20
   (f64.const 1)
  )
  (set_local $22
   ;;@ assembly/index.ts:418:13
   (f64.const 1.5)
  )
  ;;@ assembly/index.ts:419:4
  (set_local $23
   ;;@ assembly/index.ts:419:21
   (if (result f64)
    (get_local $20)
    ;;@ assembly/index.ts:419:28
    (f64.div
     (get_local $21)
     ;;@ assembly/index.ts:419:33
     (get_local $22)
    )
    ;;@ assembly/index.ts:419:38
    (f64.div
     (get_local $22)
     ;;@ assembly/index.ts:419:43
     (get_local $21)
    )
   )
  )
  ;;@ assembly/index.ts:420:4
  (set_local $24
   ;;@ assembly/index.ts:420:25
   (call $assembly/index/Vec#dot
    ;;@ assembly/index.ts:420:21
    (i32.load offset=4
     (get_local $0)
    )
    ;;@ assembly/index.ts:420:29
    (get_local $7)
   )
  )
  ;;@ assembly/index.ts:421:4
  (set_local $25
   ;;@ assembly/index.ts:421:23
   (f64.const 0)
  )
  ;;@ assembly/index.ts:423:4
  (if
   ;;@ assembly/index.ts:423:8
   (f64.lt
    (tee_local $25
     ;;@ assembly/index.ts:423:17
     (f64.sub
      (f64.const 1)
      ;;@ assembly/index.ts:423:21
      (f64.mul
       (f64.mul
        (get_local $23)
        ;;@ assembly/index.ts:423:27
        (get_local $23)
       )
       ;;@ assembly/index.ts:423:33
       (f64.sub
        ;;@ assembly/index.ts:423:34
        (f64.const 1)
        ;;@ assembly/index.ts:423:38
        (f64.mul
         (get_local $24)
         ;;@ assembly/index.ts:423:44
         (get_local $24)
        )
       )
      )
     )
    )
    ;;@ assembly/index.ts:423:52
    (f64.const 0)
   )
   ;;@ assembly/index.ts:423:55
   (block
    ;;@ assembly/index.ts:425:8
    (set_local $15
     ;;@ assembly/index.ts:425:30
     (call $assembly/index/Vec#set
      ;;@ assembly/index.ts:425:18
      (i32.load offset=40
       (get_local $3)
      )
      ;;@ assembly/index.ts:425:34
      (f64.const 0)
      ;;@ assembly/index.ts:425:37
      (f64.const 0)
      ;;@ assembly/index.ts:425:40
      (f64.const 0)
     )
    )
    ;;@ assembly/index.ts:426:8
    (drop
     (call $assembly/index/radiance
      ;;@ assembly/index.ts:426:17
      (get_local $19)
      ;;@ assembly/index.ts:426:26
      (get_local $1)
      ;;@ assembly/index.ts:426:33
      (get_local $15)
      ;;@ assembly/index.ts:426:38
      (get_local $3)
     )
    )
    ;;@ assembly/index.ts:427:10
    (drop
     (call $assembly/index/Vec#mul_in
      ;;@ assembly/index.ts:427:8
      (get_local $2)
      ;;@ assembly/index.ts:427:17
      (get_local $15)
     )
    )
    ;;@ assembly/index.ts:428:29
    (return
     ;;@ assembly/index.ts:428:17
     (call $assembly/index/Vec#add_in
      ;;@ assembly/index.ts:428:15
      (get_local $2)
      ;;@ assembly/index.ts:428:24
      (i32.load offset=12
       (get_local $4)
      )
     )
    )
   )
  )
  ;;@ assembly/index.ts:431:4
  (set_local $26
   ;;@ assembly/index.ts:431:15
   (call $assembly/index/Vec#multScalar2
    ;;@ assembly/index.ts:431:13
    (get_local $6)
    ;;@ assembly/index.ts:431:27
    (f64.mul
     (if (result f64)
      ;;@ assembly/index.ts:431:28
      (get_local $20)
      ;;@ assembly/index.ts:431:35
      (f64.const 1)
      ;;@ assembly/index.ts:431:39
      (f64.const -1)
     )
     ;;@ assembly/index.ts:431:45
     (f64.add
      ;;@ assembly/index.ts:431:46
      (f64.mul
       (get_local $24)
       ;;@ assembly/index.ts:431:52
       (get_local $23)
      )
      ;;@ assembly/index.ts:431:58
      (f64.sqrt
       ;;@ assembly/index.ts:431:70
       (get_local $25)
      )
     )
    )
    ;;@ assembly/index.ts:431:79
    (i32.load offset=44
     (get_local $3)
    )
   )
  )
  ;;@ assembly/index.ts:432:4
  (set_local $27
   ;;@ assembly/index.ts:435:9
   (call $assembly/index/Vec#norm_in
    ;;@ assembly/index.ts:434:9
    (call $assembly/index/Vec#sub_in
     ;;@ assembly/index.ts:433:9
     (call $assembly/index/Vec#multScalar2
      ;;@ assembly/index.ts:432:20
      (i32.load offset=4
       (get_local $0)
      )
      ;;@ assembly/index.ts:433:21
      (get_local $23)
      ;;@ assembly/index.ts:433:26
      (i32.load offset=48
       (get_local $3)
      )
     )
     ;;@ assembly/index.ts:434:16
     (get_local $26)
    )
   )
  )
  (set_local $28
   ;;@ assembly/index.ts:436:19
   (f64.sub
    (get_local $22)
    ;;@ assembly/index.ts:436:24
    (get_local $21)
   )
  )
  (set_local $29
   ;;@ assembly/index.ts:437:12
   (f64.add
    (get_local $22)
    ;;@ assembly/index.ts:437:17
    (get_local $21)
   )
  )
  (set_local $30
   ;;@ assembly/index.ts:438:13
   (f64.div
    (f64.mul
     ;;@ assembly/index.ts:438:14
     (get_local $28)
     ;;@ assembly/index.ts:438:18
     (get_local $28)
    )
    ;;@ assembly/index.ts:438:23
    (f64.mul
     ;;@ assembly/index.ts:438:24
     (get_local $29)
     ;;@ assembly/index.ts:438:28
     (get_local $29)
    )
   )
  )
  (set_local $31
   ;;@ assembly/index.ts:439:12
   (f64.sub
    (f64.convert_s/i32
     (i32.const 1)
    )
    ;;@ assembly/index.ts:439:16
    (if (result f64)
     ;;@ assembly/index.ts:439:17
     (get_local $20)
     ;;@ assembly/index.ts:439:24
     (f64.neg
      ;;@ assembly/index.ts:439:25
      (get_local $24)
     )
     ;;@ assembly/index.ts:439:36
     (call $assembly/index/Vec#dot
      ;;@ assembly/index.ts:439:31
      (get_local $27)
      ;;@ assembly/index.ts:439:40
      (get_local $6)
     )
    )
   )
  )
  (set_local $32
   ;;@ assembly/index.ts:440:20
   (f64.add
    (get_local $30)
    ;;@ assembly/index.ts:440:25
    (f64.mul
     (f64.mul
      (f64.mul
       (f64.mul
        (f64.mul
         (f64.sub
          ;;@ assembly/index.ts:440:26
          (f64.const 1)
          ;;@ assembly/index.ts:440:30
          (get_local $30)
         )
         ;;@ assembly/index.ts:440:36
         (get_local $31)
        )
        ;;@ assembly/index.ts:440:40
        (get_local $31)
       )
       ;;@ assembly/index.ts:440:44
       (get_local $31)
      )
      ;;@ assembly/index.ts:440:48
      (get_local $31)
     )
     ;;@ assembly/index.ts:440:52
     (get_local $31)
    )
   )
  )
  (set_local $33
   ;;@ assembly/index.ts:441:13
   (f64.sub
    (f64.convert_s/i32
     (i32.const 1)
    )
    ;;@ assembly/index.ts:441:17
    (get_local $32)
   )
  )
  (set_local $34
   ;;@ assembly/index.ts:442:12
   (f64.add
    (f64.const 0.25)
    ;;@ assembly/index.ts:442:19
    (f64.mul
     (f64.const 0.5)
     ;;@ assembly/index.ts:442:25
     (get_local $32)
    )
   )
  )
  (set_local $35
   ;;@ assembly/index.ts:443:13
   (f64.div
    (get_local $32)
    ;;@ assembly/index.ts:443:18
    (get_local $34)
   )
  )
  (set_local $36
   ;;@ assembly/index.ts:444:13
   (f64.div
    (get_local $33)
    ;;@ assembly/index.ts:444:18
    (f64.sub
     ;;@ assembly/index.ts:444:19
     (f64.const 1)
     ;;@ assembly/index.ts:444:23
     (get_local $34)
    )
   )
  )
  ;;@ assembly/index.ts:445:4
  (set_local $37
   ;;@ assembly/index.ts:445:28
   (call $assembly/index/Ray#set
    ;;@ assembly/index.ts:445:14
    (i32.load offset=100
     (get_local $3)
    )
    ;;@ assembly/index.ts:445:32
    (get_local $5)
    ;;@ assembly/index.ts:445:35
    (get_local $27)
   )
  )
  ;;@ assembly/index.ts:447:4
  (set_local $38
   ;;@ assembly/index.ts:447:32
   (call $assembly/index/Vec#set
    ;;@ assembly/index.ts:447:19
    (i32.load offset=52
     (get_local $3)
    )
    ;;@ assembly/index.ts:447:36
    (f64.const 0)
    ;;@ assembly/index.ts:447:39
    (f64.const 0)
    ;;@ assembly/index.ts:447:42
    (f64.const 0)
   )
  )
  ;;@ assembly/index.ts:448:4
  (if
   ;;@ assembly/index.ts:448:8
   (i32.gt_s
    (get_local $1)
    ;;@ assembly/index.ts:448:16
    (i32.const 2)
   )
   ;;@ assembly/index.ts:448:19
   (if
    ;;@ assembly/index.ts:449:12
    (f64.lt
     (call $assembly/index/rand)
     ;;@ assembly/index.ts:449:21
     (get_local $34)
    )
    ;;@ assembly/index.ts:449:24
    (drop
     (call $assembly/index/Vec#multScalar_in
      ;;@ assembly/index.ts:450:12
      (call $assembly/index/radiance
       ;;@ assembly/index.ts:450:21
       (get_local $19)
       ;;@ assembly/index.ts:450:30
       (get_local $1)
       ;;@ assembly/index.ts:450:37
       (get_local $38)
       ;;@ assembly/index.ts:450:42
       (get_local $3)
      )
      ;;@ assembly/index.ts:450:64
      (get_local $35)
     )
    )
    ;;@ assembly/index.ts:451:15
    (drop
     (call $assembly/index/Vec#multScalar_in
      ;;@ assembly/index.ts:452:12
      (call $assembly/index/radiance
       ;;@ assembly/index.ts:452:21
       (get_local $37)
       ;;@ assembly/index.ts:452:26
       (get_local $1)
       ;;@ assembly/index.ts:452:33
       (get_local $38)
       ;;@ assembly/index.ts:452:38
       (get_local $3)
      )
      ;;@ assembly/index.ts:452:60
      (get_local $36)
     )
    )
   )
   ;;@ assembly/index.ts:454:11
   (block
    ;;@ assembly/index.ts:455:51
    (drop
     (call $assembly/index/Vec#multScalar_in
      ;;@ assembly/index.ts:455:8
      (call $assembly/index/radiance
       ;;@ assembly/index.ts:455:17
       (get_local $37)
       ;;@ assembly/index.ts:455:22
       (get_local $1)
       ;;@ assembly/index.ts:455:29
       (i32.load offset=92
        (get_local $3)
       )
       ;;@ assembly/index.ts:455:43
       (get_local $3)
      )
      ;;@ assembly/index.ts:455:65
      (get_local $33)
     )
    )
    ;;@ assembly/index.ts:458:13
    (drop
     (call $assembly/index/Vec#add_in
      ;;@ assembly/index.ts:457:13
      (call $assembly/index/Vec#multScalar_in
       ;;@ assembly/index.ts:456:8
       (call $assembly/index/radiance
        ;;@ assembly/index.ts:456:17
        (get_local $19)
        ;;@ assembly/index.ts:456:26
        (get_local $1)
        ;;@ assembly/index.ts:456:33
        (get_local $38)
        ;;@ assembly/index.ts:456:38
        (get_local $3)
       )
       ;;@ assembly/index.ts:457:27
       (get_local $32)
      )
      ;;@ assembly/index.ts:458:20
      (i32.load offset=92
       (get_local $3)
      )
     )
    )
   )
  )
  ;;@ assembly/index.ts:460:6
  (drop
   (call $assembly/index/Vec#mul_in
    ;;@ assembly/index.ts:460:4
    (get_local $2)
    ;;@ assembly/index.ts:460:13
    (get_local $38)
   )
  )
  ;;@ assembly/index.ts:461:25
  (call $assembly/index/Vec#add_in
   ;;@ assembly/index.ts:461:11
   (get_local $2)
   ;;@ assembly/index.ts:461:20
   (i32.load offset=12
    (get_local $4)
   )
  )
 )
 (func $assembly/index/clamp (; 65 ;) (type $FF) (param $0 f64) (result f64)
  ;;@ assembly/index.ts:215:43
  (if (result f64)
   ;;@ assembly/index.ts:215:11
   (f64.lt
    (get_local $0)
    ;;@ assembly/index.ts:215:15
    (f64.const 0)
   )
   ;;@ assembly/index.ts:215:21
   (f64.const 0)
   ;;@ assembly/index.ts:215:27
   (if (result f64)
    (f64.gt
     (get_local $0)
     ;;@ assembly/index.ts:215:31
     (f64.const 1)
    )
    ;;@ assembly/index.ts:215:37
    (f64.const 1)
    ;;@ assembly/index.ts:215:43
    (get_local $0)
   )
  )
 )
 (func $~lib/array/Array<Vec>#__get (; 66 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  ;;@ ~lib/array.ts:70:4
  (set_local $2
   ;;@ ~lib/array.ts:70:17
   (i32.load
    (get_local $0)
   )
  )
  ;;@ ~lib/array.ts:73:23
  (if (result i32)
   ;;@ ~lib/array.ts:71:11
   (i32.lt_u
    (get_local $1)
    ;;@ ~lib/array.ts:71:24
    (i32.shr_u
     ;;@ ~lib/array.ts:71:30
     (i32.load
      (get_local $2)
     )
     ;;@ ~lib/array.ts:71:52
     (i32.const 2)
    )
   )
   ;;@ ~lib/array.ts:72:8
   (block $~lib/internal/arraybuffer/loadUnsafe<Vec,Vec>|inlined.0 (result i32)
    ;;@ ~lib/internal/arraybuffer.ts:68:91
    (i32.load offset=8
     ;;@ ~lib/internal/arraybuffer.ts:68:20
     (i32.add
      (get_local $2)
      ;;@ ~lib/internal/arraybuffer.ts:68:48
      (i32.shl
       ;;@ ~lib/internal/arraybuffer.ts:68:49
       (get_local $1)
       ;;@ ~lib/internal/arraybuffer.ts:68:65
       (i32.const 2)
      )
     )
    )
   )
   ;;@ ~lib/array.ts:73:8
   (unreachable)
  )
 )
 (func $assembly/index/render (; 67 ;) (type $iiiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  ;;@ assembly/index.ts:466:4
  (block $break|0
   ;;@ assembly/index.ts:466:9
   (set_local $6
    ;;@ assembly/index.ts:466:22
    (get_local $3)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      ;;@ assembly/index.ts:466:26
      (i32.lt_s
       (get_local $6)
       ;;@ assembly/index.ts:466:30
       (i32.add
        (get_local $3)
        ;;@ assembly/index.ts:466:35
        (get_local $5)
       )
      )
     )
    )
    ;;@ assembly/index.ts:469:8
    (block $break|1
     ;;@ assembly/index.ts:469:13
     (set_local $7
      ;;@ assembly/index.ts:469:26
      (get_local $2)
     )
     (loop $repeat|1
      (br_if $break|1
       (i32.eqz
        ;;@ assembly/index.ts:469:30
        (i32.lt_s
         (get_local $7)
         ;;@ assembly/index.ts:469:34
         (i32.add
          (get_local $2)
          ;;@ assembly/index.ts:469:39
          (get_local $4)
         )
        )
       )
      )
      ;;@ assembly/index.ts:471:12
      (block $break|2
       ;;@ assembly/index.ts:471:17
       (set_local $8
        ;;@ assembly/index.ts:471:31
        (i32.const 0)
       )
       (loop $repeat|2
        (br_if $break|2
         (i32.eqz
          ;;@ assembly/index.ts:471:34
          (i32.lt_s
           (get_local $8)
           ;;@ assembly/index.ts:471:39
           (i32.const 2)
          )
         )
        )
        ;;@ assembly/index.ts:471:48
        (block
         ;;@ assembly/index.ts:473:16
         (set_local $9
          ;;@ assembly/index.ts:473:24
          (i32.add
           (i32.mul
            (get_local $6)
            ;;@ assembly/index.ts:473:28
            (i32.load offset=28
             (get_global $assembly/index/context)
            )
           )
           ;;@ assembly/index.ts:473:44
           (get_local $7)
          )
         )
         ;;@ assembly/index.ts:475:16
         (block $break|3
          ;;@ assembly/index.ts:475:21
          (set_local $10
           ;;@ assembly/index.ts:475:35
           (i32.const 0)
          )
          (loop $repeat|3
           (br_if $break|3
            (i32.eqz
             ;;@ assembly/index.ts:475:38
             (i32.lt_s
              (get_local $10)
              ;;@ assembly/index.ts:475:43
              (i32.const 2)
             )
            )
           )
           ;;@ assembly/index.ts:475:52
           (block
            ;;@ assembly/index.ts:476:34
            (drop
             (call $assembly/index/Vec#set
              ;;@ assembly/index.ts:476:20
              (i32.load offset=96
               (get_local $0)
              )
              ;;@ assembly/index.ts:476:38
              (f64.const 0)
              ;;@ assembly/index.ts:476:41
              (f64.const 0)
              ;;@ assembly/index.ts:476:44
              (f64.const 0)
             )
            )
            ;;@ assembly/index.ts:477:20
            (block $break|4
             ;;@ assembly/index.ts:477:25
             (set_local $11
              ;;@ assembly/index.ts:477:38
              (i32.const 0)
             )
             (loop $repeat|4
              (br_if $break|4
               (i32.eqz
                ;;@ assembly/index.ts:477:41
                (i32.lt_s
                 (get_local $11)
                 ;;@ assembly/index.ts:477:45
                 (get_local $1)
                )
               )
              )
              ;;@ assembly/index.ts:477:57
              (block
               ;;@ assembly/index.ts:478:24
               (set_local $12
                ;;@ assembly/index.ts:478:40
                (f64.mul
                 (f64.const 2)
                 ;;@ assembly/index.ts:478:46
                 (call $assembly/index/rand)
                )
               )
               ;;@ assembly/index.ts:479:24
               (set_local $13
                ;;@ assembly/index.ts:479:33
                (if (result f64)
                 (f64.lt
                  (get_local $12)
                  ;;@ assembly/index.ts:479:38
                  (f64.const 1)
                 )
                 ;;@ assembly/index.ts:479:44
                 (f64.sub
                  (f64.sqrt
                   ;;@ assembly/index.ts:479:56
                   (get_local $12)
                  )
                  ;;@ assembly/index.ts:479:62
                  (f64.const 1)
                 )
                 ;;@ assembly/index.ts:479:68
                 (f64.sub
                  (f64.const 1)
                  ;;@ assembly/index.ts:479:74
                  (f64.sqrt
                   ;;@ assembly/index.ts:479:86
                   (f64.sub
                    (f64.const 2)
                    ;;@ assembly/index.ts:479:92
                    (get_local $12)
                   )
                  )
                 )
                )
               )
               ;;@ assembly/index.ts:480:24
               (set_local $14
                ;;@ assembly/index.ts:480:40
                (f64.mul
                 (f64.const 2)
                 ;;@ assembly/index.ts:480:46
                 (call $assembly/index/rand)
                )
               )
               ;;@ assembly/index.ts:481:24
               (set_local $15
                ;;@ assembly/index.ts:481:33
                (if (result f64)
                 (f64.lt
                  (get_local $14)
                  ;;@ assembly/index.ts:481:38
                  (f64.const 1)
                 )
                 ;;@ assembly/index.ts:481:44
                 (f64.sub
                  (f64.sqrt
                   ;;@ assembly/index.ts:481:56
                   (get_local $14)
                  )
                  ;;@ assembly/index.ts:481:62
                  (f64.const 1)
                 )
                 ;;@ assembly/index.ts:481:68
                 (f64.sub
                  (f64.const 1)
                  ;;@ assembly/index.ts:481:74
                  (f64.sqrt
                   ;;@ assembly/index.ts:481:86
                   (f64.sub
                    (f64.const 2)
                    ;;@ assembly/index.ts:481:92
                    (get_local $14)
                   )
                  )
                 )
                )
               )
               ;;@ assembly/index.ts:482:24
               (set_local $16
                ;;@ assembly/index.ts:482:44
                (call $assembly/index/Vec#multScalar2
                 ;;@ assembly/index.ts:482:33
                 (i32.load offset=16
                  (get_global $assembly/index/context)
                 )
                 ;;@ assembly/index.ts:483:28
                 (f64.sub
                  ;;@ assembly/index.ts:483:36
                  (f64.div
                   (f64.add
                    ;;@ assembly/index.ts:483:37
                    (f64.div
                     (f64.add
                      ;;@ assembly/index.ts:483:38
                      (f64.add
                       (f64.convert_s/i32
                        (get_local $10)
                       )
                       ;;@ assembly/index.ts:483:43
                       (f64.const 0.5)
                      )
                      ;;@ assembly/index.ts:483:49
                      (get_local $13)
                     )
                     ;;@ assembly/index.ts:483:55
                     (f64.const 2)
                    )
                    (f64.convert_s/i32
                     ;;@ assembly/index.ts:483:61
                     (get_local $7)
                    )
                   )
                   (f64.convert_s/i32
                    ;;@ assembly/index.ts:483:66
                    (i32.load offset=28
                     (get_global $assembly/index/context)
                    )
                   )
                  )
                  ;;@ assembly/index.ts:483:82
                  (f64.const 0.5)
                 )
                 ;;@ assembly/index.ts:484:28
                 (i32.load offset=56
                  (get_local $0)
                 )
                )
               )
               ;;@ assembly/index.ts:486:24
               (set_local $17
                ;;@ assembly/index.ts:486:44
                (call $assembly/index/Vec#multScalar2
                 ;;@ assembly/index.ts:486:33
                 (i32.load offset=20
                  (get_global $assembly/index/context)
                 )
                 ;;@ assembly/index.ts:487:28
                 (f64.sub
                  ;;@ assembly/index.ts:487:36
                  (f64.div
                   (f64.add
                    ;;@ assembly/index.ts:487:37
                    (f64.div
                     (f64.add
                      ;;@ assembly/index.ts:487:38
                      (f64.add
                       (f64.convert_s/i32
                        (get_local $8)
                       )
                       ;;@ assembly/index.ts:487:43
                       (f64.const 0.5)
                      )
                      ;;@ assembly/index.ts:487:49
                      (get_local $15)
                     )
                     ;;@ assembly/index.ts:487:55
                     (f64.const 2)
                    )
                    (f64.convert_s/i32
                     ;;@ assembly/index.ts:487:61
                     (get_local $6)
                    )
                   )
                   (f64.convert_s/i32
                    ;;@ assembly/index.ts:487:66
                    (i32.load offset=32
                     (get_global $assembly/index/context)
                    )
                   )
                  )
                  ;;@ assembly/index.ts:487:83
                  (f64.const 0.5)
                 )
                 ;;@ assembly/index.ts:488:28
                 (i32.load offset=60
                  (get_local $0)
                 )
                )
               )
               ;;@ assembly/index.ts:490:27
               (drop
                (call $assembly/index/Vec#add_in
                 ;;@ assembly/index.ts:490:24
                 (get_local $16)
                 ;;@ assembly/index.ts:490:34
                 (get_local $17)
                )
               )
               ;;@ assembly/index.ts:491:27
               (drop
                (call $assembly/index/Vec#add_in
                 ;;@ assembly/index.ts:491:24
                 (get_local $16)
                 ;;@ assembly/index.ts:491:34
                 (i32.load offset=4
                  (i32.load offset=12
                   (get_global $assembly/index/context)
                  )
                 )
                )
               )
               ;;@ assembly/index.ts:492:24
               (set_local $18
                ;;@ assembly/index.ts:492:36
                (call $assembly/index/Vec#multScalar2
                 ;;@ assembly/index.ts:492:33
                 (get_local $16)
                 ;;@ assembly/index.ts:492:48
                 (f64.const 140)
                 ;;@ assembly/index.ts:492:53
                 (i32.load offset=64
                  (get_local $0)
                 )
                )
               )
               ;;@ assembly/index.ts:493:27
               (drop
                (call $assembly/index/Vec#add_in
                 ;;@ assembly/index.ts:493:24
                 (get_local $18)
                 ;;@ assembly/index.ts:493:34
                 (i32.load
                  (i32.load offset=12
                   (get_global $assembly/index/context)
                  )
                 )
                )
               )
               ;;@ assembly/index.ts:494:24
               (set_local $19
                ;;@ assembly/index.ts:494:36
                (call $assembly/index/Vec#norm_in
                 ;;@ assembly/index.ts:494:33
                 (get_local $16)
                )
               )
               ;;@ assembly/index.ts:495:24
               (set_local $20
                ;;@ assembly/index.ts:495:48
                (call $assembly/index/Ray#set
                 ;;@ assembly/index.ts:495:34
                 (i32.load offset=104
                  (get_local $0)
                 )
                 ;;@ assembly/index.ts:495:52
                 (get_local $18)
                 ;;@ assembly/index.ts:495:56
                 (get_local $19)
                )
               )
               ;;@ assembly/index.ts:496:24
               (set_local $21
                ;;@ assembly/index.ts:496:34
                (call $assembly/index/radiance
                 ;;@ assembly/index.ts:496:43
                 (get_local $20)
                 ;;@ assembly/index.ts:496:48
                 (i32.const 0)
                 ;;@ assembly/index.ts:496:51
                 (i32.load offset=72
                  (get_local $0)
                 )
                 ;;@ assembly/index.ts:496:65
                 (get_local $0)
                )
               )
               ;;@ assembly/index.ts:497:28
               (drop
                (call $assembly/index/Vec#multScalar_in
                 ;;@ assembly/index.ts:497:24
                 (get_local $21)
                 ;;@ assembly/index.ts:497:42
                 (f64.div
                  (f64.const 1)
                  ;;@ assembly/index.ts:497:48
                  (f64.convert_s/i32
                   (get_local $1)
                  )
                 )
                )
               )
               ;;@ assembly/index.ts:498:38
               (drop
                (call $assembly/index/Vec#add_in
                 ;;@ assembly/index.ts:498:24
                 (i32.load offset=96
                  (get_local $0)
                 )
                 ;;@ assembly/index.ts:498:45
                 (get_local $21)
                )
               )
              )
              ;;@ assembly/index.ts:477:52
              (set_local $11
               (i32.add
                (get_local $11)
                (i32.const 1)
               )
              )
              (br $repeat|4)
             )
            )
            ;;@ assembly/index.ts:502:20
            (set_local $15
             ;;@ assembly/index.ts:502:29
             (call $assembly/index/clamp
              ;;@ assembly/index.ts:502:35
              (f64.load
               (i32.load offset=96
                (get_local $0)
               )
              )
             )
            )
            ;;@ assembly/index.ts:503:20
            (set_local $14
             ;;@ assembly/index.ts:503:29
             (call $assembly/index/clamp
              ;;@ assembly/index.ts:503:35
              (f64.load offset=8
               (i32.load offset=96
                (get_local $0)
               )
              )
             )
            )
            ;;@ assembly/index.ts:504:20
            (set_local $13
             ;;@ assembly/index.ts:504:29
             (call $assembly/index/clamp
              ;;@ assembly/index.ts:504:35
              (f64.load offset=16
               (i32.load offset=96
                (get_local $0)
               )
              )
             )
            )
            ;;@ assembly/index.ts:505:20
            (set_local $11
             ;;@ assembly/index.ts:505:42
             (call $assembly/index/Vec#set
              ;;@ assembly/index.ts:505:29
              (i32.load offset=76
               (get_local $0)
              )
              ;;@ assembly/index.ts:505:46
              (get_local $15)
              ;;@ assembly/index.ts:505:50
              (get_local $14)
              ;;@ assembly/index.ts:505:54
              (get_local $13)
             )
            )
            ;;@ assembly/index.ts:506:23
            (drop
             (call $assembly/index/Vec#multScalar_in
              ;;@ assembly/index.ts:506:20
              (get_local $11)
              ;;@ assembly/index.ts:506:37
              (f64.const 0.55)
             )
            )
            ;;@ assembly/index.ts:508:20
            (set_local $21
             ;;@ assembly/index.ts:508:29
             (call $~lib/array/Array<Vec>#__get
              (i32.load
               (get_global $assembly/index/context)
              )
              ;;@ assembly/index.ts:508:44
              (get_local $9)
             )
            )
            ;;@ assembly/index.ts:509:23
            (drop
             (call $assembly/index/Vec#add_in
              ;;@ assembly/index.ts:509:20
              (get_local $21)
              ;;@ assembly/index.ts:509:30
              (get_local $11)
             )
            )
           )
           ;;@ assembly/index.ts:475:46
           (set_local $10
            (i32.add
             (get_local $10)
             (i32.const 1)
            )
           )
           (br $repeat|3)
          )
         )
        )
        ;;@ assembly/index.ts:471:42
        (set_local $8
         (i32.add
          (get_local $8)
          (i32.const 1)
         )
        )
        (br $repeat|2)
       )
      )
      ;;@ assembly/index.ts:469:42
      (set_local $7
       (i32.add
        (get_local $7)
        (i32.const 1)
       )
      )
      (br $repeat|1)
     )
    )
    ;;@ assembly/index.ts:466:38
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $start (; 68 ;) (type $v)
  (set_global $~lib/allocator/atomic/startOffset
   ;;@ ~lib/allocator/atomic.ts:3:25
   (i32.and
    (i32.add
     ;;@ ~lib/allocator/atomic.ts:3:26
     (get_global $HEAP_BASE)
     ;;@ ~lib/allocator/atomic.ts:3:38
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    ;;@ ~lib/allocator/atomic.ts:3:49
    (i32.xor
     ;;@ ~lib/allocator/atomic.ts:3:50
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/atomic/offset_ptr
   ;;@ ~lib/allocator/atomic.ts:4:24
   (get_global $~lib/allocator/atomic/startOffset)
  )
  ;;@ ~lib/allocator/atomic.ts:5:0
  (i32.store
   ;;@ ~lib/allocator/atomic.ts:5:13
   (get_global $~lib/allocator/atomic/offset_ptr)
   ;;@ ~lib/allocator/atomic.ts:5:25
   (i32.and
    (i32.add
     ;;@ ~lib/allocator/atomic.ts:5:26
     (i32.add
      (get_global $HEAP_BASE)
      ;;@ ~lib/allocator/atomic.ts:5:38
      (i32.const 4)
     )
     ;;@ ~lib/allocator/atomic.ts:5:42
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    ;;@ ~lib/allocator/atomic.ts:5:53
    (i32.xor
     ;;@ ~lib/allocator/atomic.ts:5:54
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (nop)
  (nop)
 )
 (func $null (; 69 ;) (type $v)
 )
 (func $assembly/index/Vec#constructor|trampoline (; 70 ;) (type $iFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  (block $3of3
   (block $2of3
    (block $1of3
     (block $0of3
      (block $outOfRange
       (br_table $0of3 $1of3 $2of3 $3of3 $outOfRange
        (get_global $~argc)
       )
      )
      (unreachable)
     )
     (set_local $1
      ;;@ assembly/index.ts:29:34
      (f64.const 0)
     )
    )
    (set_local $2
     ;;@ assembly/index.ts:29:57
     (f64.const 0)
    )
   )
   (set_local $3
    ;;@ assembly/index.ts:29:80
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
 (func $~setargc (; 71 ;) (type $iv) (param $0 i32)
  (set_global $~argc
   (get_local $0)
  )
 )
 (func $Vec#get:x (; 72 ;) (type $iF) (param $0 i32) (result f64)
  (f64.load
   (get_local $0)
  )
 )
 (func $Vec#set:x (; 73 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (f64.store
   (get_local $0)
   (get_local $1)
  )
 )
 (func $Vec#get:y (; 74 ;) (type $iF) (param $0 i32) (result f64)
  (f64.load offset=8
   (get_local $0)
  )
 )
 (func $Vec#set:y (; 75 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (f64.store offset=8
   (get_local $0)
   (get_local $1)
  )
 )
 (func $Vec#get:z (; 76 ;) (type $iF) (param $0 i32) (result f64)
  (f64.load offset=16
   (get_local $0)
  )
 )
 (func $Vec#set:z (; 77 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (f64.store offset=16
   (get_local $0)
   (get_local $1)
  )
 )
 (func $assembly/index/Vec#sub|trampoline (; 78 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    ;;@ assembly/index.ts:64:32
    (i32.const 0)
   )
  )
  (call $assembly/index/Vec#sub
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $assembly/index/Vec#clone|trampoline (; 79 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    ;;@ assembly/index.ts:150:19
    (call $assembly/index/Vec#constructor
     (i32.const 0)
     ;;@ assembly/index.ts:29:34
     (f64.const 0)
     ;;@ assembly/index.ts:29:57
     (f64.const 0)
     ;;@ assembly/index.ts:29:80
     (f64.const 0)
    )
   )
  )
  (call $assembly/index/Vec#clone
   (get_local $0)
   (get_local $1)
  )
 )
)
