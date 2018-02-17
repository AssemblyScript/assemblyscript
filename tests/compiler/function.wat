(module
 (type $v (func))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (type $iv (func (param i32)))
 (type $ii (func (param i32) (result i32)))
 (type $II (func (param i64) (result i64)))
 (type $ff (func (param f32) (result f32)))
 (type $FF (func (param f64) (result f64)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $IiI (func (param i64 i32) (result i64)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $function/v (; 0 ;) (type $v)
 )
 (func $function/i (; 1 ;) (type $i) (result i32)
  ;;@ function.ts:2:27
  (return
   (i32.const 0)
  )
 )
 (func $function/I (; 2 ;) (type $I) (result i64)
  ;;@ function.ts:3:27
  (return
   (i64.const 0)
  )
 )
 (func $function/f (; 3 ;) (type $f) (result f32)
  ;;@ function.ts:4:27
  (return
   (f32.const 0)
  )
 )
 (func $function/F (; 4 ;) (type $F) (result f64)
  ;;@ function.ts:5:27
  (return
   (f64.const 0)
  )
 )
 (func $function/iv (; 5 ;) (type $iv) (param $0 i32)
 )
 (func $function/ii (; 6 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ function.ts:14:34
  (return
   (get_local $0)
  )
 )
 (func $function/II (; 7 ;) (type $II) (param $0 i64) (result i64)
  ;;@ function.ts:15:34
  (return
   (get_local $0)
  )
 )
 (func $function/ff (; 8 ;) (type $ff) (param $0 f32) (result f32)
  ;;@ function.ts:16:34
  (return
   (get_local $0)
  )
 )
 (func $function/FF (; 9 ;) (type $FF) (param $0 f64) (result f64)
  ;;@ function.ts:17:34
  (return
   (get_local $0)
  )
 )
 (func $function/iiv (; 10 ;) (type $iiv) (param $0 i32) (param $1 i32)
 )
 (func $function/iii (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ function.ts:26:47
  (return
   ;;@ function.ts:26:43
   (i32.add
    (get_local $0)
    ;;@ function.ts:26:47
    (get_local $1)
   )
  )
 )
 (func $function/III (; 12 ;) (type $IiI) (param $0 i64) (param $1 i32) (result i64)
  ;;@ function.ts:27:47
  (return
   ;;@ function.ts:27:43
   (i64.add
    (get_local $0)
    ;;@ function.ts:27:47
    (i64.extend_s/i32
     (get_local $1)
    )
   )
  )
 )
 (func $function/fff (; 13 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  ;;@ function.ts:28:47
  (return
   ;;@ function.ts:28:43
   (f32.add
    (get_local $0)
    ;;@ function.ts:28:47
    (get_local $1)
   )
  )
 )
 (func $function/FFF (; 14 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  ;;@ function.ts:29:47
  (return
   ;;@ function.ts:29:43
   (f64.add
    (get_local $0)
    ;;@ function.ts:29:47
    (get_local $1)
   )
  )
 )
 (func $start (; 15 ;) (type $v)
  ;;@ function.ts:7:0
  (call $function/v)
  ;;@ function.ts:8:0
  (drop
   (call $function/i)
  )
  ;;@ function.ts:9:0
  (drop
   (call $function/I)
  )
  ;;@ function.ts:10:0
  (drop
   (call $function/f)
  )
  ;;@ function.ts:11:0
  (drop
   (call $function/F)
  )
  ;;@ function.ts:19:0
  (call $function/iv
   ;;@ function.ts:19:3
   (i32.const 0)
  )
  ;;@ function.ts:20:0
  (drop
   (call $function/ii
    ;;@ function.ts:20:3
    (i32.const 0)
   )
  )
  ;;@ function.ts:21:0
  (drop
   (call $function/II
    ;;@ function.ts:21:3
    (i64.const 0)
   )
  )
  ;;@ function.ts:22:0
  (drop
   (call $function/ff
    ;;@ function.ts:22:3
    (f32.const 0)
   )
  )
  ;;@ function.ts:23:0
  (drop
   (call $function/FF
    ;;@ function.ts:23:3
    (f64.const 0)
   )
  )
  ;;@ function.ts:31:0
  (call $function/iiv
   ;;@ function.ts:31:4
   (i32.const 1)
   ;;@ function.ts:31:7
   (i32.const 2)
  )
  ;;@ function.ts:32:0
  (drop
   (call $function/iii
    ;;@ function.ts:32:4
    (i32.const 1)
    ;;@ function.ts:32:7
    (i32.const 2)
   )
  )
  ;;@ function.ts:33:0
  (drop
   (call $function/III
    ;;@ function.ts:33:4
    (i64.const 1)
    ;;@ function.ts:33:7
    (i32.const 2)
   )
  )
  ;;@ function.ts:34:0
  (drop
   (call $function/fff
    ;;@ function.ts:34:4
    (f32.const 1)
    ;;@ function.ts:34:7
    (f32.const 2)
   )
  )
  ;;@ function.ts:35:0
  (drop
   (call $function/FFF
    ;;@ function.ts:35:4
    (f64.const 1)
    ;;@ function.ts:35:7
    (f64.const 2)
   )
  )
 )
)
