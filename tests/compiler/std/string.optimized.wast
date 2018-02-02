(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iF (func (param i32) (result f64)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $std/string/str (mut i32) (i32.const 8))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 48) "\0d\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 80) "\0f\00\00\00(\00l\00i\00b\00)\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 120) "\02\00\00\00h\00i")
 (data (i32.const 128) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 144) "\06\00\00\00s\00t\00r\00i\00n\00g")
 (data (i32.const 160) "\03\00\00\00I\00\'\00m")
 (data (i32.const 176) "\01\00\00\00,")
 (data (i32.const 184) "\01\00\00\00x")
 (data (i32.const 192) "\01\00\00\000")
 (data (i32.const 200) "\01\00\00\001")
 (data (i32.const 208) "\05\00\00\000\00b\001\000\001")
 (data (i32.const 224) "\05\00\00\000\00o\007\000\007")
 (data (i32.const 240) "\05\00\00\000\00x\00f\000\00f")
 (data (i32.const 256) "\05\00\00\000\00x\00F\000\00F")
 (data (i32.const 272) "\03\00\00\000\001\001")
 (data (i32.const 288) "\04\00\00\000\00x\001\00g")
 (data (i32.const 304) "\03\00\00\000\00.\001")
 (data (i32.const 320) "\03\00\00\00.\002\005")
 (data (i32.const 336) "\08\00\00\00.\001\00f\00o\00o\00b\00a\00r")
 (export "getString" (func $std/string/getString))
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/string/String#charCodeAt" (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  ;;@ (lib)/string.ts:38:4
  (if
   (i32.eqz
    ;;@ (lib)/string.ts:38:11
    (get_local $0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 38)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/string.ts:40:4
  (if
   ;;@ (lib)/string.ts:40:8
   (i32.ge_u
    (get_local $1)
    ;;@ (lib)/string.ts:40:20
    (i32.load
     (get_local $0)
    )
   )
   ;;@ (lib)/string.ts:41:14
   (return
    (i32.const -1)
   )
  )
  ;;@ (lib)/string.ts:43:11
  (i32.load16_u offset=4
   ;;@ (lib)/string.ts:44:6
   (i32.add
    (get_local $0)
    ;;@ (lib)/string.ts:44:32
    (i32.shl
     ;;@ (lib)/string.ts:44:33
     (get_local $1)
     ;;@ (lib)/string.ts:44:47
     (i32.const 1)
    )
   )
  )
 )
 (func "$(lib)/memory/compare_memory" (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  ;;@ (lib)/memory.ts:262:2
  (if
   ;;@ (lib)/memory.ts:262:6
   (i32.eq
    (get_local $0)
    ;;@ (lib)/memory.ts:262:12
    (get_local $1)
   )
   ;;@ (lib)/memory.ts:263:11
   (return
    (i32.const 0)
   )
  )
  (loop $continue|0
   (if
    ;;@ (lib)/memory.ts:264:9
    (if (result i32)
     (get_local $2)
     ;;@ (lib)/memory.ts:264:14
     (i32.eq
      (i32.load8_u
       ;;@ (lib)/memory.ts:264:23
       (get_local $0)
      )
      ;;@ (lib)/memory.ts:264:30
      (i32.load8_u
       ;;@ (lib)/memory.ts:264:39
       (get_local $1)
      )
     )
     (get_local $2)
    )
    (block
     ;;@ (lib)/memory.ts:265:4
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     ;;@ (lib)/memory.ts:266:4
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     ;;@ (lib)/memory.ts:267:4
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
  ;;@ (lib)/memory.ts:269:9
  (if (result i32)
   (get_local $2)
   ;;@ (lib)/memory.ts:269:13
   (i32.sub
    (i32.load8_u
     ;;@ (lib)/memory.ts:269:27
     (get_local $0)
    )
    ;;@ (lib)/memory.ts:269:33
    (i32.load8_u
     ;;@ (lib)/memory.ts:269:47
     (get_local $1)
    )
   )
   ;;@ (lib)/memory.ts:269:53
   (i32.const 0)
  )
 )
 (func "$(lib)/string/String#startsWith" (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ (lib)/string.ts:166:4
  (if
   (i32.eqz
    ;;@ (lib)/string.ts:166:11
    (get_local $0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 166)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/string.ts:168:4
  (if
   (i32.eqz
    ;;@ (lib)/string.ts:168:8
    (get_local $1)
   )
   ;;@ (lib)/string.ts:169:6
   (set_local $1
    ;;@ (lib)/string.ts:169:21
    (i32.const 128)
   )
  )
  ;;@ (lib)/string.ts:175:4
  (if
   ;;@ (lib)/string.ts:175:8
   (i32.gt_s
    (i32.add
     ;;@ (lib)/string.ts:174:4
     (tee_local $4
      ;;@ (lib)/string.ts:174:30
      (i32.load
       ;;@ (lib)/string.ts:174:37
       (get_local $1)
      )
     )
     ;;@ (lib)/string.ts:173:4
     (tee_local $2
      ;;@ (lib)/string.ts:173:23
      (select
       (tee_local $2
        ;;@ (lib)/string.ts:173:34
        (select
         ;;@ (lib)/string.ts:173:45
         (get_local $2)
         ;;@ (lib)/string.ts:173:55
         (i32.const 0)
         (i32.gt_s
          (get_local $2)
          (get_local $3)
         )
        )
       )
       (tee_local $3
        ;;@ (lib)/string.ts:172:4
        (tee_local $5
         ;;@ (lib)/string.ts:172:21
         (i32.load
          (get_local $0)
         )
        )
       )
       (i32.lt_s
        (get_local $2)
        (get_local $3)
       )
      )
     )
    )
    ;;@ (lib)/string.ts:175:31
    (get_local $5)
   )
   ;;@ (lib)/string.ts:176:13
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/string.ts:178:11
  (i32.eqz
   ;;@ (lib)/string.ts:178:12
   (call "$(lib)/memory/compare_memory"
    ;;@ (lib)/string.ts:179:6
    (i32.add
     (i32.add
      (get_local $0)
      ;;@ (lib)/string.ts:179:32
      (i32.const 4)
     )
     ;;@ (lib)/string.ts:179:39
     (i32.shl
      ;;@ (lib)/string.ts:179:40
      (get_local $2)
      ;;@ (lib)/string.ts:179:49
      (i32.const 1)
     )
    )
    ;;@ (lib)/string.ts:180:6
    (i32.add
     (get_local $1)
     ;;@ (lib)/string.ts:180:40
     (i32.const 4)
    )
    ;;@ (lib)/string.ts:181:6
    (i32.shl
     (get_local $4)
     ;;@ (lib)/string.ts:181:22
     (i32.const 1)
    )
   )
  )
 )
 (func "$(lib)/string/String#endsWith" (; 4 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  ;;@ (lib)/string.ts:103:4
  (if
   (i32.eqz
    ;;@ (lib)/string.ts:103:11
    (get_local $0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 103)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/string.ts:105:4
  (if
   (i32.eqz
    ;;@ (lib)/string.ts:105:8
    (get_local $1)
   )
   ;;@ (lib)/string.ts:106:13
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/string.ts:111:4
  (if
   ;;@ (lib)/string.ts:111:8
   (i32.lt_s
    ;;@ (lib)/string.ts:110:4
    (tee_local $3
     ;;@ (lib)/string.ts:110:23
     (i32.sub
      ;;@ (lib)/string.ts:108:21
      (select
       (tee_local $2
        ;;@ (lib)/string.ts:108:32
        (select
         ;;@ (lib)/string.ts:108:36
         (get_local $2)
         ;;@ (lib)/string.ts:108:49
         (i32.const 0)
         (i32.gt_s
          (get_local $2)
          (get_local $3)
         )
        )
       )
       (tee_local $3
        ;;@ (lib)/string.ts:108:53
        (i32.load
         (get_local $0)
        )
       )
       (i32.lt_s
        (get_local $2)
        (get_local $3)
       )
      )
      ;;@ (lib)/string.ts:109:4
      (tee_local $2
       ;;@ (lib)/string.ts:109:30
       (i32.load
        (get_local $1)
       )
      )
     )
    )
    ;;@ (lib)/string.ts:111:16
    (i32.const 0)
   )
   ;;@ (lib)/string.ts:112:13
   (return
    (i32.const 0)
   )
  )
  ;;@ (lib)/string.ts:114:11
  (i32.eqz
   ;;@ (lib)/string.ts:114:12
   (call "$(lib)/memory/compare_memory"
    ;;@ (lib)/string.ts:115:6
    (i32.add
     (i32.add
      (get_local $0)
      ;;@ (lib)/string.ts:115:32
      (i32.const 4)
     )
     ;;@ (lib)/string.ts:115:39
     (i32.shl
      ;;@ (lib)/string.ts:115:40
      (get_local $3)
      ;;@ (lib)/string.ts:115:49
      (i32.const 1)
     )
    )
    ;;@ (lib)/string.ts:116:6
    (i32.add
     (get_local $1)
     ;;@ (lib)/string.ts:116:40
     (i32.const 4)
    )
    ;;@ (lib)/string.ts:117:6
    (i32.shl
     (get_local $2)
     ;;@ (lib)/string.ts:117:22
     (i32.const 1)
    )
   )
  )
 )
 (func "$(lib)/string/String#indexOf" (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  ;;@ (lib)/string.ts:144:4
  (if
   (i32.eqz
    ;;@ (lib)/string.ts:144:11
    (get_local $0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 144)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  ;;@ (lib)/string.ts:146:4
  (if
   (i32.eqz
    ;;@ (lib)/string.ts:146:8
    (get_local $1)
   )
   ;;@ (lib)/string.ts:147:6
   (set_local $1
    ;;@ (lib)/string.ts:147:21
    (i32.const 128)
   )
  )
  ;;@ (lib)/string.ts:152:4
  (set_local $4
   ;;@ (lib)/string.ts:152:27
   (i32.load
    ;;@ (lib)/string.ts:152:34
    (get_local $1)
   )
  )
  ;;@ (lib)/string.ts:155:9
  (set_local $2
   ;;@ (lib)/string.ts:151:23
   (select
    (tee_local $2
     ;;@ (lib)/string.ts:151:34
     (select
      ;;@ (lib)/string.ts:149:21
      (get_local $2)
      ;;@ (lib)/string.ts:151:50
      (i32.const 0)
      (i32.gt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (tee_local $3
     ;;@ (lib)/string.ts:150:4
     (tee_local $5
      ;;@ (lib)/string.ts:150:21
      (i32.load
       (get_local $0)
      )
     )
    )
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (loop $continue|0
   (if
    ;;@ (lib)/string.ts:155:31
    (i32.le_s
     (i32.add
      (get_local $2)
      ;;@ (lib)/string.ts:155:42
      (get_local $4)
     )
     ;;@ (lib)/string.ts:155:55
     (get_local $5)
    )
    (block
     ;;@ (lib)/string.ts:156:6
     (if
      ;;@ (lib)/string.ts:156:10
      (i32.eqz
       ;;@ (lib)/string.ts:156:11
       (call "$(lib)/memory/compare_memory"
        ;;@ (lib)/string.ts:157:8
        (i32.add
         (i32.add
          (get_local $0)
          ;;@ (lib)/string.ts:157:34
          (i32.const 4)
         )
         ;;@ (lib)/string.ts:157:41
         (i32.shl
          ;;@ (lib)/string.ts:157:42
          (get_local $2)
          ;;@ (lib)/string.ts:157:47
          (i32.const 1)
         )
        )
        ;;@ (lib)/string.ts:158:8
        (i32.add
         (get_local $1)
         ;;@ (lib)/string.ts:158:42
         (i32.const 4)
        )
        ;;@ (lib)/string.ts:159:8
        (i32.shl
         (get_local $4)
         ;;@ (lib)/string.ts:159:21
         (i32.const 1)
        )
       )
      )
      ;;@ (lib)/string.ts:161:20
      (return
       ;;@ (lib)/string.ts:161:15
       (get_local $2)
      )
     )
     ;;@ (lib)/string.ts:155:60
     (set_local $2
      (i32.add
       ;;@ (lib)/string.ts:155:62
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.const -1)
 )
 (func $std/string/getString (; 6 ;) (type $i) (result i32)
  ;;@ std/string.ts:17:9
  (get_global $std/string/str)
 )
 (func "$(lib)/string/parse<f64>" (; 7 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  ;;@ (lib)/string.ts:367:2
  (if
   ;;@ (lib)/string.ts:367:6
   (i32.eqz
    ;;@ (lib)/string.ts:366:2
    (tee_local $4
     ;;@ (lib)/string.ts:366:17
     (i32.load
      (get_local $0)
     )
    )
   )
   ;;@ (lib)/string.ts:368:14
   (return
    ;;@ (lib)/string.ts:368:11
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $6
   ;;@ (lib)/string.ts:374:2
   (if (result f64)
    ;;@ (lib)/string.ts:374:6
    (i32.eq
     ;;@ (lib)/string.ts:370:2
     (tee_local $2
      ;;@ (lib)/string.ts:370:13
      (i32.load16_u offset=4
       ;;@ (lib)/string.ts:369:2
       (tee_local $3
        ;;@ (lib)/string.ts:369:12
        (get_local $0)
       )
      )
     )
     ;;@ (lib)/string.ts:374:14
     (i32.const 45)
    )
    ;;@ (lib)/string.ts:374:30
    (block (result f64)
     ;;@ (lib)/string.ts:375:4
     (if
      ;;@ (lib)/string.ts:375:8
      (i32.eqz
       ;;@ (lib)/string.ts:375:9
       (tee_local $4
        (i32.sub
         ;;@ (lib)/string.ts:375:11
         (get_local $4)
         (i32.const 1)
        )
       )
      )
      ;;@ (lib)/string.ts:376:16
      (return
       ;;@ (lib)/string.ts:376:13
       (f64.const nan:0x8000000000000)
      )
     )
     ;;@ (lib)/string.ts:377:4
     (set_local $2
      ;;@ (lib)/string.ts:377:11
      (i32.load16_u offset=4
       ;;@ (lib)/string.ts:377:26
       (tee_local $3
        (i32.add
         (get_local $3)
         ;;@ (lib)/string.ts:377:33
         (i32.const 2)
        )
       )
      )
     )
     (f64.const -1)
    )
    ;;@ (lib)/string.ts:379:9
    (if (result f64)
     ;;@ (lib)/string.ts:379:13
     (i32.eq
      (get_local $2)
      ;;@ (lib)/string.ts:379:21
      (i32.const 43)
     )
     ;;@ (lib)/string.ts:379:36
     (block (result f64)
      ;;@ (lib)/string.ts:380:4
      (if
       ;;@ (lib)/string.ts:380:8
       (i32.eqz
        ;;@ (lib)/string.ts:380:9
        (tee_local $4
         (i32.sub
          ;;@ (lib)/string.ts:380:11
          (get_local $4)
          (i32.const 1)
         )
        )
       )
       ;;@ (lib)/string.ts:381:16
       (return
        ;;@ (lib)/string.ts:381:13
        (f64.const nan:0x8000000000000)
       )
      )
      ;;@ (lib)/string.ts:382:4
      (set_local $2
       ;;@ (lib)/string.ts:382:11
       (i32.load16_u offset=4
        ;;@ (lib)/string.ts:382:26
        (tee_local $3
         (i32.add
          (get_local $3)
          ;;@ (lib)/string.ts:382:33
          (i32.const 2)
         )
        )
       )
      )
      ;;@ (lib)/string.ts:383:11
      (f64.const 1)
     )
     ;;@ (lib)/string.ts:385:11
     (f64.const 1)
    )
   )
  )
  ;;@ (lib)/string.ts:388:2
  (if
   ;;@ (lib)/string.ts:388:7
   (get_local $1)
   ;;@ (lib)/string.ts:414:9
   (if
    ;;@ (lib)/string.ts:414:13
    (i32.and
     (if (result i32)
      (tee_local $0
       (i32.lt_s
        (get_local $1)
        ;;@ (lib)/string.ts:414:21
        (i32.const 2)
       )
      )
      (get_local $0)
      ;;@ (lib)/string.ts:414:26
      (i32.gt_s
       (get_local $1)
       ;;@ (lib)/string.ts:414:34
       (i32.const 36)
      )
     )
     (i32.const 1)
    )
    ;;@ (lib)/string.ts:415:14
    (return
     ;;@ (lib)/string.ts:415:11
     (f64.const nan:0x8000000000000)
    )
   )
   (set_local $1
    ;;@ (lib)/string.ts:389:4
    (if (result i32)
     ;;@ (lib)/string.ts:389:8
     (i32.and
      (if (result i32)
       (tee_local $0
        (i32.eq
         (get_local $2)
         ;;@ (lib)/string.ts:389:16
         (i32.const 48)
        )
       )
       ;;@ (lib)/string.ts:389:31
       (i32.gt_s
        (get_local $4)
        ;;@ (lib)/string.ts:389:37
        (i32.const 2)
       )
       (get_local $0)
      )
      (i32.const 1)
     )
     ;;@ (lib)/string.ts:390:6
     (block $break|0 (result i32)
      (block $case6|0
       (block $case5|0
        (block $case3|0
         (if
          (i32.eqz
           (i32.or
            (i32.eq
             (tee_local $0
              ;;@ (lib)/string.ts:390:14
              (i32.load16_u offset=4
               ;;@ (lib)/string.ts:390:29
               (i32.add
                (get_local $3)
                ;;@ (lib)/string.ts:390:35
                (i32.const 2)
               )
              )
             )
             ;;@ (lib)/string.ts:392:13
             (i32.const 66)
            )
            (i32.eq
             (get_local $0)
             ;;@ (lib)/string.ts:393:13
             (i32.const 98)
            )
           )
          )
          (block
           (br_if $case3|0
            (i32.or
             (i32.eq
              (get_local $0)
              ;;@ (lib)/string.ts:398:13
              (i32.const 79)
             )
             (i32.eq
              (get_local $0)
              ;;@ (lib)/string.ts:399:13
              (i32.const 111)
             )
            )
           )
           (br_if $case5|0
            (i32.or
             (i32.eq
              (get_local $0)
              ;;@ (lib)/string.ts:404:13
              (i32.const 88)
             )
             (i32.eq
              (get_local $0)
              ;;@ (lib)/string.ts:405:13
              (i32.const 120)
             )
            )
           )
           (br $case6|0)
          )
         )
         ;;@ (lib)/string.ts:394:10
         (set_local $3
          (i32.add
           (get_local $3)
           ;;@ (lib)/string.ts:394:17
           (i32.const 4)
          )
         )
         ;;@ (lib)/string.ts:394:20
         (set_local $4
          (i32.sub
           (get_local $4)
           ;;@ (lib)/string.ts:394:27
           (i32.const 2)
          )
         )
         ;;@ (lib)/string.ts:396:10
         (br $break|0
          ;;@ (lib)/string.ts:395:18
          (i32.const 2)
         )
        )
        ;;@ (lib)/string.ts:400:10
        (set_local $3
         (i32.add
          (get_local $3)
          ;;@ (lib)/string.ts:400:17
          (i32.const 4)
         )
        )
        ;;@ (lib)/string.ts:400:20
        (set_local $4
         (i32.sub
          (get_local $4)
          ;;@ (lib)/string.ts:400:27
          (i32.const 2)
         )
        )
        ;;@ (lib)/string.ts:402:10
        (br $break|0
         ;;@ (lib)/string.ts:401:18
         (i32.const 8)
        )
       )
       ;;@ (lib)/string.ts:406:10
       (set_local $3
        (i32.add
         (get_local $3)
         ;;@ (lib)/string.ts:406:17
         (i32.const 4)
        )
       )
       ;;@ (lib)/string.ts:406:20
       (set_local $4
        (i32.sub
         (get_local $4)
         ;;@ (lib)/string.ts:406:27
         (i32.const 2)
        )
       )
       ;;@ (lib)/string.ts:408:10
       (br $break|0
        ;;@ (lib)/string.ts:407:18
        (i32.const 16)
       )
      )
      ;;@ (lib)/string.ts:411:18
      (i32.const 10)
     )
     ;;@ (lib)/string.ts:413:19
     (i32.const 10)
    )
   )
  )
  ;;@ (lib)/string.ts:419:2
  (block $break|1
   (loop $continue|1
    (if
     ;;@ (lib)/string.ts:419:9
     (block (result i32)
      (set_local $4
       (i32.sub
        (tee_local $0
         (get_local $4)
        )
        (i32.const 1)
       )
      )
      (get_local $0)
     )
     (block
      ;;@ (lib)/string.ts:421:4
      (if
       ;;@ (lib)/string.ts:421:8
       (i32.and
        (if (result i32)
         (tee_local $0
          (i32.ge_s
           ;;@ (lib)/string.ts:420:4
           (tee_local $2
            ;;@ (lib)/string.ts:420:11
            (i32.load16_u offset=4
             ;;@ (lib)/string.ts:420:26
             (get_local $3)
            )
           )
           ;;@ (lib)/string.ts:421:16
           (i32.const 48)
          )
         )
         ;;@ (lib)/string.ts:421:31
         (i32.le_s
          (get_local $2)
          ;;@ (lib)/string.ts:421:39
          (i32.const 57)
         )
         (get_local $0)
        )
        (i32.const 1)
       )
       ;;@ (lib)/string.ts:422:6
       (set_local $2
        (i32.sub
         (get_local $2)
         ;;@ (lib)/string.ts:422:14
         (i32.const 48)
        )
       )
       ;;@ (lib)/string.ts:423:9
       (if
        ;;@ (lib)/string.ts:423:13
        (i32.and
         (if (result i32)
          (tee_local $0
           (i32.ge_s
            (get_local $2)
            ;;@ (lib)/string.ts:423:21
            (i32.const 65)
           )
          )
          ;;@ (lib)/string.ts:423:35
          (i32.le_s
           (get_local $2)
           ;;@ (lib)/string.ts:423:43
           (i32.const 90)
          )
          (get_local $0)
         )
         (i32.const 1)
        )
        ;;@ (lib)/string.ts:424:6
        (set_local $2
         (i32.sub
          (get_local $2)
          ;;@ (lib)/string.ts:424:14
          (i32.const 55)
         )
        )
        ;;@ (lib)/string.ts:425:9
        (if
         ;;@ (lib)/string.ts:425:13
         (i32.and
          (if (result i32)
           (tee_local $0
            (i32.ge_s
             (get_local $2)
             ;;@ (lib)/string.ts:425:21
             (i32.const 97)
            )
           )
           ;;@ (lib)/string.ts:425:35
           (i32.le_s
            (get_local $2)
            ;;@ (lib)/string.ts:425:43
            (i32.const 122)
           )
           (get_local $0)
          )
          (i32.const 1)
         )
         ;;@ (lib)/string.ts:426:6
         (set_local $2
          (i32.sub
           (get_local $2)
           ;;@ (lib)/string.ts:426:14
           (i32.const 87)
          )
         )
         ;;@ (lib)/string.ts:428:6
         (br $break|1)
        )
       )
      )
      ;;@ (lib)/string.ts:430:6
      (br_if $break|1
       ;;@ (lib)/string.ts:429:8
       (i32.ge_s
        (get_local $2)
        ;;@ (lib)/string.ts:429:16
        (get_local $1)
       )
      )
      ;;@ (lib)/string.ts:431:4
      (set_local $5
       ;;@ (lib)/string.ts:431:10
       (f64.add
        (f64.mul
         ;;@ (lib)/string.ts:431:11
         (get_local $5)
         ;;@ (lib)/string.ts:431:17
         (f64.convert_s/i32
          (get_local $1)
         )
        )
        ;;@ (lib)/string.ts:431:26
        (f64.convert_s/i32
         (get_local $2)
        )
       )
      )
      ;;@ (lib)/string.ts:432:4
      (set_local $3
       (i32.add
        (get_local $3)
        ;;@ (lib)/string.ts:432:11
        (i32.const 2)
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  ;;@ (lib)/string.ts:434:9
  (f64.mul
   (get_local $6)
   ;;@ (lib)/string.ts:434:16
   (get_local $5)
  )
 )
 (func "$(lib)/string/parseInt" (; 8 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  ;;@ (lib)/string.ts:354:9
  (call "$(lib)/string/parse<f64>"
   ;;@ (lib)/string.ts:354:20
   (get_local $0)
   ;;@ (lib)/string.ts:354:25
   (get_local $1)
  )
 )
 (func "$(lib)/string/parseFloat" (; 9 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  ;;@ (lib)/string.ts:439:2
  (if
   ;;@ (lib)/string.ts:439:6
   (i32.eqz
    ;;@ (lib)/string.ts:438:2
    (tee_local $3
     ;;@ (lib)/string.ts:438:17
     (i32.load
      (get_local $0)
     )
    )
   )
   ;;@ (lib)/string.ts:440:11
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $6
   ;;@ (lib)/string.ts:446:2
   (if (result f64)
    ;;@ (lib)/string.ts:446:6
    (i32.eq
     ;;@ (lib)/string.ts:442:2
     (tee_local $2
      ;;@ (lib)/string.ts:442:13
      (i32.load16_u offset=4
       ;;@ (lib)/string.ts:441:2
       (tee_local $1
        ;;@ (lib)/string.ts:441:12
        (get_local $0)
       )
      )
     )
     ;;@ (lib)/string.ts:446:14
     (i32.const 45)
    )
    ;;@ (lib)/string.ts:446:30
    (block (result f64)
     ;;@ (lib)/string.ts:447:4
     (if
      ;;@ (lib)/string.ts:447:8
      (i32.eqz
       ;;@ (lib)/string.ts:447:9
       (tee_local $3
        (i32.sub
         ;;@ (lib)/string.ts:447:11
         (get_local $3)
         (i32.const 1)
        )
       )
      )
      ;;@ (lib)/string.ts:448:13
      (return
       (f64.const nan:0x8000000000000)
      )
     )
     ;;@ (lib)/string.ts:449:4
     (drop
      ;;@ (lib)/string.ts:449:11
      (i32.load16_u offset=4
       ;;@ (lib)/string.ts:449:26
       (tee_local $1
        (i32.add
         (get_local $1)
         ;;@ (lib)/string.ts:449:33
         (i32.const 2)
        )
       )
      )
     )
     (f64.const -1)
    )
    ;;@ (lib)/string.ts:451:9
    (if (result f64)
     ;;@ (lib)/string.ts:451:13
     (i32.eq
      (get_local $2)
      ;;@ (lib)/string.ts:451:21
      (i32.const 43)
     )
     ;;@ (lib)/string.ts:451:36
     (block (result f64)
      ;;@ (lib)/string.ts:452:4
      (if
       ;;@ (lib)/string.ts:452:8
       (i32.eqz
        ;;@ (lib)/string.ts:452:9
        (tee_local $3
         (i32.sub
          ;;@ (lib)/string.ts:452:11
          (get_local $3)
          (i32.const 1)
         )
        )
       )
       ;;@ (lib)/string.ts:453:13
       (return
        (f64.const nan:0x8000000000000)
       )
      )
      ;;@ (lib)/string.ts:454:4
      (drop
       ;;@ (lib)/string.ts:454:11
       (i32.load16_u offset=4
        ;;@ (lib)/string.ts:454:26
        (tee_local $1
         (i32.add
          (get_local $1)
          ;;@ (lib)/string.ts:454:33
          (i32.const 2)
         )
        )
       )
      )
      ;;@ (lib)/string.ts:455:11
      (f64.const 1)
     )
     ;;@ (lib)/string.ts:457:11
     (f64.const 1)
    )
   )
  )
  ;;@ (lib)/string.ts:461:2
  (block $break|0
   (loop $continue|0
    (if
     ;;@ (lib)/string.ts:461:9
     (block (result i32)
      (set_local $3
       (i32.sub
        (tee_local $0
         (get_local $3)
        )
        (i32.const 1)
       )
      )
      (get_local $0)
     )
     (block
      ;;@ (lib)/string.ts:463:4
      (if
       ;;@ (lib)/string.ts:463:8
       (i32.eq
        ;;@ (lib)/string.ts:462:4
        (tee_local $2
         ;;@ (lib)/string.ts:462:11
         (i32.load16_u offset=4
          ;;@ (lib)/string.ts:462:26
          (get_local $1)
         )
        )
        ;;@ (lib)/string.ts:463:16
        (i32.const 46)
       )
       ;;@ (lib)/string.ts:463:30
       (block
        ;;@ (lib)/string.ts:464:6
        (set_local $1
         (i32.add
          (get_local $1)
          ;;@ (lib)/string.ts:464:13
          (i32.const 2)
         )
        )
        ;;@ (lib)/string.ts:465:6
        (set_local $5
         ;;@ (lib)/string.ts:465:21
         (f64.const 0.1)
        )
        ;;@ (lib)/string.ts:466:6
        (block $break|1
         (loop $continue|1
          (if
           ;;@ (lib)/string.ts:466:13
           (block (result i32)
            (set_local $3
             (i32.sub
              (tee_local $0
               (get_local $3)
              )
              (i32.const 1)
             )
            )
            (get_local $0)
           )
           (block
            ;;@ (lib)/string.ts:468:8
            (if
             ;;@ (lib)/string.ts:468:12
             (i32.and
              (if (result i32)
               (tee_local $0
                (i32.eq
                 ;;@ (lib)/string.ts:467:8
                 (tee_local $2
                  ;;@ (lib)/string.ts:467:15
                  (i32.load16_u offset=4
                   ;;@ (lib)/string.ts:467:30
                   (get_local $1)
                  )
                 )
                 ;;@ (lib)/string.ts:468:20
                 (i32.const 69)
                )
               )
               (get_local $0)
               ;;@ (lib)/string.ts:468:34
               (i32.eq
                (get_local $2)
                ;;@ (lib)/string.ts:468:42
                (i32.const 101)
               )
              )
              (i32.const 1)
             )
             (block
              (call $abort
               (i32.const 0)
               (i32.const 80)
               (i32.const 469)
               (i32.const 10)
              )
              (unreachable)
             )
            )
            ;;@ (lib)/string.ts:472:10
            (br_if $break|1
             ;;@ (lib)/string.ts:471:12
             (i32.gt_u
              ;;@ (lib)/string.ts:470:8
              (tee_local $2
               (i32.sub
                (get_local $2)
                ;;@ (lib)/string.ts:470:16
                (i32.const 48)
               )
              )
              ;;@ (lib)/string.ts:471:24
              (i32.const 9)
             )
            )
            ;;@ (lib)/string.ts:473:8
            (set_local $4
             (f64.add
              (get_local $4)
              ;;@ (lib)/string.ts:473:15
              (f64.mul
               (f64.convert_s/i32
                (get_local $2)
               )
               ;;@ (lib)/string.ts:473:27
               (get_local $5)
              )
             )
            )
            ;;@ (lib)/string.ts:474:8
            (set_local $5
             (f64.mul
              (get_local $5)
              ;;@ (lib)/string.ts:474:15
              (f64.const 0.1)
             )
            )
            ;;@ (lib)/string.ts:475:8
            (set_local $1
             (i32.add
              (get_local $1)
              ;;@ (lib)/string.ts:475:15
              (i32.const 2)
             )
            )
            (br $continue|1)
           )
          )
         )
        )
        ;;@ (lib)/string.ts:477:6
        (br $break|0)
       )
      )
      ;;@ (lib)/string.ts:481:6
      (br_if $break|0
       ;;@ (lib)/string.ts:480:8
       (i32.ge_u
        ;;@ (lib)/string.ts:479:4
        (tee_local $2
         (i32.sub
          (get_local $2)
          ;;@ (lib)/string.ts:479:12
          (i32.const 48)
         )
        )
        ;;@ (lib)/string.ts:480:21
        (i32.const 10)
       )
      )
      ;;@ (lib)/string.ts:482:4
      (set_local $4
       ;;@ (lib)/string.ts:482:10
       (f64.add
        (f64.mul
         ;;@ (lib)/string.ts:482:11
         (get_local $4)
         ;;@ (lib)/string.ts:482:17
         (f64.const 10)
        )
        ;;@ (lib)/string.ts:482:23
        (f64.convert_s/i32
         (get_local $2)
        )
       )
      )
      ;;@ (lib)/string.ts:483:4
      (set_local $1
       (i32.add
        (get_local $1)
        ;;@ (lib)/string.ts:483:11
        (i32.const 2)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  ;;@ (lib)/string.ts:485:9
  (f64.mul
   (get_local $6)
   ;;@ (lib)/string.ts:485:16
   (get_local $4)
  )
 )
 (func $start (; 10 ;) (type $v)
  ;;@ std/string.ts:6:0
  (if
   ;;@ std/string.ts:6:7
   (i32.ne
    (get_global $std/string/str)
    ;;@ std/string.ts:6:33
    (i32.const 8)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 6)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:8:0
  (if
   ;;@ std/string.ts:8:7
   (i32.ne
    (i32.load
     (get_global $std/string/str)
    )
    ;;@ std/string.ts:8:21
    (i32.const 16)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:9:0
  (if
   ;;@ std/string.ts:9:7
   (i32.ne
    ;;@ std/string.ts:9:11
    (call "$(lib)/string/String#charCodeAt"
     ;;@ std/string.ts:9:7
     (get_global $std/string/str)
     ;;@ std/string.ts:9:22
     (i32.const 0)
    )
    ;;@ std/string.ts:9:28
    (i32.const 104)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:10:0
  (if
   (i32.eqz
    ;;@ std/string.ts:10:11
    (call "$(lib)/string/String#startsWith"
     ;;@ std/string.ts:10:7
     (get_global $std/string/str)
     ;;@ std/string.ts:10:22
     (i32.const 120)
     ;;@ (lib)/string.ts:165:51
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 10)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:11:0
  (if
   (i32.eqz
    ;;@ std/string.ts:11:11
    (call "$(lib)/string/String#endsWith"
     ;;@ std/string.ts:11:7
     (get_global $std/string/str)
     ;;@ std/string.ts:11:20
     (i32.const 144)
     ;;@ (lib)/string.ts:102:52
     (i32.const 2147483647)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:12:0
  (if
   (i32.eqz
    (i32.ne
     (call "$(lib)/string/String#indexOf"
      ;;@ std/string.ts:12:7
      (get_global $std/string/str)
      (i32.const 160)
      (i32.const 0)
     )
     (i32.const -1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:13:0
  (if
   ;;@ std/string.ts:13:7
   (i32.ne
    ;;@ std/string.ts:13:11
    (call "$(lib)/string/String#indexOf"
     ;;@ std/string.ts:13:7
     (get_global $std/string/str)
     ;;@ std/string.ts:13:19
     (i32.const 176)
     (i32.const 0)
    )
    ;;@ std/string.ts:13:27
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:14:0
  (if
   ;;@ std/string.ts:14:7
   (i32.ne
    ;;@ std/string.ts:14:11
    (call "$(lib)/string/String#indexOf"
     ;;@ std/string.ts:14:7
     (get_global $std/string/str)
     ;;@ std/string.ts:14:19
     (i32.const 184)
     ;;@ (lib)/string.ts:143:48
     (i32.const 0)
    )
    (i32.const -1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 14)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:20:0
  (if
   ;;@ std/string.ts:20:7
   (f64.ne
    (call "$(lib)/string/parseInt"
     ;;@ std/string.ts:20:16
     (i32.const 192)
     (i32.const 0)
    )
    ;;@ std/string.ts:20:24
    (f64.const 0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:21:0
  (if
   ;;@ std/string.ts:21:7
   (f64.ne
    (call "$(lib)/string/parseInt"
     ;;@ std/string.ts:21:16
     (i32.const 200)
     (i32.const 0)
    )
    ;;@ std/string.ts:21:24
    (f64.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:22:0
  (if
   ;;@ std/string.ts:22:7
   (f64.ne
    (call "$(lib)/string/parseInt"
     ;;@ std/string.ts:22:16
     (i32.const 208)
     (i32.const 0)
    )
    ;;@ std/string.ts:22:28
    (f64.const 5)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:23:0
  (if
   ;;@ std/string.ts:23:7
   (f64.ne
    (call "$(lib)/string/parseInt"
     ;;@ std/string.ts:23:16
     (i32.const 224)
     (i32.const 0)
    )
    ;;@ std/string.ts:23:28
    (f64.const 455)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:24:0
  (if
   ;;@ std/string.ts:24:7
   (f64.ne
    (call "$(lib)/string/parseInt"
     ;;@ std/string.ts:24:16
     (i32.const 240)
     (i32.const 0)
    )
    ;;@ std/string.ts:24:28
    (f64.const 3855)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 24)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:25:0
  (if
   ;;@ std/string.ts:25:7
   (f64.ne
    (call "$(lib)/string/parseInt"
     ;;@ std/string.ts:25:16
     (i32.const 256)
     (i32.const 0)
    )
    ;;@ std/string.ts:25:28
    (f64.const 3855)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:26:0
  (if
   ;;@ std/string.ts:26:7
   (f64.ne
    (call "$(lib)/string/parseInt"
     ;;@ std/string.ts:26:16
     (i32.const 272)
     (i32.const 0)
    )
    ;;@ std/string.ts:26:26
    (f64.const 11)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:27:0
  (if
   ;;@ std/string.ts:27:7
   (f64.ne
    (call "$(lib)/string/parseInt"
     ;;@ std/string.ts:27:16
     (i32.const 288)
     ;;@ (lib)/string.ts:353:51
     (i32.const 0)
    )
    ;;@ std/string.ts:27:27
    (f64.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 27)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:29:0
  (if
   ;;@ std/string.ts:29:7
   (f64.ne
    (call "$(lib)/string/parseFloat"
     ;;@ std/string.ts:29:18
     (i32.const 192)
    )
    ;;@ std/string.ts:29:26
    (f64.const 0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 29)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:30:0
  (if
   ;;@ std/string.ts:30:7
   (f64.ne
    (call "$(lib)/string/parseFloat"
     ;;@ std/string.ts:30:18
     (i32.const 200)
    )
    ;;@ std/string.ts:30:26
    (f64.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 30)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:31:0
  (if
   ;;@ std/string.ts:31:7
   (f64.ne
    (call "$(lib)/string/parseFloat"
     ;;@ std/string.ts:31:18
     (i32.const 304)
    )
    ;;@ std/string.ts:31:28
    (f64.const 0.1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 31)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:32:0
  (if
   ;;@ std/string.ts:32:7
   (f64.ne
    (call "$(lib)/string/parseFloat"
     ;;@ std/string.ts:32:18
     (i32.const 320)
    )
    ;;@ std/string.ts:32:28
    (f64.const 0.25)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 32)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ std/string.ts:33:0
  (if
   ;;@ std/string.ts:33:7
   (f64.ne
    (call "$(lib)/string/parseFloat"
     ;;@ std/string.ts:33:18
     (i32.const 336)
    )
    ;;@ std/string.ts:33:33
    (f64.const 0.1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 33)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
