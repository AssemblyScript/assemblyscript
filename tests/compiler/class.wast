(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ifff (func (param i32 f32 f32) (result f32)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $class/Animal.ONE (mut i32) (i32.const 1))
 (global $HEAP_BASE i32 (i32.const 28))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00c\00l\00a\00s\00s\00.\00t\00s\00")
 (export "test" (func $class/test))
 (export "memory" (memory $0))
 (start $start)
 (func $class/Animal.add (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ class.ts:3:58
  (return
   ;;@ class.ts:3:43
   (i32.add
    (i32.add
     (get_local $0)
     ;;@ class.ts:3:47
     (get_local $1)
    )
    ;;@ class.ts:3:51
    (get_global $class/Animal.ONE)
   )
  )
 )
 (func $class/Animal.sub<f32> (; 2 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  ;;@ class.ts:4:58
  (return
   ;;@ class.ts:4:40
   (f32.add
    (f32.sub
     (get_local $0)
     ;;@ class.ts:4:44
     (get_local $1)
    )
    ;;@ class.ts:4:48
    (f32.convert_s/i32
     (get_global $class/Animal.ONE)
    )
   )
  )
 )
 (func $class/Animal#instanceAdd (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ class.ts:9:59
  (return
   ;;@ class.ts:9:44
   (i32.add
    (i32.add
     (get_local $1)
     ;;@ class.ts:9:48
     (get_local $2)
    )
    ;;@ class.ts:9:52
    (get_global $class/Animal.ONE)
   )
  )
 )
 (func $class/Animal#instanceSub<f32> (; 4 ;) (type $ifff) (param $0 i32) (param $1 f32) (param $2 f32) (result f32)
  ;;@ class.ts:10:59
  (return
   ;;@ class.ts:10:41
   (f32.add
    (f32.sub
     (get_local $1)
     ;;@ class.ts:10:45
     (get_local $2)
    )
    ;;@ class.ts:10:49
    (f32.convert_s/i32
     (get_global $class/Animal.ONE)
    )
   )
  )
 )
 (func $class/test (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  ;;@ class.ts:20:9
  (drop
   (call $class/Animal#instanceAdd
    ;;@ class.ts:20:2
    (get_local $0)
    ;;@ class.ts:20:21
    (i32.const 1)
    ;;@ class.ts:20:24
    (i32.const 2)
   )
  )
  ;;@ class.ts:21:9
  (drop
   (call $class/Animal#instanceSub<f32>
    ;;@ class.ts:21:2
    (get_local $0)
    ;;@ class.ts:21:26
    (f32.const 1)
    ;;@ class.ts:21:29
    (f32.const 2)
   )
  )
  ;;@ class.ts:23:2
  (drop
   (i32.load
    (get_local $0)
   )
  )
  ;;@ class.ts:24:2
  (drop
   (i32.load16_s offset=4
    (get_local $0)
   )
  )
  ;;@ class.ts:25:2
  (drop
   (i32.load8_s offset=6
    (get_local $0)
   )
  )
  ;;@ class.ts:27:2
  (i32.store
   (get_local $0)
   ;;@ class.ts:27:15
   (i32.add
    (i32.const 0)
    ;;@ class.ts:27:19
    (i32.const 1)
   )
  )
  ;;@ class.ts:28:2
  (i32.store16 offset=4
   (get_local $0)
   ;;@ class.ts:28:15
   (i32.shr_s
    (i32.shl
     (i32.add
      (i32.const 1)
      ;;@ class.ts:28:19
      (i32.const 1)
     )
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
  ;;@ class.ts:29:2
  (i32.store8 offset=6
   (get_local $0)
   ;;@ class.ts:29:17
   (i32.shr_s
    (i32.shl
     (i32.add
      (i32.add
       (i32.const 1)
       ;;@ class.ts:29:21
       (i32.const 1)
      )
      ;;@ class.ts:29:25
      (i32.const 1)
     )
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
  ;;@ class.ts:31:2
  (set_local $1
   ;;@ class.ts:31:12
   (get_local $0)
  )
  ;;@ class.ts:32:2
  (set_local $2
   ;;@ class.ts:32:12
   (get_local $1)
  )
  ;;@ class.ts:33:9
  (return
   (get_local $2)
  )
 )
 (func $start (; 6 ;) (type $v)
  ;;@ class.ts:13:0
  (if
   (i32.eqz
    ;;@ class.ts:13:7
    (i32.eq
     (i32.const 4)
     ;;@ class.ts:13:32
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ class.ts:15:0
  (drop
   (get_global $class/Animal.ONE)
  )
  ;;@ class.ts:16:7
  (drop
   (call $class/Animal.add
    ;;@ class.ts:16:11
    (i32.const 1)
    ;;@ class.ts:16:13
    (i32.const 2)
   )
  )
  ;;@ class.ts:17:7
  (drop
   (call $class/Animal.sub<f32>
    ;;@ class.ts:17:16
    (f32.const 1)
    ;;@ class.ts:17:19
    (f32.const 2)
   )
  )
 )
)
