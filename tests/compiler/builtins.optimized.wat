(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $fi (func (param f32) (result i32)))
 (type $Fi (func (param f64) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 4) "\0b\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s")
 (data (i32.const 32) "\01\00\00\001")
 (export "test" (func $builtins/test))
 (export "memory" (memory $0))
 (start $start)
 (func $isNaN<f32> (; 1 ;) (type $fi) (param $0 f32) (result i32)
  (i64.gt_u
   (i64.and
    (i64.reinterpret/f64
     (f64.promote/f32
      (get_local $0)
     )
    )
    (i64.const 9223372036854775807)
   )
   (i64.const 9218868437227405312)
  )
 )
 (func $isFinite<f32> (; 2 ;) (type $fi) (param $0 f32) (result i32)
  (i64.lt_u
   (i64.and
    (i64.reinterpret/f64
     (f64.promote/f32
      (get_local $0)
     )
    )
    (i64.const 9223372036854775807)
   )
   (i64.const 9218868437227405312)
  )
 )
 (func $isNaN<f64> (; 3 ;) (type $Fi) (param $0 f64) (result i32)
  (i64.gt_u
   (i64.and
    (i64.reinterpret/f64
     (get_local $0)
    )
    (i64.const 9223372036854775807)
   )
   (i64.const 9218868437227405312)
  )
 )
 (func $isFinite<f64> (; 4 ;) (type $Fi) (param $0 f64) (result i32)
  (i64.lt_u
   (i64.and
    (i64.reinterpret/f64
     (get_local $0)
    )
    (i64.const 9223372036854775807)
   )
   (i64.const 9218868437227405312)
  )
 )
 (func $builtins/test (; 5 ;) (type $v)
  (nop)
 )
 (func $start (; 6 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (drop
   (select
    (tee_local $0
     (i32.const 1)
    )
    (tee_local $1
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (set_global $builtins/i
   (i32.const 31)
  )
  (set_global $builtins/i
   (i32.const 0)
  )
  (set_global $builtins/i
   (i32.const 1)
  )
  (set_global $builtins/i
   (i32.const 2)
  )
  (set_global $builtins/i
   (i32.const -2147483648)
  )
  (set_global $builtins/i
   (select
    (tee_local $0
     (i32.const -42)
    )
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
    (i32.gt_s
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 43)
     (i32.const 19)
    )
    (unreachable)
   )
  )
  (set_global $builtins/i
   (select
    (tee_local $0
     (i32.const 1)
    )
    (i32.const 2)
    (i32.gt_s
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 44)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_global $builtins/i
   (select
    (i32.const 1)
    (i32.const 2)
    (i32.lt_s
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 45)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_global $builtins/I
   (i64.const 63)
  )
  (set_global $builtins/I
   (i64.const 0)
  )
  (set_global $builtins/I
   (i64.const 1)
  )
  (set_global $builtins/I
   (i64.const 2)
  )
  (set_global $builtins/I
   (i64.const -9223372036854775808)
  )
  (set_global $builtins/I
   (select
    (tee_local $2
     (i64.const -42)
    )
    (i64.sub
     (i64.const 0)
     (get_local $2)
    )
    (i64.gt_s
     (get_local $2)
     (i64.const 0)
    )
   )
  )
  (if
   (i64.ne
    (get_global $builtins/I)
    (i64.const 42)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 61)
     (i32.const 19)
    )
    (unreachable)
   )
  )
  (set_global $builtins/I
   (select
    (tee_local $2
     (i64.const 1)
    )
    (tee_local $3
     (i64.const 2)
    )
    (i64.gt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (if
   (i64.ne
    (get_global $builtins/I)
    (i64.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 62)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_global $builtins/I
   (select
    (i64.const 1)
    (i64.const 2)
    (i64.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (if
   (i32.ne
    (get_global $builtins/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 63)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (if
   (call $isNaN<f32>
    (f32.const 1.25)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $isNaN<f32>
     (f32.const nan:0x400000)
    )
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 81)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $isFinite<f32>
     (f32.const 1.25)
    )
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 82)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $isFinite<f32>
    (f32.const inf)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 83)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $isFinite<f32>
    (f32.const -inf)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 84)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $isFinite<f32>
    (f32.const nan:0x400000)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 85)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $builtins/f
   (f32.const nan:0x400000)
  )
  (set_global $builtins/f
   (f32.const inf)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 2)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 1)
  )
  (set_global $builtins/f
   (f32.const 2.5)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/f
   (f32.const 1.1180340051651)
  )
  (set_global $builtins/f
   (f32.const 1)
  )
  (set_global $builtins/b
   (call $isNaN<f32>
    (f32.const 1.25)
   )
  )
  (set_global $builtins/b
   (call $isFinite<f32>
    (f32.const 1.25)
   )
  )
  (if
   (call $isNaN<f64>
    (f64.const 1.25)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $isNaN<f64>
     (f64.const nan:0x8000000000000)
    )
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 117)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $isFinite<f64>
     (f64.const 1.25)
    )
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 118)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $isFinite<f64>
    (f64.const inf)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 119)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $isFinite<f64>
    (f64.const -inf)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 120)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $isFinite<f64>
    (f64.const nan:0x8000000000000)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 121)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $builtins/F
   (f64.const nan:0x8000000000000)
  )
  (set_global $builtins/F
   (f64.const inf)
  )
  (set_global $builtins/F
   (f64.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 2)
  )
  (set_global $builtins/F
   (f64.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 1)
  )
  (set_global $builtins/F
   (f64.const 2.5)
  )
  (set_global $builtins/F
   (f64.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 1)
  )
  (set_global $builtins/F
   (f64.const 1.118033988749895)
  )
  (set_global $builtins/F
   (f64.const 1)
  )
  (set_global $builtins/b
   (call $isNaN<f64>
    (f64.const 1.25)
   )
  )
  (set_global $builtins/b
   (call $isFinite<f64>
    (f64.const 1.25)
   )
  )
  (set_global $builtins/i
   (i32.load
    (i32.const 8)
   )
  )
  (i32.store
   (i32.const 8)
   (get_global $builtins/i)
  )
  (i32.store
   (i32.const 8)
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load
    (i32.const 8)
   )
  )
  (i64.store
   (i32.const 8)
   (get_global $builtins/I)
  )
  (i64.store
   (i32.const 8)
   (i64.load
    (i32.const 8)
   )
  )
  (set_global $builtins/f
   (f32.load
    (i32.const 8)
   )
  )
  (f32.store
   (i32.const 8)
   (get_global $builtins/f)
  )
  (f32.store
   (i32.const 8)
   (f32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/F
   (f64.load
    (i32.const 8)
   )
  )
  (f64.store
   (i32.const 8)
   (get_global $builtins/F)
  )
  (f64.store
   (i32.const 8)
   (f64.load
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load
    (i32.const 8)
   )
  )
  (i32.store
   (i32.const 8)
   (get_global $builtins/i)
  )
  (i32.store
   (i32.const 8)
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load
    (i32.const 8)
   )
  )
  (i64.store
   (i32.const 8)
   (get_global $builtins/I)
  )
  (i64.store
   (i32.const 8)
   (i64.load
    (i32.const 8)
   )
  )
  (set_global $builtins/f
   (f32.load
    (i32.const 8)
   )
  )
  (f32.store
   (i32.const 8)
   (get_global $builtins/f)
  )
  (f32.store
   (i32.const 8)
   (f32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/F
   (f64.load
    (i32.const 8)
   )
  )
  (f64.store
   (i32.const 8)
   (get_global $builtins/F)
  )
  (f64.store
   (i32.const 8)
   (f64.load
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load8_s
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load16_s
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load8_u
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load16_u
    (i32.const 8)
   )
  )
  (set_global $builtins/i
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load8_u
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load16_u
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load8_s
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load16_s
    (i32.const 8)
   )
  )
  (set_global $builtins/u
   (i32.load
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load8_s
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load16_s
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load32_s
    (i32.const 8)
   )
  )
  (set_global $builtins/I
   (i64.load
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load8_u
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load16_u
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load32_u
    (i32.const 8)
   )
  )
  (set_global $builtins/U
   (i64.load
    (i32.const 8)
   )
  )
  (i32.store8
   (i32.const 8)
   (i32.const 1)
  )
  (i32.store16
   (i32.const 8)
   (i32.const 1)
  )
  (i32.store
   (i32.const 8)
   (i32.const 1)
  )
  (i64.store8
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store16
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store32
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store
   (i32.const 8)
   (i64.const 1)
  )
  (i64.store
   (i32.const 8)
   (i64.const 1)
  )
  (set_global $builtins/i
   (i32.const 1067450368)
  )
  (set_global $builtins/f
   (f32.const 3.5032461608120427e-44)
  )
  (set_global $builtins/I
   (i64.const 4608308318706860032)
  )
  (set_global $builtins/F
   (f64.const 1.24e-322)
  )
  (drop
   (current_memory)
  )
  (drop
   (grow_memory
    (i32.const 1)
   )
  )
  (set_global $builtins/s
   (current_memory)
  )
  (set_global $builtins/s
   (grow_memory
    (i32.const 1)
   )
  )
  (set_global $builtins/i
   (i32.const 10)
  )
  (set_global $builtins/I
   (i64.const 200)
  )
  (set_global $builtins/f
   (f32.const 1.25)
  )
  (set_global $builtins/F
   (f64.const 25)
  )
  (if
   (i32.eqz
    (get_global $builtins/i)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (call $isNaN<f32>
     (f32.const nan:0x400000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 261)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $isNaN<f64>
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 262)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $isFinite<f32>
    (f32.const nan:0x400000)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 263)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $isFinite<f32>
    (f32.const inf)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 264)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $isFinite<f64>
    (f64.const nan:0x8000000000000)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 265)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $isFinite<f64>
    (f64.const inf)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 266)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $isFinite<f32>
     (f32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 267)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $isFinite<f64>
     (f64.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 268)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $isNaN<f64>
    (f64.const 1)
   )
  )
 )
)
