(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $i (func (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iF (func (param i32) (result f64)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIiv (func (param i32 i64 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/string/str (mut i32) (i32.const 12))
 (global $std/string/nullStr (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/string/c (mut i32) (i32.const 0))
 (global $std/string/a (mut i32) (i32.const 0))
 (global $std/string/b (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 12) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 48) "\0d\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 80) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 112) "\01")
 (data (i32.const 120) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 172) "\01\00\00\006")
 (data (i32.const 180) "\02\00\00\004\d8\06\df")
 (data (i32.const 188) "\02\00\00\00h\00i")
 (data (i32.const 196) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 208) "\06\00\00\00s\00t\00r\00i\00n\00g")
 (data (i32.const 224) "\03\00\00\00I\00\'\00m")
 (data (i32.const 236) "\01\00\00\00 ")
 (data (i32.const 244) "\03\00\00\00 \00 \00 ")
 (data (i32.const 256) "\01\00\00\00a")
 (data (i32.const 264) "\03\00\00\00a\00b\00c")
 (data (i32.const 276) "\05\00\00\00 \00 \00a\00b\00c")
 (data (i32.const 292) "\03\00\00\001\002\003")
 (data (i32.const 304) "\06\00\00\001\002\003\00a\00b\00c")
 (data (i32.const 320) "\08\00\00\001\002\003\001\002\00a\00b\00c")
 (data (i32.const 340) "\05\00\00\00a\00b\00c\00 \00 ")
 (data (i32.const 356) "\06\00\00\00a\00b\00c\00a\00b\00c")
 (data (i32.const 372) "\08\00\00\00a\00b\00c\00a\00b\00c\00a\00b")
 (data (i32.const 392) "\01\00\00\00,")
 (data (i32.const 400) "\01\00\00\00x")
 (data (i32.const 408) "\03\00\00\00,\00 \00I")
 (data (i32.const 420) "\01\00\00\00g")
 (data (i32.const 428) "\01\00\00\00i")
 (data (i32.const 436) "\01\00\00\000")
 (data (i32.const 444) "\01\00\00\001")
 (data (i32.const 452) "\05\00\00\000\00b\001\000\001")
 (data (i32.const 468) "\05\00\00\000\00o\007\000\007")
 (data (i32.const 484) "\05\00\00\000\00x\00f\000\00f")
 (data (i32.const 500) "\05\00\00\000\00x\00F\000\00F")
 (data (i32.const 516) "\03\00\00\000\001\001")
 (data (i32.const 528) "\04\00\00\000\00x\001\00g")
 (data (i32.const 540) "\03\00\00\000\00.\001")
 (data (i32.const 552) "\03\00\00\00.\002\005")
 (data (i32.const 564) "\08\00\00\00.\001\00f\00o\00o\00b\00a\00r")
 (data (i32.const 584) "\01\00\00\00b")
 (data (i32.const 592) "\02\00\00\00a\00b")
 (data (i32.const 600) "\02\00\00\00b\00a")
 (data (i32.const 608) "\02\00\00\00a\00a")
 (data (i32.const 616) "\03\00\00\00a\00a\00a")
 (data (i32.const 628) "\08\00\00\00a\00b\00a\00b\00a\00b\00a\00b")
 (data (i32.const 648) "\05\00\00\00a\00a\00a\00a\00a")
 (data (i32.const 664) "\06\00\00\00a\00a\00a\00a\00a\00a")
 (data (i32.const 680) "\07\00\00\00a\00a\00a\00a\00a\00a\00a")
 (data (i32.const 704) "\c8\02\00\00\n\00\00\00(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 776) "\10\03\00\00d\00\00\00\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 1296) "\01\00\00\008")
 (data (i32.const 1304) "\05\00\00\00-\001\000\000\000")
 (data (i32.const 1320) "\04\00\00\001\002\003\004")
 (data (i32.const 1332) "\05\00\00\001\002\003\004\005")
 (data (i32.const 1348) "\06\00\00\001\002\003\004\005\006")
 (data (i32.const 1364) "\07\00\00\001\001\001\001\001\001\001")
 (data (i32.const 1384) "\07\00\00\001\002\003\004\005\006\007")
 (data (i32.const 1404) "\n\00\00\002\001\004\007\004\008\003\006\004\006")
 (data (i32.const 1428) "\n\00\00\002\001\004\007\004\008\003\006\004\007")
 (data (i32.const 1452) "\0b\00\00\00-\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 1480) "\02\00\00\00-\001")
 (data (i32.const 1488) "\04\00\00\001\000\000\000")
 (data (i32.const 1500) "\n\00\00\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 1524) "\n\00\00\004\002\009\004\009\006\007\002\009\005")
 (data (i32.const 1552) "\18\06\00\00\n\00\00\00(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 1624) "`\06\00\00d\00\00\00\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 2144) "\08\00\00\009\009\009\009\009\009\009\009")
 (data (i32.const 2164) "\t\00\00\001\000\000\000\000\000\000\000\000")
 (data (i32.const 2188) "\0b\00\00\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 2216) "\0c\00\00\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 2244) "\0f\00\00\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 2280) "\10\00\00\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 2316) "\11\00\00\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 2356) "\14\00\00\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005")
 (data (i32.const 2400) "\05\00\00\00-\001\002\003\004")
 (data (i32.const 2416) "\0b\00\00\00-\004\002\009\004\009\006\007\002\009\005")
 (data (i32.const 2444) "\0c\00\00\00-\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 2472) "\0d\00\00\00-\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 2504) "\10\00\00\00-\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 2540) "\12\00\00\00-\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 2580) "\13\00\00\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007")
 (data (i32.const 2624) "\14\00\00\00-\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\008")
 (export "memory" (memory $0))
 (export "getString" (func $std/string/getString))
 (start $start)
 (func $~lib/string/String#charCodeAt (; 1 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 75)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u offset=4
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (get_local $0)
   (block
    (if
     (i32.gt_u
      (get_local $0)
      (i32.const 1073741824)
     )
     (unreachable)
    )
    (if
     (i32.gt_u
      (tee_local $0
       (i32.and
        (i32.add
         (i32.add
          (tee_local $1
           (get_global $~lib/allocator/arena/offset)
          )
          (get_local $0)
         )
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      (i32.shl
       (tee_local $2
        (current_memory)
       )
       (i32.const 16)
      )
     )
     (if
      (i32.lt_s
       (grow_memory
        (select
         (get_local $2)
         (tee_local $3
          (i32.shr_u
           (i32.and
            (i32.add
             (i32.sub
              (get_local $0)
              (get_local $1)
             )
             (i32.const 65535)
            )
            (i32.const -65536)
           )
           (i32.const 16)
          )
         )
         (i32.gt_s
          (get_local $2)
          (get_local $3)
         )
        )
       )
       (i32.const 0)
      )
      (if
       (i32.lt_s
        (grow_memory
         (get_local $3)
        )
        (i32.const 0)
       )
       (unreachable)
      )
     )
    )
    (set_global $~lib/allocator/arena/offset
     (get_local $0)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/memory/memory.allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/allocator/arena/__memory_allocate
   (get_local $0)
  )
 )
 (func $~lib/internal/string/allocate (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (tee_local $1
    (i32.gt_s
     (get_local $0)
     (i32.const 0)
    )
   )
   (set_local $1
    (i32.le_s
     (get_local $0)
     (i32.const 536870910)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 120)
     (i32.const 25)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (i32.store
   (tee_local $1
    (call $~lib/memory/memory.allocate
     (i32.add
      (i32.shl
       (get_local $0)
       (i32.const 1)
      )
      (i32.const 4)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/string/String.fromCharCode (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 112)
   )
  )
  (i32.store16 offset=4
   (tee_local $1
    (call $~lib/internal/string/allocate
     (i32.const 1)
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/internal/string/compareUTF16 (; 6 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (loop $continue|0
   (if
    (if (result i32)
     (get_local $2)
     (i32.eqz
      (tee_local $3
       (i32.sub
        (i32.load16_u offset=4
         (get_local $0)
        )
        (i32.load16_u offset=4
         (get_local $1)
        )
       )
      )
     )
     (get_local $2)
    )
    (block
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
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
  (get_local $3)
 )
 (func $~lib/string/String.__eq (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUTF16
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
 )
 (func $~lib/string/String.fromCodePoint (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1114111)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 31)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 112)
   )
  )
  (set_local $1
   (call $~lib/internal/string/allocate
    (i32.add
     (tee_local $2
      (i32.gt_s
       (get_local $0)
       (i32.const 65535)
      )
     )
     (i32.const 1)
    )
   )
  )
  (if
   (get_local $2)
   (i32.store offset=4
    (get_local $1)
    (i32.or
     (i32.shl
      (i32.add
       (i32.shr_u
        (tee_local $0
         (i32.sub
          (get_local $0)
          (i32.const 65536)
         )
        )
        (i32.const 10)
       )
       (i32.const 55296)
      )
      (i32.const 16)
     )
     (i32.add
      (i32.and
       (get_local $0)
       (i32.const 1023)
      )
      (i32.const 56320)
     )
    )
   )
   (i32.store16 offset=4
    (get_local $1)
    (get_local $0)
   )
  )
  (get_local $1)
 )
 (func $~lib/string/String#startsWith (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 291)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 196)
   )
  )
  (if
   (i32.gt_s
    (i32.add
     (tee_local $4
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $2
      (select
       (tee_local $2
        (select
         (get_local $2)
         (tee_local $3
          (i32.load
           (get_local $0)
          )
         )
         (i32.lt_s
          (get_local $2)
          (get_local $3)
         )
        )
       )
       (i32.const 0)
       (i32.gt_s
        (get_local $2)
        (i32.const 0)
       )
      )
     )
    )
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUTF16
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $2)
      (i32.const 1)
     )
    )
    (get_local $1)
    (get_local $4)
   )
  )
 )
 (func $~lib/string/String#endsWith (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 136)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.lt_s
    (tee_local $3
     (i32.sub
      (select
       (tee_local $2
        (select
         (get_local $2)
         (tee_local $3
          (i32.load
           (get_local $0)
          )
         )
         (i32.lt_s
          (get_local $2)
          (get_local $3)
         )
        )
       )
       (i32.const 0)
       (i32.gt_s
        (get_local $2)
        (i32.const 0)
       )
      )
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUTF16
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
    (get_local $1)
    (get_local $2)
   )
  )
 )
 (func $~lib/string/String#endsWith|trampoline (; 11 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    (i32.const 536870910)
   )
  )
  (call $~lib/string/String#endsWith
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#indexOf (; 12 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 248)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 196)
   )
  )
  (if
   (i32.eqz
    (tee_local $4
     (i32.load
      (get_local $1)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (i32.const -1)
   )
  )
  (set_local $2
   (select
    (tee_local $2
     (select
      (get_local $2)
      (get_local $3)
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (i32.const 0)
    (i32.gt_s
     (get_local $2)
     (i32.const 0)
    )
   )
  )
  (set_local $3
   (i32.sub
    (get_local $3)
    (get_local $4)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.gt_s
      (get_local $2)
      (get_local $3)
     )
    )
    (if
     (call $~lib/internal/string/compareUTF16
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $2)
        (i32.const 1)
       )
      )
      (get_local $1)
      (get_local $4)
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
     (return
      (get_local $2)
     )
    )
   )
  )
  (i32.const -1)
 )
 (func $~lib/string/String#includes (; 13 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ne
   (call $~lib/string/String#indexOf
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const -1)
  )
 )
 (func $~lib/memory/memcpy (; 14 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (loop $continue|0
   (if
    (tee_local $3
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $4
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (get_local $1)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
   )
   (block
    (loop $continue|1
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 16)
      )
      (block
       (i32.store
        (get_local $0)
        (i32.load
         (get_local $1)
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 4)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 8)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 12)
        )
        (i32.load
         (i32.add
          (get_local $1)
          (i32.const 12)
         )
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 16)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 16)
        )
       )
       (br $continue|1)
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $0)
       (i32.load16_u
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
     (block
      (set_local $3
       (get_local $1)
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (get_local $1)
       )
      )
     )
    )
    (return)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (if
       (i32.ne
        (tee_local $3
         (i32.and
          (get_local $0)
          (i32.const 3)
         )
        )
        (i32.const 1)
       )
       (block
        (br_if $case1|2
         (i32.eq
          (get_local $3)
          (i32.const 2)
         )
        )
        (br_if $case2|2
         (i32.eq
          (get_local $3)
          (i32.const 3)
         )
        )
        (br $break|2)
       )
      )
      (set_local $5
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (tee_local $3
         (get_local $1)
        )
       )
      )
      (set_local $0
       (tee_local $1
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (i32.store8
       (get_local $1)
       (i32.load8_u
        (tee_local $1
         (i32.add
          (get_local $3)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $4
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (tee_local $3
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $4)
       (i32.load8_u
        (get_local $3)
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 3)
       )
      )
      (loop $continue|3
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 17)
        )
        (block
         (i32.store
          (get_local $0)
          (i32.or
           (i32.shr_u
            (get_local $5)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
          (i32.or
           (i32.shr_u
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $5
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
          (i32.or
           (i32.shr_u
            (get_local $5)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 12)
          )
          (i32.or
           (i32.shr_u
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $5
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
            (i32.const 8)
           )
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 16)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
         (br $continue|3)
        )
       )
      )
      (br $break|2)
     )
     (set_local $5
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (get_local $0)
      (i32.load8_u
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 2)
      )
     )
     (loop $continue|4
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 18)
       )
       (block
        (i32.store
         (get_local $0)
         (i32.or
          (i32.shr_u
           (get_local $5)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
         (i32.or
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
         (i32.or
          (i32.shr_u
           (get_local $5)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (i32.store
         (i32.add
          (get_local $0)
          (i32.const 12)
         )
         (i32.or
          (i32.shr_u
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
           (i32.const 16)
          )
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 16)
         )
        )
        (set_local $0
         (i32.add
          (get_local $0)
          (i32.const 16)
         )
        )
        (set_local $2
         (i32.sub
          (get_local $2)
          (i32.const 16)
         )
        )
        (br $continue|4)
       )
      )
     )
     (br $break|2)
    )
    (set_local $5
     (i32.load
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (get_local $1)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (loop $continue|5
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 19)
      )
      (block
       (i32.store
        (get_local $0)
        (i32.or
         (i32.shr_u
          (get_local $5)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
        (i32.or
         (i32.shr_u
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (i32.or
         (i32.shr_u
          (get_local $5)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (i32.store
        (i32.add
         (get_local $0)
         (i32.const 12)
        )
        (i32.or
         (i32.shr_u
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
          (i32.const 24)
         )
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 16)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 16)
        )
       )
       (br $continue|5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 8)
   )
   (block
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 4)
   )
   (block
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 2)
   )
   (block
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (block
    (set_local $3
     (get_local $1)
    )
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
   )
  )
 )
 (func $~lib/memory/memmove (; 15 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
   )
   (set_local $3
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
  )
  (if
   (get_local $3)
   (block
    (call $~lib/memory/memcpy
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (return)
   )
  )
  (if
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (loop $continue|0
       (if
        (i32.and
         (get_local $0)
         (i32.const 7)
        )
        (block
         (if
          (i32.eqz
           (get_local $2)
          )
          (return)
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
         (set_local $0
          (i32.add
           (tee_local $3
            (tee_local $4
             (get_local $0)
            )
           )
           (i32.const 1)
          )
         )
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (i32.store8
          (get_local $4)
          (i32.load8_u
           (get_local $3)
          )
         )
         (br $continue|0)
        )
       )
      )
      (loop $continue|1
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
        (block
         (i64.store
          (get_local $0)
          (i64.load
           (get_local $1)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 8)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
    )
    (loop $continue|2
     (if
      (get_local $2)
      (block
       (set_local $0
        (i32.add
         (tee_local $3
          (tee_local $4
           (get_local $0)
          )
         )
         (i32.const 1)
        )
       )
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (get_local $4)
        (i32.load8_u
         (get_local $3)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $continue|2)
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (loop $continue|3
       (if
        (i32.and
         (i32.add
          (get_local $0)
          (get_local $2)
         )
         (i32.const 7)
        )
        (block
         (if
          (i32.eqz
           (get_local $2)
          )
          (return)
         )
         (i32.store8
          (i32.add
           (get_local $0)
           (tee_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
          )
          (i32.load8_u
           (i32.add
            (get_local $1)
            (get_local $2)
           )
          )
         )
         (br $continue|3)
        )
       )
      )
      (loop $continue|4
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
        (block
         (i64.store
          (i32.add
           (get_local $0)
           (tee_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
          )
          (i64.load
           (i32.add
            (get_local $1)
            (get_local $2)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (loop $continue|5
     (if
      (get_local $2)
      (block
       (i32.store8
        (i32.add
         (get_local $0)
         (tee_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (i32.load8_u
         (i32.add
          (get_local $1)
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
 (func $~lib/memory/memory.copy (; 16 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (call $~lib/memory/memmove
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#repeat (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 488)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.lt_s
      (get_local $1)
      (i32.const 0)
     )
    )
   )
   (set_local $2
    (i32.gt_s
     (i32.mul
      (get_local $3)
      (get_local $1)
     )
     (i32.const 268435456)
    )
   )
  )
  (if
   (get_local $2)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 493)
     (i32.const 6)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.eqz
      (get_local $1)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $3)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 8)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $4
   (call $~lib/internal/string/allocate
    (i32.mul
     (get_local $3)
     (get_local $1)
    )
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (set_local $1
    (i32.mul
     (tee_local $3
      (i32.shl
       (get_local $3)
       (i32.const 1)
      )
     )
     (get_local $1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $1)
     )
    )
    (call $~lib/memory/memory.copy
     (i32.add
      (i32.add
       (get_local $4)
       (i32.const 4)
      )
      (get_local $2)
     )
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (get_local $3)
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (get_local $3)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $4)
 )
 (func $~lib/string/String#padStart (; 18 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 442)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $4
   (i32.load
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.lt_s
      (get_local $1)
      (tee_local $5
       (i32.load
        (get_local $0)
       )
      )
     )
    )
   )
   (set_local $3
    (i32.eqz
     (get_local $4)
    )
   )
  )
  (if
   (get_local $3)
   (return
    (get_local $0)
   )
  )
  (if
   (i32.gt_s
    (tee_local $3
     (i32.sub
      (get_local $1)
      (get_local $5)
     )
    )
    (get_local $4)
   )
   (set_local $2
    (call $~lib/string/String#repeat
     (get_local $2)
     (i32.div_s
      (i32.sub
       (i32.add
        (get_local $3)
        (get_local $4)
       )
       (i32.const 1)
      )
      (get_local $4)
     )
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.add
    (tee_local $1
     (call $~lib/internal/string/allocate
      (get_local $1)
     )
    )
    (i32.const 4)
   )
   (i32.add
    (get_local $2)
    (i32.const 4)
   )
   (i32.shl
    (get_local $3)
    (i32.const 1)
   )
  )
  (if
   (get_local $5)
   (call $~lib/memory/memory.copy
    (i32.add
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.shl
     (get_local $5)
     (i32.const 1)
    )
   )
  )
  (get_local $1)
 )
 (func $~lib/string/String#padStart|trampoline (; 19 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    (i32.const 236)
   )
  )
  (call $~lib/string/String#padStart
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#padEnd (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 465)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $4
   (i32.load
    (get_local $2)
   )
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.lt_s
      (get_local $1)
      (tee_local $5
       (i32.load
        (get_local $0)
       )
      )
     )
    )
   )
   (set_local $3
    (i32.eqz
     (get_local $4)
    )
   )
  )
  (if
   (get_local $3)
   (return
    (get_local $0)
   )
  )
  (if
   (i32.gt_s
    (tee_local $3
     (i32.sub
      (get_local $1)
      (get_local $5)
     )
    )
    (get_local $4)
   )
   (set_local $2
    (call $~lib/string/String#repeat
     (get_local $2)
     (i32.div_s
      (i32.sub
       (i32.add
        (get_local $3)
        (get_local $4)
       )
       (i32.const 1)
      )
      (get_local $4)
     )
    )
   )
  )
  (set_local $1
   (call $~lib/internal/string/allocate
    (get_local $1)
   )
  )
  (if
   (get_local $5)
   (call $~lib/memory/memory.copy
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.shl
     (get_local $5)
     (i32.const 1)
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.add
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (get_local $5)
     (i32.const 1)
    )
   )
   (i32.add
    (get_local $2)
    (i32.const 4)
   )
   (i32.shl
    (get_local $3)
    (i32.const 1)
   )
  )
  (get_local $1)
 )
 (func $~lib/string/String#padEnd|trampoline (; 21 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    (i32.const 236)
   )
  )
  (call $~lib/string/String#padEnd
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#lastIndexOf (; 22 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 269)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 196)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (tee_local $4
     (i32.load
      (get_local $1)
     )
    )
   )
   (return
    (get_local $3)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const -1)
   )
  )
  (block $break|0
   (set_local $3
    (select
     (tee_local $2
      (select
       (get_local $2)
       (tee_local $3
        (i32.sub
         (get_local $3)
         (get_local $4)
        )
       )
       (i32.lt_s
        (get_local $2)
        (get_local $3)
       )
      )
     )
     (i32.const 0)
     (i32.gt_s
      (get_local $2)
      (i32.const 0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.lt_s
      (get_local $3)
      (i32.const 0)
     )
    )
    (if
     (call $~lib/internal/string/compareUTF16
      (i32.add
       (get_local $0)
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
      )
      (get_local $1)
      (get_local $4)
     )
     (block
      (set_local $3
       (i32.sub
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
     (return
      (get_local $3)
     )
    )
   )
  )
  (i32.const -1)
 )
 (func $~lib/string/String#lastIndexOf|trampoline (; 23 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    (i32.const 2147483647)
   )
  )
  (call $~lib/string/String#lastIndexOf
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $std/string/getString (; 24 ;) (type $i) (result i32)
  (get_global $std/string/str)
 )
 (func $~lib/internal/string/parse<f64> (; 25 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (if
   (i32.eqz
    (tee_local $4
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $6
   (if (result f64)
    (i32.eq
     (tee_local $2
      (i32.load16_u offset=4
       (tee_local $3
        (get_local $0)
       )
      )
     )
     (i32.const 45)
    )
    (block (result f64)
     (if
      (i32.eqz
       (tee_local $4
        (i32.sub
         (get_local $4)
         (i32.const 1)
        )
       )
      )
      (return
       (f64.const nan:0x8000000000000)
      )
     )
     (set_local $2
      (i32.load16_u offset=4
       (tee_local $3
        (i32.add
         (get_local $3)
         (i32.const 2)
        )
       )
      )
     )
     (f64.const -1)
    )
    (block (result f64)
     (if
      (i32.eq
       (get_local $2)
       (i32.const 43)
      )
      (block
       (if
        (i32.eqz
         (tee_local $4
          (i32.sub
           (get_local $4)
           (i32.const 1)
          )
         )
        )
        (return
         (f64.const nan:0x8000000000000)
        )
       )
       (set_local $2
        (i32.load16_u offset=4
         (tee_local $3
          (i32.add
           (get_local $3)
           (i32.const 2)
          )
         )
        )
       )
      )
     )
     (f64.const 1)
    )
   )
  )
  (if
   (get_local $1)
   (block
    (if
     (i32.eqz
      (tee_local $0
       (i32.lt_s
        (get_local $1)
        (i32.const 2)
       )
      )
     )
     (set_local $0
      (i32.gt_s
       (get_local $1)
       (i32.const 36)
      )
     )
    )
    (if
     (get_local $0)
     (return
      (f64.const nan:0x8000000000000)
     )
    )
   )
   (block
    (if
     (tee_local $0
      (i32.eq
       (get_local $2)
       (i32.const 48)
      )
     )
     (set_local $0
      (i32.gt_s
       (get_local $4)
       (i32.const 2)
      )
     )
    )
    (set_local $1
     (if (result i32)
      (get_local $0)
      (block $break|0 (result i32)
       (block $case6|0
        (block $case5|0
         (block $case3|0
          (block $case1|0
           (br_if $case1|0
            (i32.eq
             (tee_local $0
              (i32.load16_u offset=4
               (i32.add
                (get_local $3)
                (i32.const 2)
               )
              )
             )
             (i32.const 66)
            )
           )
           (br_if $case1|0
            (i32.eq
             (get_local $0)
             (i32.const 98)
            )
           )
           (br_if $case3|0
            (i32.eq
             (get_local $0)
             (i32.const 79)
            )
           )
           (br_if $case3|0
            (i32.eq
             (get_local $0)
             (i32.const 111)
            )
           )
           (br_if $case5|0
            (i32.eq
             (get_local $0)
             (i32.const 88)
            )
           )
           (br_if $case5|0
            (i32.eq
             (get_local $0)
             (i32.const 120)
            )
           )
           (br $case6|0)
          )
          (set_local $3
           (i32.add
            (get_local $3)
            (i32.const 4)
           )
          )
          (set_local $4
           (i32.sub
            (get_local $4)
            (i32.const 2)
           )
          )
          (br $break|0
           (i32.const 2)
          )
         )
         (set_local $3
          (i32.add
           (get_local $3)
           (i32.const 4)
          )
         )
         (set_local $4
          (i32.sub
           (get_local $4)
           (i32.const 2)
          )
         )
         (br $break|0
          (i32.const 8)
         )
        )
        (set_local $3
         (i32.add
          (get_local $3)
          (i32.const 4)
         )
        )
        (set_local $4
         (i32.sub
          (get_local $4)
          (i32.const 2)
         )
        )
        (br $break|0
         (i32.const 16)
        )
       )
       (i32.const 10)
      )
      (i32.const 10)
     )
    )
   )
  )
  (block $break|1
   (loop $continue|1
    (set_local $4
     (i32.sub
      (tee_local $0
       (get_local $4)
      )
      (i32.const 1)
     )
    )
    (if
     (get_local $0)
     (block
      (if
       (tee_local $0
        (i32.ge_s
         (tee_local $2
          (i32.load16_u offset=4
           (get_local $3)
          )
         )
         (i32.const 48)
        )
       )
       (set_local $0
        (i32.le_s
         (get_local $2)
         (i32.const 57)
        )
       )
      )
      (br_if $break|1
       (i32.ge_s
        (tee_local $2
         (if (result i32)
          (get_local $0)
          (i32.sub
           (get_local $2)
           (i32.const 48)
          )
          (block (result i32)
           (if
            (tee_local $0
             (i32.ge_s
              (get_local $2)
              (i32.const 65)
             )
            )
            (set_local $0
             (i32.le_s
              (get_local $2)
              (i32.const 90)
             )
            )
           )
           (if (result i32)
            (get_local $0)
            (i32.sub
             (get_local $2)
             (i32.const 55)
            )
            (block (result i32)
             (if
              (tee_local $0
               (i32.ge_s
                (get_local $2)
                (i32.const 97)
               )
              )
              (set_local $0
               (i32.le_s
                (get_local $2)
                (i32.const 122)
               )
              )
             )
             (br_if $break|1
              (i32.eqz
               (get_local $0)
              )
             )
             (i32.sub
              (get_local $2)
              (i32.const 87)
             )
            )
           )
          )
         )
        )
        (get_local $1)
       )
      )
      (set_local $5
       (f64.add
        (f64.mul
         (get_local $5)
         (f64.convert_s/i32
          (get_local $1)
         )
        )
        (f64.convert_s/i32
         (get_local $2)
        )
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 2)
       )
      )
      (br $continue|1)
     )
    )
   )
  )
  (f64.mul
   (get_local $6)
   (get_local $5)
  )
 )
 (func $~lib/string/parseInt (; 26 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (call $~lib/internal/string/parse<f64>
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/string/parseFloat (; 27 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (if
   (i32.eqz
    (tee_local $3
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (f64.const nan:0x8000000000000)
   )
  )
  (set_local $6
   (if (result f64)
    (i32.eq
     (tee_local $2
      (i32.load16_u offset=4
       (tee_local $1
        (get_local $0)
       )
      )
     )
     (i32.const 45)
    )
    (block (result f64)
     (if
      (i32.eqz
       (tee_local $3
        (i32.sub
         (get_local $3)
         (i32.const 1)
        )
       )
      )
      (return
       (f64.const nan:0x8000000000000)
      )
     )
     (drop
      (i32.load16_u offset=4
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const 2)
        )
       )
      )
     )
     (f64.const -1)
    )
    (block (result f64)
     (if
      (i32.eq
       (get_local $2)
       (i32.const 43)
      )
      (block
       (if
        (i32.eqz
         (tee_local $3
          (i32.sub
           (get_local $3)
           (i32.const 1)
          )
         )
        )
        (return
         (f64.const nan:0x8000000000000)
        )
       )
       (drop
        (i32.load16_u offset=4
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 2)
          )
         )
        )
       )
      )
     )
     (f64.const 1)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (set_local $3
     (i32.sub
      (tee_local $0
       (get_local $3)
      )
      (i32.const 1)
     )
    )
    (if
     (get_local $0)
     (block
      (if
       (i32.eq
        (tee_local $2
         (i32.load16_u offset=4
          (get_local $1)
         )
        )
        (i32.const 46)
       )
       (block
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 2)
         )
        )
        (set_local $5
         (f64.const 0.1)
        )
        (block $break|1
         (loop $continue|1
          (set_local $3
           (i32.sub
            (tee_local $0
             (get_local $3)
            )
            (i32.const 1)
           )
          )
          (if
           (get_local $0)
           (block
            (if
             (i32.eqz
              (tee_local $0
               (i32.eq
                (tee_local $2
                 (i32.load16_u offset=4
                  (get_local $1)
                 )
                )
                (i32.const 69)
               )
              )
             )
             (set_local $0
              (i32.eq
               (get_local $2)
               (i32.const 101)
              )
             )
            )
            (if
             (get_local $0)
             (block
              (call $~lib/env/abort
               (i32.const 0)
               (i32.const 80)
               (i32.const 634)
               (i32.const 10)
              )
              (unreachable)
             )
            )
            (br_if $break|1
             (i32.gt_u
              (tee_local $2
               (i32.sub
                (get_local $2)
                (i32.const 48)
               )
              )
              (i32.const 9)
             )
            )
            (set_local $4
             (f64.add
              (get_local $4)
              (f64.mul
               (f64.convert_s/i32
                (get_local $2)
               )
               (get_local $5)
              )
             )
            )
            (set_local $5
             (f64.mul
              (get_local $5)
              (f64.const 0.1)
             )
            )
            (set_local $1
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
            (br $continue|1)
           )
          )
         )
        )
        (br $break|0)
       )
      )
      (br_if $break|0
       (i32.ge_u
        (tee_local $2
         (i32.sub
          (get_local $2)
          (i32.const 48)
         )
        )
        (i32.const 10)
       )
      )
      (set_local $4
       (f64.add
        (f64.mul
         (get_local $4)
         (f64.const 10)
        )
        (f64.convert_s/i32
         (get_local $2)
        )
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (f64.mul
   (get_local $6)
   (get_local $4)
  )
 )
 (func $~lib/string/String#concat (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 112)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 196)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.add
      (tee_local $3
       (i32.load
        (get_local $0)
       )
      )
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   (return
    (i32.const 8)
   )
  )
  (call $~lib/memory/memory.copy
   (i32.add
    (tee_local $2
     (call $~lib/internal/string/allocate
      (get_local $2)
     )
    )
    (i32.const 4)
   )
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (tee_local $0
    (i32.shl
     (get_local $3)
     (i32.const 1)
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.add
    (i32.add
     (get_local $2)
     (i32.const 4)
    )
    (get_local $0)
   )
   (i32.add
    (get_local $1)
    (i32.const 4)
   )
   (i32.shl
    (get_local $4)
    (i32.const 1)
   )
  )
  (get_local $2)
 )
 (func $~lib/string/String.__concat (; 29 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 196)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/string/String.__ne (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $~lib/string/String.__eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/string/String.__gt (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (tee_local $2
     (i32.eq
      (get_local $0)
      (get_local $1)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $0)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const 1)
   )
  )
  (i32.gt_s
   (call $~lib/internal/string/compareUTF16
    (get_local $0)
    (get_local $1)
    (select
     (get_local $2)
     (get_local $3)
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__gte (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (i32.eqz
     (get_local $3)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const 1)
   )
  )
  (i32.ge_s
   (call $~lib/internal/string/compareUTF16
    (get_local $0)
    (get_local $1)
    (select
     (get_local $2)
     (get_local $3)
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__lt (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (tee_local $2
     (i32.eq
      (get_local $0)
      (get_local $1)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $0)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.load
      (get_local $1)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 1)
   )
  )
  (i32.lt_s
   (call $~lib/internal/string/compareUTF16
    (get_local $0)
    (get_local $1)
    (select
     (get_local $2)
     (get_local $3)
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__lte (; 34 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.load
      (get_local $1)
     )
    )
   )
   (return
    (i32.eqz
     (get_local $2)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 1)
   )
  )
  (i32.le_s
   (call $~lib/internal/string/compareUTF16
    (get_local $0)
    (get_local $1)
    (select
     (get_local $2)
     (get_local $3)
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/internal/itoa/decimalCountU32 (; 35 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (i32.load offset=8
    (i32.add
     (i32.load
      (i32.const 704)
     )
     (i32.shl
      (tee_local $1
       (i32.shr_u
        (i32.mul
         (i32.sub
          (i32.const 32)
          (i32.clz
           (get_local $0)
          )
         )
         (i32.const 1233)
        )
        (i32.const 12)
       )
      )
      (i32.const 2)
     )
    )
   )
  )
  (i32.add
   (i32.sub
    (get_local $1)
    (i32.lt_u
     (get_local $0)
     (get_local $2)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/internal/itoa/utoa32_lut (; 36 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (i32.const 776)
   )
  )
  (loop $continue|0
   (if
    (i32.ge_u
     (get_local $1)
     (i32.const 10000)
    )
    (block
     (set_local $4
      (i32.rem_u
       (get_local $1)
       (i32.const 10000)
      )
     )
     (set_local $1
      (i32.div_u
       (get_local $1)
       (i32.const 10000)
      )
     )
     (i64.store offset=4
      (i32.add
       (get_local $0)
       (i32.shl
        (tee_local $2
         (i32.sub
          (get_local $2)
          (i32.const 4)
         )
        )
        (i32.const 1)
       )
      )
      (i64.or
       (i64.load32_u offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (i32.div_u
           (get_local $4)
           (i32.const 100)
          )
          (i32.const 2)
         )
        )
       )
       (i64.shl
        (i64.load32_u offset=8
         (i32.add
          (get_local $3)
          (i32.shl
           (i32.rem_u
            (get_local $4)
            (i32.const 100)
           )
           (i32.const 2)
          )
         )
        )
        (i64.const 32)
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 100)
   )
   (block
    (set_local $4
     (i32.rem_u
      (get_local $1)
      (i32.const 100)
     )
    )
    (set_local $1
     (i32.div_u
      (get_local $1)
      (i32.const 100)
     )
    )
    (i32.store offset=4
     (i32.add
      (get_local $0)
      (i32.shl
       (tee_local $2
        (i32.sub
         (get_local $2)
         (i32.const 2)
        )
       )
       (i32.const 1)
      )
     )
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.shl
        (get_local $4)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.const 10)
   )
   (i32.store offset=4
    (i32.add
     (get_local $0)
     (i32.shl
      (i32.sub
       (get_local $2)
       (i32.const 2)
      )
      (i32.const 1)
     )
    )
    (i32.load offset=8
     (i32.add
      (get_local $3)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (i32.store16 offset=4
    (i32.add
     (get_local $0)
     (i32.shl
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
      (i32.const 1)
     )
    )
    (i32.add
     (get_local $1)
     (i32.const 48)
    )
   )
  )
 )
 (func $~lib/internal/itoa/itoa32 (; 37 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 436)
   )
  )
  (if
   (tee_local $1
    (i32.lt_s
     (get_local $0)
     (i32.const 0)
    )
   )
   (set_local $0
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
   )
  )
  (call $~lib/internal/itoa/utoa32_lut
   (tee_local $2
    (call $~lib/internal/string/allocate
     (tee_local $3
      (i32.add
       (call $~lib/internal/itoa/decimalCountU32
        (get_local $0)
       )
       (get_local $1)
      )
     )
    )
   )
   (get_local $0)
   (get_local $3)
  )
  (if
   (get_local $1)
   (i32.store16 offset=4
    (get_local $2)
    (i32.const 45)
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/itoa/utoa32 (; 38 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 436)
   )
  )
  (call $~lib/internal/itoa/utoa32_lut
   (tee_local $2
    (call $~lib/internal/string/allocate
     (tee_local $1
      (call $~lib/internal/itoa/decimalCountU32
       (get_local $0)
      )
     )
    )
   )
   (get_local $0)
   (get_local $1)
  )
  (get_local $2)
 )
 (func $~lib/internal/itoa/decimalCountU64 (; 39 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i64)
  (set_local $2
   (i64.load32_u offset=8
    (i32.add
     (i32.load
      (i32.const 1552)
     )
     (i32.shl
      (i32.sub
       (tee_local $1
        (i32.shr_u
         (i32.mul
          (i32.sub
           (i32.const 64)
           (i32.wrap/i64
            (i64.clz
             (get_local $0)
            )
           )
          )
          (i32.const 1233)
         )
         (i32.const 12)
        )
       )
       (i32.const 10)
      )
      (i32.const 2)
     )
    )
   )
  )
  (i32.add
   (i32.sub
    (get_local $1)
    (i64.lt_u
     (get_local $0)
     (i64.mul
      (get_local $2)
      (i64.const 10000000000)
     )
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/internal/itoa/utoa64_lut (; 40 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (i32.load
    (i32.const 1624)
   )
  )
  (loop $continue|0
   (if
    (i64.ge_u
     (get_local $1)
     (i64.const 100000000)
    )
    (block
     (set_local $6
      (i32.div_u
       (tee_local $5
        (i32.div_u
         (tee_local $4
          (i32.wrap/i64
           (i64.sub
            (get_local $1)
            (i64.mul
             (tee_local $1
              (i64.div_u
               (get_local $1)
               (i64.const 100000000)
              )
             )
             (i64.const 100000000)
            )
           )
          )
         )
         (i32.const 10000)
        )
       )
       (i32.const 100)
      )
     )
     (set_local $5
      (i32.rem_u
       (get_local $5)
       (i32.const 100)
      )
     )
     (i64.store offset=4
      (i32.add
       (get_local $0)
       (i32.shl
        (tee_local $2
         (i32.sub
          (get_local $2)
          (i32.const 4)
         )
        )
        (i32.const 1)
       )
      )
      (i64.or
       (i64.load32_u offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (i32.div_u
           (tee_local $4
            (i32.rem_u
             (get_local $4)
             (i32.const 10000)
            )
           )
           (i32.const 100)
          )
          (i32.const 2)
         )
        )
       )
       (i64.shl
        (i64.load32_u offset=8
         (i32.add
          (get_local $3)
          (i32.shl
           (i32.rem_u
            (get_local $4)
            (i32.const 100)
           )
           (i32.const 2)
          )
         )
        )
        (i64.const 32)
       )
      )
     )
     (i64.store offset=4
      (i32.add
       (get_local $0)
       (i32.shl
        (tee_local $2
         (i32.sub
          (get_local $2)
          (i32.const 4)
         )
        )
        (i32.const 1)
       )
      )
      (i64.or
       (i64.load32_u offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
       )
       (i64.shl
        (i64.load32_u offset=8
         (i32.add
          (get_local $3)
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
        (i64.const 32)
       )
      )
     )
     (br $continue|0)
    )
   )
  )
  (call $~lib/internal/itoa/utoa32_lut
   (get_local $0)
   (i32.wrap/i64
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $~lib/internal/itoa/utoa64 (; 41 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i64.eqz
    (get_local $0)
   )
   (return
    (i32.const 436)
   )
  )
  (if
   (i64.le_u
    (get_local $0)
    (i64.const 4294967295)
   )
   (call $~lib/internal/itoa/utoa32_lut
    (tee_local $2
     (call $~lib/internal/string/allocate
      (tee_local $1
       (call $~lib/internal/itoa/decimalCountU32
        (tee_local $3
         (i32.wrap/i64
          (get_local $0)
         )
        )
       )
      )
     )
    )
    (get_local $3)
    (get_local $1)
   )
   (call $~lib/internal/itoa/utoa64_lut
    (tee_local $2
     (call $~lib/internal/string/allocate
      (tee_local $1
       (call $~lib/internal/itoa/decimalCountU64
        (get_local $0)
       )
      )
     )
    )
    (get_local $0)
    (get_local $1)
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/itoa/itoa64 (; 42 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i64.eqz
    (get_local $0)
   )
   (return
    (i32.const 436)
   )
  )
  (if
   (tee_local $1
    (i64.lt_s
     (get_local $0)
     (i64.const 0)
    )
   )
   (set_local $0
    (i64.sub
     (i64.const 0)
     (get_local $0)
    )
   )
  )
  (if
   (i64.le_u
    (get_local $0)
    (i64.const 4294967295)
   )
   (call $~lib/internal/itoa/utoa32_lut
    (tee_local $3
     (call $~lib/internal/string/allocate
      (tee_local $2
       (i32.add
        (call $~lib/internal/itoa/decimalCountU32
         (tee_local $4
          (i32.wrap/i64
           (get_local $0)
          )
         )
        )
        (get_local $1)
       )
      )
     )
    )
    (get_local $4)
    (get_local $2)
   )
   (call $~lib/internal/itoa/utoa64_lut
    (tee_local $3
     (call $~lib/internal/string/allocate
      (tee_local $2
       (i32.add
        (call $~lib/internal/itoa/decimalCountU64
         (get_local $0)
        )
        (get_local $1)
       )
      )
     )
    )
    (get_local $0)
    (get_local $2)
   )
  )
  (if
   (get_local $1)
   (i32.store16 offset=4
    (get_local $3)
    (i32.const 45)
   )
  )
  (get_local $3)
 )
 (func $start (; 43 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 2672)
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (if
   (i32.ne
    (get_global $std/string/str)
    (i32.const 12)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load
     (get_global $std/string/str)
    )
    (i32.const 16)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#charCodeAt
     (get_global $std/string/str)
     (i32.const 0)
    )
    (i32.const 104)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 14)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCharCode
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCharCode
      (i32.const 54)
     )
     (i32.const 172)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCharCode
      (i32.const 65590)
     )
     (i32.const 172)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCodePoint
      (i32.const 0)
     )
     (i32.const 112)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String.fromCodePoint
      (i32.const 54)
     )
     (i32.const 172)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.fromCodePoint
     (i32.const 119558)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 180)
     (i32.const 48)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String#startsWith
     (get_global $std/string/str)
     (i32.const 188)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 24)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.eqz
    (call $~lib/string/String#endsWith|trampoline
     (get_global $std/string/str)
     (i32.const 208)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String#includes
     (get_global $std/string/str)
     (i32.const 224)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 26)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart|trampoline
      (get_global $std/string/str)
      (i32.const 0)
      (i32.const 0)
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart|trampoline
      (get_global $std/string/str)
      (i32.const 15)
      (i32.const 0)
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 29)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart|trampoline
      (i32.const 8)
      (i32.const 3)
      (i32.const 0)
     )
     (i32.const 244)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 30)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 8)
      (i32.const 10)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 31)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 256)
      (i32.const 100)
      (i32.const 8)
     )
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 32)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart|trampoline
      (i32.const 264)
      (i32.const 5)
      (i32.const 0)
     )
     (i32.const 276)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 33)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 264)
      (i32.const 6)
      (i32.const 292)
     )
     (i32.const 304)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 34)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padStart
      (i32.const 264)
      (i32.const 8)
      (i32.const 292)
     )
     (i32.const 320)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 35)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd|trampoline
      (get_global $std/string/str)
      (i32.const 0)
      (i32.const 0)
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 37)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd|trampoline
      (get_global $std/string/str)
      (i32.const 15)
      (i32.const 0)
     )
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 38)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd|trampoline
      (i32.const 8)
      (i32.const 3)
      (i32.const 0)
     )
     (i32.const 244)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 39)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 8)
      (i32.const 10)
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 40)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 256)
      (i32.const 100)
      (i32.const 8)
     )
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 41)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd|trampoline
      (i32.const 264)
      (i32.const 5)
      (i32.const 0)
     )
     (i32.const 340)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 42)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 264)
      (i32.const 6)
      (i32.const 264)
     )
     (i32.const 356)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 43)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#padEnd
      (i32.const 264)
      (i32.const 8)
      (i32.const 264)
     )
     (i32.const 372)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 44)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String#indexOf
    (i32.const 8)
    (i32.const 8)
    (i32.const 0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 46)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#indexOf
     (i32.const 8)
     (i32.const 188)
     (i32.const 0)
    )
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 47)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String#indexOf
    (get_global $std/string/str)
    (i32.const 8)
    (i32.const 0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 48)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#indexOf
     (get_global $std/string/str)
     (i32.const 392)
     (i32.const 0)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 49)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#indexOf
     (get_global $std/string/str)
     (i32.const 400)
     (i32.const 0)
    )
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 50)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#indexOf
     (get_global $std/string/str)
     (i32.const 392)
     (i32.const 2)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 51)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#indexOf
     (get_global $std/string/str)
     (i32.const 392)
     (i32.const 3)
    )
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 52)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#indexOf
     (get_global $std/string/str)
     (i32.const 408)
     (i32.const -1)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 53)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (call $~lib/string/String#lastIndexOf|trampoline
    (i32.const 8)
    (i32.const 8)
    (i32.const 0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 55)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf|trampoline
     (i32.const 8)
     (i32.const 188)
     (i32.const 0)
    )
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 56)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf|trampoline
     (get_global $std/string/str)
     (i32.const 8)
     (i32.const 0)
    )
    (i32.load
     (get_global $std/string/str)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 57)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf|trampoline
     (get_global $std/string/str)
     (i32.const 392)
     (i32.const 0)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 58)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf|trampoline
     (get_global $std/string/str)
     (i32.const 400)
     (i32.const 0)
    )
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 59)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf|trampoline
     (get_global $std/string/str)
     (i32.const 420)
     (i32.const 0)
    )
    (i32.const 15)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 60)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf
     (get_global $std/string/str)
     (i32.const 392)
     (i32.const 2)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 61)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf
     (get_global $std/string/str)
     (i32.const 392)
     (i32.const 3)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 62)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf
     (get_global $std/string/str)
     (i32.const 408)
     (i32.const -1)
    )
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 63)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf
     (get_global $std/string/str)
     (i32.const 428)
     (i32.const 0)
    )
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 64)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String#lastIndexOf
    (get_global $std/string/str)
    (i32.const 188)
    (i32.const 0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 65)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 436)
     (i32.const 0)
    )
    (f64.const 0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 71)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 444)
     (i32.const 0)
    )
    (f64.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 72)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 452)
     (i32.const 0)
    )
    (f64.const 5)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 73)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 468)
     (i32.const 0)
    )
    (f64.const 455)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 74)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 484)
     (i32.const 0)
    )
    (f64.const 3855)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 75)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 500)
     (i32.const 0)
    )
    (f64.const 3855)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 76)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 516)
     (i32.const 0)
    )
    (f64.const 11)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 77)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 528)
     (i32.const 0)
    )
    (f64.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 78)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseFloat
     (i32.const 436)
    )
    (f64.const 0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseFloat
     (i32.const 444)
    )
    (f64.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 81)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseFloat
     (i32.const 540)
    )
    (f64.const 0.1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 82)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseFloat
     (i32.const 552)
    )
    (f64.const 0.25)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 83)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (f64.ne
    (call $~lib/string/parseFloat
     (i32.const 564)
    )
    (f64.const 0.1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 84)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/string/c
   (call $~lib/string/String.__concat
    (i32.const 256)
    (i32.const 584)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (get_global $std/string/c)
     (i32.const 592)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 87)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (get_global $std/string/c)
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 88)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 89)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__ne
     (i32.const 8)
     (get_global $std/string/nullStr)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 90)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 584)
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 92)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 600)
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 93)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 600)
     (i32.const 608)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 94)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 600)
     (i32.const 592)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 95)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__lt
    (i32.const 600)
    (i32.const 592)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 96)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__lt
    (i32.const 584)
    (get_global $std/string/nullStr)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 98)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__lt
    (get_global $std/string/nullStr)
    (i32.const 584)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 99)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 264)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 101)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lt
     (i32.const 8)
     (i32.const 264)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 102)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 264)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 103)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lte
     (i32.const 8)
     (i32.const 264)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 104)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__lt
    (i32.const 264)
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 105)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__gt
    (i32.const 8)
    (i32.const 264)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 106)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__lt
    (i32.const 8)
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 107)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__gt
    (i32.const 8)
    (i32.const 8)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 108)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 109)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__lte
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 110)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/string/a
   (call $~lib/string/String.fromCodePoint
    (i32.const 65377)
   )
  )
  (set_global $std/string/b
   (call $~lib/string/String.__concat
    (call $~lib/string/String.fromCodePoint
     (i32.const 55296)
    )
    (call $~lib/string/String.fromCodePoint
     (i32.const 56322)
    )
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (get_global $std/string/a)
     (get_global $std/string/b)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 114)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load
     (i32.const 292)
    )
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 8)
      (i32.const 100)
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 118)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 256)
      (i32.const 0)
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 119)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 256)
      (i32.const 1)
     )
     (i32.const 256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 120)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 256)
      (i32.const 2)
     )
     (i32.const 608)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 121)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 256)
      (i32.const 3)
     )
     (i32.const 616)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 122)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 592)
      (i32.const 4)
     )
     (i32.const 628)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 123)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 256)
      (i32.const 5)
     )
     (i32.const 648)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 124)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 256)
      (i32.const 6)
     )
     (i32.const 664)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 125)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 256)
      (i32.const 7)
     )
     (i32.const 680)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 126)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 0)
     )
     (i32.const 436)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 128)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1)
     )
     (i32.const 444)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 129)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 8)
     )
     (i32.const 1296)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 130)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 123)
     )
     (i32.const 292)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 131)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const -1000)
     )
     (i32.const 1304)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 132)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1234)
     )
     (i32.const 1320)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 133)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 12345)
     )
     (i32.const 1332)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 134)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 123456)
     )
     (i32.const 1348)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 135)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1111111)
     )
     (i32.const 1364)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 136)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 1234567)
     )
     (i32.const 1384)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 137)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 2147483646)
     )
     (i32.const 1404)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 138)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const 2147483647)
     )
     (i32.const 1428)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 139)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const -2147483648)
     )
     (i32.const 1452)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 140)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa32
      (i32.const -1)
     )
     (i32.const 1480)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 141)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const 0)
     )
     (i32.const 436)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 143)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const 1000)
     )
     (i32.const 1488)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 144)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const 2147483647)
     )
     (i32.const 1428)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 145)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const -2147483648)
     )
     (i32.const 1500)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 146)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa32
      (i32.const -1)
     )
     (i32.const 1524)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 147)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 0)
     )
     (i32.const 436)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 149)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 1234)
     )
     (i32.const 1320)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 150)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 99999999)
     )
     (i32.const 2144)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 151)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 100000000)
     )
     (i32.const 2164)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 152)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 4294967295)
     )
     (i32.const 1524)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 153)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 68719476735)
     )
     (i32.const 2188)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 154)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 868719476735)
     )
     (i32.const 2216)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 155)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 999868719476735)
     )
     (i32.const 2244)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 156)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 9999868719476735)
     )
     (i32.const 2280)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 157)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 19999868719476735)
     )
     (i32.const 2316)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 158)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const -1)
     )
     (i32.const 2356)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 159)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const 0)
     )
     (i32.const 436)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 161)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -1234)
     )
     (i32.const 2400)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 162)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const 4294967295)
     )
     (i32.const 1524)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 163)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -4294967295)
     )
     (i32.const 2416)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 164)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const 68719476735)
     )
     (i32.const 2188)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 165)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -68719476735)
     )
     (i32.const 2444)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 166)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -868719476735)
     )
     (i32.const 2472)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 167)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -999868719476735)
     )
     (i32.const 2504)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 168)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -19999868719476735)
     )
     (i32.const 2540)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 169)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const 9223372036854775807)
     )
     (i32.const 2580)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 170)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/itoa64
      (i64.const -9223372036854775808)
     )
     (i32.const 2624)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 171)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
