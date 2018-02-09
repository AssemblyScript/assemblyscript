(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (type $I (func (result i64)))
 (type $f (func (result f32)))
 (type $F (func (result f64)))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $fff (func (param f32 f32) (result f32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $v (func))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ifv (func (param i32 f32)))
 (type $if (func (param i32) (result f32)))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $showcase/aConstantGlobal i32 (i32.const 42))
 (global $showcase/anExportedConstantGlobal f32 (f32.const 42))
 (global $showcase/aMutableGlobal (mut i32) (i32.const 42))
 (global $showcase/anInferredI32 (mut i32) (i32.const 42))
 (global $showcase/anInferredI64 (mut i64) (i64.const 4294967296))
 (global $showcase/anInferredF64 (mut f64) (f64.const 42))
 (global $showcase/anInferredF32 (mut f32) (f32.const 42))
 (global $unary/i (mut i32) (i32.const 0))
 (global $unary/I (mut i64) (i64.const 0))
 (global $unary/f (mut f32) (f32.const 0))
 (global $unary/F (mut f64) (f64.const 0))
 (global $binary/b (mut i32) (i32.const 0))
 (global $binary/i (mut i32) (i32.const 0))
 (global $binary/I (mut i64) (i64.const 0))
 (global $binary/f (mut f32) (f32.const 0))
 (global $binary/F (mut f64) (f64.const 0))
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (global $builtins/b (mut i32) (i32.const 0))
 (global $builtins/i (mut i32) (i32.const 0))
 (global $builtins/I (mut i64) (i64.const 0))
 (global $builtins/f (mut f32) (f32.const 0))
 (global $builtins/F (mut f64) (f64.const 0))
 (global $builtins/constantOffset i32 (i32.const 8))
 (global $builtins/u (mut i32) (i32.const 0))
 (global $builtins/U (mut i64) (i64.const 0))
 (global $builtins/s (mut i32) (i32.const 0))
 (global $showcase/ANamespace.aNamespacedGlobal (mut i32) (i32.const 42))
 (global $showcase/AnEnum.ONE i32 (i32.const 1))
 (global $showcase/AnEnum.TWO i32 (i32.const 2))
 (global $showcase/AnEnum.FOUR i32 (i32.const 4))
 (global $showcase/AnEnum.FIVE i32 (i32.const 5))
 (global $showcase/AnEnum.FORTYTWO (mut i32) (i32.const 0))
 (global $showcase/AnEnum.FORTYTHREE (mut i32) (i32.const 0))
 (global $memcpy/base i32 (i32.const 8))
 (global $memcpy/dest (mut i32) (i32.const 0))
 (global $showcase/aClassInstance (mut i32) (i32.const 8))
 (global $showcase/AClass.aStaticField (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 140))
 (memory $0 1)
 (data (i32.const 8) "\n\00\00\00l\00o\00g\00i\00c\00a\00l\00.\00t\00s\00")
 (data (i32.const 32) "\0b\00\00\00b\00u\00i\00l\00t\00i\00n\00s\00.\00t\00s\00")
 (data (i32.const 64) "\0b\00\00\00s\00h\00o\00w\00c\00a\00s\00e\00.\00t\00s\00")
 (data (i32.const 96) "\t\00\00\00m\00e\00m\00c\00p\00y\00.\00t\00s\00")
 (data (i32.const 120) "\07\00\00\00f\00m\00o\00d\00.\00t\00s\00")
 (export "anExportedConstantGlobal" (global $showcase/anExportedConstantGlobal))
 (export "aConstantGlobal" (global $showcase/aConstantGlobal))
 (export "anAliasedConstantGlobal" (global $showcase/anExportedConstantGlobal))
 (export "showcase/AnEnum.ONE" (global $showcase/AnEnum.ONE))
 (export "showcase/AnEnum.TWO" (global $showcase/AnEnum.TWO))
 (export "showcase/AnEnum.FOUR" (global $showcase/AnEnum.FOUR))
 (export "showcase/AnEnum.FIVE" (global $showcase/AnEnum.FIVE))
 (export "anExportedFunction" (func $showcase/anExportedFunction))
 (export "memory" (memory $0))
 (start $start)
 (func $showcase/ANamespace.aNamespacedFunction (; 1 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ showcase.ts:38:60
  (return
   (get_local $0)
  )
 )
 (func $showcase/addGeneric<i32> (; 2 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ showcase.ts:64:16
  (return
   ;;@ showcase.ts:64:9
   (i32.add
    (get_local $0)
    ;;@ showcase.ts:64:16
    (get_local $1)
   )
  )
 )
 (func $showcase/addGeneric<f32> (; 3 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  ;;@ showcase.ts:64:16
  (return
   ;;@ showcase.ts:64:9
   (f32.add
    (get_local $0)
    ;;@ showcase.ts:64:16
    (get_local $1)
   )
  )
 )
 (func $showcase/addGeneric<f64> (; 4 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  ;;@ showcase.ts:64:16
  (return
   ;;@ showcase.ts:64:9
   (f64.add
    (get_local $0)
    ;;@ showcase.ts:64:16
    (get_local $1)
   )
  )
 )
 (func $showcase/anExportedFunction (; 5 ;) (type $v)
 )
 (func $memcpy/memcpy (; 6 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  ;;@ memcpy.ts:2:2
  (set_local $3
   ;;@ memcpy.ts:2:12
   (get_local $0)
  )
  ;;@ memcpy.ts:3:2
  (nop)
  ;;@ memcpy.ts:6:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ memcpy.ts:6:9
     (if (result i32)
      (i32.ne
       (get_local $2)
       (i32.const 0)
      )
      ;;@ memcpy.ts:6:14
      (i32.rem_u
       (get_local $1)
       ;;@ memcpy.ts:6:20
       (i32.const 4)
      )
      (get_local $2)
     )
     (block
      (block
       ;;@ memcpy.ts:7:4
       (i32.store8
        ;;@ memcpy.ts:7:14
        (block (result i32)
         (set_local $6
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
        ;;@ memcpy.ts:7:22
        (i32.load8_u
         ;;@ memcpy.ts:7:31
         (block (result i32)
          (set_local $6
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $6)
            (i32.const 1)
           )
          )
          (get_local $6)
         )
        )
       )
       ;;@ memcpy.ts:8:4
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
  ;;@ memcpy.ts:12:2
  (if
   ;;@ memcpy.ts:12:6
   (i32.eq
    (i32.rem_u
     (get_local $0)
     ;;@ memcpy.ts:12:13
     (i32.const 4)
    )
    ;;@ memcpy.ts:12:18
    (i32.const 0)
   )
   ;;@ memcpy.ts:12:21
   (block
    (block $break|1
     (loop $continue|1
      (if
       ;;@ memcpy.ts:13:11
       (i32.ge_u
        (get_local $2)
        ;;@ memcpy.ts:13:16
        (i32.const 16)
       )
       (block
        (block
         ;;@ memcpy.ts:14:6
         (i32.store
          ;;@ memcpy.ts:14:17
          (get_local $0)
          ;;@ memcpy.ts:14:28
          (i32.load
           ;;@ memcpy.ts:14:38
           (get_local $1)
          )
         )
         ;;@ memcpy.ts:15:6
         (i32.store
          ;;@ memcpy.ts:15:17
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:15:25
           (i32.const 4)
          )
          ;;@ memcpy.ts:15:28
          (i32.load
           ;;@ memcpy.ts:15:38
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:15:45
            (i32.const 4)
           )
          )
         )
         ;;@ memcpy.ts:16:6
         (i32.store
          ;;@ memcpy.ts:16:17
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:16:25
           (i32.const 8)
          )
          ;;@ memcpy.ts:16:28
          (i32.load
           ;;@ memcpy.ts:16:38
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:16:45
            (i32.const 8)
           )
          )
         )
         ;;@ memcpy.ts:17:6
         (i32.store
          ;;@ memcpy.ts:17:17
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:17:24
           (i32.const 12)
          )
          ;;@ memcpy.ts:17:28
          (i32.load
           ;;@ memcpy.ts:17:38
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:17:44
            (i32.const 12)
           )
          )
         )
         ;;@ memcpy.ts:18:6
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ memcpy.ts:18:13
           (i32.const 16)
          )
         )
         ;;@ memcpy.ts:18:17
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:18:25
           (i32.const 16)
          )
         )
         ;;@ memcpy.ts:18:29
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ memcpy.ts:18:34
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    ;;@ memcpy.ts:20:4
    (if
     ;;@ memcpy.ts:20:8
     (i32.and
      (get_local $2)
      ;;@ memcpy.ts:20:12
      (i32.const 8)
     )
     ;;@ memcpy.ts:20:15
     (block
      ;;@ memcpy.ts:21:6
      (i32.store
       ;;@ memcpy.ts:21:17
       (get_local $0)
       ;;@ memcpy.ts:21:27
       (i32.load
        ;;@ memcpy.ts:21:37
        (get_local $1)
       )
      )
      ;;@ memcpy.ts:22:6
      (i32.store
       ;;@ memcpy.ts:22:17
       (i32.add
        (get_local $0)
        ;;@ memcpy.ts:22:24
        (i32.const 4)
       )
       ;;@ memcpy.ts:22:27
       (i32.load
        ;;@ memcpy.ts:22:37
        (i32.add
         (get_local $1)
         ;;@ memcpy.ts:22:43
         (i32.const 4)
        )
       )
      )
      ;;@ memcpy.ts:23:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ memcpy.ts:23:14
        (i32.const 8)
       )
      )
      ;;@ memcpy.ts:23:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ memcpy.ts:23:24
        (i32.const 8)
       )
      )
     )
    )
    ;;@ memcpy.ts:25:4
    (if
     ;;@ memcpy.ts:25:8
     (i32.and
      (get_local $2)
      ;;@ memcpy.ts:25:12
      (i32.const 4)
     )
     ;;@ memcpy.ts:25:15
     (block
      ;;@ memcpy.ts:26:6
      (i32.store
       ;;@ memcpy.ts:26:17
       (get_local $0)
       ;;@ memcpy.ts:26:23
       (i32.load
        ;;@ memcpy.ts:26:33
        (get_local $1)
       )
      )
      ;;@ memcpy.ts:27:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ memcpy.ts:27:14
        (i32.const 4)
       )
      )
      ;;@ memcpy.ts:27:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ memcpy.ts:27:24
        (i32.const 4)
       )
      )
     )
    )
    ;;@ memcpy.ts:29:4
    (if
     ;;@ memcpy.ts:29:8
     (i32.and
      (get_local $2)
      ;;@ memcpy.ts:29:12
      (i32.const 2)
     )
     ;;@ memcpy.ts:29:15
     (block
      ;;@ memcpy.ts:30:6
      (i32.store16
       ;;@ memcpy.ts:30:17
       (get_local $0)
       ;;@ memcpy.ts:30:23
       (i32.load16_u
        ;;@ memcpy.ts:30:33
        (get_local $1)
       )
      )
      ;;@ memcpy.ts:31:6
      (set_local $0
       (i32.add
        (get_local $0)
        ;;@ memcpy.ts:31:14
        (i32.const 2)
       )
      )
      ;;@ memcpy.ts:31:17
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ memcpy.ts:31:24
        (i32.const 2)
       )
      )
     )
    )
    ;;@ memcpy.ts:33:4
    (if
     ;;@ memcpy.ts:33:8
     (i32.and
      (get_local $2)
      ;;@ memcpy.ts:33:12
      (i32.const 1)
     )
     ;;@ memcpy.ts:34:6
     (i32.store8
      ;;@ memcpy.ts:34:16
      (block (result i32)
       (set_local $6
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      ;;@ memcpy.ts:34:24
      (i32.load8_u
       ;;@ memcpy.ts:34:33
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
    )
    ;;@ memcpy.ts:36:11
    (return
     (get_local $3)
    )
   )
  )
  ;;@ memcpy.ts:41:2
  (if
   ;;@ memcpy.ts:41:6
   (i32.ge_u
    (get_local $2)
    ;;@ memcpy.ts:41:11
    (i32.const 32)
   )
   ;;@ memcpy.ts:42:4
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $6
        ;;@ memcpy.ts:42:12
        (i32.rem_u
         (get_local $0)
         ;;@ memcpy.ts:42:19
         (i32.const 4)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $6)
         ;;@ memcpy.ts:44:11
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $6)
         ;;@ memcpy.ts:62:11
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $6)
         ;;@ memcpy.ts:79:11
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      ;;@ memcpy.ts:45:8
      (set_local $4
       ;;@ memcpy.ts:45:12
       (i32.load
        ;;@ memcpy.ts:45:22
        (get_local $1)
       )
      )
      ;;@ memcpy.ts:46:8
      (i32.store8
       ;;@ memcpy.ts:46:18
       (block (result i32)
        (set_local $6
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       ;;@ memcpy.ts:46:26
       (i32.load8_u
        ;;@ memcpy.ts:46:35
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
       )
      )
      ;;@ memcpy.ts:47:8
      (i32.store8
       ;;@ memcpy.ts:47:18
       (block (result i32)
        (set_local $6
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       ;;@ memcpy.ts:47:26
       (i32.load8_u
        ;;@ memcpy.ts:47:35
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
       )
      )
      ;;@ memcpy.ts:48:8
      (i32.store8
       ;;@ memcpy.ts:48:18
       (block (result i32)
        (set_local $6
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
       ;;@ memcpy.ts:48:26
       (i32.load8_u
        ;;@ memcpy.ts:48:35
        (block (result i32)
         (set_local $6
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $6)
           (i32.const 1)
          )
         )
         (get_local $6)
        )
       )
      )
      ;;@ memcpy.ts:49:8
      (set_local $2
       (i32.sub
        (get_local $2)
        ;;@ memcpy.ts:49:13
        (i32.const 3)
       )
      )
      ;;@ memcpy.ts:50:8
      (block $break|3
       (loop $continue|3
        (if
         ;;@ memcpy.ts:50:15
         (i32.ge_u
          (get_local $2)
          ;;@ memcpy.ts:50:20
          (i32.const 17)
         )
         (block
          (block
           ;;@ memcpy.ts:51:10
           (set_local $5
            ;;@ memcpy.ts:51:14
            (i32.load
             ;;@ memcpy.ts:51:24
             (i32.add
              (get_local $1)
              ;;@ memcpy.ts:51:30
              (i32.const 1)
             )
            )
           )
           ;;@ memcpy.ts:52:10
           (i32.store
            ;;@ memcpy.ts:52:21
            (get_local $0)
            ;;@ memcpy.ts:52:27
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ memcpy.ts:52:32
              (i32.const 24)
             )
             ;;@ memcpy.ts:52:37
             (i32.shl
              (get_local $5)
              ;;@ memcpy.ts:52:42
              (i32.const 8)
             )
            )
           )
           ;;@ memcpy.ts:53:10
           (set_local $4
            ;;@ memcpy.ts:53:14
            (i32.load
             ;;@ memcpy.ts:53:24
             (i32.add
              (get_local $1)
              ;;@ memcpy.ts:53:30
              (i32.const 5)
             )
            )
           )
           ;;@ memcpy.ts:54:10
           (i32.store
            ;;@ memcpy.ts:54:21
            (i32.add
             (get_local $0)
             ;;@ memcpy.ts:54:28
             (i32.const 4)
            )
            ;;@ memcpy.ts:54:31
            (i32.or
             (i32.shr_u
              (get_local $5)
              ;;@ memcpy.ts:54:36
              (i32.const 24)
             )
             ;;@ memcpy.ts:54:41
             (i32.shl
              (get_local $4)
              ;;@ memcpy.ts:54:46
              (i32.const 8)
             )
            )
           )
           ;;@ memcpy.ts:55:10
           (set_local $5
            ;;@ memcpy.ts:55:14
            (i32.load
             ;;@ memcpy.ts:55:24
             (i32.add
              (get_local $1)
              ;;@ memcpy.ts:55:30
              (i32.const 9)
             )
            )
           )
           ;;@ memcpy.ts:56:10
           (i32.store
            ;;@ memcpy.ts:56:21
            (i32.add
             (get_local $0)
             ;;@ memcpy.ts:56:28
             (i32.const 8)
            )
            ;;@ memcpy.ts:56:31
            (i32.or
             (i32.shr_u
              (get_local $4)
              ;;@ memcpy.ts:56:36
              (i32.const 24)
             )
             ;;@ memcpy.ts:56:41
             (i32.shl
              (get_local $5)
              ;;@ memcpy.ts:56:46
              (i32.const 8)
             )
            )
           )
           ;;@ memcpy.ts:57:10
           (set_local $4
            ;;@ memcpy.ts:57:14
            (i32.load
             ;;@ memcpy.ts:57:24
             (i32.add
              (get_local $1)
              ;;@ memcpy.ts:57:30
              (i32.const 13)
             )
            )
           )
           ;;@ memcpy.ts:58:10
           (i32.store
            ;;@ memcpy.ts:58:21
            (i32.add
             (get_local $0)
             ;;@ memcpy.ts:58:28
             (i32.const 12)
            )
            ;;@ memcpy.ts:58:32
            (i32.or
             (i32.shr_u
              (get_local $5)
              ;;@ memcpy.ts:58:37
              (i32.const 24)
             )
             ;;@ memcpy.ts:58:42
             (i32.shl
              (get_local $4)
              ;;@ memcpy.ts:58:47
              (i32.const 8)
             )
            )
           )
           ;;@ memcpy.ts:59:10
           (set_local $1
            (i32.add
             (get_local $1)
             ;;@ memcpy.ts:59:17
             (i32.const 16)
            )
           )
           ;;@ memcpy.ts:59:21
           (set_local $0
            (i32.add
             (get_local $0)
             ;;@ memcpy.ts:59:29
             (i32.const 16)
            )
           )
           ;;@ memcpy.ts:59:33
           (set_local $2
            (i32.sub
             (get_local $2)
             ;;@ memcpy.ts:59:38
             (i32.const 16)
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      ;;@ memcpy.ts:61:8
      (br $break|2)
     )
     ;;@ memcpy.ts:63:8
     (set_local $4
      ;;@ memcpy.ts:63:12
      (i32.load
       ;;@ memcpy.ts:63:22
       (get_local $1)
      )
     )
     ;;@ memcpy.ts:64:8
     (i32.store8
      ;;@ memcpy.ts:64:18
      (block (result i32)
       (set_local $6
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      ;;@ memcpy.ts:64:26
      (i32.load8_u
       ;;@ memcpy.ts:64:35
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
     ;;@ memcpy.ts:65:8
     (i32.store8
      ;;@ memcpy.ts:65:18
      (block (result i32)
       (set_local $6
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
      ;;@ memcpy.ts:65:26
      (i32.load8_u
       ;;@ memcpy.ts:65:35
       (block (result i32)
        (set_local $6
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
        (get_local $6)
       )
      )
     )
     ;;@ memcpy.ts:66:8
     (set_local $2
      (i32.sub
       (get_local $2)
       ;;@ memcpy.ts:66:13
       (i32.const 2)
      )
     )
     ;;@ memcpy.ts:67:8
     (block $break|4
      (loop $continue|4
       (if
        ;;@ memcpy.ts:67:15
        (i32.ge_u
         (get_local $2)
         ;;@ memcpy.ts:67:20
         (i32.const 18)
        )
        (block
         (block
          ;;@ memcpy.ts:68:10
          (set_local $5
           ;;@ memcpy.ts:68:14
           (i32.load
            ;;@ memcpy.ts:68:24
            (i32.add
             (get_local $1)
             ;;@ memcpy.ts:68:30
             (i32.const 2)
            )
           )
          )
          ;;@ memcpy.ts:69:10
          (i32.store
           ;;@ memcpy.ts:69:21
           (get_local $0)
           ;;@ memcpy.ts:69:27
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ memcpy.ts:69:32
             (i32.const 16)
            )
            ;;@ memcpy.ts:69:37
            (i32.shl
             (get_local $5)
             ;;@ memcpy.ts:69:42
             (i32.const 16)
            )
           )
          )
          ;;@ memcpy.ts:70:10
          (set_local $4
           ;;@ memcpy.ts:70:14
           (i32.load
            ;;@ memcpy.ts:70:24
            (i32.add
             (get_local $1)
             ;;@ memcpy.ts:70:30
             (i32.const 6)
            )
           )
          )
          ;;@ memcpy.ts:71:10
          (i32.store
           ;;@ memcpy.ts:71:21
           (i32.add
            (get_local $0)
            ;;@ memcpy.ts:71:28
            (i32.const 4)
           )
           ;;@ memcpy.ts:71:31
           (i32.or
            (i32.shr_u
             (get_local $5)
             ;;@ memcpy.ts:71:36
             (i32.const 16)
            )
            ;;@ memcpy.ts:71:41
            (i32.shl
             (get_local $4)
             ;;@ memcpy.ts:71:46
             (i32.const 16)
            )
           )
          )
          ;;@ memcpy.ts:72:10
          (set_local $5
           ;;@ memcpy.ts:72:14
           (i32.load
            ;;@ memcpy.ts:72:24
            (i32.add
             (get_local $1)
             ;;@ memcpy.ts:72:30
             (i32.const 10)
            )
           )
          )
          ;;@ memcpy.ts:73:10
          (i32.store
           ;;@ memcpy.ts:73:21
           (i32.add
            (get_local $0)
            ;;@ memcpy.ts:73:28
            (i32.const 8)
           )
           ;;@ memcpy.ts:73:31
           (i32.or
            (i32.shr_u
             (get_local $4)
             ;;@ memcpy.ts:73:36
             (i32.const 16)
            )
            ;;@ memcpy.ts:73:41
            (i32.shl
             (get_local $5)
             ;;@ memcpy.ts:73:46
             (i32.const 16)
            )
           )
          )
          ;;@ memcpy.ts:74:10
          (set_local $4
           ;;@ memcpy.ts:74:14
           (i32.load
            ;;@ memcpy.ts:74:24
            (i32.add
             (get_local $1)
             ;;@ memcpy.ts:74:30
             (i32.const 14)
            )
           )
          )
          ;;@ memcpy.ts:75:10
          (i32.store
           ;;@ memcpy.ts:75:21
           (i32.add
            (get_local $0)
            ;;@ memcpy.ts:75:28
            (i32.const 12)
           )
           ;;@ memcpy.ts:75:32
           (i32.or
            (i32.shr_u
             (get_local $5)
             ;;@ memcpy.ts:75:37
             (i32.const 16)
            )
            ;;@ memcpy.ts:75:42
            (i32.shl
             (get_local $4)
             ;;@ memcpy.ts:75:47
             (i32.const 16)
            )
           )
          )
          ;;@ memcpy.ts:76:10
          (set_local $1
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:76:17
            (i32.const 16)
           )
          )
          ;;@ memcpy.ts:76:21
          (set_local $0
           (i32.add
            (get_local $0)
            ;;@ memcpy.ts:76:29
            (i32.const 16)
           )
          )
          ;;@ memcpy.ts:76:33
          (set_local $2
           (i32.sub
            (get_local $2)
            ;;@ memcpy.ts:76:38
            (i32.const 16)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
     ;;@ memcpy.ts:78:8
     (br $break|2)
    )
    ;;@ memcpy.ts:80:8
    (set_local $4
     ;;@ memcpy.ts:80:12
     (i32.load
      ;;@ memcpy.ts:80:22
      (get_local $1)
     )
    )
    ;;@ memcpy.ts:81:8
    (i32.store8
     ;;@ memcpy.ts:81:18
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:81:26
     (i32.load8_u
      ;;@ memcpy.ts:81:35
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:82:8
    (set_local $2
     (i32.sub
      (get_local $2)
      ;;@ memcpy.ts:82:13
      (i32.const 1)
     )
    )
    ;;@ memcpy.ts:83:8
    (block $break|5
     (loop $continue|5
      (if
       ;;@ memcpy.ts:83:15
       (i32.ge_u
        (get_local $2)
        ;;@ memcpy.ts:83:20
        (i32.const 19)
       )
       (block
        (block
         ;;@ memcpy.ts:84:10
         (set_local $5
          ;;@ memcpy.ts:84:14
          (i32.load
           ;;@ memcpy.ts:84:24
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:84:30
            (i32.const 3)
           )
          )
         )
         ;;@ memcpy.ts:85:10
         (i32.store
          ;;@ memcpy.ts:85:21
          (get_local $0)
          ;;@ memcpy.ts:85:27
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ memcpy.ts:85:32
            (i32.const 8)
           )
           ;;@ memcpy.ts:85:36
           (i32.shl
            (get_local $5)
            ;;@ memcpy.ts:85:41
            (i32.const 24)
           )
          )
         )
         ;;@ memcpy.ts:86:10
         (set_local $4
          ;;@ memcpy.ts:86:14
          (i32.load
           ;;@ memcpy.ts:86:24
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:86:30
            (i32.const 7)
           )
          )
         )
         ;;@ memcpy.ts:87:10
         (i32.store
          ;;@ memcpy.ts:87:21
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:87:28
           (i32.const 4)
          )
          ;;@ memcpy.ts:87:31
          (i32.or
           (i32.shr_u
            (get_local $5)
            ;;@ memcpy.ts:87:36
            (i32.const 8)
           )
           ;;@ memcpy.ts:87:40
           (i32.shl
            (get_local $4)
            ;;@ memcpy.ts:87:45
            (i32.const 24)
           )
          )
         )
         ;;@ memcpy.ts:88:10
         (set_local $5
          ;;@ memcpy.ts:88:14
          (i32.load
           ;;@ memcpy.ts:88:24
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:88:30
            (i32.const 11)
           )
          )
         )
         ;;@ memcpy.ts:89:10
         (i32.store
          ;;@ memcpy.ts:89:21
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:89:28
           (i32.const 8)
          )
          ;;@ memcpy.ts:89:31
          (i32.or
           (i32.shr_u
            (get_local $4)
            ;;@ memcpy.ts:89:36
            (i32.const 8)
           )
           ;;@ memcpy.ts:89:40
           (i32.shl
            (get_local $5)
            ;;@ memcpy.ts:89:45
            (i32.const 24)
           )
          )
         )
         ;;@ memcpy.ts:90:10
         (set_local $4
          ;;@ memcpy.ts:90:14
          (i32.load
           ;;@ memcpy.ts:90:24
           (i32.add
            (get_local $1)
            ;;@ memcpy.ts:90:30
            (i32.const 15)
           )
          )
         )
         ;;@ memcpy.ts:91:10
         (i32.store
          ;;@ memcpy.ts:91:21
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:91:28
           (i32.const 12)
          )
          ;;@ memcpy.ts:91:32
          (i32.or
           (i32.shr_u
            (get_local $5)
            ;;@ memcpy.ts:91:37
            (i32.const 8)
           )
           ;;@ memcpy.ts:91:41
           (i32.shl
            (get_local $4)
            ;;@ memcpy.ts:91:46
            (i32.const 24)
           )
          )
         )
         ;;@ memcpy.ts:92:10
         (set_local $1
          (i32.add
           (get_local $1)
           ;;@ memcpy.ts:92:17
           (i32.const 16)
          )
         )
         ;;@ memcpy.ts:92:21
         (set_local $0
          (i32.add
           (get_local $0)
           ;;@ memcpy.ts:92:29
           (i32.const 16)
          )
         )
         ;;@ memcpy.ts:92:33
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ memcpy.ts:92:38
           (i32.const 16)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
    ;;@ memcpy.ts:94:8
    (br $break|2)
   )
  )
  ;;@ memcpy.ts:99:2
  (if
   ;;@ memcpy.ts:99:6
   (i32.and
    (get_local $2)
    ;;@ memcpy.ts:99:10
    (i32.const 16)
   )
   ;;@ memcpy.ts:99:14
   (block
    ;;@ memcpy.ts:100:4
    (i32.store8
     ;;@ memcpy.ts:100:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:100:22
     (i32.load8_u
      ;;@ memcpy.ts:100:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:101:4
    (i32.store8
     ;;@ memcpy.ts:101:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:101:22
     (i32.load8_u
      ;;@ memcpy.ts:101:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:102:4
    (i32.store8
     ;;@ memcpy.ts:102:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:102:22
     (i32.load8_u
      ;;@ memcpy.ts:102:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:103:4
    (i32.store8
     ;;@ memcpy.ts:103:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:103:22
     (i32.load8_u
      ;;@ memcpy.ts:103:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:104:4
    (i32.store8
     ;;@ memcpy.ts:104:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:104:22
     (i32.load8_u
      ;;@ memcpy.ts:104:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:105:4
    (i32.store8
     ;;@ memcpy.ts:105:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:105:22
     (i32.load8_u
      ;;@ memcpy.ts:105:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:106:4
    (i32.store8
     ;;@ memcpy.ts:106:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:106:22
     (i32.load8_u
      ;;@ memcpy.ts:106:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:107:4
    (i32.store8
     ;;@ memcpy.ts:107:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:107:22
     (i32.load8_u
      ;;@ memcpy.ts:107:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:108:4
    (i32.store8
     ;;@ memcpy.ts:108:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:108:22
     (i32.load8_u
      ;;@ memcpy.ts:108:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:109:4
    (i32.store8
     ;;@ memcpy.ts:109:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:109:22
     (i32.load8_u
      ;;@ memcpy.ts:109:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:110:4
    (i32.store8
     ;;@ memcpy.ts:110:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:110:22
     (i32.load8_u
      ;;@ memcpy.ts:110:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:111:4
    (i32.store8
     ;;@ memcpy.ts:111:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:111:22
     (i32.load8_u
      ;;@ memcpy.ts:111:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:112:4
    (i32.store8
     ;;@ memcpy.ts:112:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:112:22
     (i32.load8_u
      ;;@ memcpy.ts:112:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:113:4
    (i32.store8
     ;;@ memcpy.ts:113:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:113:22
     (i32.load8_u
      ;;@ memcpy.ts:113:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:114:4
    (i32.store8
     ;;@ memcpy.ts:114:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:114:22
     (i32.load8_u
      ;;@ memcpy.ts:114:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:115:4
    (i32.store8
     ;;@ memcpy.ts:115:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:115:22
     (i32.load8_u
      ;;@ memcpy.ts:115:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
   )
  )
  ;;@ memcpy.ts:117:2
  (if
   ;;@ memcpy.ts:117:6
   (i32.and
    (get_local $2)
    ;;@ memcpy.ts:117:10
    (i32.const 8)
   )
   ;;@ memcpy.ts:117:13
   (block
    ;;@ memcpy.ts:118:4
    (i32.store8
     ;;@ memcpy.ts:118:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:118:22
     (i32.load8_u
      ;;@ memcpy.ts:118:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:119:4
    (i32.store8
     ;;@ memcpy.ts:119:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:119:22
     (i32.load8_u
      ;;@ memcpy.ts:119:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:120:4
    (i32.store8
     ;;@ memcpy.ts:120:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:120:22
     (i32.load8_u
      ;;@ memcpy.ts:120:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:121:4
    (i32.store8
     ;;@ memcpy.ts:121:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:121:22
     (i32.load8_u
      ;;@ memcpy.ts:121:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:122:4
    (i32.store8
     ;;@ memcpy.ts:122:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:122:22
     (i32.load8_u
      ;;@ memcpy.ts:122:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:123:4
    (i32.store8
     ;;@ memcpy.ts:123:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:123:22
     (i32.load8_u
      ;;@ memcpy.ts:123:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:124:4
    (i32.store8
     ;;@ memcpy.ts:124:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:124:22
     (i32.load8_u
      ;;@ memcpy.ts:124:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:125:4
    (i32.store8
     ;;@ memcpy.ts:125:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:125:22
     (i32.load8_u
      ;;@ memcpy.ts:125:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
   )
  )
  ;;@ memcpy.ts:127:2
  (if
   ;;@ memcpy.ts:127:6
   (i32.and
    (get_local $2)
    ;;@ memcpy.ts:127:10
    (i32.const 4)
   )
   ;;@ memcpy.ts:127:13
   (block
    ;;@ memcpy.ts:128:4
    (i32.store8
     ;;@ memcpy.ts:128:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:128:22
     (i32.load8_u
      ;;@ memcpy.ts:128:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:129:4
    (i32.store8
     ;;@ memcpy.ts:129:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:129:22
     (i32.load8_u
      ;;@ memcpy.ts:129:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:130:4
    (i32.store8
     ;;@ memcpy.ts:130:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:130:22
     (i32.load8_u
      ;;@ memcpy.ts:130:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:131:4
    (i32.store8
     ;;@ memcpy.ts:131:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:131:22
     (i32.load8_u
      ;;@ memcpy.ts:131:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
   )
  )
  ;;@ memcpy.ts:133:2
  (if
   ;;@ memcpy.ts:133:6
   (i32.and
    (get_local $2)
    ;;@ memcpy.ts:133:10
    (i32.const 2)
   )
   ;;@ memcpy.ts:133:13
   (block
    ;;@ memcpy.ts:134:4
    (i32.store8
     ;;@ memcpy.ts:134:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:134:22
     (i32.load8_u
      ;;@ memcpy.ts:134:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
    ;;@ memcpy.ts:135:4
    (i32.store8
     ;;@ memcpy.ts:135:14
     (block (result i32)
      (set_local $6
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
     ;;@ memcpy.ts:135:22
     (i32.load8_u
      ;;@ memcpy.ts:135:31
      (block (result i32)
       (set_local $6
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (get_local $6)
      )
     )
    )
   )
  )
  ;;@ memcpy.ts:137:2
  (if
   ;;@ memcpy.ts:137:6
   (i32.and
    (get_local $2)
    ;;@ memcpy.ts:137:10
    (i32.const 1)
   )
   ;;@ memcpy.ts:138:4
   (i32.store8
    ;;@ memcpy.ts:138:14
    (block (result i32)
     (set_local $6
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $6)
       (i32.const 1)
      )
     )
     (get_local $6)
    )
    ;;@ memcpy.ts:138:22
    (i32.load8_u
     ;;@ memcpy.ts:138:31
     (block (result i32)
      (set_local $6
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (get_local $6)
     )
    )
   )
  )
  ;;@ memcpy.ts:140:9
  (return
   (get_local $3)
  )
 )
 (func $fmod/fmod (; 7 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 i64)
  ;;@ fmod.ts:3:2
  (set_local $2
   ;;@ fmod.ts:3:11
   (i64.reinterpret/f64
    ;;@ fmod.ts:3:28
    (get_local $0)
   )
  )
  ;;@ fmod.ts:4:2
  (set_local $3
   ;;@ fmod.ts:4:11
   (i64.reinterpret/f64
    ;;@ fmod.ts:4:28
    (get_local $1)
   )
  )
  ;;@ fmod.ts:5:2
  (set_local $4
   ;;@ fmod.ts:5:11
   (i32.wrap/i64
    ;;@ fmod.ts:5:17
    (i64.and
     (i64.shr_u
      (get_local $2)
      ;;@ fmod.ts:5:23
      (i64.const 52)
     )
     ;;@ fmod.ts:5:28
     (i64.const 2047)
    )
   )
  )
  ;;@ fmod.ts:6:2
  (set_local $5
   ;;@ fmod.ts:6:11
   (i32.wrap/i64
    ;;@ fmod.ts:6:17
    (i64.and
     (i64.shr_u
      (get_local $3)
      ;;@ fmod.ts:6:23
      (i64.const 52)
     )
     ;;@ fmod.ts:6:28
     (i64.const 2047)
    )
   )
  )
  ;;@ fmod.ts:7:2
  (set_local $6
   ;;@ fmod.ts:7:11
   (i32.wrap/i64
    ;;@ fmod.ts:7:17
    (i64.shr_u
     (get_local $2)
     ;;@ fmod.ts:7:23
     (i64.const 63)
    )
   )
  )
  ;;@ fmod.ts:9:2
  (if
   ;;@ fmod.ts:9:6
   (i32.and
    (if (result i32)
     (i32.ne
      (tee_local $8
       (i32.and
        (if (result i32)
         (i32.ne
          (tee_local $8
           (i64.eq
            (i64.shl
             (get_local $3)
             ;;@ fmod.ts:9:12
             (i64.const 1)
            )
            ;;@ fmod.ts:9:17
            (i64.const 0)
           )
          )
          (i32.const 0)
         )
         (get_local $8)
         ;;@ fmod.ts:9:22
         (f64.ne
          (tee_local $7
           ;;@ fmod.ts:9:33
           (get_local $1)
          )
          (get_local $7)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
     (get_local $8)
     ;;@ fmod.ts:9:39
     (i32.eq
      (get_local $4)
      ;;@ fmod.ts:9:45
      (i32.const 2047)
     )
    )
    (i32.const 1)
   )
   ;;@ fmod.ts:10:27
   (return
    ;;@ fmod.ts:10:11
    (f64.div
     (f64.mul
      ;;@ fmod.ts:10:12
      (get_local $0)
      ;;@ fmod.ts:10:16
      (get_local $1)
     )
     ;;@ fmod.ts:10:21
     (f64.mul
      ;;@ fmod.ts:10:22
      (get_local $0)
      ;;@ fmod.ts:10:26
      (get_local $1)
     )
    )
   )
  )
  ;;@ fmod.ts:11:2
  (if
   ;;@ fmod.ts:11:6
   (i64.le_u
    (i64.shl
     (get_local $2)
     ;;@ fmod.ts:11:12
     (i64.const 1)
    )
    ;;@ fmod.ts:11:17
    (i64.shl
     (get_local $3)
     ;;@ fmod.ts:11:23
     (i64.const 1)
    )
   )
   ;;@ fmod.ts:11:26
   (block
    ;;@ fmod.ts:12:4
    (if
     ;;@ fmod.ts:12:8
     (i64.eq
      (i64.shl
       (get_local $2)
       ;;@ fmod.ts:12:14
       (i64.const 1)
      )
      ;;@ fmod.ts:12:19
      (i64.shl
       (get_local $3)
       ;;@ fmod.ts:12:25
       (i64.const 1)
      )
     )
     ;;@ fmod.ts:13:17
     (return
      ;;@ fmod.ts:13:13
      (f64.mul
       (f64.const 0)
       ;;@ fmod.ts:13:17
       (get_local $0)
      )
     )
    )
    ;;@ fmod.ts:14:11
    (return
     (get_local $0)
    )
   )
  )
  ;;@ fmod.ts:18:2
  (if
   ;;@ fmod.ts:18:6
   (i32.eqz
    ;;@ fmod.ts:18:7
    (get_local $4)
   )
   ;;@ fmod.ts:18:11
   (block
    (block $break|0
     ;;@ fmod.ts:19:9
     (set_local $9
      ;;@ fmod.ts:19:17
      (i64.shl
       (get_local $2)
       ;;@ fmod.ts:19:23
       (i64.const 12)
      )
     )
     (loop $continue|0
      (if
       ;;@ fmod.ts:19:27
       (i64.eqz
        ;;@ fmod.ts:19:28
        (i64.shr_u
         ;;@ fmod.ts:19:29
         (get_local $9)
         ;;@ fmod.ts:19:34
         (i64.const 63)
        )
       )
       (block
        ;;@ fmod.ts:20:6
        (set_local $4
         (i32.sub
          ;;@ fmod.ts:20:8
          (get_local $4)
          (i32.const 1)
         )
        )
        ;;@ fmod.ts:19:39
        (set_local $9
         (i64.shl
          (get_local $9)
          ;;@ fmod.ts:19:45
          (i64.const 1)
         )
        )
        (br $continue|0)
       )
      )
     )
    )
    ;;@ fmod.ts:21:4
    (set_local $2
     (i64.shl
      (get_local $2)
      ;;@ fmod.ts:21:11
      (i64.extend_u/i32
       (i32.add
        (i32.sub
         (i32.const 0)
         ;;@ fmod.ts:21:12
         (get_local $4)
        )
        ;;@ fmod.ts:21:17
        (i32.const 1)
       )
      )
     )
    )
   )
   ;;@ fmod.ts:22:9
   (block
    ;;@ fmod.ts:23:4
    (set_local $2
     (i64.and
      (get_local $2)
      ;;@ fmod.ts:23:10
      (i64.shr_u
       (i64.sub
        (i64.const 0)
        ;;@ fmod.ts:23:11
        (i64.const 1)
       )
       ;;@ fmod.ts:23:16
       (i64.const 12)
      )
     )
    )
    ;;@ fmod.ts:24:4
    (set_local $2
     (i64.or
      (get_local $2)
      ;;@ fmod.ts:24:10
      (i64.shl
       (i64.const 1)
       ;;@ fmod.ts:24:15
       (i64.const 52)
      )
     )
    )
   )
  )
  ;;@ fmod.ts:26:2
  (if
   ;;@ fmod.ts:26:6
   (i32.eqz
    ;;@ fmod.ts:26:7
    (get_local $5)
   )
   ;;@ fmod.ts:26:11
   (block
    (block $break|1
     ;;@ fmod.ts:27:9
     (set_local $9
      ;;@ fmod.ts:27:13
      (i64.shl
       (get_local $3)
       ;;@ fmod.ts:27:19
       (i64.const 12)
      )
     )
     (loop $continue|1
      (if
       ;;@ fmod.ts:27:23
       (i64.eqz
        ;;@ fmod.ts:27:24
        (i64.shr_u
         ;;@ fmod.ts:27:25
         (get_local $9)
         ;;@ fmod.ts:27:30
         (i64.const 63)
        )
       )
       (block
        ;;@ fmod.ts:28:6
        (set_local $5
         (i32.sub
          ;;@ fmod.ts:28:8
          (get_local $5)
          (i32.const 1)
         )
        )
        ;;@ fmod.ts:27:35
        (set_local $9
         (i64.shl
          (get_local $9)
          ;;@ fmod.ts:27:41
          (i64.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    ;;@ fmod.ts:29:4
    (set_local $3
     (i64.shl
      (get_local $3)
      ;;@ fmod.ts:29:11
      (i64.extend_u/i32
       (i32.add
        (i32.sub
         (i32.const 0)
         ;;@ fmod.ts:29:12
         (get_local $5)
        )
        ;;@ fmod.ts:29:17
        (i32.const 1)
       )
      )
     )
    )
   )
   ;;@ fmod.ts:30:9
   (block
    ;;@ fmod.ts:31:4
    (set_local $3
     (i64.and
      (get_local $3)
      ;;@ fmod.ts:31:10
      (i64.shr_u
       (i64.sub
        (i64.const 0)
        ;;@ fmod.ts:31:11
        (i64.const 1)
       )
       ;;@ fmod.ts:31:16
       (i64.const 12)
      )
     )
    )
    ;;@ fmod.ts:32:4
    (set_local $3
     (i64.or
      (get_local $3)
      ;;@ fmod.ts:32:10
      (i64.shl
       (i64.const 1)
       ;;@ fmod.ts:32:15
       (i64.const 52)
      )
     )
    )
   )
  )
  ;;@ fmod.ts:36:2
  (block $break|2
   (nop)
   (loop $continue|2
    (if
     ;;@ fmod.ts:36:9
     (i32.gt_s
      (get_local $4)
      ;;@ fmod.ts:36:14
      (get_local $5)
     )
     (block
      (block
       ;;@ fmod.ts:37:4
       (set_local $9
        ;;@ fmod.ts:37:8
        (i64.sub
         (get_local $2)
         ;;@ fmod.ts:37:13
         (get_local $3)
        )
       )
       ;;@ fmod.ts:38:4
       (if
        ;;@ fmod.ts:38:8
        (i64.eqz
         ;;@ fmod.ts:38:9
         (i64.shr_u
          ;;@ fmod.ts:38:10
          (get_local $9)
          ;;@ fmod.ts:38:15
          (i64.const 63)
         )
        )
        ;;@ fmod.ts:38:20
        (block
         ;;@ fmod.ts:39:6
         (if
          ;;@ fmod.ts:39:10
          (i64.eqz
           ;;@ fmod.ts:39:11
           (get_local $9)
          )
          ;;@ fmod.ts:40:19
          (return
           ;;@ fmod.ts:40:15
           (f64.mul
            (f64.const 0)
            ;;@ fmod.ts:40:19
            (get_local $0)
           )
          )
         )
         ;;@ fmod.ts:41:6
         (set_local $2
          ;;@ fmod.ts:41:11
          (get_local $9)
         )
        )
       )
       ;;@ fmod.ts:43:4
       (set_local $2
        (i64.shl
         (get_local $2)
         ;;@ fmod.ts:43:11
         (i64.const 1)
        )
       )
      )
      ;;@ fmod.ts:36:18
      (set_local $4
       (i32.sub
        (get_local $4)
        (i32.const 1)
       )
      )
      (br $continue|2)
     )
    )
   )
  )
  ;;@ fmod.ts:45:2
  (set_local $9
   ;;@ fmod.ts:45:6
   (i64.sub
    (get_local $2)
    ;;@ fmod.ts:45:11
    (get_local $3)
   )
  )
  ;;@ fmod.ts:46:2
  (if
   ;;@ fmod.ts:46:6
   (i64.eqz
    ;;@ fmod.ts:46:7
    (i64.shr_u
     ;;@ fmod.ts:46:8
     (get_local $9)
     ;;@ fmod.ts:46:13
     (i64.const 63)
    )
   )
   ;;@ fmod.ts:46:18
   (block
    ;;@ fmod.ts:47:4
    (if
     ;;@ fmod.ts:47:8
     (i64.eqz
      ;;@ fmod.ts:47:9
      (get_local $9)
     )
     ;;@ fmod.ts:48:17
     (return
      ;;@ fmod.ts:48:13
      (f64.mul
       (f64.const 0)
       ;;@ fmod.ts:48:17
       (get_local $0)
      )
     )
    )
    ;;@ fmod.ts:49:4
    (set_local $2
     ;;@ fmod.ts:49:9
     (get_local $9)
    )
   )
  )
  ;;@ fmod.ts:51:2
  (block $break|3
   (nop)
   (loop $continue|3
    (if
     ;;@ fmod.ts:51:9
     (i64.eqz
      ;;@ fmod.ts:51:10
      (i64.shr_u
       ;;@ fmod.ts:51:11
       (get_local $2)
       ;;@ fmod.ts:51:17
       (i64.const 52)
      )
     )
     (block
      ;;@ fmod.ts:52:4
      (set_local $4
       (i32.sub
        ;;@ fmod.ts:52:6
        (get_local $4)
        (i32.const 1)
       )
      )
      ;;@ fmod.ts:51:22
      (set_local $2
       (i64.shl
        (get_local $2)
        ;;@ fmod.ts:51:29
        (i64.const 1)
       )
      )
      (br $continue|3)
     )
    )
   )
  )
  ;;@ fmod.ts:55:2
  (if
   ;;@ fmod.ts:55:6
   (i32.gt_s
    (get_local $4)
    ;;@ fmod.ts:55:11
    (i32.const 0)
   )
   ;;@ fmod.ts:55:14
   (block
    ;;@ fmod.ts:56:4
    (set_local $2
     (i64.sub
      (get_local $2)
      ;;@ fmod.ts:56:10
      (i64.shl
       (i64.const 1)
       ;;@ fmod.ts:56:15
       (i64.const 52)
      )
     )
    )
    ;;@ fmod.ts:57:4
    (set_local $2
     (i64.or
      (get_local $2)
      ;;@ fmod.ts:57:10
      (i64.shl
       (i64.extend_u/i32
        (get_local $4)
       )
       ;;@ fmod.ts:57:21
       (i64.const 52)
      )
     )
    )
   )
   ;;@ fmod.ts:59:4
   (set_local $2
    (i64.shr_u
     (get_local $2)
     ;;@ fmod.ts:59:11
     (i64.extend_u/i32
      (i32.add
       (i32.sub
        (i32.const 0)
        ;;@ fmod.ts:59:12
        (get_local $4)
       )
       ;;@ fmod.ts:59:17
       (i32.const 1)
      )
     )
    )
   )
  )
  ;;@ fmod.ts:61:2
  (set_local $2
   (i64.or
    (get_local $2)
    ;;@ fmod.ts:61:8
    (i64.shl
     (i64.extend_u/i32
      (get_local $6)
     )
     ;;@ fmod.ts:61:19
     (i64.const 63)
    )
   )
  )
  ;;@ fmod.ts:62:28
  (return
   ;;@ fmod.ts:62:9
   (f64.reinterpret/i64
    ;;@ fmod.ts:62:26
    (get_local $2)
   )
  )
 )
 (func $fmod/fmodf (; 8 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 i32)
  ;;@ fmod.ts:72:2
  (set_local $2
   ;;@ fmod.ts:72:11
   (i32.reinterpret/f32
    ;;@ fmod.ts:72:28
    (get_local $0)
   )
  )
  ;;@ fmod.ts:73:2
  (set_local $3
   ;;@ fmod.ts:73:11
   (i32.reinterpret/f32
    ;;@ fmod.ts:73:28
    (get_local $1)
   )
  )
  ;;@ fmod.ts:74:2
  (set_local $4
   ;;@ fmod.ts:74:11
   (i32.and
    ;;@ fmod.ts:74:17
    (i32.shr_u
     (get_local $2)
     ;;@ fmod.ts:74:23
     (i32.const 23)
    )
    ;;@ fmod.ts:74:28
    (i32.const 255)
   )
  )
  ;;@ fmod.ts:75:2
  (set_local $5
   ;;@ fmod.ts:75:11
   (i32.and
    ;;@ fmod.ts:75:17
    (i32.shr_u
     (get_local $3)
     ;;@ fmod.ts:75:23
     (i32.const 23)
    )
    ;;@ fmod.ts:75:28
    (i32.const 255)
   )
  )
  ;;@ fmod.ts:76:2
  (set_local $6
   ;;@ fmod.ts:76:11
   (i32.and
    (get_local $2)
    ;;@ fmod.ts:76:16
    (i32.const -2147483648)
   )
  )
  ;;@ fmod.ts:78:2
  (if
   ;;@ fmod.ts:78:6
   (i32.and
    (if (result i32)
     (i32.ne
      (tee_local $8
       (i32.and
        (if (result i32)
         (i32.ne
          (tee_local $8
           (i32.eq
            (i32.shl
             (get_local $3)
             ;;@ fmod.ts:78:12
             (i32.const 1)
            )
            ;;@ fmod.ts:78:17
            (i32.const 0)
           )
          )
          (i32.const 0)
         )
         (get_local $8)
         ;;@ fmod.ts:78:22
         (f32.ne
          (tee_local $7
           ;;@ fmod.ts:78:33
           (get_local $1)
          )
          (get_local $7)
         )
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
     (get_local $8)
     ;;@ fmod.ts:78:39
     (i32.eq
      (get_local $4)
      ;;@ fmod.ts:78:45
      (i32.const 255)
     )
    )
    (i32.const 1)
   )
   ;;@ fmod.ts:79:27
   (return
    ;;@ fmod.ts:79:11
    (f32.div
     (f32.mul
      ;;@ fmod.ts:79:12
      (get_local $0)
      ;;@ fmod.ts:79:16
      (get_local $1)
     )
     ;;@ fmod.ts:79:21
     (f32.mul
      ;;@ fmod.ts:79:22
      (get_local $0)
      ;;@ fmod.ts:79:26
      (get_local $1)
     )
    )
   )
  )
  ;;@ fmod.ts:80:2
  (if
   ;;@ fmod.ts:80:6
   (i32.le_u
    (i32.shl
     (get_local $2)
     ;;@ fmod.ts:80:12
     (i32.const 1)
    )
    ;;@ fmod.ts:80:17
    (i32.shl
     (get_local $3)
     ;;@ fmod.ts:80:23
     (i32.const 1)
    )
   )
   ;;@ fmod.ts:80:26
   (block
    ;;@ fmod.ts:81:4
    (if
     ;;@ fmod.ts:81:8
     (i32.eq
      (i32.shl
       (get_local $2)
       ;;@ fmod.ts:81:14
       (i32.const 1)
      )
      ;;@ fmod.ts:81:19
      (i32.shl
       (get_local $3)
       ;;@ fmod.ts:81:25
       (i32.const 1)
      )
     )
     ;;@ fmod.ts:82:17
     (return
      ;;@ fmod.ts:82:13
      (f32.mul
       (f32.const 0)
       ;;@ fmod.ts:82:17
       (get_local $0)
      )
     )
    )
    ;;@ fmod.ts:83:11
    (return
     (get_local $0)
    )
   )
  )
  ;;@ fmod.ts:87:2
  (if
   ;;@ fmod.ts:87:6
   (i32.eqz
    ;;@ fmod.ts:87:7
    (get_local $4)
   )
   ;;@ fmod.ts:87:11
   (block
    (block $break|0
     ;;@ fmod.ts:88:9
     (set_local $9
      ;;@ fmod.ts:88:17
      (i32.shl
       (get_local $2)
       ;;@ fmod.ts:88:23
       (i32.const 9)
      )
     )
     (loop $continue|0
      (if
       ;;@ fmod.ts:88:26
       (i32.eqz
        ;;@ fmod.ts:88:27
        (i32.shr_u
         ;;@ fmod.ts:88:28
         (get_local $9)
         ;;@ fmod.ts:88:33
         (i32.const 31)
        )
       )
       (block
        ;;@ fmod.ts:89:6
        (set_local $4
         (i32.sub
          ;;@ fmod.ts:89:8
          (get_local $4)
          (i32.const 1)
         )
        )
        ;;@ fmod.ts:88:38
        (set_local $9
         (i32.shl
          (get_local $9)
          ;;@ fmod.ts:88:44
          (i32.const 1)
         )
        )
        (br $continue|0)
       )
      )
     )
    )
    ;;@ fmod.ts:90:4
    (set_local $2
     (i32.shl
      (get_local $2)
      ;;@ fmod.ts:90:11
      (i32.add
       (i32.sub
        (i32.const 0)
        ;;@ fmod.ts:90:12
        (get_local $4)
       )
       ;;@ fmod.ts:90:17
       (i32.const 1)
      )
     )
    )
   )
   ;;@ fmod.ts:91:9
   (block
    ;;@ fmod.ts:92:4
    (set_local $2
     (i32.and
      (get_local $2)
      ;;@ fmod.ts:92:10
      (i32.shr_u
       (i32.sub
        (i32.const 0)
        ;;@ fmod.ts:92:11
        (i32.const 1)
       )
       ;;@ fmod.ts:92:16
       (i32.const 9)
      )
     )
    )
    ;;@ fmod.ts:93:4
    (set_local $2
     (i32.or
      (get_local $2)
      ;;@ fmod.ts:93:10
      (i32.shl
       (i32.const 1)
       ;;@ fmod.ts:93:15
       (i32.const 23)
      )
     )
    )
   )
  )
  ;;@ fmod.ts:95:2
  (if
   ;;@ fmod.ts:95:6
   (i32.eqz
    ;;@ fmod.ts:95:7
    (get_local $5)
   )
   ;;@ fmod.ts:95:11
   (block
    (block $break|1
     ;;@ fmod.ts:96:9
     (set_local $9
      ;;@ fmod.ts:96:13
      (i32.shl
       (get_local $3)
       ;;@ fmod.ts:96:19
       (i32.const 9)
      )
     )
     (loop $continue|1
      (if
       ;;@ fmod.ts:96:22
       (i32.eqz
        ;;@ fmod.ts:96:23
        (i32.shr_u
         ;;@ fmod.ts:96:24
         (get_local $9)
         ;;@ fmod.ts:96:29
         (i32.const 31)
        )
       )
       (block
        ;;@ fmod.ts:97:6
        (set_local $5
         (i32.sub
          ;;@ fmod.ts:97:8
          (get_local $5)
          (i32.const 1)
         )
        )
        ;;@ fmod.ts:96:34
        (set_local $9
         (i32.shl
          (get_local $9)
          ;;@ fmod.ts:96:40
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    ;;@ fmod.ts:98:4
    (set_local $3
     (i32.shl
      (get_local $3)
      ;;@ fmod.ts:98:11
      (i32.add
       (i32.sub
        (i32.const 0)
        ;;@ fmod.ts:98:12
        (get_local $5)
       )
       ;;@ fmod.ts:98:17
       (i32.const 1)
      )
     )
    )
   )
   ;;@ fmod.ts:99:9
   (block
    ;;@ fmod.ts:100:4
    (set_local $3
     (i32.and
      (get_local $3)
      ;;@ fmod.ts:100:10
      (i32.shr_u
       (i32.sub
        (i32.const 0)
        ;;@ fmod.ts:100:11
        (i32.const 1)
       )
       ;;@ fmod.ts:100:16
       (i32.const 9)
      )
     )
    )
    ;;@ fmod.ts:101:4
    (set_local $3
     (i32.or
      (get_local $3)
      ;;@ fmod.ts:101:10
      (i32.shl
       (i32.const 1)
       ;;@ fmod.ts:101:15
       (i32.const 23)
      )
     )
    )
   )
  )
  ;;@ fmod.ts:105:2
  (block $break|2
   (nop)
   (loop $continue|2
    (if
     ;;@ fmod.ts:105:9
     (i32.gt_s
      (get_local $4)
      ;;@ fmod.ts:105:14
      (get_local $5)
     )
     (block
      (block
       ;;@ fmod.ts:106:4
       (set_local $9
        ;;@ fmod.ts:106:8
        (i32.sub
         (get_local $2)
         ;;@ fmod.ts:106:13
         (get_local $3)
        )
       )
       ;;@ fmod.ts:107:4
       (if
        ;;@ fmod.ts:107:8
        (i32.eqz
         ;;@ fmod.ts:107:9
         (i32.shr_u
          ;;@ fmod.ts:107:10
          (get_local $9)
          ;;@ fmod.ts:107:15
          (i32.const 31)
         )
        )
        ;;@ fmod.ts:107:20
        (block
         ;;@ fmod.ts:108:6
         (if
          ;;@ fmod.ts:108:10
          (i32.eqz
           ;;@ fmod.ts:108:11
           (get_local $9)
          )
          ;;@ fmod.ts:109:19
          (return
           ;;@ fmod.ts:109:15
           (f32.mul
            (f32.const 0)
            ;;@ fmod.ts:109:19
            (get_local $0)
           )
          )
         )
         ;;@ fmod.ts:110:6
         (set_local $2
          ;;@ fmod.ts:110:11
          (get_local $9)
         )
        )
       )
       ;;@ fmod.ts:112:4
       (set_local $2
        (i32.shl
         (get_local $2)
         ;;@ fmod.ts:112:11
         (i32.const 1)
        )
       )
      )
      ;;@ fmod.ts:105:18
      (set_local $4
       (i32.sub
        ;;@ fmod.ts:105:20
        (get_local $4)
        (i32.const 1)
       )
      )
      (br $continue|2)
     )
    )
   )
  )
  ;;@ fmod.ts:114:2
  (set_local $9
   ;;@ fmod.ts:114:6
   (i32.sub
    (get_local $2)
    ;;@ fmod.ts:114:11
    (get_local $3)
   )
  )
  ;;@ fmod.ts:115:2
  (if
   ;;@ fmod.ts:115:6
   (i32.eqz
    ;;@ fmod.ts:115:7
    (i32.shr_u
     ;;@ fmod.ts:115:8
     (get_local $9)
     ;;@ fmod.ts:115:13
     (i32.const 31)
    )
   )
   ;;@ fmod.ts:115:18
   (block
    ;;@ fmod.ts:116:4
    (if
     ;;@ fmod.ts:116:8
     (i32.eqz
      ;;@ fmod.ts:116:9
      (get_local $9)
     )
     ;;@ fmod.ts:117:17
     (return
      ;;@ fmod.ts:117:13
      (f32.mul
       (f32.const 0)
       ;;@ fmod.ts:117:17
       (get_local $0)
      )
     )
    )
    ;;@ fmod.ts:118:4
    (set_local $2
     ;;@ fmod.ts:118:9
     (get_local $9)
    )
   )
  )
  ;;@ fmod.ts:120:2
  (block $break|3
   (nop)
   (loop $continue|3
    (if
     ;;@ fmod.ts:120:9
     (i32.eqz
      ;;@ fmod.ts:120:10
      (i32.shr_u
       ;;@ fmod.ts:120:11
       (get_local $2)
       ;;@ fmod.ts:120:17
       (i32.const 23)
      )
     )
     (block
      ;;@ fmod.ts:121:4
      (set_local $4
       (i32.sub
        ;;@ fmod.ts:121:6
        (get_local $4)
        (i32.const 1)
       )
      )
      ;;@ fmod.ts:120:22
      (set_local $2
       (i32.shl
        (get_local $2)
        ;;@ fmod.ts:120:29
        (i32.const 1)
       )
      )
      (br $continue|3)
     )
    )
   )
  )
  ;;@ fmod.ts:124:2
  (if
   ;;@ fmod.ts:124:6
   (i32.gt_s
    (get_local $4)
    ;;@ fmod.ts:124:11
    (i32.const 0)
   )
   ;;@ fmod.ts:124:14
   (block
    ;;@ fmod.ts:125:4
    (set_local $2
     (i32.sub
      (get_local $2)
      ;;@ fmod.ts:125:10
      (i32.shl
       (i32.const 1)
       ;;@ fmod.ts:125:15
       (i32.const 23)
      )
     )
    )
    ;;@ fmod.ts:126:4
    (set_local $2
     (i32.or
      (get_local $2)
      ;;@ fmod.ts:126:10
      (i32.shl
       (get_local $4)
       ;;@ fmod.ts:126:21
       (i32.const 23)
      )
     )
    )
   )
   ;;@ fmod.ts:128:4
   (set_local $2
    (i32.shr_u
     (get_local $2)
     ;;@ fmod.ts:128:11
     (i32.add
      (i32.sub
       (i32.const 0)
       ;;@ fmod.ts:128:12
       (get_local $4)
      )
      ;;@ fmod.ts:128:17
      (i32.const 1)
     )
    )
   )
  )
  ;;@ fmod.ts:130:2
  (set_local $2
   (i32.or
    (get_local $2)
    ;;@ fmod.ts:130:8
    (get_local $6)
   )
  )
  ;;@ fmod.ts:131:28
  (return
   ;;@ fmod.ts:131:9
   (f32.reinterpret/i32
    ;;@ fmod.ts:131:26
    (get_local $2)
   )
  )
 )
 (func $showcase/ADerivedClass#set:aWildAccessorAppears (; 9 ;) (type $ifv) (param $0 i32) (param $1 f32)
  ;;@ showcase.ts:99:39
  (f32.store offset=4
   (get_local $0)
   ;;@ showcase.ts:99:59
   (get_local $1)
  )
 )
 (func $showcase/ADerivedClass#get:aWildAccessorAppears (; 10 ;) (type $if) (param $0 i32) (result f32)
  ;;@ showcase.ts:98:48
  (return
   ;;@ showcase.ts:98:43
   (f32.load offset=4
    (get_local $0)
   )
  )
 )
 (func $start (; 11 ;) (type $v)
  (local $0 i32)
  (local $1 i64)
  (local $2 f32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i64)
  ;;@ unary.ts:1:0
  (drop
   ;;@ unary.ts:1:1
   (i32.const 1)
  )
  ;;@ unary.ts:2:0
  (drop
   (i32.sub
    (i32.const 0)
    ;;@ unary.ts:2:1
    (i32.const 1)
   )
  )
  ;;@ unary.ts:3:0
  (drop
   (i32.eqz
    ;;@ unary.ts:3:1
    (i32.const 1)
   )
  )
  ;;@ unary.ts:4:0
  (drop
   (i32.xor
    ;;@ unary.ts:4:1
    (i32.const 1)
    (i32.const -1)
   )
  )
  ;;@ unary.ts:5:0
  (drop
   ;;@ unary.ts:5:1
   (f64.const 1.25)
  )
  ;;@ unary.ts:6:0
  (drop
   (f64.neg
    ;;@ unary.ts:6:1
    (f64.const 1.25)
   )
  )
  ;;@ unary.ts:7:0
  (drop
   (f64.eq
    ;;@ unary.ts:7:1
    (f64.const 1.25)
    (f64.const 0)
   )
  )
  ;;@ unary.ts:11:0
  (drop
   ;;@ unary.ts:11:1
   (get_global $unary/i)
  )
  ;;@ unary.ts:12:0
  (drop
   (i32.sub
    (i32.const 0)
    ;;@ unary.ts:12:1
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:13:0
  (drop
   (i32.eqz
    ;;@ unary.ts:13:1
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:14:0
  (drop
   (i32.xor
    ;;@ unary.ts:14:1
    (get_global $unary/i)
    (i32.const -1)
   )
  )
  ;;@ unary.ts:15:0
  (set_global $unary/i
   (i32.add
    ;;@ unary.ts:15:2
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:16:0
  (set_global $unary/i
   (i32.sub
    ;;@ unary.ts:16:2
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:17:0
  (set_global $unary/i
   (i32.add
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:18:0
  (set_global $unary/i
   (i32.sub
    (get_global $unary/i)
    (i32.const 1)
   )
  )
  ;;@ unary.ts:20:0
  (set_global $unary/i
   ;;@ unary.ts:20:4
   (i32.const 1)
  )
  ;;@ unary.ts:21:0
  (set_global $unary/i
   ;;@ unary.ts:21:4
   (i32.sub
    (i32.const 0)
    ;;@ unary.ts:21:5
    (i32.const 1)
   )
  )
  ;;@ unary.ts:22:0
  (set_global $unary/i
   ;;@ unary.ts:22:4
   (i32.eqz
    ;;@ unary.ts:22:5
    (i32.const 1)
   )
  )
  ;;@ unary.ts:23:0
  (set_global $unary/i
   ;;@ unary.ts:23:4
   (i32.xor
    ;;@ unary.ts:23:5
    (i32.const 1)
    (i32.const -1)
   )
  )
  ;;@ unary.ts:24:0
  (set_global $unary/i
   ;;@ unary.ts:24:4
   (get_global $unary/i)
  )
  ;;@ unary.ts:25:0
  (set_global $unary/i
   ;;@ unary.ts:25:4
   (i32.sub
    (i32.const 0)
    ;;@ unary.ts:25:5
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:26:0
  (set_global $unary/i
   ;;@ unary.ts:26:4
   (i32.eqz
    ;;@ unary.ts:26:5
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:27:0
  (set_global $unary/i
   ;;@ unary.ts:27:4
   (i32.xor
    ;;@ unary.ts:27:5
    (get_global $unary/i)
    (i32.const -1)
   )
  )
  ;;@ unary.ts:28:0
  (set_global $unary/i
   ;;@ unary.ts:28:4
   (block (result i32)
    (set_global $unary/i
     (i32.add
      ;;@ unary.ts:28:6
      (get_global $unary/i)
      (i32.const 1)
     )
    )
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:29:0
  (set_global $unary/i
   ;;@ unary.ts:29:4
   (block (result i32)
    (set_global $unary/i
     (i32.sub
      ;;@ unary.ts:29:6
      (get_global $unary/i)
      (i32.const 1)
     )
    )
    (get_global $unary/i)
   )
  )
  ;;@ unary.ts:30:0
  (set_global $unary/i
   ;;@ unary.ts:30:4
   (block (result i32)
    (set_local $0
     (get_global $unary/i)
    )
    (set_global $unary/i
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (get_local $0)
   )
  )
  ;;@ unary.ts:31:0
  (set_global $unary/i
   ;;@ unary.ts:31:4
   (block (result i32)
    (set_local $0
     (get_global $unary/i)
    )
    (set_global $unary/i
     (i32.sub
      (get_local $0)
      (i32.const 1)
     )
    )
    (get_local $0)
   )
  )
  ;;@ unary.ts:35:0
  (drop
   ;;@ unary.ts:35:1
   (get_global $unary/I)
  )
  ;;@ unary.ts:36:0
  (drop
   (i64.sub
    (i64.const 0)
    ;;@ unary.ts:36:1
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:37:0
  (drop
   (i64.eqz
    ;;@ unary.ts:37:1
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:38:0
  (drop
   (i64.xor
    ;;@ unary.ts:38:1
    (get_global $unary/I)
    (i64.const -1)
   )
  )
  ;;@ unary.ts:39:0
  (set_global $unary/I
   (i64.add
    ;;@ unary.ts:39:2
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:40:0
  (set_global $unary/I
   (i64.sub
    ;;@ unary.ts:40:2
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:41:0
  (set_global $unary/I
   (i64.add
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:42:0
  (set_global $unary/I
   (i64.sub
    (get_global $unary/I)
    (i64.const 1)
   )
  )
  ;;@ unary.ts:44:0
  (set_global $unary/I
   ;;@ unary.ts:44:4
   (i64.const 1)
  )
  ;;@ unary.ts:45:0
  (set_global $unary/I
   ;;@ unary.ts:45:4
   (i64.sub
    (i64.const 0)
    ;;@ unary.ts:45:5
    (i64.const 1)
   )
  )
  ;;@ unary.ts:46:0
  (set_global $unary/I
   ;;@ unary.ts:46:4
   (i64.extend_s/i32
    (i64.eqz
     ;;@ unary.ts:46:5
     (i64.const 1)
    )
   )
  )
  ;;@ unary.ts:47:0
  (set_global $unary/I
   ;;@ unary.ts:47:4
   (i64.xor
    ;;@ unary.ts:47:5
    (i64.const 1)
    (i64.const -1)
   )
  )
  ;;@ unary.ts:48:0
  (set_global $unary/I
   ;;@ unary.ts:48:4
   (get_global $unary/I)
  )
  ;;@ unary.ts:49:0
  (set_global $unary/I
   ;;@ unary.ts:49:4
   (i64.sub
    (i64.const 0)
    ;;@ unary.ts:49:5
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:50:0
  (set_global $unary/I
   ;;@ unary.ts:50:4
   (i64.extend_s/i32
    (i64.eqz
     ;;@ unary.ts:50:5
     (get_global $unary/I)
    )
   )
  )
  ;;@ unary.ts:51:0
  (set_global $unary/I
   ;;@ unary.ts:51:4
   (i64.xor
    ;;@ unary.ts:51:5
    (get_global $unary/I)
    (i64.const -1)
   )
  )
  ;;@ unary.ts:52:0
  (set_global $unary/I
   ;;@ unary.ts:52:4
   (block (result i64)
    (set_global $unary/I
     (i64.add
      ;;@ unary.ts:52:6
      (get_global $unary/I)
      (i64.const 1)
     )
    )
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:53:0
  (set_global $unary/I
   ;;@ unary.ts:53:4
   (block (result i64)
    (set_global $unary/I
     (i64.sub
      ;;@ unary.ts:53:6
      (get_global $unary/I)
      (i64.const 1)
     )
    )
    (get_global $unary/I)
   )
  )
  ;;@ unary.ts:54:0
  (set_global $unary/I
   ;;@ unary.ts:54:4
   (block (result i64)
    (set_local $1
     (get_global $unary/I)
    )
    (set_global $unary/I
     (i64.add
      (get_local $1)
      (i64.const 1)
     )
    )
    (get_local $1)
   )
  )
  ;;@ unary.ts:55:0
  (set_global $unary/I
   ;;@ unary.ts:55:4
   (block (result i64)
    (set_local $1
     (get_global $unary/I)
    )
    (set_global $unary/I
     (i64.sub
      (get_local $1)
      (i64.const 1)
     )
    )
    (get_local $1)
   )
  )
  ;;@ unary.ts:59:0
  (drop
   ;;@ unary.ts:59:1
   (get_global $unary/f)
  )
  ;;@ unary.ts:60:0
  (drop
   (f32.neg
    ;;@ unary.ts:60:1
    (get_global $unary/f)
   )
  )
  ;;@ unary.ts:61:0
  (drop
   (f32.eq
    ;;@ unary.ts:61:1
    (get_global $unary/f)
    (f32.const 0)
   )
  )
  ;;@ unary.ts:62:0
  (set_global $unary/f
   (f32.add
    ;;@ unary.ts:62:2
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:63:0
  (set_global $unary/f
   (f32.sub
    ;;@ unary.ts:63:2
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:64:0
  (set_global $unary/f
   (f32.add
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:65:0
  (set_global $unary/f
   (f32.sub
    (get_global $unary/f)
    (f32.const 1)
   )
  )
  ;;@ unary.ts:67:0
  (set_global $unary/f
   ;;@ unary.ts:67:4
   (f32.const 1.25)
  )
  ;;@ unary.ts:68:0
  (set_global $unary/f
   ;;@ unary.ts:68:4
   (f32.neg
    ;;@ unary.ts:68:5
    (f32.const 1.25)
   )
  )
  ;;@ unary.ts:69:0
  (set_global $unary/i
   ;;@ unary.ts:69:4
   (f64.eq
    ;;@ unary.ts:69:5
    (f64.const 1.25)
    (f64.const 0)
   )
  )
  ;;@ unary.ts:70:0
  (set_global $unary/f
   ;;@ unary.ts:70:4
   (get_global $unary/f)
  )
  ;;@ unary.ts:71:0
  (set_global $unary/f
   ;;@ unary.ts:71:4
   (f32.neg
    ;;@ unary.ts:71:5
    (get_global $unary/f)
   )
  )
  ;;@ unary.ts:72:0
  (set_global $unary/i
   ;;@ unary.ts:72:4
   (f32.eq
    ;;@ unary.ts:72:5
    (get_global $unary/f)
    (f32.const 0)
   )
  )
  ;;@ unary.ts:73:0
  (set_global $unary/f
   ;;@ unary.ts:73:4
   (block (result f32)
    (set_global $unary/f
     (f32.add
      ;;@ unary.ts:73:6
      (get_global $unary/f)
      (f32.const 1)
     )
    )
    (get_global $unary/f)
   )
  )
  ;;@ unary.ts:74:0
  (set_global $unary/f
   ;;@ unary.ts:74:4
   (block (result f32)
    (set_global $unary/f
     (f32.sub
      ;;@ unary.ts:74:6
      (get_global $unary/f)
      (f32.const 1)
     )
    )
    (get_global $unary/f)
   )
  )
  ;;@ unary.ts:75:0
  (set_global $unary/f
   ;;@ unary.ts:75:4
   (block (result f32)
    (set_local $2
     (get_global $unary/f)
    )
    (set_global $unary/f
     (f32.add
      (get_local $2)
      (f32.const 1)
     )
    )
    (get_local $2)
   )
  )
  ;;@ unary.ts:76:0
  (set_global $unary/f
   ;;@ unary.ts:76:4
   (block (result f32)
    (set_local $2
     (get_global $unary/f)
    )
    (set_global $unary/f
     (f32.sub
      (get_local $2)
      (f32.const 1)
     )
    )
    (get_local $2)
   )
  )
  ;;@ unary.ts:80:0
  (drop
   ;;@ unary.ts:80:1
   (get_global $unary/F)
  )
  ;;@ unary.ts:81:0
  (drop
   (f64.neg
    ;;@ unary.ts:81:1
    (get_global $unary/F)
   )
  )
  ;;@ unary.ts:82:0
  (drop
   (f64.eq
    ;;@ unary.ts:82:1
    (get_global $unary/F)
    (f64.const 0)
   )
  )
  ;;@ unary.ts:83:0
  (set_global $unary/F
   (f64.add
    ;;@ unary.ts:83:2
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:84:0
  (set_global $unary/F
   (f64.sub
    ;;@ unary.ts:84:2
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:85:0
  (set_global $unary/F
   (f64.add
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:86:0
  (set_global $unary/F
   (f64.sub
    (get_global $unary/F)
    (f64.const 1)
   )
  )
  ;;@ unary.ts:88:0
  (set_global $unary/F
   ;;@ unary.ts:88:4
   (f64.const 1.25)
  )
  ;;@ unary.ts:89:0
  (set_global $unary/F
   ;;@ unary.ts:89:4
   (f64.neg
    ;;@ unary.ts:89:5
    (f64.const 1.25)
   )
  )
  ;;@ unary.ts:90:0
  (set_global $unary/I
   ;;@ unary.ts:90:4
   (i64.extend_s/i32
    (f64.eq
     ;;@ unary.ts:90:5
     (f64.const 1.25)
     (f64.const 0)
    )
   )
  )
  ;;@ unary.ts:91:0
  (set_global $unary/F
   ;;@ unary.ts:91:4
   (get_global $unary/F)
  )
  ;;@ unary.ts:92:0
  (set_global $unary/F
   ;;@ unary.ts:92:4
   (f64.neg
    ;;@ unary.ts:92:5
    (get_global $unary/F)
   )
  )
  ;;@ unary.ts:93:0
  (set_global $unary/I
   ;;@ unary.ts:93:4
   (i64.extend_s/i32
    (f64.eq
     ;;@ unary.ts:93:5
     (get_global $unary/F)
     (f64.const 0)
    )
   )
  )
  ;;@ unary.ts:94:0
  (set_global $unary/F
   ;;@ unary.ts:94:4
   (block (result f64)
    (set_global $unary/F
     (f64.add
      ;;@ unary.ts:94:6
      (get_global $unary/F)
      (f64.const 1)
     )
    )
    (get_global $unary/F)
   )
  )
  ;;@ unary.ts:95:0
  (set_global $unary/F
   ;;@ unary.ts:95:4
   (block (result f64)
    (set_global $unary/F
     (f64.sub
      ;;@ unary.ts:95:6
      (get_global $unary/F)
      (f64.const 1)
     )
    )
    (get_global $unary/F)
   )
  )
  ;;@ unary.ts:96:0
  (set_global $unary/F
   ;;@ unary.ts:96:4
   (block (result f64)
    (set_local $3
     (get_global $unary/F)
    )
    (set_global $unary/F
     (f64.add
      (get_local $3)
      (f64.const 1)
     )
    )
    (get_local $3)
   )
  )
  ;;@ unary.ts:97:0
  (set_global $unary/F
   ;;@ unary.ts:97:4
   (block (result f64)
    (set_local $3
     (get_global $unary/F)
    )
    (set_global $unary/F
     (f64.sub
      (get_local $3)
      (f64.const 1)
     )
    )
    (get_local $3)
   )
  )
  ;;@ binary.ts:5:0
  (drop
   (i32.lt_s
    (get_global $binary/i)
    ;;@ binary.ts:5:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:6:0
  (drop
   (i32.gt_s
    (get_global $binary/i)
    ;;@ binary.ts:6:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:7:0
  (drop
   (i32.le_s
    (get_global $binary/i)
    ;;@ binary.ts:7:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:8:0
  (drop
   (i32.ge_s
    (get_global $binary/i)
    ;;@ binary.ts:8:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:9:0
  (drop
   (i32.eq
    (get_global $binary/i)
    ;;@ binary.ts:9:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:10:0
  (drop
   (i32.eq
    (get_global $binary/i)
    ;;@ binary.ts:10:6
    (i32.const 1)
   )
  )
  ;;@ binary.ts:11:0
  (drop
   (i32.add
    (get_global $binary/i)
    ;;@ binary.ts:11:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:12:0
  (drop
   (i32.sub
    (get_global $binary/i)
    ;;@ binary.ts:12:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:13:0
  (drop
   (i32.mul
    (get_global $binary/i)
    ;;@ binary.ts:13:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:14:0
  (drop
   (i32.div_s
    (get_global $binary/i)
    ;;@ binary.ts:14:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:15:0
  (drop
   (i32.rem_s
    (get_global $binary/i)
    ;;@ binary.ts:15:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:16:0
  (drop
   (i32.shl
    (get_global $binary/i)
    ;;@ binary.ts:16:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:17:0
  (drop
   (i32.shr_s
    (get_global $binary/i)
    ;;@ binary.ts:17:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:18:0
  (drop
   (i32.shr_u
    (get_global $binary/i)
    ;;@ binary.ts:18:6
    (i32.const 1)
   )
  )
  ;;@ binary.ts:19:0
  (drop
   (i32.and
    (get_global $binary/i)
    ;;@ binary.ts:19:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:20:0
  (drop
   (i32.or
    (get_global $binary/i)
    ;;@ binary.ts:20:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:21:0
  (drop
   (i32.xor
    (get_global $binary/i)
    ;;@ binary.ts:21:4
    (i32.const 1)
   )
  )
  ;;@ binary.ts:23:0
  (set_global $binary/b
   ;;@ binary.ts:23:4
   (i32.lt_s
    (get_global $binary/i)
    ;;@ binary.ts:23:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:24:0
  (set_global $binary/b
   ;;@ binary.ts:24:4
   (i32.gt_s
    (get_global $binary/i)
    ;;@ binary.ts:24:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:25:0
  (set_global $binary/b
   ;;@ binary.ts:25:4
   (i32.le_s
    (get_global $binary/i)
    ;;@ binary.ts:25:9
    (i32.const 1)
   )
  )
  ;;@ binary.ts:26:0
  (set_global $binary/b
   ;;@ binary.ts:26:4
   (i32.ge_s
    (get_global $binary/i)
    ;;@ binary.ts:26:9
    (i32.const 1)
   )
  )
  ;;@ binary.ts:27:0
  (set_global $binary/b
   ;;@ binary.ts:27:4
   (i32.eq
    (get_global $binary/i)
    ;;@ binary.ts:27:9
    (i32.const 1)
   )
  )
  ;;@ binary.ts:28:0
  (set_global $binary/b
   ;;@ binary.ts:28:4
   (i32.eq
    (get_global $binary/i)
    ;;@ binary.ts:28:10
    (i32.const 1)
   )
  )
  ;;@ binary.ts:29:0
  (set_global $binary/i
   ;;@ binary.ts:29:4
   (i32.add
    (get_global $binary/i)
    ;;@ binary.ts:29:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:30:0
  (set_global $binary/i
   ;;@ binary.ts:30:4
   (i32.sub
    (get_global $binary/i)
    ;;@ binary.ts:30:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:31:0
  (set_global $binary/i
   ;;@ binary.ts:31:4
   (i32.mul
    (get_global $binary/i)
    ;;@ binary.ts:31:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:32:0
  (set_global $binary/i
   ;;@ binary.ts:32:4
   (i32.div_s
    (get_global $binary/i)
    ;;@ binary.ts:32:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:33:0
  (set_global $binary/i
   ;;@ binary.ts:33:4
   (i32.rem_s
    (get_global $binary/i)
    ;;@ binary.ts:33:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:34:0
  (set_global $binary/i
   ;;@ binary.ts:34:4
   (i32.shl
    (get_global $binary/i)
    ;;@ binary.ts:34:9
    (i32.const 1)
   )
  )
  ;;@ binary.ts:35:0
  (set_global $binary/i
   ;;@ binary.ts:35:4
   (i32.shr_s
    (get_global $binary/i)
    ;;@ binary.ts:35:9
    (i32.const 1)
   )
  )
  ;;@ binary.ts:36:0
  (set_global $binary/i
   ;;@ binary.ts:36:4
   (i32.shr_u
    (get_global $binary/i)
    ;;@ binary.ts:36:10
    (i32.const 1)
   )
  )
  ;;@ binary.ts:37:0
  (set_global $binary/i
   ;;@ binary.ts:37:4
   (i32.and
    (get_global $binary/i)
    ;;@ binary.ts:37:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:38:0
  (set_global $binary/i
   ;;@ binary.ts:38:4
   (i32.or
    (get_global $binary/i)
    ;;@ binary.ts:38:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:39:0
  (set_global $binary/i
   ;;@ binary.ts:39:4
   (i32.xor
    (get_global $binary/i)
    ;;@ binary.ts:39:8
    (i32.const 1)
   )
  )
  ;;@ binary.ts:41:0
  (set_global $binary/i
   (i32.add
    (get_global $binary/i)
    ;;@ binary.ts:41:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:42:0
  (set_global $binary/i
   (i32.sub
    (get_global $binary/i)
    ;;@ binary.ts:42:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:43:0
  (set_global $binary/i
   (i32.mul
    (get_global $binary/i)
    ;;@ binary.ts:43:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:44:0
  (set_global $binary/i
   (i32.rem_s
    (get_global $binary/i)
    ;;@ binary.ts:44:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:45:0
  (set_global $binary/i
   (i32.shl
    (get_global $binary/i)
    ;;@ binary.ts:45:6
    (i32.const 1)
   )
  )
  ;;@ binary.ts:46:0
  (set_global $binary/i
   (i32.shr_s
    (get_global $binary/i)
    ;;@ binary.ts:46:6
    (i32.const 1)
   )
  )
  ;;@ binary.ts:47:0
  (set_global $binary/i
   (i32.shr_u
    (get_global $binary/i)
    ;;@ binary.ts:47:7
    (i32.const 1)
   )
  )
  ;;@ binary.ts:48:0
  (set_global $binary/i
   (i32.and
    (get_global $binary/i)
    ;;@ binary.ts:48:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:49:0
  (set_global $binary/i
   (i32.or
    (get_global $binary/i)
    ;;@ binary.ts:49:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:50:0
  (set_global $binary/i
   (i32.xor
    (get_global $binary/i)
    ;;@ binary.ts:50:5
    (i32.const 1)
   )
  )
  ;;@ binary.ts:54:0
  (drop
   (i64.lt_s
    (get_global $binary/I)
    ;;@ binary.ts:54:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:55:0
  (drop
   (i64.gt_s
    (get_global $binary/I)
    ;;@ binary.ts:55:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:56:0
  (drop
   (i64.le_s
    (get_global $binary/I)
    ;;@ binary.ts:56:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:57:0
  (drop
   (i64.ge_s
    (get_global $binary/I)
    ;;@ binary.ts:57:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:58:0
  (drop
   (i64.eq
    (get_global $binary/I)
    ;;@ binary.ts:58:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:59:0
  (drop
   (i64.eq
    (get_global $binary/I)
    ;;@ binary.ts:59:6
    (i64.const 1)
   )
  )
  ;;@ binary.ts:60:0
  (drop
   (i64.add
    (get_global $binary/I)
    ;;@ binary.ts:60:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:61:0
  (drop
   (i64.sub
    (get_global $binary/I)
    ;;@ binary.ts:61:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:62:0
  (drop
   (i64.mul
    (get_global $binary/I)
    ;;@ binary.ts:62:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:63:0
  (drop
   (i64.div_s
    (get_global $binary/I)
    ;;@ binary.ts:63:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:64:0
  (drop
   (i64.rem_s
    (get_global $binary/I)
    ;;@ binary.ts:64:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:65:0
  (drop
   (i64.shl
    (get_global $binary/I)
    ;;@ binary.ts:65:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:66:0
  (drop
   (i64.shr_s
    (get_global $binary/I)
    ;;@ binary.ts:66:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:67:0
  (drop
   (i64.shr_u
    (get_global $binary/I)
    ;;@ binary.ts:67:6
    (i64.const 1)
   )
  )
  ;;@ binary.ts:68:0
  (drop
   (i64.and
    (get_global $binary/I)
    ;;@ binary.ts:68:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:69:0
  (drop
   (i64.or
    (get_global $binary/I)
    ;;@ binary.ts:69:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:70:0
  (drop
   (i64.xor
    (get_global $binary/I)
    ;;@ binary.ts:70:4
    (i64.const 1)
   )
  )
  ;;@ binary.ts:72:0
  (set_global $binary/b
   ;;@ binary.ts:72:4
   (i64.lt_s
    (get_global $binary/I)
    ;;@ binary.ts:72:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:73:0
  (set_global $binary/b
   ;;@ binary.ts:73:4
   (i64.gt_s
    (get_global $binary/I)
    ;;@ binary.ts:73:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:74:0
  (set_global $binary/b
   ;;@ binary.ts:74:4
   (i64.le_s
    (get_global $binary/I)
    ;;@ binary.ts:74:9
    (i64.const 1)
   )
  )
  ;;@ binary.ts:75:0
  (set_global $binary/b
   ;;@ binary.ts:75:4
   (i64.ge_s
    (get_global $binary/I)
    ;;@ binary.ts:75:9
    (i64.const 1)
   )
  )
  ;;@ binary.ts:76:0
  (set_global $binary/b
   ;;@ binary.ts:76:4
   (i64.eq
    (get_global $binary/I)
    ;;@ binary.ts:76:9
    (i64.const 1)
   )
  )
  ;;@ binary.ts:77:0
  (set_global $binary/b
   ;;@ binary.ts:77:4
   (i64.eq
    (get_global $binary/I)
    ;;@ binary.ts:77:10
    (i64.const 1)
   )
  )
  ;;@ binary.ts:78:0
  (set_global $binary/I
   ;;@ binary.ts:78:4
   (i64.add
    (get_global $binary/I)
    ;;@ binary.ts:78:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:79:0
  (set_global $binary/I
   ;;@ binary.ts:79:4
   (i64.sub
    (get_global $binary/I)
    ;;@ binary.ts:79:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:80:0
  (set_global $binary/I
   ;;@ binary.ts:80:4
   (i64.mul
    (get_global $binary/I)
    ;;@ binary.ts:80:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:81:0
  (set_global $binary/I
   ;;@ binary.ts:81:4
   (i64.div_s
    (get_global $binary/I)
    ;;@ binary.ts:81:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:82:0
  (set_global $binary/I
   ;;@ binary.ts:82:4
   (i64.rem_s
    (get_global $binary/I)
    ;;@ binary.ts:82:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:83:0
  (set_global $binary/I
   ;;@ binary.ts:83:4
   (i64.shl
    (get_global $binary/I)
    ;;@ binary.ts:83:9
    (i64.const 1)
   )
  )
  ;;@ binary.ts:84:0
  (set_global $binary/I
   ;;@ binary.ts:84:4
   (i64.shr_s
    (get_global $binary/I)
    ;;@ binary.ts:84:9
    (i64.const 1)
   )
  )
  ;;@ binary.ts:85:0
  (set_global $binary/I
   ;;@ binary.ts:85:4
   (i64.shr_u
    (get_global $binary/I)
    ;;@ binary.ts:85:10
    (i64.const 1)
   )
  )
  ;;@ binary.ts:86:0
  (set_global $binary/I
   ;;@ binary.ts:86:4
   (i64.and
    (get_global $binary/I)
    ;;@ binary.ts:86:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:87:0
  (set_global $binary/I
   ;;@ binary.ts:87:4
   (i64.or
    (get_global $binary/I)
    ;;@ binary.ts:87:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:88:0
  (set_global $binary/I
   ;;@ binary.ts:88:4
   (i64.xor
    (get_global $binary/I)
    ;;@ binary.ts:88:8
    (i64.const 1)
   )
  )
  ;;@ binary.ts:90:0
  (set_global $binary/I
   (i64.add
    (get_global $binary/I)
    ;;@ binary.ts:90:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:91:0
  (set_global $binary/I
   (i64.sub
    (get_global $binary/I)
    ;;@ binary.ts:91:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:92:0
  (set_global $binary/I
   (i64.mul
    (get_global $binary/I)
    ;;@ binary.ts:92:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:93:0
  (set_global $binary/I
   (i64.rem_s
    (get_global $binary/I)
    ;;@ binary.ts:93:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:94:0
  (set_global $binary/I
   (i64.shl
    (get_global $binary/I)
    ;;@ binary.ts:94:6
    (i64.const 1)
   )
  )
  ;;@ binary.ts:95:0
  (set_global $binary/I
   (i64.shr_s
    (get_global $binary/I)
    ;;@ binary.ts:95:6
    (i64.const 1)
   )
  )
  ;;@ binary.ts:96:0
  (set_global $binary/I
   (i64.shr_u
    (get_global $binary/I)
    ;;@ binary.ts:96:7
    (i64.const 1)
   )
  )
  ;;@ binary.ts:97:0
  (set_global $binary/I
   (i64.and
    (get_global $binary/I)
    ;;@ binary.ts:97:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:98:0
  (set_global $binary/I
   (i64.or
    (get_global $binary/I)
    ;;@ binary.ts:98:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:99:0
  (set_global $binary/I
   (i64.xor
    (get_global $binary/I)
    ;;@ binary.ts:99:5
    (i64.const 1)
   )
  )
  ;;@ binary.ts:103:0
  (drop
   (f32.lt
    (get_global $binary/f)
    ;;@ binary.ts:103:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:104:0
  (drop
   (f32.gt
    (get_global $binary/f)
    ;;@ binary.ts:104:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:105:0
  (drop
   (f32.le
    (get_global $binary/f)
    ;;@ binary.ts:105:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:106:0
  (drop
   (f32.ge
    (get_global $binary/f)
    ;;@ binary.ts:106:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:107:0
  (drop
   (f32.eq
    (get_global $binary/f)
    ;;@ binary.ts:107:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:108:0
  (drop
   (f32.eq
    (get_global $binary/f)
    ;;@ binary.ts:108:6
    (f32.const 1)
   )
  )
  ;;@ binary.ts:109:0
  (drop
   (f32.add
    (get_global $binary/f)
    ;;@ binary.ts:109:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:110:0
  (drop
   (f32.sub
    (get_global $binary/f)
    ;;@ binary.ts:110:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:111:0
  (drop
   (f32.mul
    (get_global $binary/f)
    ;;@ binary.ts:111:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:112:0
  (drop
   (f32.div
    (get_global $binary/f)
    ;;@ binary.ts:112:4
    (f32.const 1)
   )
  )
  ;;@ binary.ts:115:0
  (set_global $binary/b
   ;;@ binary.ts:115:4
   (f32.lt
    (get_global $binary/f)
    ;;@ binary.ts:115:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:116:0
  (set_global $binary/b
   ;;@ binary.ts:116:4
   (f32.gt
    (get_global $binary/f)
    ;;@ binary.ts:116:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:117:0
  (set_global $binary/b
   ;;@ binary.ts:117:4
   (f32.le
    (get_global $binary/f)
    ;;@ binary.ts:117:9
    (f32.const 1)
   )
  )
  ;;@ binary.ts:118:0
  (set_global $binary/b
   ;;@ binary.ts:118:4
   (f32.ge
    (get_global $binary/f)
    ;;@ binary.ts:118:9
    (f32.const 1)
   )
  )
  ;;@ binary.ts:119:0
  (set_global $binary/b
   ;;@ binary.ts:119:4
   (f32.eq
    (get_global $binary/f)
    ;;@ binary.ts:119:9
    (f32.const 1)
   )
  )
  ;;@ binary.ts:120:0
  (set_global $binary/b
   ;;@ binary.ts:120:4
   (f32.eq
    (get_global $binary/f)
    ;;@ binary.ts:120:10
    (f32.const 1)
   )
  )
  ;;@ binary.ts:121:0
  (set_global $binary/f
   ;;@ binary.ts:121:4
   (f32.add
    (get_global $binary/f)
    ;;@ binary.ts:121:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:122:0
  (set_global $binary/f
   ;;@ binary.ts:122:4
   (f32.sub
    (get_global $binary/f)
    ;;@ binary.ts:122:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:123:0
  (set_global $binary/f
   ;;@ binary.ts:123:4
   (f32.mul
    (get_global $binary/f)
    ;;@ binary.ts:123:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:124:0
  (set_global $binary/f
   ;;@ binary.ts:124:4
   (f32.div
    (get_global $binary/f)
    ;;@ binary.ts:124:8
    (f32.const 1)
   )
  )
  ;;@ binary.ts:127:0
  (set_global $binary/f
   (f32.add
    (get_global $binary/f)
    ;;@ binary.ts:127:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:128:0
  (set_global $binary/f
   (f32.sub
    (get_global $binary/f)
    ;;@ binary.ts:128:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:129:0
  (set_global $binary/f
   (f32.mul
    (get_global $binary/f)
    ;;@ binary.ts:129:5
    (f32.const 1)
   )
  )
  ;;@ binary.ts:134:0
  (drop
   (f64.lt
    (get_global $binary/F)
    ;;@ binary.ts:134:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:135:0
  (drop
   (f64.gt
    (get_global $binary/F)
    ;;@ binary.ts:135:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:136:0
  (drop
   (f64.le
    (get_global $binary/F)
    ;;@ binary.ts:136:5
    (f64.const 1)
   )
  )
  ;;@ binary.ts:137:0
  (drop
   (f64.ge
    (get_global $binary/F)
    ;;@ binary.ts:137:5
    (f64.const 1)
   )
  )
  ;;@ binary.ts:138:0
  (drop
   (f64.eq
    (get_global $binary/F)
    ;;@ binary.ts:138:5
    (f64.const 1)
   )
  )
  ;;@ binary.ts:139:0
  (drop
   (f64.eq
    (get_global $binary/F)
    ;;@ binary.ts:139:6
    (f64.const 1)
   )
  )
  ;;@ binary.ts:140:0
  (drop
   (f64.add
    (get_global $binary/F)
    ;;@ binary.ts:140:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:141:0
  (drop
   (f64.sub
    (get_global $binary/F)
    ;;@ binary.ts:141:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:142:0
  (drop
   (f64.mul
    (get_global $binary/F)
    ;;@ binary.ts:142:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:143:0
  (drop
   (f64.div
    (get_global $binary/F)
    ;;@ binary.ts:143:4
    (f64.const 1)
   )
  )
  ;;@ binary.ts:146:0
  (set_global $binary/b
   ;;@ binary.ts:146:4
   (f64.lt
    (get_global $binary/F)
    ;;@ binary.ts:146:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:147:0
  (set_global $binary/b
   ;;@ binary.ts:147:4
   (f64.gt
    (get_global $binary/F)
    ;;@ binary.ts:147:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:148:0
  (set_global $binary/b
   ;;@ binary.ts:148:4
   (f64.le
    (get_global $binary/F)
    ;;@ binary.ts:148:9
    (f64.const 1)
   )
  )
  ;;@ binary.ts:149:0
  (set_global $binary/b
   ;;@ binary.ts:149:4
   (f64.ge
    (get_global $binary/F)
    ;;@ binary.ts:149:9
    (f64.const 1)
   )
  )
  ;;@ binary.ts:150:0
  (set_global $binary/b
   ;;@ binary.ts:150:4
   (f64.eq
    (get_global $binary/F)
    ;;@ binary.ts:150:9
    (f64.const 1)
   )
  )
  ;;@ binary.ts:151:0
  (set_global $binary/b
   ;;@ binary.ts:151:4
   (f64.eq
    (get_global $binary/F)
    ;;@ binary.ts:151:10
    (f64.const 1)
   )
  )
  ;;@ binary.ts:152:0
  (set_global $binary/F
   ;;@ binary.ts:152:4
   (f64.add
    (get_global $binary/F)
    ;;@ binary.ts:152:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:153:0
  (set_global $binary/F
   ;;@ binary.ts:153:4
   (f64.sub
    (get_global $binary/F)
    ;;@ binary.ts:153:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:154:0
  (set_global $binary/F
   ;;@ binary.ts:154:4
   (f64.mul
    (get_global $binary/F)
    ;;@ binary.ts:154:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:155:0
  (set_global $binary/F
   ;;@ binary.ts:155:4
   (f64.div
    (get_global $binary/F)
    ;;@ binary.ts:155:8
    (f64.const 1)
   )
  )
  ;;@ binary.ts:158:0
  (set_global $binary/F
   (f64.add
    (get_global $binary/F)
    ;;@ binary.ts:158:5
    (f64.const 1)
   )
  )
  ;;@ binary.ts:159:0
  (set_global $binary/F
   (f64.sub
    (get_global $binary/F)
    ;;@ binary.ts:159:5
    (f64.const 1)
   )
  )
  ;;@ binary.ts:160:0
  (set_global $binary/F
   (f64.mul
    (get_global $binary/F)
    ;;@ binary.ts:160:5
    (f64.const 1)
   )
  )
  ;;@ logical.ts:1:0
  (drop
   (if (result i32)
    (i32.ne
     (i32.const 0)
     (i32.const 0)
    )
    ;;@ logical.ts:1:5
    (unreachable)
    (i32.const 0)
   )
  )
  ;;@ logical.ts:2:0
  (drop
   (if (result f64)
    (f64.ne
     (f64.const 0)
     (f64.const 0)
    )
    ;;@ logical.ts:2:7
    (unreachable)
    (f64.const 0)
   )
  )
  ;;@ logical.ts:3:0
  (drop
   (if (result i32)
    (i32.ne
     (i32.const 1)
     (i32.const 0)
    )
    (i32.const 1)
    ;;@ logical.ts:3:5
    (unreachable)
   )
  )
  ;;@ logical.ts:4:0
  (drop
   (if (result f64)
    (f64.ne
     (f64.const 1)
     (f64.const 0)
    )
    (f64.const 1)
    ;;@ logical.ts:4:7
    (unreachable)
   )
  )
  ;;@ logical.ts:6:0
  (drop
   (if (result i32)
    (i32.ne
     (tee_local $0
      (if (result i32)
       (i32.ne
        (i32.const 1)
        (i32.const 0)
       )
       ;;@ logical.ts:6:5
       (i32.const 2)
       (i32.const 1)
      )
     )
     (i32.const 0)
    )
    (get_local $0)
    ;;@ logical.ts:6:10
    (unreachable)
   )
  )
  ;;@ logical.ts:7:0
  (drop
   (if (result f64)
    (f64.ne
     (tee_local $3
      (if (result f64)
       (f64.ne
        (f64.const 1)
        (f64.const 0)
       )
       ;;@ logical.ts:7:7
       (f64.const 2)
       (f64.const 1)
      )
     )
     (f64.const 0)
    )
    (get_local $3)
    ;;@ logical.ts:7:14
    (unreachable)
   )
  )
  ;;@ logical.ts:11:0
  (set_global $logical/i
   ;;@ logical.ts:11:4
   (if (result i32)
    (i32.ne
     (i32.const 1)
     (i32.const 0)
    )
    ;;@ logical.ts:11:9
    (i32.const 2)
    (i32.const 1)
   )
  )
  ;;@ logical.ts:12:0
  (if
   (i32.eqz
    ;;@ logical.ts:12:7
    (i32.eq
     (get_global $logical/i)
     ;;@ logical.ts:12:12
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:14:0
  (set_global $logical/i
   ;;@ logical.ts:14:4
   (if (result i32)
    (i32.ne
     (i32.const 0)
     (i32.const 0)
    )
    (i32.const 0)
    ;;@ logical.ts:14:9
    (i32.const 1)
   )
  )
  ;;@ logical.ts:15:0
  (if
   (i32.eqz
    ;;@ logical.ts:15:7
    (i32.eq
     (get_global $logical/i)
     ;;@ logical.ts:15:12
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:19:0
  (set_global $logical/I
   ;;@ logical.ts:19:4
   (if (result i64)
    (i64.ne
     (i64.const 1)
     (i64.const 0)
    )
    ;;@ logical.ts:19:9
    (i64.const 2)
    (i64.const 1)
   )
  )
  ;;@ logical.ts:20:0
  (if
   (i32.eqz
    ;;@ logical.ts:20:7
    (i64.eq
     (get_global $logical/I)
     ;;@ logical.ts:20:12
     (i64.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:22:0
  (set_global $logical/I
   ;;@ logical.ts:22:4
   (if (result i64)
    (i64.ne
     (i64.const 0)
     (i64.const 0)
    )
    (i64.const 0)
    ;;@ logical.ts:22:9
    (i64.const 1)
   )
  )
  ;;@ logical.ts:23:0
  (if
   (i32.eqz
    ;;@ logical.ts:23:7
    (i64.eq
     (get_global $logical/I)
     ;;@ logical.ts:23:12
     (i64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:27:0
  (set_global $logical/f
   ;;@ logical.ts:27:4
   (if (result f32)
    (f32.ne
     (f32.const 1)
     (f32.const 0)
    )
    ;;@ logical.ts:27:11
    (f32.const 2)
    (f32.const 1)
   )
  )
  ;;@ logical.ts:28:0
  (if
   (i32.eqz
    ;;@ logical.ts:28:7
    (f32.eq
     (get_global $logical/f)
     ;;@ logical.ts:28:12
     (f32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:30:0
  (set_global $logical/f
   ;;@ logical.ts:30:4
   (if (result f32)
    (f32.ne
     (f32.const 0)
     (f32.const 0)
    )
    (f32.const 0)
    ;;@ logical.ts:30:11
    (f32.const 1)
   )
  )
  ;;@ logical.ts:31:0
  (if
   (i32.eqz
    ;;@ logical.ts:31:7
    (f32.eq
     (get_global $logical/f)
     ;;@ logical.ts:31:12
     (f32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 31)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:35:0
  (set_global $logical/F
   ;;@ logical.ts:35:4
   (if (result f64)
    (f64.ne
     (f64.const 1)
     (f64.const 0)
    )
    ;;@ logical.ts:35:11
    (f64.const 2)
    (f64.const 1)
   )
  )
  ;;@ logical.ts:36:0
  (if
   (i32.eqz
    ;;@ logical.ts:36:7
    (f64.eq
     (get_global $logical/F)
     ;;@ logical.ts:36:12
     (f64.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 36)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ logical.ts:38:0
  (set_global $logical/F
   ;;@ logical.ts:38:4
   (if (result f64)
    (f64.ne
     (f64.const 0)
     (f64.const 0)
    )
    (f64.const 0)
    ;;@ logical.ts:38:11
    (f64.const 1)
   )
  )
  ;;@ logical.ts:39:0
  (if
   (i32.eqz
    ;;@ logical.ts:39:7
    (f64.eq
     (get_global $logical/F)
     ;;@ logical.ts:39:12
     (f64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 39)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:7:0
  (drop
   (i32.clz
    ;;@ builtins.ts:7:9
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:8:0
  (drop
   (i32.ctz
    ;;@ builtins.ts:8:9
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:9:0
  (drop
   (i32.popcnt
    ;;@ builtins.ts:9:12
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:10:0
  (drop
   (i32.rotl
    ;;@ builtins.ts:10:10
    (i32.const 1)
    ;;@ builtins.ts:10:13
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:11:0
  (drop
   (i32.rotr
    ;;@ builtins.ts:11:10
    (i32.const 1)
    ;;@ builtins.ts:11:13
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:12:0
  (drop
   (select
    (tee_local $0
     ;;@ builtins.ts:12:9
     (i32.sub
      (i32.const 0)
      ;;@ builtins.ts:12:10
      (i32.const 42)
     )
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
  ;;@ builtins.ts:13:0
  (drop
   (select
    (tee_local $0
     ;;@ builtins.ts:13:9
     (i32.const 1)
    )
    (tee_local $4
     ;;@ builtins.ts:13:12
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $0)
     (get_local $4)
    )
   )
  )
  ;;@ builtins.ts:14:0
  (drop
   (select
    (tee_local $0
     ;;@ builtins.ts:14:9
     (i32.const 1)
    )
    (tee_local $4
     ;;@ builtins.ts:14:12
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $0)
     (get_local $4)
    )
   )
  )
  ;;@ builtins.ts:16:0
  (set_global $builtins/i
   ;;@ builtins.ts:16:4
   (i32.clz
    ;;@ builtins.ts:16:13
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:17:0
  (set_global $builtins/i
   ;;@ builtins.ts:17:4
   (i32.ctz
    ;;@ builtins.ts:17:13
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:18:0
  (set_global $builtins/i
   ;;@ builtins.ts:18:4
   (i32.popcnt
    ;;@ builtins.ts:18:16
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:19:0
  (set_global $builtins/i
   ;;@ builtins.ts:19:4
   (i32.rotl
    ;;@ builtins.ts:19:14
    (i32.const 1)
    ;;@ builtins.ts:19:17
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:20:0
  (set_global $builtins/i
   ;;@ builtins.ts:20:4
   (i32.rotr
    ;;@ builtins.ts:20:14
    (i32.const 1)
    ;;@ builtins.ts:20:17
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:21:0
  (set_global $builtins/i
   ;;@ builtins.ts:21:4
   (select
    (tee_local $0
     ;;@ builtins.ts:21:13
     (i32.sub
      (i32.const 0)
      ;;@ builtins.ts:21:14
      (i32.const 42)
     )
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
  ;;@ builtins.ts:21:19
  (if
   (i32.eqz
    ;;@ builtins.ts:21:26
    (i32.eq
     (get_global $builtins/i)
     ;;@ builtins.ts:21:31
     (i32.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 21)
     (i32.const 19)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:22:0
  (set_global $builtins/i
   ;;@ builtins.ts:22:4
   (select
    (tee_local $0
     ;;@ builtins.ts:22:13
     (i32.const 1)
    )
    (tee_local $4
     ;;@ builtins.ts:22:16
     (i32.const 2)
    )
    (i32.gt_s
     (get_local $0)
     (get_local $4)
    )
   )
  )
  ;;@ builtins.ts:22:20
  (if
   (i32.eqz
    ;;@ builtins.ts:22:27
    (i32.eq
     (get_global $builtins/i)
     ;;@ builtins.ts:22:32
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 22)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:23:0
  (set_global $builtins/i
   ;;@ builtins.ts:23:4
   (select
    (tee_local $0
     ;;@ builtins.ts:23:13
     (i32.const 1)
    )
    (tee_local $4
     ;;@ builtins.ts:23:16
     (i32.const 2)
    )
    (i32.lt_s
     (get_local $0)
     (get_local $4)
    )
   )
  )
  ;;@ builtins.ts:23:20
  (if
   (i32.eqz
    ;;@ builtins.ts:23:27
    (i32.eq
     (get_global $builtins/i)
     ;;@ builtins.ts:23:32
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 23)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:27:0
  (drop
   (i64.clz
    ;;@ builtins.ts:27:9
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:28:0
  (drop
   (i64.ctz
    ;;@ builtins.ts:28:9
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:29:0
  (drop
   (i64.popcnt
    ;;@ builtins.ts:29:12
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:30:0
  (drop
   (i64.rotl
    ;;@ builtins.ts:30:10
    (i64.const 1)
    ;;@ builtins.ts:30:13
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:31:0
  (drop
   (i64.rotr
    ;;@ builtins.ts:31:10
    (i64.const 1)
    ;;@ builtins.ts:31:13
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:32:0
  (drop
   (select
    (tee_local $1
     ;;@ builtins.ts:32:9
     (i64.sub
      (i64.const 0)
      ;;@ builtins.ts:32:10
      (i64.const 42)
     )
    )
    (i64.sub
     (i64.const 0)
     (get_local $1)
    )
    (i64.gt_s
     (get_local $1)
     (i64.const 0)
    )
   )
  )
  ;;@ builtins.ts:34:0
  (set_global $builtins/I
   ;;@ builtins.ts:34:4
   (i64.clz
    ;;@ builtins.ts:34:13
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:35:0
  (set_global $builtins/I
   ;;@ builtins.ts:35:4
   (i64.ctz
    ;;@ builtins.ts:35:13
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:36:0
  (set_global $builtins/I
   ;;@ builtins.ts:36:4
   (i64.popcnt
    ;;@ builtins.ts:36:16
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:37:0
  (set_global $builtins/I
   ;;@ builtins.ts:37:4
   (i64.rotl
    ;;@ builtins.ts:37:14
    (i64.const 1)
    ;;@ builtins.ts:37:17
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:38:0
  (set_global $builtins/I
   ;;@ builtins.ts:38:4
   (i64.rotr
    ;;@ builtins.ts:38:14
    (i64.const 1)
    ;;@ builtins.ts:38:17
    (i64.const 1)
   )
  )
  ;;@ builtins.ts:39:0
  (set_global $builtins/I
   ;;@ builtins.ts:39:4
   (select
    (tee_local $1
     ;;@ builtins.ts:39:13
     (i64.sub
      (i64.const 0)
      ;;@ builtins.ts:39:14
      (i64.const 42)
     )
    )
    (i64.sub
     (i64.const 0)
     (get_local $1)
    )
    (i64.gt_s
     (get_local $1)
     (i64.const 0)
    )
   )
  )
  ;;@ builtins.ts:39:19
  (if
   (i32.eqz
    ;;@ builtins.ts:39:26
    (i64.eq
     (get_global $builtins/I)
     ;;@ builtins.ts:39:31
     (i64.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 39)
     (i32.const 19)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:40:0
  (set_global $builtins/I
   ;;@ builtins.ts:40:4
   (select
    (tee_local $1
     ;;@ builtins.ts:40:13
     (i64.const 1)
    )
    (tee_local $5
     ;;@ builtins.ts:40:16
     (i64.const 2)
    )
    (i64.gt_s
     (get_local $1)
     (get_local $5)
    )
   )
  )
  ;;@ builtins.ts:40:20
  (if
   (i32.eqz
    ;;@ builtins.ts:40:27
    (i64.eq
     (get_global $builtins/I)
     ;;@ builtins.ts:40:32
     (i64.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 40)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:41:0
  (set_global $builtins/I
   ;;@ builtins.ts:41:4
   (select
    (tee_local $1
     ;;@ builtins.ts:41:13
     (i64.const 1)
    )
    (tee_local $5
     ;;@ builtins.ts:41:16
     (i64.const 2)
    )
    (i64.lt_s
     (get_local $1)
     (get_local $5)
    )
   )
  )
  ;;@ builtins.ts:41:20
  (if
   (i32.eqz
    ;;@ builtins.ts:41:27
    (i32.eq
     (get_global $builtins/i)
     ;;@ builtins.ts:41:32
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 41)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:47:0
  (drop
   ;;@ builtins.ts:47:5
   (f32.const nan:0x400000)
  )
  ;;@ builtins.ts:48:0
  (drop
   ;;@ builtins.ts:48:5
   (f32.const inf)
  )
  ;;@ builtins.ts:49:0
  (drop
   (f32.abs
    ;;@ builtins.ts:49:9
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:50:0
  (drop
   (f32.ceil
    ;;@ builtins.ts:50:10
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:51:0
  (drop
   (f32.copysign
    ;;@ builtins.ts:51:14
    (f32.const 1.25)
    ;;@ builtins.ts:51:20
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:52:0
  (drop
   (f32.floor
    ;;@ builtins.ts:52:11
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:53:0
  (drop
   (f32.max
    ;;@ builtins.ts:53:9
    (f32.const 1.25)
    ;;@ builtins.ts:53:15
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:54:0
  (drop
   (f32.min
    ;;@ builtins.ts:54:9
    (f32.const 1.25)
    ;;@ builtins.ts:54:15
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:55:0
  (drop
   (f32.nearest
    ;;@ builtins.ts:55:13
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:56:0
  (drop
   (f32.sqrt
    ;;@ builtins.ts:56:10
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:57:0
  (drop
   (f32.trunc
    ;;@ builtins.ts:57:11
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:58:0
  (drop
   (f32.ne
    (tee_local $2
     ;;@ builtins.ts:58:11
     (f32.const 1.25)
    )
    (get_local $2)
   )
  )
  ;;@ builtins.ts:59:0
  (drop
   (select
    (f32.ne
     (f32.abs
      (tee_local $2
       ;;@ builtins.ts:59:14
       (f32.const 1.25)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $2)
     (get_local $2)
    )
   )
  )
  ;;@ builtins.ts:61:0
  (set_global $builtins/f
   ;;@ builtins.ts:61:4
   (f32.const nan:0x400000)
  )
  ;;@ builtins.ts:62:0
  (set_global $builtins/f
   ;;@ builtins.ts:62:4
   (f32.const inf)
  )
  ;;@ builtins.ts:63:0
  (set_global $builtins/f
   ;;@ builtins.ts:63:4
   (f32.abs
    ;;@ builtins.ts:63:13
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:64:0
  (set_global $builtins/f
   ;;@ builtins.ts:64:4
   (f32.ceil
    ;;@ builtins.ts:64:14
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:65:0
  (set_global $builtins/f
   ;;@ builtins.ts:65:4
   (f32.copysign
    ;;@ builtins.ts:65:18
    (f32.const 1.25)
    ;;@ builtins.ts:65:24
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:66:0
  (set_global $builtins/f
   ;;@ builtins.ts:66:4
   (f32.floor
    ;;@ builtins.ts:66:15
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:67:0
  (set_global $builtins/f
   ;;@ builtins.ts:67:4
   (f32.max
    ;;@ builtins.ts:67:13
    (f32.const 1.25)
    ;;@ builtins.ts:67:19
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:68:0
  (set_global $builtins/f
   ;;@ builtins.ts:68:4
   (f32.min
    ;;@ builtins.ts:68:13
    (f32.const 1.25)
    ;;@ builtins.ts:68:19
    (f32.const 2.5)
   )
  )
  ;;@ builtins.ts:69:0
  (set_global $builtins/f
   ;;@ builtins.ts:69:4
   (f32.nearest
    ;;@ builtins.ts:69:17
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:70:0
  (set_global $builtins/f
   ;;@ builtins.ts:70:4
   (f32.sqrt
    ;;@ builtins.ts:70:14
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:71:0
  (set_global $builtins/f
   ;;@ builtins.ts:71:4
   (f32.trunc
    ;;@ builtins.ts:71:15
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:72:0
  (set_global $builtins/b
   ;;@ builtins.ts:72:4
   (f32.ne
    (tee_local $2
     ;;@ builtins.ts:72:15
     (f32.const 1.25)
    )
    (get_local $2)
   )
  )
  ;;@ builtins.ts:73:0
  (set_global $builtins/b
   ;;@ builtins.ts:73:4
   (select
    (f32.ne
     (f32.abs
      (tee_local $2
       ;;@ builtins.ts:73:18
       (f32.const 1.25)
      )
     )
     (f32.const inf)
    )
    (i32.const 0)
    (f32.eq
     (get_local $2)
     (get_local $2)
    )
   )
  )
  ;;@ builtins.ts:77:0
  (drop
   ;;@ builtins.ts:77:5
   (f64.const nan:0x8000000000000)
  )
  ;;@ builtins.ts:78:0
  (drop
   ;;@ builtins.ts:78:5
   (f64.const inf)
  )
  ;;@ builtins.ts:79:0
  (drop
   (f64.const nan:0x8000000000000)
  )
  ;;@ builtins.ts:80:0
  (drop
   (f64.const inf)
  )
  ;;@ builtins.ts:81:0
  (drop
   (f64.abs
    ;;@ builtins.ts:81:9
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:82:0
  (drop
   (f64.ceil
    ;;@ builtins.ts:82:10
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:83:0
  (drop
   (f64.copysign
    ;;@ builtins.ts:83:14
    (f64.const 1.25)
    ;;@ builtins.ts:83:20
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:84:0
  (drop
   (f64.floor
    ;;@ builtins.ts:84:11
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:85:0
  (drop
   (f64.max
    ;;@ builtins.ts:85:9
    (f64.const 1.25)
    ;;@ builtins.ts:85:15
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:86:0
  (drop
   (f64.min
    ;;@ builtins.ts:86:9
    (f64.const 1.25)
    ;;@ builtins.ts:86:15
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:87:0
  (drop
   (f64.nearest
    ;;@ builtins.ts:87:13
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:88:0
  (drop
   (f64.sqrt
    ;;@ builtins.ts:88:10
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:89:0
  (drop
   (f64.trunc
    ;;@ builtins.ts:89:11
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:90:0
  (drop
   (f64.ne
    (tee_local $3
     ;;@ builtins.ts:90:11
     (f64.const 1.25)
    )
    (get_local $3)
   )
  )
  ;;@ builtins.ts:91:0
  (drop
   (select
    (f64.ne
     (f64.abs
      (tee_local $3
       ;;@ builtins.ts:91:14
       (f64.const 1.25)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $3)
     (get_local $3)
    )
   )
  )
  ;;@ builtins.ts:93:0
  (set_global $builtins/F
   ;;@ builtins.ts:93:4
   (f64.const nan:0x8000000000000)
  )
  ;;@ builtins.ts:94:0
  (set_global $builtins/F
   ;;@ builtins.ts:94:4
   (f64.const inf)
  )
  ;;@ builtins.ts:95:0
  (set_global $builtins/F
   ;;@ builtins.ts:95:4
   (f64.abs
    ;;@ builtins.ts:95:13
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:96:0
  (set_global $builtins/F
   ;;@ builtins.ts:96:4
   (f64.ceil
    ;;@ builtins.ts:96:14
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:97:0
  (set_global $builtins/F
   ;;@ builtins.ts:97:4
   (f64.copysign
    ;;@ builtins.ts:97:18
    (f64.const 1.25)
    ;;@ builtins.ts:97:24
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:98:0
  (set_global $builtins/F
   ;;@ builtins.ts:98:4
   (f64.floor
    ;;@ builtins.ts:98:15
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:99:0
  (set_global $builtins/F
   ;;@ builtins.ts:99:4
   (f64.max
    ;;@ builtins.ts:99:13
    (f64.const 1.25)
    ;;@ builtins.ts:99:19
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:100:0
  (set_global $builtins/F
   ;;@ builtins.ts:100:4
   (f64.min
    ;;@ builtins.ts:100:13
    (f64.const 1.25)
    ;;@ builtins.ts:100:19
    (f64.const 2.5)
   )
  )
  ;;@ builtins.ts:101:0
  (set_global $builtins/F
   ;;@ builtins.ts:101:4
   (f64.nearest
    ;;@ builtins.ts:101:17
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:102:0
  (set_global $builtins/F
   ;;@ builtins.ts:102:4
   (f64.sqrt
    ;;@ builtins.ts:102:14
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:103:0
  (set_global $builtins/F
   ;;@ builtins.ts:103:4
   (f64.trunc
    ;;@ builtins.ts:103:15
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:104:0
  (set_global $builtins/b
   ;;@ builtins.ts:104:4
   (f64.ne
    (tee_local $3
     ;;@ builtins.ts:104:15
     (f64.const 1.25)
    )
    (get_local $3)
   )
  )
  ;;@ builtins.ts:105:0
  (set_global $builtins/b
   ;;@ builtins.ts:105:4
   (select
    (f64.ne
     (f64.abs
      (tee_local $3
       ;;@ builtins.ts:105:18
       (f64.const 1.25)
      )
     )
     (f64.const inf)
    )
    (i32.const 0)
    (f64.eq
     (get_local $3)
     (get_local $3)
    )
   )
  )
  ;;@ builtins.ts:109:0
  (set_global $builtins/i
   ;;@ builtins.ts:109:4
   (i32.load
    ;;@ builtins.ts:109:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:109:18
  (i32.store
   ;;@ builtins.ts:109:29
   (i32.const 8)
   ;;@ builtins.ts:109:32
   (get_global $builtins/i)
  )
  ;;@ builtins.ts:110:0
  (i32.store
   ;;@ builtins.ts:110:11
   (i32.const 8)
   ;;@ builtins.ts:110:14
   (i32.load
    ;;@ builtins.ts:110:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:111:0
  (set_global $builtins/I
   ;;@ builtins.ts:111:4
   (i64.load
    ;;@ builtins.ts:111:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:111:18
  (i64.store
   ;;@ builtins.ts:111:29
   (i32.const 8)
   ;;@ builtins.ts:111:32
   (get_global $builtins/I)
  )
  ;;@ builtins.ts:112:0
  (i64.store
   ;;@ builtins.ts:112:11
   (i32.const 8)
   ;;@ builtins.ts:112:14
   (i64.load
    ;;@ builtins.ts:112:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:113:0
  (set_global $builtins/f
   ;;@ builtins.ts:113:4
   (f32.load
    ;;@ builtins.ts:113:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:113:18
  (f32.store
   ;;@ builtins.ts:113:29
   (i32.const 8)
   ;;@ builtins.ts:113:32
   (get_global $builtins/f)
  )
  ;;@ builtins.ts:114:0
  (f32.store
   ;;@ builtins.ts:114:11
   (i32.const 8)
   ;;@ builtins.ts:114:14
   (f32.load
    ;;@ builtins.ts:114:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:115:0
  (set_global $builtins/F
   ;;@ builtins.ts:115:4
   (f64.load
    ;;@ builtins.ts:115:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:115:18
  (f64.store
   ;;@ builtins.ts:115:29
   (i32.const 8)
   ;;@ builtins.ts:115:32
   (get_global $builtins/F)
  )
  ;;@ builtins.ts:116:0
  (f64.store
   ;;@ builtins.ts:116:11
   (i32.const 8)
   ;;@ builtins.ts:116:14
   (f64.load
    ;;@ builtins.ts:116:24
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:119:0
  (set_global $builtins/i
   ;;@ builtins.ts:119:4
   (i32.load offset=8
    ;;@ builtins.ts:119:14
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:119:34
  (i32.store offset=8
   ;;@ builtins.ts:119:45
   (i32.const 0)
   ;;@ builtins.ts:119:48
   (get_global $builtins/i)
  )
  ;;@ builtins.ts:120:0
  (i32.store offset=8
   ;;@ builtins.ts:120:11
   (i32.const 0)
   ;;@ builtins.ts:120:14
   (i32.load offset=8
    ;;@ builtins.ts:120:24
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:121:0
  (set_global $builtins/I
   ;;@ builtins.ts:121:4
   (i64.load offset=8
    ;;@ builtins.ts:121:14
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:121:34
  (i64.store offset=8
   ;;@ builtins.ts:121:45
   (i32.const 0)
   ;;@ builtins.ts:121:48
   (get_global $builtins/I)
  )
  ;;@ builtins.ts:122:0
  (i64.store offset=8
   ;;@ builtins.ts:122:11
   (i32.const 0)
   ;;@ builtins.ts:122:14
   (i64.load offset=8
    ;;@ builtins.ts:122:24
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:123:0
  (set_global $builtins/f
   ;;@ builtins.ts:123:4
   (f32.load offset=8
    ;;@ builtins.ts:123:14
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:123:34
  (f32.store offset=8
   ;;@ builtins.ts:123:45
   (i32.const 0)
   ;;@ builtins.ts:123:48
   (get_global $builtins/f)
  )
  ;;@ builtins.ts:124:0
  (f32.store offset=8
   ;;@ builtins.ts:124:11
   (i32.const 0)
   ;;@ builtins.ts:124:14
   (f32.load offset=8
    ;;@ builtins.ts:124:24
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:125:0
  (set_global $builtins/F
   ;;@ builtins.ts:125:4
   (f64.load offset=8
    ;;@ builtins.ts:125:14
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:125:34
  (f64.store offset=8
   ;;@ builtins.ts:125:45
   (i32.const 0)
   ;;@ builtins.ts:125:48
   (get_global $builtins/F)
  )
  ;;@ builtins.ts:126:0
  (f64.store offset=8
   ;;@ builtins.ts:126:11
   (i32.const 0)
   ;;@ builtins.ts:126:14
   (f64.load offset=8
    ;;@ builtins.ts:126:24
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:130:0
  (set_global $builtins/i
   ;;@ builtins.ts:130:4
   (i32.load8_s
    ;;@ builtins.ts:130:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:131:0
  (set_global $builtins/i
   ;;@ builtins.ts:131:4
   (i32.load16_s
    ;;@ builtins.ts:131:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:132:0
  (set_global $builtins/i
   ;;@ builtins.ts:132:4
   (i32.load
    ;;@ builtins.ts:132:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:134:0
  (set_global $builtins/i
   ;;@ builtins.ts:134:4
   (i32.load8_u
    ;;@ builtins.ts:134:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:135:0
  (set_global $builtins/i
   ;;@ builtins.ts:135:4
   (i32.load16_u
    ;;@ builtins.ts:135:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:136:0
  (set_global $builtins/i
   ;;@ builtins.ts:136:4
   (i32.load
    ;;@ builtins.ts:136:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:139:0
  (set_global $builtins/u
   ;;@ builtins.ts:139:4
   (i32.load8_u
    ;;@ builtins.ts:139:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:140:0
  (set_global $builtins/u
   ;;@ builtins.ts:140:4
   (i32.load16_u
    ;;@ builtins.ts:140:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:141:0
  (set_global $builtins/u
   ;;@ builtins.ts:141:4
   (i32.load
    ;;@ builtins.ts:141:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:143:0
  (set_global $builtins/u
   ;;@ builtins.ts:143:4
   (i32.load8_s
    ;;@ builtins.ts:143:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:144:0
  (set_global $builtins/u
   ;;@ builtins.ts:144:4
   (i32.load16_s
    ;;@ builtins.ts:144:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:145:0
  (set_global $builtins/u
   ;;@ builtins.ts:145:4
   (i32.load
    ;;@ builtins.ts:145:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:147:0
  (set_global $builtins/I
   ;;@ builtins.ts:147:4
   (i64.load8_s
    ;;@ builtins.ts:147:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:148:0
  (set_global $builtins/I
   ;;@ builtins.ts:148:4
   (i64.load16_s
    ;;@ builtins.ts:148:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:149:0
  (set_global $builtins/I
   ;;@ builtins.ts:149:4
   (i64.load32_s
    ;;@ builtins.ts:149:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:150:0
  (set_global $builtins/I
   ;;@ builtins.ts:150:4
   (i64.load
    ;;@ builtins.ts:150:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:153:0
  (set_global $builtins/U
   ;;@ builtins.ts:153:4
   (i64.load8_u
    ;;@ builtins.ts:153:13
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:154:0
  (set_global $builtins/U
   ;;@ builtins.ts:154:4
   (i64.load16_u
    ;;@ builtins.ts:154:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:155:0
  (set_global $builtins/U
   ;;@ builtins.ts:155:4
   (i64.load32_u
    ;;@ builtins.ts:155:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:156:0
  (set_global $builtins/U
   ;;@ builtins.ts:156:4
   (i64.load
    ;;@ builtins.ts:156:14
    (i32.const 8)
   )
  )
  ;;@ builtins.ts:158:0
  (i32.store8
   ;;@ builtins.ts:158:10
   (i32.const 8)
   ;;@ builtins.ts:158:13
   (i32.const 1)
  )
  ;;@ builtins.ts:159:0
  (i32.store16
   ;;@ builtins.ts:159:11
   (i32.const 8)
   ;;@ builtins.ts:159:14
   (i32.const 1)
  )
  ;;@ builtins.ts:160:0
  (i32.store
   ;;@ builtins.ts:160:11
   (i32.const 8)
   ;;@ builtins.ts:160:14
   (i32.const 1)
  )
  ;;@ builtins.ts:162:0
  (i64.store8
   ;;@ builtins.ts:162:10
   (i32.const 8)
   ;;@ builtins.ts:162:13
   (i64.const 1)
  )
  ;;@ builtins.ts:163:0
  (i64.store16
   ;;@ builtins.ts:163:11
   (i32.const 8)
   ;;@ builtins.ts:163:14
   (i64.const 1)
  )
  ;;@ builtins.ts:164:0
  (i64.store32
   ;;@ builtins.ts:164:11
   (i32.const 8)
   ;;@ builtins.ts:164:14
   (i64.const 1)
  )
  ;;@ builtins.ts:165:0
  (i64.store
   ;;@ builtins.ts:165:11
   (i32.const 8)
   ;;@ builtins.ts:165:14
   (i64.const 1)
  )
  ;;@ builtins.ts:167:0
  (i64.store
   ;;@ builtins.ts:167:11
   (i32.const 8)
   (i64.extend_s/i32
    ;;@ builtins.ts:167:14
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:171:0
  (drop
   (i32.reinterpret/f32
    ;;@ builtins.ts:171:17
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:172:0
  (drop
   (f32.reinterpret/i32
    ;;@ builtins.ts:172:17
    (i32.const 25)
   )
  )
  ;;@ builtins.ts:173:0
  (drop
   (i64.reinterpret/f64
    ;;@ builtins.ts:173:17
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:174:0
  (drop
   (f64.reinterpret/i64
    ;;@ builtins.ts:174:17
    (i64.const 25)
   )
  )
  ;;@ builtins.ts:176:0
  (set_global $builtins/i
   ;;@ builtins.ts:176:4
   (i32.reinterpret/f32
    ;;@ builtins.ts:176:21
    (f32.const 1.25)
   )
  )
  ;;@ builtins.ts:177:0
  (set_global $builtins/f
   ;;@ builtins.ts:177:4
   (f32.reinterpret/i32
    ;;@ builtins.ts:177:21
    (i32.const 25)
   )
  )
  ;;@ builtins.ts:178:0
  (set_global $builtins/I
   ;;@ builtins.ts:178:4
   (i64.reinterpret/f64
    ;;@ builtins.ts:178:21
    (f64.const 1.25)
   )
  )
  ;;@ builtins.ts:179:0
  (set_global $builtins/F
   ;;@ builtins.ts:179:4
   (f64.reinterpret/i64
    ;;@ builtins.ts:179:21
    (i64.const 25)
   )
  )
  ;;@ builtins.ts:185:0
  (drop
   (current_memory)
  )
  ;;@ builtins.ts:186:0
  (drop
   (grow_memory
    ;;@ builtins.ts:186:12
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:188:0
  (set_global $builtins/s
   ;;@ builtins.ts:188:4
   (current_memory)
  )
  ;;@ builtins.ts:189:0
  (set_global $builtins/s
   ;;@ builtins.ts:189:4
   (grow_memory
    ;;@ builtins.ts:189:16
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:193:0
  (drop
   (select
    ;;@ builtins.ts:193:12
    (i32.const 10)
    ;;@ builtins.ts:193:16
    (i32.const 20)
    ;;@ builtins.ts:193:20
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:194:0
  (drop
   (select
    ;;@ builtins.ts:194:12
    (i64.const 100)
    ;;@ builtins.ts:194:17
    (i64.const 200)
    ;;@ builtins.ts:194:22
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:195:0
  (drop
   (select
    ;;@ builtins.ts:195:12
    (f32.const 1.25)
    ;;@ builtins.ts:195:18
    (f32.const 2.5)
    ;;@ builtins.ts:195:23
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:196:0
  (drop
   (select
    ;;@ builtins.ts:196:12
    (f64.const 12.5)
    ;;@ builtins.ts:196:18
    (f64.const 25)
    ;;@ builtins.ts:196:24
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:198:0
  (set_global $builtins/i
   ;;@ builtins.ts:198:4
   (select
    ;;@ builtins.ts:198:16
    (i32.const 10)
    ;;@ builtins.ts:198:20
    (i32.const 20)
    ;;@ builtins.ts:198:24
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:199:0
  (set_global $builtins/I
   ;;@ builtins.ts:199:4
   (select
    ;;@ builtins.ts:199:16
    (i64.const 100)
    ;;@ builtins.ts:199:21
    (i64.const 200)
    ;;@ builtins.ts:199:26
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:200:0
  (set_global $builtins/f
   ;;@ builtins.ts:200:4
   (select
    ;;@ builtins.ts:200:16
    (f32.const 1.25)
    ;;@ builtins.ts:200:22
    (f32.const 2.5)
    ;;@ builtins.ts:200:27
    (i32.const 1)
   )
  )
  ;;@ builtins.ts:201:0
  (set_global $builtins/F
   ;;@ builtins.ts:201:4
   (select
    ;;@ builtins.ts:201:16
    (f64.const 12.5)
    ;;@ builtins.ts:201:22
    (f64.const 25)
    ;;@ builtins.ts:201:28
    (i32.const 0)
   )
  )
  ;;@ builtins.ts:203:0
  (if
   ;;@ builtins.ts:203:4
   (i32.const 0)
   ;;@ builtins.ts:203:7
   (unreachable)
  )
  ;;@ builtins.ts:207:0
  (drop
   (i32.const 1)
  )
  ;;@ builtins.ts:208:0
  (drop
   (i32.const 2)
  )
  ;;@ builtins.ts:209:0
  (drop
   (i32.const 4)
  )
  ;;@ builtins.ts:210:0
  (drop
   (i32.const 8)
  )
  ;;@ builtins.ts:211:0
  (drop
   (i32.const 4)
  )
  ;;@ builtins.ts:212:0
  (drop
   (i32.const 1)
  )
  ;;@ builtins.ts:213:0
  (drop
   (i32.const 1)
  )
  ;;@ builtins.ts:214:0
  (drop
   (i32.const 2)
  )
  ;;@ builtins.ts:215:0
  (drop
   (i32.const 4)
  )
  ;;@ builtins.ts:216:0
  (drop
   (i32.const 8)
  )
  ;;@ builtins.ts:217:0
  (drop
   (i32.const 4)
  )
  ;;@ builtins.ts:218:0
  (drop
   (i32.const 4)
  )
  ;;@ builtins.ts:219:0
  (drop
   (i32.const 8)
  )
  ;;@ builtins.ts:221:0
  (if
   (i32.eqz
    ;;@ builtins.ts:221:7
    (f64.ne
     (f64.const nan:0x8000000000000)
     ;;@ builtins.ts:221:14
     (f64.const nan:0x8000000000000)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 221)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:222:0
  (if
   (i32.eqz
    ;;@ builtins.ts:222:7
    (f32.ne
     (tee_local $2
      ;;@ builtins.ts:222:18
      (f32.const nan:0x400000)
     )
     (get_local $2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 222)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:223:0
  (if
   (i32.eqz
    ;;@ builtins.ts:223:7
    (f64.ne
     (tee_local $3
      ;;@ builtins.ts:223:18
      (f64.const nan:0x8000000000000)
     )
     (get_local $3)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 223)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:224:0
  (if
   (i32.eqz
    ;;@ builtins.ts:224:7
    (i32.eqz
     ;;@ builtins.ts:224:8
     (select
      (f32.ne
       (f32.abs
        (tee_local $2
         ;;@ builtins.ts:224:22
         (f32.const nan:0x400000)
        )
       )
       (f32.const inf)
      )
      (i32.const 0)
      (f32.eq
       (get_local $2)
       (get_local $2)
      )
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 224)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:225:0
  (if
   (i32.eqz
    ;;@ builtins.ts:225:7
    (i32.eqz
     ;;@ builtins.ts:225:8
     (select
      (f32.ne
       (f32.abs
        (tee_local $2
         ;;@ builtins.ts:225:22
         (f32.const inf)
        )
       )
       (f32.const inf)
      )
      (i32.const 0)
      (f32.eq
       (get_local $2)
       (get_local $2)
      )
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 225)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:226:0
  (if
   (i32.eqz
    ;;@ builtins.ts:226:7
    (i32.eqz
     ;;@ builtins.ts:226:8
     (select
      (f64.ne
       (f64.abs
        (tee_local $3
         ;;@ builtins.ts:226:22
         (f64.const nan:0x8000000000000)
        )
       )
       (f64.const inf)
      )
      (i32.const 0)
      (f64.eq
       (get_local $3)
       (get_local $3)
      )
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 226)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:227:0
  (if
   (i32.eqz
    ;;@ builtins.ts:227:7
    (i32.eqz
     ;;@ builtins.ts:227:8
     (select
      (f64.ne
       (f64.abs
        (tee_local $3
         ;;@ builtins.ts:227:22
         (f64.const inf)
        )
       )
       (f64.const inf)
      )
      (i32.const 0)
      (f64.eq
       (get_local $3)
       (get_local $3)
      )
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 227)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:228:0
  (if
   (i32.eqz
    ;;@ builtins.ts:228:7
    (select
     (f32.ne
      (f32.abs
       (tee_local $2
        ;;@ builtins.ts:228:21
        (f32.const 0)
       )
      )
      (f32.const inf)
     )
     (i32.const 0)
     (f32.eq
      (get_local $2)
      (get_local $2)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 228)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:229:0
  (if
   (i32.eqz
    ;;@ builtins.ts:229:7
    (select
     (f64.ne
      (f64.abs
       (tee_local $3
        ;;@ builtins.ts:229:21
        (f64.const 0)
       )
      )
      (f64.const inf)
     )
     (i32.const 0)
     (f64.eq
      (get_local $3)
      (get_local $3)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 229)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:242:0
  (if
   (i32.eqz
    ;;@ builtins.ts:242:7
    (i32.eq
     (i32.const -128)
     ;;@ builtins.ts:242:23
     (i32.const -128)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 242)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:243:0
  (if
   (i32.eqz
    ;;@ builtins.ts:243:7
    (i32.eq
     (i32.const 127)
     ;;@ builtins.ts:243:23
     (i32.const 127)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 243)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:244:0
  (if
   (i32.eqz
    ;;@ builtins.ts:244:7
    (i32.eq
     (i32.const -32768)
     ;;@ builtins.ts:244:24
     (i32.const -32768)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 244)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:245:0
  (if
   (i32.eqz
    ;;@ builtins.ts:245:7
    (i32.eq
     (i32.const 32767)
     ;;@ builtins.ts:245:24
     (i32.const 32767)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 245)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:246:0
  (if
   (i32.eqz
    ;;@ builtins.ts:246:7
    (i32.eq
     (i32.const -2147483648)
     ;;@ builtins.ts:246:24
     (i32.const -2147483648)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 246)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:247:0
  (if
   (i32.eqz
    ;;@ builtins.ts:247:7
    (i32.eq
     (i32.const 2147483647)
     ;;@ builtins.ts:247:24
     (i32.const 2147483647)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 247)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:248:0
  (if
   (i32.eqz
    ;;@ builtins.ts:248:7
    (i64.eq
     (i64.const -9223372036854775808)
     ;;@ builtins.ts:248:24
     (i64.const -9223372036854775808)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 248)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:249:0
  (if
   (i32.eqz
    ;;@ builtins.ts:249:7
    (i64.eq
     (i64.const 9223372036854775807)
     ;;@ builtins.ts:249:24
     (i64.const 9223372036854775807)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 249)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:251:0
  (if
   (i32.eqz
    ;;@ builtins.ts:251:7
    (i32.eq
     (i32.const 0)
     ;;@ builtins.ts:251:23
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 251)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:252:0
  (if
   (i32.eqz
    ;;@ builtins.ts:252:7
    (i32.eq
     (i32.const 255)
     ;;@ builtins.ts:252:23
     (i32.const 255)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 252)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:253:0
  (if
   (i32.eqz
    ;;@ builtins.ts:253:7
    (i32.eq
     (i32.const 0)
     ;;@ builtins.ts:253:24
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 253)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:254:0
  (if
   (i32.eqz
    ;;@ builtins.ts:254:7
    (i32.eq
     (i32.const 65535)
     ;;@ builtins.ts:254:24
     (i32.const 65535)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 254)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:255:0
  (if
   (i32.eqz
    ;;@ builtins.ts:255:7
    (i32.eq
     (i32.const 0)
     ;;@ builtins.ts:255:24
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 255)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:256:0
  (if
   (i32.eqz
    ;;@ builtins.ts:256:7
    (i32.eq
     (i32.const -1)
     ;;@ builtins.ts:256:24
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 256)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:257:0
  (if
   (i32.eqz
    ;;@ builtins.ts:257:7
    (i64.eq
     (i64.const 0)
     ;;@ builtins.ts:257:24
     (i64.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 257)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:258:0
  (if
   (i32.eqz
    ;;@ builtins.ts:258:7
    (i64.eq
     (i64.const -1)
     ;;@ builtins.ts:258:24
     (i64.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 258)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:259:0
  (if
   (i32.eqz
    ;;@ builtins.ts:259:7
    (i32.eq
     (i32.const 0)
     ;;@ builtins.ts:259:25
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 259)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:259:29
  (if
   (i32.eqz
    ;;@ builtins.ts:259:36
    (i32.eq
     (i32.const 0)
     ;;@ builtins.ts:259:54
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 259)
     (i32.const 29)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:260:0
  (if
   (i32.eqz
    ;;@ builtins.ts:260:7
    (i32.eq
     (i32.const 1)
     ;;@ builtins.ts:260:25
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 260)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:260:29
  (if
   (i32.eqz
    ;;@ builtins.ts:260:36
    (i32.eq
     (i32.const 1)
     ;;@ builtins.ts:260:54
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 260)
     (i32.const 29)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:262:0
  (if
   (i32.eqz
    ;;@ builtins.ts:262:7
    (f32.eq
     (f32.const -3402823466385288598117041e14)
     ;;@ builtins.ts:262:24
     (f32.neg
      ;;@ builtins.ts:262:25
      (f32.const 3402823466385288598117041e14)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 262)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:263:0
  (if
   (i32.eqz
    ;;@ builtins.ts:263:7
    (f32.eq
     (f32.const 3402823466385288598117041e14)
     ;;@ builtins.ts:263:24
     (f32.const 3402823466385288598117041e14)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 263)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:264:0
  (if
   (i32.eqz
    ;;@ builtins.ts:264:7
    (f32.eq
     (f32.const -16777215)
     ;;@ builtins.ts:264:31
     (f32.neg
      ;;@ builtins.ts:264:32
      (f32.const 16777215)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 264)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:265:0
  (if
   (i32.eqz
    ;;@ builtins.ts:265:7
    (f32.eq
     (f32.const 16777215)
     ;;@ builtins.ts:265:31
     (f32.const 16777215)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 265)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:266:0
  (if
   (i32.eqz
    ;;@ builtins.ts:266:7
    (f32.eq
     (f32.const 1.1920928955078125e-07)
     ;;@ builtins.ts:266:22
     (f32.const 1.1920928955078125e-07)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 266)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:267:0
  (if
   (i32.eqz
    ;;@ builtins.ts:267:7
    (f64.eq
     (f64.const -1797693134862315708145274e284)
     ;;@ builtins.ts:267:24
     (f64.neg
      ;;@ builtins.ts:267:25
      (f64.const 1797693134862315708145274e284)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 267)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:268:0
  (if
   (i32.eqz
    ;;@ builtins.ts:268:7
    (f64.eq
     (f64.const 1797693134862315708145274e284)
     ;;@ builtins.ts:268:24
     (f64.const 1797693134862315708145274e284)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 268)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:269:0
  (if
   (i32.eqz
    ;;@ builtins.ts:269:7
    (f64.eq
     (f64.const -9007199254740991)
     ;;@ builtins.ts:269:31
     (f64.neg
      ;;@ builtins.ts:269:32
      (f64.const 9007199254740991)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 269)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:270:0
  (if
   (i32.eqz
    ;;@ builtins.ts:270:7
    (f64.eq
     (f64.const 9007199254740991)
     ;;@ builtins.ts:270:31
     (f64.const 9007199254740991)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 270)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ builtins.ts:271:0
  (if
   (i32.eqz
    ;;@ builtins.ts:271:7
    (f64.eq
     (f64.const 2.220446049250313e-16)
     ;;@ builtins.ts:271:22
     (f64.const 2.220446049250313e-16)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 32)
     (i32.const 271)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ showcase.ts:42:0
  (if
   (i32.eqz
    ;;@ showcase.ts:42:7
    (i32.eq
     ;;@ showcase.ts:42:18
     (call $showcase/ANamespace.aNamespacedFunction
      ;;@ showcase.ts:42:38
      (get_global $showcase/ANamespace.aNamespacedGlobal)
     )
     ;;@ showcase.ts:42:71
     (i32.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 42)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $showcase/AnEnum.FORTYTWO
   ;;@ showcase.ts:51:13
   (get_global $showcase/aMutableGlobal)
  )
  (set_global $showcase/AnEnum.FORTYTHREE
   (i32.add
    (get_global $showcase/AnEnum.FORTYTWO)
    (i32.const 1)
   )
  )
  ;;@ showcase.ts:54:0
  (if
   (i32.eqz
    ;;@ showcase.ts:54:7
    (i32.eq
     (i32.const 1)
     ;;@ showcase.ts:54:21
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 54)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ showcase.ts:55:0
  (if
   (i32.eqz
    ;;@ showcase.ts:55:7
    (i32.eq
     (i32.const 2)
     ;;@ showcase.ts:55:21
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 55)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ showcase.ts:56:0
  (if
   (i32.eqz
    ;;@ showcase.ts:56:7
    (i32.eq
     (i32.const 4)
     ;;@ showcase.ts:56:22
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 56)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ showcase.ts:57:0
  (if
   (i32.eqz
    ;;@ showcase.ts:57:7
    (i32.eq
     (i32.const 5)
     ;;@ showcase.ts:57:22
     (i32.const 5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 57)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ showcase.ts:58:0
  (if
   (i32.eqz
    ;;@ showcase.ts:58:7
    (i32.eq
     (get_global $showcase/AnEnum.FORTYTWO)
     ;;@ showcase.ts:58:26
     (i32.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 58)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ showcase.ts:59:0
  (if
   (i32.eqz
    ;;@ showcase.ts:59:7
    (i32.eq
     (get_global $showcase/AnEnum.FORTYTHREE)
     ;;@ showcase.ts:59:28
     (i32.const 43)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 59)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ showcase.ts:62:0
  (block
   (drop
    (i32.const 1)
   )
   ;;@ showcase.ts:62:3
   (drop
    (i32.const 2)
   )
   ;;@ showcase.ts:62:6
   (drop
    (i32.const 3)
   )
  )
  ;;@ showcase.ts:68:0
  (drop
   (call $showcase/addGeneric<i32>
    ;;@ showcase.ts:68:16
    (i32.const 1)
    ;;@ showcase.ts:68:19
    (i32.const 2)
   )
  )
  ;;@ showcase.ts:69:0
  (drop
   (call $showcase/addGeneric<f32>
    ;;@ showcase.ts:69:16
    (f32.const 1)
    ;;@ showcase.ts:69:19
    (f32.const 2)
   )
  )
  ;;@ showcase.ts:70:0
  (drop
   (i64.clz
    ;;@ showcase.ts:70:9
    (i64.const 32768)
   )
  )
  (nop)
  ;;@ showcase.ts:74:0
  (drop
   (call $showcase/addGeneric<f64>
    ;;@ showcase.ts:74:19
    (f64.const 1)
    ;;@ showcase.ts:74:22
    (f64.const 2)
   )
  )
  ;;@ memcpy.ts:144:0
  (i64.store
   ;;@ memcpy.ts:144:11
   (i32.const 8)
   ;;@ memcpy.ts:144:22
   (i64.const 1229782938247303441)
  )
  ;;@ memcpy.ts:145:0
  (i64.store
   ;;@ memcpy.ts:145:11
   (i32.add
    (i32.const 8)
    ;;@ memcpy.ts:145:18
    (i32.const 8)
   )
   ;;@ memcpy.ts:145:22
   (i64.const 2459565876494606882)
  )
  ;;@ memcpy.ts:146:0
  (i64.store
   ;;@ memcpy.ts:146:11
   (i32.add
    (i32.const 8)
    ;;@ memcpy.ts:146:18
    (i32.const 16)
   )
   ;;@ memcpy.ts:146:22
   (i64.const 3689348814741910323)
  )
  ;;@ memcpy.ts:147:0
  (i64.store
   ;;@ memcpy.ts:147:11
   (i32.add
    (i32.const 8)
    ;;@ memcpy.ts:147:18
    (i32.const 24)
   )
   ;;@ memcpy.ts:147:22
   (i64.const 4919131752989213764)
  )
  ;;@ memcpy.ts:150:0
  (set_global $memcpy/dest
   ;;@ memcpy.ts:150:7
   (call $memcpy/memcpy
    ;;@ memcpy.ts:150:14
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:150:21
     (i32.const 1)
    )
    ;;@ memcpy.ts:150:24
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:150:31
     (i32.const 16)
    )
    ;;@ memcpy.ts:150:35
    (i32.const 4)
   )
  )
  ;;@ memcpy.ts:151:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:151:7
    (i32.eq
     (get_global $memcpy/dest)
     ;;@ memcpy.ts:151:15
     (i32.add
      (i32.const 8)
      ;;@ memcpy.ts:151:22
      (i32.const 1)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 151)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memcpy.ts:152:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:152:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:152:17
      (i32.const 8)
     )
     ;;@ memcpy.ts:152:26
     (i64.const 1229783084848853777)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 152)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memcpy.ts:154:0
  (set_global $memcpy/dest
   ;;@ memcpy.ts:154:7
   (call $memcpy/memcpy
    ;;@ memcpy.ts:154:14
    (i32.const 8)
    ;;@ memcpy.ts:154:20
    (i32.const 8)
    ;;@ memcpy.ts:154:26
    (i32.const 32)
   )
  )
  ;;@ memcpy.ts:155:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:155:7
    (i32.eq
     (get_global $memcpy/dest)
     ;;@ memcpy.ts:155:15
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 155)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memcpy.ts:156:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:156:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:156:17
      (i32.const 8)
     )
     ;;@ memcpy.ts:156:26
     (i64.const 1229783084848853777)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 156)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memcpy.ts:157:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:157:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:157:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:157:24
       (i32.const 8)
      )
     )
     ;;@ memcpy.ts:157:30
     (i64.const 2459565876494606882)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 157)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memcpy.ts:158:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:158:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:158:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:158:24
       (i32.const 16)
      )
     )
     ;;@ memcpy.ts:158:31
     (i64.const 3689348814741910323)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 158)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memcpy.ts:159:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:159:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:159:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:159:24
       (i32.const 24)
      )
     )
     ;;@ memcpy.ts:159:31
     (i64.const 4919131752989213764)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 159)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memcpy.ts:161:0
  (set_global $memcpy/dest
   ;;@ memcpy.ts:161:7
   (call $memcpy/memcpy
    ;;@ memcpy.ts:161:14
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:161:21
     (i32.const 5)
    )
    ;;@ memcpy.ts:161:24
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:161:31
     (i32.const 28)
    )
    ;;@ memcpy.ts:161:35
    (i32.const 3)
   )
  )
  ;;@ memcpy.ts:162:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:162:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:162:17
      (i32.const 8)
     )
     ;;@ memcpy.ts:162:26
     (i64.const 4919131679688438545)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 162)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memcpy.ts:164:0
  (set_global $memcpy/dest
   ;;@ memcpy.ts:164:7
   (call $memcpy/memcpy
    ;;@ memcpy.ts:164:14
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:164:21
     (i32.const 8)
    )
    ;;@ memcpy.ts:164:24
    (i32.add
     (i32.const 8)
     ;;@ memcpy.ts:164:31
     (i32.const 16)
    )
    ;;@ memcpy.ts:164:35
    (i32.const 15)
   )
  )
  ;;@ memcpy.ts:165:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:165:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:165:17
      (i32.const 8)
     )
     ;;@ memcpy.ts:165:26
     (i64.const 4919131679688438545)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 165)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memcpy.ts:166:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:166:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:166:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:166:24
       (i32.const 8)
      )
     )
     ;;@ memcpy.ts:166:30
     (i64.const 3689348814741910323)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 166)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memcpy.ts:167:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:167:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:167:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:167:24
       (i32.const 16)
      )
     )
     ;;@ memcpy.ts:167:31
     (i64.const 3694152654344438852)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 167)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ memcpy.ts:168:0
  (if
   (i32.eqz
    ;;@ memcpy.ts:168:7
    (i64.eq
     (i64.load
      ;;@ memcpy.ts:168:17
      (i32.add
       (i32.const 8)
       ;;@ memcpy.ts:168:24
       (i32.const 24)
      )
     )
     ;;@ memcpy.ts:168:31
     (i64.const 4919131752989213764)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 168)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ fmod.ts:65:0
  (if
   (i32.eqz
    ;;@ fmod.ts:65:7
    (f64.ne
     (tee_local $3
      ;;@ fmod.ts:65:18
      (call $fmod/fmod
       ;;@ fmod.ts:65:23
       (f64.const 1)
       ;;@ fmod.ts:65:26
       (f64.const nan:0x8000000000000)
      )
     )
     (get_local $3)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 120)
     (i32.const 65)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ fmod.ts:66:0
  (if
   (i32.eqz
    ;;@ fmod.ts:66:7
    (f64.eq
     (call $fmod/fmod
      ;;@ fmod.ts:66:12
      (f64.const 1.5)
      ;;@ fmod.ts:66:17
      (f64.const 1)
     )
     ;;@ fmod.ts:66:25
     (f64.const 0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 120)
     (i32.const 66)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ fmod.ts:67:0
  (if
   (i32.eqz
    ;;@ fmod.ts:67:7
    (f64.lt
     (f64.sub
      (call $fmod/fmod
       ;;@ fmod.ts:67:12
       (f64.const 9.2)
       ;;@ fmod.ts:67:17
       (f64.const 2)
      )
      ;;@ fmod.ts:67:24
      (f64.const 1.2)
     )
     ;;@ fmod.ts:67:30
     (f64.const 2.220446049250313e-16)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 120)
     (i32.const 67)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ fmod.ts:68:0
  (if
   (i32.eqz
    ;;@ fmod.ts:68:7
    (f64.lt
     (f64.sub
      (call $fmod/fmod
       ;;@ fmod.ts:68:12
       (f64.const 9.2)
       ;;@ fmod.ts:68:17
       (f64.const 3.7)
      )
      ;;@ fmod.ts:68:24
      (f64.const 1.8)
     )
     ;;@ fmod.ts:68:30
     (f64.const 2.220446049250313e-16)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 120)
     (i32.const 68)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ fmod.ts:134:0
  (if
   (i32.eqz
    ;;@ fmod.ts:134:7
    (f32.ne
     (tee_local $2
      ;;@ fmod.ts:134:18
      (call $fmod/fmodf
       ;;@ fmod.ts:134:24
       (f32.const 1)
       ;;@ fmod.ts:134:27
       (f32.const nan:0x400000)
      )
     )
     (get_local $2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 120)
     (i32.const 134)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ fmod.ts:135:0
  (if
   (i32.eqz
    ;;@ fmod.ts:135:7
    (f32.eq
     (call $fmod/fmodf
      ;;@ fmod.ts:135:13
      (f32.const 1.5)
      ;;@ fmod.ts:135:18
      (f32.const 1)
     )
     ;;@ fmod.ts:135:26
     (f32.const 0.5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 120)
     (i32.const 135)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ fmod.ts:136:0
  (if
   (i32.eqz
    ;;@ fmod.ts:136:7
    (f32.lt
     (f32.sub
      (call $fmod/fmodf
       ;;@ fmod.ts:136:13
       (f32.const 9.199999809265137)
       ;;@ fmod.ts:136:18
       (f32.const 2)
      )
      ;;@ fmod.ts:136:25
      (f32.const 1.2000000476837158)
     )
     ;;@ fmod.ts:136:31
     (f32.const 1.1920928955078125e-07)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 120)
     (i32.const 136)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ fmod.ts:137:0
  (if
   (i32.eqz
    ;;@ fmod.ts:137:7
    (f32.lt
     (f32.sub
      (call $fmod/fmodf
       ;;@ fmod.ts:137:13
       (f32.const 9.199999809265137)
       ;;@ fmod.ts:137:18
       (f32.const 3.700000047683716)
      )
      ;;@ fmod.ts:137:25
      (f32.const 1.7999999523162842)
     )
     ;;@ fmod.ts:137:31
     (f32.const 1.1920928955078125e-07)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 120)
     (i32.const 137)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ showcase.ts:102:0
  (i32.store
   (get_global $showcase/aClassInstance)
   ;;@ showcase.ts:102:24
   (i32.const 42)
  )
  ;;@ showcase.ts:103:0
  (f32.store offset=4
   (get_global $showcase/aClassInstance)
   ;;@ showcase.ts:103:30
   (f32.const 9e3)
  )
  ;;@ showcase.ts:104:0
  (if
   (i32.eqz
    ;;@ showcase.ts:104:7
    (i32.eq
     (i32.load
      ;;@ showcase.ts:104:17
      (i32.const 8)
     )
     ;;@ showcase.ts:104:23
     (i32.const 42)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 104)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ showcase.ts:105:0
  (if
   (i32.eqz
    ;;@ showcase.ts:105:7
    (f32.eq
     (f32.load
      ;;@ showcase.ts:105:17
      (i32.const 12)
     )
     ;;@ showcase.ts:105:24
     (f32.const 9e3)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 105)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ showcase.ts:107:0
  (call $showcase/ADerivedClass#set:aWildAccessorAppears
   (get_global $showcase/aClassInstance)
   ;;@ showcase.ts:107:38
   (f32.const 123)
  )
  ;;@ showcase.ts:108:0
  (if
   (i32.eqz
    ;;@ showcase.ts:108:7
    (f32.eq
     (call $showcase/ADerivedClass#get:aWildAccessorAppears
      (get_global $showcase/aClassInstance)
     )
     ;;@ showcase.ts:108:46
     (f32.const 123)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 108)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ showcase.ts:110:0
  (set_global $showcase/AClass.aStaticField
   ;;@ showcase.ts:110:22
   (get_global $showcase/aClassInstance)
  )
  ;;@ showcase.ts:111:0
  (if
   (i32.eqz
    ;;@ showcase.ts:111:7
    (i32.eq
     (get_global $showcase/AClass.aStaticField)
     ;;@ showcase.ts:111:37
     (get_global $showcase/aClassInstance)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 64)
     (i32.const 111)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
