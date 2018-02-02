(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (memory $0 1)
 (export "control$construct" (func $tlsf/control$construct))
 (export "memory" (memory $0))
 (start $start)
 (func $tlsf/fls (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (select
   ;;@ tlsf.ts:7:21
   (i32.sub
    (i32.const 31)
    ;;@ tlsf.ts:7:26
    (i32.clz
     ;;@ tlsf.ts:7:35
     (get_local $0)
    )
   )
   (i32.const -1)
   ;;@ tlsf.ts:7:10
   (get_local $0)
  )
 )
 (func $tlsf/ffs (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (select
   ;;@ tlsf.ts:17:22
   (i32.ctz
    ;;@ tlsf.ts:17:31
    (get_local $0)
   )
   (i32.const -1)
   ;;@ tlsf.ts:17:10
   (get_local $0)
  )
 )
 (func $tlsf/control$set_block (; 2 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  ;;@ tlsf.ts:173:2
  (if
   ;;@ tlsf.ts:173:9
   (i32.ge_u
    (get_local $1)
    ;;@ tlsf.ts:173:19
    (i32.const 23)
   )
   (unreachable)
  )
  ;;@ tlsf.ts:174:2
  (if
   ;;@ tlsf.ts:174:9
   (i32.ge_u
    (get_local $2)
    ;;@ tlsf.ts:174:19
    (i32.const 32)
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
 (func $tlsf/control$construct (; 3 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (i32.store
   (i32.add
    (tee_local $3
     ;;@ tlsf.ts:180:22
     (get_local $0)
    )
    (i32.const 8)
   )
   (tee_local $1
    ;;@ tlsf.ts:180:27
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (tee_local $3
     ;;@ tlsf.ts:181:22
     (get_local $0)
    )
    (i32.const 12)
   )
   (tee_local $1
    ;;@ tlsf.ts:181:27
    (get_local $0)
   )
  )
  (i32.store
   (i32.add
    (tee_local $1
     ;;@ tlsf.ts:182:24
     (get_local $0)
    )
    (i32.const 16)
   )
   (i32.const 0)
  )
  (loop $continue|0
   (if
    ;;@ tlsf.ts:183:31
    (i32.lt_u
     (get_local $2)
     ;;@ tlsf.ts:183:41
     (i32.const 23)
    )
    (block
     (set_local $3
      ;;@ tlsf.ts:184:26
      (get_local $0)
     )
     (if
      (i32.ge_u
       (tee_local $1
        ;;@ tlsf.ts:184:31
        (get_local $2)
       )
       (i32.const 23)
      )
      (unreachable)
     )
     (i32.store
      (i32.add
       (i32.add
        (get_local $3)
        (i32.const 20)
       )
       (i32.mul
        (get_local $1)
        (i32.const 4)
       )
      )
      (i32.const 0)
     )
     ;;@ tlsf.ts:185:9
     (set_local $1
      ;;@ tlsf.ts:185:30
      (i32.const 0)
     )
     (loop $continue|1
      (if
       ;;@ tlsf.ts:185:33
       (i32.lt_u
        (get_local $1)
        ;;@ tlsf.ts:185:43
        (i32.const 32)
       )
       (block
        ;;@ tlsf.ts:186:6
        (call $tlsf/control$set_block
         ;;@ tlsf.ts:186:24
         (get_local $0)
         ;;@ tlsf.ts:186:29
         (get_local $2)
         ;;@ tlsf.ts:186:38
         (get_local $1)
         ;;@ tlsf.ts:186:47
         (get_local $0)
        )
        ;;@ tlsf.ts:185:59
        (set_local $1
         (i32.add
          ;;@ tlsf.ts:185:61
          (get_local $1)
          (i32.const 1)
         )
        )
        (br $continue|1)
       )
      )
     )
     ;;@ tlsf.ts:183:57
     (set_local $2
      (i32.add
       ;;@ tlsf.ts:183:59
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $start (; 4 ;) (type $v)
  ;;@ tlsf.ts:10:0
  (if
   ;;@ tlsf.ts:10:7
   (i32.ne
    (call $tlsf/fls
     ;;@ tlsf.ts:10:11
     (i32.const 0)
    )
    (i32.const -1)
   )
   (unreachable)
  )
  ;;@ tlsf.ts:11:0
  (if
   ;;@ tlsf.ts:11:7
   (call $tlsf/fls
    ;;@ tlsf.ts:11:11
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ tlsf.ts:12:0
  (if
   ;;@ tlsf.ts:12:7
   (i32.ne
    (call $tlsf/fls
     ;;@ tlsf.ts:12:11
     (i32.const -2147483640)
    )
    ;;@ tlsf.ts:12:26
    (i32.const 31)
   )
   (unreachable)
  )
  ;;@ tlsf.ts:13:0
  (if
   ;;@ tlsf.ts:13:7
   (i32.ne
    (call $tlsf/fls
     ;;@ tlsf.ts:13:11
     (i32.const 2147483647)
    )
    ;;@ tlsf.ts:13:26
    (i32.const 30)
   )
   (unreachable)
  )
  ;;@ tlsf.ts:20:0
  (if
   ;;@ tlsf.ts:20:7
   (i32.ne
    (call $tlsf/ffs
     ;;@ tlsf.ts:20:11
     (i32.const 0)
    )
    (i32.const -1)
   )
   (unreachable)
  )
  ;;@ tlsf.ts:21:0
  (if
   ;;@ tlsf.ts:21:7
   (call $tlsf/ffs
    ;;@ tlsf.ts:21:11
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ tlsf.ts:22:0
  (if
   ;;@ tlsf.ts:22:7
   (i32.ne
    (call $tlsf/ffs
     ;;@ tlsf.ts:22:11
     (i32.const -2147483648)
    )
    ;;@ tlsf.ts:22:26
    (i32.const 31)
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
