(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $i (func (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iF (func (param i32) (result f64)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iI (func (param i32) (result i64)))
 (type $iv (func (param i32)))
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
 (global $HEAP_BASE i32 (i32.const 4300))
 (memory $0 1)
 (data (i32.const 12) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 48) "\0d\00\00\00s\00t\00d\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 80) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 112) "\02\00\00\00h\00i")
 (data (i32.const 120) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 132) "\06\00\00\00s\00t\00r\00i\00n\00g")
 (data (i32.const 148) "\03\00\00\00I\00\'\00m")
 (data (i32.const 160) "\01\00\00\00,")
 (data (i32.const 168) "\01\00\00\00x")
 (data (i32.const 176) "\03\00\00\00,\00 \00I")
 (data (i32.const 188) "\01\00\00\00g")
 (data (i32.const 196) "\01\00\00\00i")
 (data (i32.const 204) "\01\00\00\000")
 (data (i32.const 212) "\01\00\00\001")
 (data (i32.const 220) "\05\00\00\000\00b\001\000\001")
 (data (i32.const 236) "\05\00\00\000\00o\007\000\007")
 (data (i32.const 252) "\05\00\00\000\00x\00f\000\00f")
 (data (i32.const 268) "\05\00\00\000\00x\00F\000\00F")
 (data (i32.const 284) "\03\00\00\000\001\001")
 (data (i32.const 296) "\04\00\00\000\00x\001\00g")
 (data (i32.const 308) "\03\00\00\000\00.\001")
 (data (i32.const 320) "\03\00\00\00.\002\005")
 (data (i32.const 332) "\08\00\00\00.\001\00f\00o\00o\00b\00a\00r")
 (data (i32.const 352) "\01\00\00\00a")
 (data (i32.const 360) "\01\00\00\00b")
 (data (i32.const 368) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 420) "\02\00\00\00a\00b")
 (data (i32.const 428) "\02\00\00\00b\00a")
 (data (i32.const 436) "\02\00\00\00a\00a")
 (data (i32.const 444) "\03\00\00\00a\00b\00c")
 (data (i32.const 456) "\03\00\00\001\002\003")
 (data (i32.const 468) "\03\00\00\00a\00a\00a")
 (data (i32.const 480) "\08\00\00\00a\00b\00a\00b\00a\00b\00a\00b")
 (data (i32.const 500) "\05\00\00\00a\00a\00a\00a\00a")
 (data (i32.const 516) "\06\00\00\00a\00a\00a\00a\00a\00a")
 (data (i32.const 532) "\07\00\00\00a\00a\00a\00a\00a\00a\00a")
 (data (i32.const 552) "\n\00\00\000\009\00_\00A\00Z\00 \00a\00z\00.\00!")
 (data (i32.const 576) "\n\00\00\000\009\00_\00A\00Z\00 \00A\00Z\00.\00!")
 (data (i32.const 600) "\n\00\00\000\009\00_\00a\00z\00 \00a\00z\00.\00!")
 (data (i32.const 624) "%\00\00\00D\00e\00r\00 \00W\00e\00c\00h\00s\00e\00l\00 \00a\00l\00l\00e\00i\00n\00 \00i\00s\00t\00 \00d\00a\00s\00 \00B\00e\00s\00t\00\e4\00n\00d\00i\00g\00e")
 (data (i32.const 704) "%\00\00\00D\00E\00R\00 \00W\00E\00C\00H\00S\00E\00L\00 \00A\00L\00L\00E\00I\00N\00 \00I\00S\00T\00 \00D\00A\00S\00 \00B\00E\00S\00T\00\c4\00N\00D\00I\00G\00E")
 (data (i32.const 784) "%\00\00\00d\00e\00r\00 \00w\00e\00c\00h\00s\00e\00l\00 \00a\00l\00l\00e\00i\00n\00 \00i\00s\00t\00 \00d\00a\00s\00 \00b\00e\00s\00t\00\e4\00n\00d\00i\00g\00e")
 (data (i32.const 864) "\12\00\00\00@\00 \00\14  \00\14\04@\04C\043\04 \00G\045\04;\04>\042\045\04:\040\04!")
 (data (i32.const 904) "\12\00\00\00@\00 \00\14  \00\14\04 \04#\04\13\04 \00\'\04\15\04\1b\04\1e\04\12\04\15\04\1a\04\10\04!")
 (data (i32.const 944) "\12\00\00\00@\00 \00\14  \004\04@\04C\043\04 \00G\045\04;\04>\042\045\04:\040\04!")
 (data (i32.const 984) "\"\00\00\00.\" \00E\00\c5\"d\00a\00 \00=\00 \00Q\00,\00 \00n\00 \00\92! \00\1e\",\00 \00\11\" \00f\00(\00i\00)\00 \00=\00 \00\0f\" \00g\00(\00i\00)")
 (data (i32.const 1056) "\"\00\00\00.\" \00E\00\c5\"D\00A\00 \00=\00 \00Q\00,\00 \00N\00 \00\92! \00\1e\",\00 \00\11\" \00F\00(\00I\00)\00 \00=\00 \00\0f\" \00G\00(\00I\00)")
 (data (i32.const 1128) "\"\00\00\00.\" \00e\00\c5\"d\00a\00 \00=\00 \00q\00,\00 \00n\00 \00\92! \00\1e\",\00 \00\11\" \00f\00(\00i\00)\00 \00=\00 \00\0f\" \00g\00(\00i\00)")
 (data (i32.const 1200) "$\00\00\00\f0\00i\00 \001\01n\00t\00Y\02\c8\02n\00\e6\00\83\02Y\02n\00Y\02l\00 \00f\00Y\02\c8\02n\00[\02t\001\01k\00 \00Y\02s\00o\00\8a\02s\00i\00\c8\02e\001\01\83\02n")
 (data (i32.const 1276) "$\00\00\00\d0\00I\00 \00I\00N\00T\00\8f\01\c8\02N\00\c6\00\a9\01\8f\01N\00\8f\01L\00 \00F\00\8f\01\c8\02N\00\90\01T\00I\00K\00 \00\8f\01S\00O\00\b1\01S\00I\00\c8\02E\00I\00\a9\01N")
 (data (i32.const 1352) "$\00\00\00\f0\00i\00 \00i\00n\00t\00Y\02\c8\02n\00\e6\00\83\02Y\02n\00Y\02l\00 \00f\00Y\02\c8\02n\00[\02t\00i\00k\00 \00Y\02s\00o\00\8a\02s\00i\00\c8\02e\00i\00\83\02n")
 (data (i32.const 1428) "\17\00\00\00\a3\03r\1f \00\b3\03\bd\03\c9\03\c1\03\af\03\b6\03\c9\03 \00\00\1f\c0\03x\1f \00\c4\03t\1f\bd\03 \00\ba\03\cc\03\c8\03\b7\03")
 (data (i32.const 1480) "\17\00\00\00\a3\03\c8\1f \00\93\03\9d\03\a9\03\a1\03\8a\03\96\03\a9\03 \00\08\1f\a0\03\f8\1f \00\a4\03\ca\1f\9d\03 \00\9a\03\8c\03\a8\03\97\03")
 (data (i32.const 1532) "\16\00\00\00\c3\03r\1f \00\b3\03\bd\03\c9\03\c1\03\af\03\b6\03\c9\03 \00\00\1f\c0\03x\1f \00\c4\03t\1f\bd\03 \00D\1f\c8\03\b7\03")
 (data (i32.const 1580) "\16\00\00\00\a3\03\c8\1f \00\93\03\9d\03\a9\03\a1\03\8a\03\96\03\a9\03 \00\08\1f\a0\03\f8\1f \00\a4\03\ca\1f\9d\03 \00L\1f\a8\03\97\03")
 (data (i32.const 1628) "\17\00\00\00\91\03\c0\03\bf\1f \00\c4\03p\1f \00\ba\03\cc\03\ba\03\ba\03\b1\03\bb\03\b1\03 \00\b2\03\b3\03\b1\03\bb\03\bc\03\ad\03\bd\03\b7\03")
 (data (i32.const 1680) "\17\00\00\00\91\03\a0\03\bf\1f \00\a4\03\ba\1f \00\9a\03\8c\03\9a\03\9a\03\91\03\9b\03\91\03 \00\92\03\93\03\91\03\9b\03\9c\03\88\03\9d\03\97\03")
 (data (i32.const 1732) "@\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00 \00/\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 1864) "@\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00 \00/\000\001\002\003\004\005\006\007\008\009\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z")
 (data (i32.const 1996) "@\00\00\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00 \00/\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 2128) "\01\00\00\00\df")
 (data (i32.const 2136) "\01\00\00\00\01\fb")
 (data (i32.const 2144) "\\\00\00\00A\d8\0e\df \00A\d81\df \00A\d8y\df \00C\d8S\dc \00C\d8x\dc \00C\d8\96\dc \00C\d8\cf\dc \00C\d8\d5\dc \00C\d8\15\dd \00C\d8|\dd \00C\d8\7f\dd \00C\d8\0e\de \00C\d8\0f\de \00C\d8w\de \00C\d8\9d\de \00C\d8\a2\de \00C\d8\d7\de \00C\d8\f9\de \00C\d8\fa\de \00C\d8-\df \00C\d8.\df \00C\d8L\df \00C\d8\b4\df \00C\d8\bc\df \00C\d8\ea\df \00D\d8\\\dc \00D\d8o\dc \00D\d8u\dc \00D\d8v\dc \00D\d8{\dc \00D\d8\c1\dc")
 (data (i32.const 2336) "(\t\00\00\n\00\00\00(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 2408) "p\t\00\00d\00\00\00\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 2928) "\01\00\00\008")
 (data (i32.const 2936) "\05\00\00\00-\001\000\000\000")
 (data (i32.const 2952) "\04\00\00\001\002\003\004")
 (data (i32.const 2964) "\05\00\00\001\002\003\004\005")
 (data (i32.const 2980) "\06\00\00\001\002\003\004\005\006")
 (data (i32.const 2996) "\07\00\00\001\001\001\001\001\001\001")
 (data (i32.const 3016) "\07\00\00\001\002\003\004\005\006\007")
 (data (i32.const 3036) "\n\00\00\002\001\004\007\004\008\003\006\004\006")
 (data (i32.const 3060) "\n\00\00\002\001\004\007\004\008\003\006\004\007")
 (data (i32.const 3084) "\0b\00\00\00-\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 3112) "\02\00\00\00-\001")
 (data (i32.const 3120) "\04\00\00\001\000\000\000")
 (data (i32.const 3132) "\n\00\00\002\001\004\007\004\008\003\006\004\008")
 (data (i32.const 3156) "\n\00\00\004\002\009\004\009\006\007\002\009\005")
 (data (i32.const 3184) "x\0c\00\00\n\00\00\00(\00\00\00\00\00\00\00\01\00\00\00\n\00\00\00d\00\00\00\e8\03\00\00\10\'\00\00\a0\86\01\00@B\0f\00\80\96\98\00\00\e1\f5\05\00\ca\9a;")
 (data (i32.const 3256) "\c0\0c\00\00d\00\00\00\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 3776) "\08\00\00\009\009\009\009\009\009\009\009")
 (data (i32.const 3796) "\t\00\00\001\000\000\000\000\000\000\000\000")
 (data (i32.const 3820) "\0b\00\00\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 3848) "\0c\00\00\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 3876) "\0f\00\00\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 3912) "\10\00\00\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 3948) "\11\00\00\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 3988) "\14\00\00\001\008\004\004\006\007\004\004\000\007\003\007\000\009\005\005\001\006\001\005")
 (data (i32.const 4032) "\05\00\00\00-\001\002\003\004")
 (data (i32.const 4048) "\0b\00\00\00-\004\002\009\004\009\006\007\002\009\005")
 (data (i32.const 4076) "\0c\00\00\00-\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 4104) "\0d\00\00\00-\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 4136) "\10\00\00\00-\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 4172) "\12\00\00\00-\001\009\009\009\009\008\006\008\007\001\009\004\007\006\007\003\005")
 (data (i32.const 4212) "\13\00\00\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\007")
 (data (i32.const 4256) "\14\00\00\00-\009\002\002\003\003\007\002\000\003\006\008\005\004\007\007\005\008\000\008")
 (export "getString" (func $std/string/getString))
 (export "memory" (memory $0))
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
     (i32.const 51)
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
 (func $~lib/memory/compare_memory (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 0)
   )
  )
  (loop $continue|0
   (if
    (if (result i32)
     (get_local $2)
     (i32.eq
      (i32.load8_u
       (get_local $0)
      )
      (i32.load8_u
       (get_local $1)
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
  (tee_local $0
   (if (result i32)
    (get_local $2)
    (i32.sub
     (i32.load8_u
      (get_local $0)
     )
     (i32.load8_u
      (get_local $1)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String#startsWith (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (i32.const 268)
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
    (i32.const 120)
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
   (call $~lib/memory/compare_memory
    (i32.add
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (i32.shl
      (get_local $2)
      (i32.const 1)
     )
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
  )
 )
 (func $~lib/string/String#endsWith (; 4 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
   (call $~lib/memory/compare_memory
    (i32.add
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/string/String#endsWith|trampoline (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    (i32.const 536870910)
   )
  )
  (call $~lib/string/String#endsWith
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#indexOf (; 6 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (i32.const 224)
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
    (i32.const 120)
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
     (call $~lib/memory/compare_memory
      (i32.add
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.shl
        (get_local $2)
        (i32.const 1)
       )
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
 (func $~lib/string/String#includes (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ne
   (call $~lib/string/String#indexOf
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
   (i32.const -1)
  )
 )
 (func $~lib/string/String#lastIndexOf (; 8 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
     (i32.const 246)
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
    (i32.const 120)
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
     (call $~lib/memory/compare_memory
      (i32.add
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.shl
        (get_local $3)
        (i32.const 1)
       )
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
 (func $~lib/string/String#lastIndexOf|trampoline (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    (i32.const 2147483647)
   )
  )
  (call $~lib/string/String#lastIndexOf
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $std/string/getString (; 10 ;) (type $i) (result i32)
  (get_global $std/string/str)
 )
 (func $~lib/internal/string/parse<f64> (; 11 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
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
 (func $~lib/string/parseInt (; 12 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (call $~lib/internal/string/parse<f64>
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/string/parseFloat (; 13 ;) (type $iF) (param $0 i32) (result f64)
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
               (i32.const 615)
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
 (func $~lib/allocator/arena/allocate_memory (; 14 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/string/allocate (; 15 ;) (type $ii) (param $0 i32) (result i32)
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
     (i32.const 368)
     (i32.const 25)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/allocate_memory
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
 (func $~lib/memory/copy_memory (; 16 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/move_memory (; 17 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
    (call $~lib/memory/copy_memory
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
 (func $~lib/string/String#concat (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
     (i32.const 88)
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
    (i32.const 120)
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
  (call $~lib/memory/move_memory
   (tee_local $5
    (i32.add
     (tee_local $2
      (call $~lib/internal/string/allocate
       (get_local $2)
      )
     )
     (i32.const 4)
    )
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
  (call $~lib/memory/move_memory
   (i32.add
    (get_local $5)
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
 (func $~lib/string/String.__concat (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 120)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/string/String.__eq (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
   (call $~lib/memory/compare_memory
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/string/String.__ne (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $~lib/string/String.__eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/string/String.__gt (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
   (call $~lib/memory/compare_memory
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (select
      (get_local $2)
      (get_local $3)
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
     (i32.const 1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__gte (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
   (call $~lib/memory/compare_memory
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (select
      (get_local $2)
      (get_local $3)
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
     (i32.const 1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__lt (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
   (call $~lib/memory/compare_memory
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (select
      (get_local $2)
      (get_local $3)
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
     (i32.const 1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__lte (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
   (call $~lib/memory/compare_memory
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (select
      (get_local $2)
      (get_local $3)
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
     (i32.const 1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String#repeat (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
     (i32.const 420)
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
     (i32.const 425)
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
    (call $~lib/memory/move_memory
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
 (func $~lib/internal/string/toUpper16 (; 27 ;) (type $iI) (param $0 i32) (result i64)
  (local $1 i32)
  (block $folding-inner3
   (block $folding-inner2
    (block $folding-inner1
     (block $folding-inner0
      (if
       (i32.lt_u
        (get_local $0)
        (i32.const 256)
       )
       (block
        (if
         (i32.eq
          (get_local $0)
          (i32.const 181)
         )
         (return
          (i64.const 924)
         )
        )
        (if
         (tee_local $1
          (i32.le_u
           (i32.sub
            (get_local $0)
            (i32.const 224)
           )
           (i32.const 30)
          )
         )
         (set_local $1
          (i32.ne
           (get_local $0)
           (i32.const 247)
          )
         )
        )
        (if
         (i32.eqz
          (get_local $1)
         )
         (set_local $1
          (i32.le_u
           (i32.sub
            (get_local $0)
            (i32.const 97)
           )
           (i32.const 25)
          )
         )
        )
        (br_if $folding-inner2
         (get_local $1)
        )
        (return
         (i64.extend_u/i32
          (select
           (i32.const 376)
           (get_local $0)
           (i32.eq
            (get_local $0)
            (i32.const 255)
           )
          )
         )
        )
       )
       (if
        (i32.lt_u
         (get_local $0)
         (i32.const 768)
        )
        (block
         (if
          (i32.eqz
           (tee_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 257)
             )
             (i32.const 46)
            )
           )
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 307)
            )
            (i32.const 4)
           )
          )
         )
         (if
          (i32.eqz
           (get_local $1)
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 331)
            )
            (i32.const 44)
           )
          )
         )
         (if
          (i32.eqz
           (get_local $1)
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 479)
            )
            (i32.const 16)
           )
          )
         )
         (if
          (i32.eqz
           (get_local $1)
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 505)
            )
            (i32.const 38)
           )
          )
         )
         (if
          (i32.eqz
           (get_local $1)
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 547)
            )
            (i32.const 16)
           )
          )
         )
         (if
          (i32.eqz
           (get_local $1)
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 583)
            )
            (i32.const 8)
           )
          )
         )
         (br_if $folding-inner1
          (get_local $1)
         )
         (if
          (i32.eqz
           (tee_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 314)
             )
             (i32.const 14)
            )
           )
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 462)
            )
            (i32.const 14)
           )
          )
         )
         (if
          (i32.eqz
           (get_local $1)
          )
          (set_local $1
           (i32.eq
            (get_local $0)
            (i32.const 572)
           )
          )
         )
         (if
          (i32.eqz
           (get_local $1)
          )
          (set_local $1
           (i32.eq
            (get_local $0)
            (i32.const 578)
           )
          )
         )
         (br_if $folding-inner3
          (get_local $1)
         )
         (if
          (i32.eq
           (get_local $0)
           (i32.const 305)
          )
          (return
           (i64.const 73)
          )
         )
         (br_if $folding-inner0
          (i32.eqz
           (i32.and
            (i32.and
             (i32.sub
              (get_local $0)
              (i32.const 378)
             )
             (i32.sub
              (get_local $0)
              (i32.const 380)
             )
            )
            (i32.sub
             (get_local $0)
             (i32.const 382)
            )
           )
          )
         )
         (if
          (i32.le_u
           (i32.sub
            (get_local $0)
            (i32.const 383)
           )
           (i32.const 275)
          )
          (block $break|0
           (block $case61|0
            (block $case60|0
             (block $case59|0
              (block $case58|0
               (block $case57|0
                (block $case56|0
                 (block $case55|0
                  (block $case54|0
                   (block $case53|0
                    (block $case52|0
                     (block $case51|0
                      (block $case50|0
                       (block $case49|0
                        (block $case48|0
                         (block $case47|0
                          (block $case46|0
                           (block $case45|0
                            (block $case44|0
                             (block $case43|0
                              (block $case42|0
                               (block $case41|0
                                (block $case40|0
                                 (block $case39|0
                                  (block $case38|0
                                   (block $case37|0
                                    (block $case36|0
                                     (block $case35|0
                                      (block $case34|0
                                       (block $case33|0
                                        (block $case32|0
                                         (block $case31|0
                                          (block $case30|0
                                           (block $case29|0
                                            (block $case26|0
                                             (block $case25|0
                                              (block $case10|0
                                               (block $case9|0
                                                (block $case8|0
                                                 (block $case7|0
                                                  (block $case6|0
                                                   (block $case5|0
                                                    (block $case4|0
                                                     (block $case3|0
                                                      (block $case2|0
                                                       (block $case1|0
                                                        (if
                                                         (i32.ne
                                                          (get_local $0)
                                                          (i32.const 383)
                                                         )
                                                         (block
                                                          (br_if $case1|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 384)
                                                           )
                                                          )
                                                          (br_if $case2|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 387)
                                                           )
                                                          )
                                                          (br_if $case3|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 389)
                                                           )
                                                          )
                                                          (br_if $case4|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 392)
                                                           )
                                                          )
                                                          (br_if $case5|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 396)
                                                           )
                                                          )
                                                          (br_if $case6|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 402)
                                                           )
                                                          )
                                                          (br_if $case7|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 405)
                                                           )
                                                          )
                                                          (br_if $case8|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 409)
                                                           )
                                                          )
                                                          (br_if $case9|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 410)
                                                           )
                                                          )
                                                          (br_if $case10|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 414)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 417)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 419)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 421)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 424)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 429)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 432)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 436)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 438)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 441)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 445)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 453)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 456)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 459)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 498)
                                                           )
                                                          )
                                                          (br_if $folding-inner0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 501)
                                                           )
                                                          )
                                                          (br_if $case26|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 447)
                                                           )
                                                          )
                                                          (br_if $case29|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 454)
                                                           )
                                                          )
                                                          (br_if $case29|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 457)
                                                           )
                                                          )
                                                          (br_if $case29|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 460)
                                                           )
                                                          )
                                                          (br_if $case30|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 477)
                                                           )
                                                          )
                                                          (br_if $case31|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 499)
                                                           )
                                                          )
                                                          (br_if $case32|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 575)
                                                           )
                                                          )
                                                          (br_if $case33|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 576)
                                                           )
                                                          )
                                                          (br_if $case34|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 592)
                                                           )
                                                          )
                                                          (br_if $case35|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 593)
                                                           )
                                                          )
                                                          (br_if $case36|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 594)
                                                           )
                                                          )
                                                          (br_if $case37|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 595)
                                                           )
                                                          )
                                                          (br_if $case38|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 596)
                                                           )
                                                          )
                                                          (br_if $case39|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 598)
                                                           )
                                                          )
                                                          (br_if $case40|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 599)
                                                           )
                                                          )
                                                          (br_if $case41|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 601)
                                                           )
                                                          )
                                                          (br_if $case42|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 603)
                                                           )
                                                          )
                                                          (br_if $case43|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 608)
                                                           )
                                                          )
                                                          (br_if $case44|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 611)
                                                           )
                                                          )
                                                          (br_if $case45|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 616)
                                                           )
                                                          )
                                                          (br_if $case46|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 617)
                                                           )
                                                          )
                                                          (br_if $case47|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 619)
                                                           )
                                                          )
                                                          (br_if $case48|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 623)
                                                           )
                                                          )
                                                          (br_if $case49|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 625)
                                                           )
                                                          )
                                                          (br_if $case50|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 626)
                                                           )
                                                          )
                                                          (br_if $case51|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 629)
                                                           )
                                                          )
                                                          (br_if $case52|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 637)
                                                           )
                                                          )
                                                          (br_if $case53|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 640)
                                                           )
                                                          )
                                                          (br_if $case54|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 643)
                                                           )
                                                          )
                                                          (br_if $case55|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 648)
                                                           )
                                                          )
                                                          (br_if $case56|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 649)
                                                           )
                                                          )
                                                          (br_if $case57|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 650)
                                                           )
                                                          )
                                                          (br_if $case58|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 651)
                                                           )
                                                          )
                                                          (br_if $case59|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 652)
                                                           )
                                                          )
                                                          (br_if $case60|0
                                                           (i32.eq
                                                            (get_local $0)
                                                            (i32.const 658)
                                                           )
                                                          )
                                                          (br $break|0)
                                                         )
                                                        )
                                                        (return
                                                         (i64.const 83)
                                                        )
                                                       )
                                                       (return
                                                        (i64.const 579)
                                                       )
                                                      )
                                                      (return
                                                       (i64.const 386)
                                                      )
                                                     )
                                                     (return
                                                      (i64.const 388)
                                                     )
                                                    )
                                                    (return
                                                     (i64.const 391)
                                                    )
                                                   )
                                                   (return
                                                    (i64.const 395)
                                                   )
                                                  )
                                                  (return
                                                   (i64.const 401)
                                                  )
                                                 )
                                                 (return
                                                  (i64.const 502)
                                                 )
                                                )
                                                (return
                                                 (i64.const 408)
                                                )
                                               )
                                               (return
                                                (i64.const 573)
                                               )
                                              )
                                              (return
                                               (i64.const 544)
                                              )
                                             )
                                            )
                                            (return
                                             (i64.const 503)
                                            )
                                           )
                                           (return
                                            (i64.extend_u/i32
                                             (i32.sub
                                              (get_local $0)
                                              (i32.const 2)
                                             )
                                            )
                                           )
                                          )
                                          (return
                                           (i64.const 398)
                                          )
                                         )
                                         (return
                                          (i64.const 497)
                                         )
                                        )
                                        (return
                                         (i64.const 11390)
                                        )
                                       )
                                       (return
                                        (i64.const 11391)
                                       )
                                      )
                                      (return
                                       (i64.const 11375)
                                      )
                                     )
                                     (return
                                      (i64.const 11373)
                                     )
                                    )
                                    (return
                                     (i64.const 11376)
                                    )
                                   )
                                   (return
                                    (i64.const 385)
                                   )
                                  )
                                  (return
                                   (i64.const 390)
                                  )
                                 )
                                 (return
                                  (i64.const 393)
                                 )
                                )
                                (return
                                 (i64.const 394)
                                )
                               )
                               (return
                                (i64.const 399)
                               )
                              )
                              (return
                               (i64.const 400)
                              )
                             )
                             (return
                              (i64.const 403)
                             )
                            )
                            (return
                             (i64.const 404)
                            )
                           )
                           (return
                            (i64.const 407)
                           )
                          )
                          (return
                           (i64.const 406)
                          )
                         )
                         (return
                          (i64.const 11362)
                         )
                        )
                        (return
                         (i64.const 412)
                        )
                       )
                       (return
                        (i64.const 11374)
                       )
                      )
                      (return
                       (i64.const 413)
                      )
                     )
                     (return
                      (i64.const 415)
                     )
                    )
                    (return
                     (i64.const 11364)
                    )
                   )
                   (return
                    (i64.const 422)
                   )
                  )
                  (return
                   (i64.const 425)
                  )
                 )
                 (return
                  (i64.const 430)
                 )
                )
                (return
                 (i64.const 580)
                )
               )
               (return
                (i64.const 433)
               )
              )
              (return
               (i64.const 434)
              )
             )
             (return
              (i64.const 581)
             )
            )
            (return
             (i64.const 439)
            )
           )
          )
         )
        )
        (if
         (i32.lt_u
          (get_local $0)
          (i32.const 1024)
         )
         (block
          (if
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 941)
            )
            (i32.const 2)
           )
           (return
            (i64.extend_u/i32
             (i32.sub
              (get_local $0)
              (i32.const 37)
             )
            )
           )
          )
          (if
           (tee_local $1
            (i32.ne
             (get_local $0)
             (i32.const 962)
            )
           )
           (set_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 945)
             )
             (i32.const 26)
            )
           )
          )
          (br_if $folding-inner2
           (get_local $1)
          )
          (if
           (tee_local $1
            (i32.and
             (get_local $0)
             (i32.const 1)
            )
           )
           (set_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 985)
             )
             (i32.const 22)
            )
           )
          )
          (br_if $folding-inner0
           (get_local $1)
          )
          (block $break|1
           (block $case23|1
            (block $case22|1
             (block $case21|1
              (block $case20|1
               (block $case19|1
                (block $case18|1
                 (block $case17|1
                  (block $case16|1
                   (block $case15|1
                    (block $case14|1
                     (block $case13|1
                      (block $case11|1
                       (block $case10|1
                        (block $case9|1
                         (block $case8|1
                          (block $case5|1
                           (if
                            (i32.ne
                             (get_local $0)
                             (i32.const 837)
                            )
                            (block
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 881)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 883)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 887)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 1016)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 1019)
                              )
                             )
                             (br_if $case8|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 891)
                              )
                             )
                             (br_if $case8|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 892)
                              )
                             )
                             (br_if $case8|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 893)
                              )
                             )
                             (br_if $case9|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 940)
                              )
                             )
                             (br_if $case10|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 962)
                              )
                             )
                             (br_if $case11|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 972)
                              )
                             )
                             (br_if $case13|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 973)
                              )
                             )
                             (br_if $case13|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 974)
                              )
                             )
                             (br_if $case14|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 976)
                              )
                             )
                             (br_if $case15|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 977)
                              )
                             )
                             (br_if $case16|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 981)
                              )
                             )
                             (br_if $case17|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 982)
                              )
                             )
                             (br_if $case18|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 983)
                              )
                             )
                             (br_if $case19|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 1008)
                              )
                             )
                             (br_if $case20|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 1009)
                              )
                             )
                             (br_if $case21|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 1010)
                              )
                             )
                             (br_if $case22|1
                              (i32.eq
                               (get_local $0)
                               (i32.const 1013)
                              )
                             )
                             (br $break|1)
                            )
                           )
                           (return
                            (i64.const 921)
                           )
                          )
                         )
                         (return
                          (i64.extend_u/i32
                           (i32.add
                            (get_local $0)
                            (i32.const 130)
                           )
                          )
                         )
                        )
                        (return
                         (i64.const 902)
                        )
                       )
                       (return
                        (i64.const 931)
                       )
                      )
                      (return
                       (i64.const 908)
                      )
                     )
                     (return
                      (i64.extend_u/i32
                       (i32.sub
                        (get_local $0)
                        (i32.const 63)
                       )
                      )
                     )
                    )
                    (return
                     (i64.const 914)
                    )
                   )
                   (return
                    (i64.const 920)
                   )
                  )
                  (return
                   (i64.const 934)
                  )
                 )
                 (return
                  (i64.const 928)
                 )
                )
                (return
                 (i64.const 975)
                )
               )
               (return
                (i64.const 922)
               )
              )
              (return
               (i64.const 929)
              )
             )
             (return
              (i64.const 1017)
             )
            )
            (return
             (i64.const 917)
            )
           )
          )
         )
         (if
          (i32.lt_u
           (get_local $0)
           (i32.const 1280)
          )
          (block
           (br_if $folding-inner2
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 1072)
             )
             (i32.const 31)
            )
           )
           (if
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 1104)
             )
             (i32.const 15)
            )
            (return
             (i64.extend_u/i32
              (i32.sub
               (get_local $0)
               (i32.const 80)
              )
             )
            )
           )
           (if
            (i32.eqz
             (tee_local $1
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 1121)
               )
               (i32.const 32)
              )
             )
            )
            (set_local $1
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 1163)
              )
              (i32.const 52)
             )
            )
           )
           (if
            (i32.eqz
             (get_local $1)
            )
            (set_local $1
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 1233)
              )
              (i32.const 46)
             )
            )
           )
           (br_if $folding-inner1
            (get_local $1)
           )
           (br_if $folding-inner3
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 1218)
             )
             (i32.const 12)
            )
           )
           (if
            (i32.eq
             (get_local $0)
             (i32.const 1231)
            )
            (return
             (i64.const 1216)
            )
           )
           (br_if $folding-inner0
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 1271)
             )
             (i32.const 2)
            )
           )
          )
          (if
           (i32.lt_u
            (get_local $0)
            (i32.const 1536)
           )
           (block
            (if
             (tee_local $1
              (i32.and
               (get_local $0)
               (i32.const 1)
              )
             )
             (set_local $1
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 1281)
               )
               (i32.const 36)
              )
             )
            )
            (br_if $folding-inner0
             (get_local $1)
            )
            (if
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 1377)
              )
              (i32.const 37)
             )
             (return
              (i64.extend_u/i32
               (i32.sub
                (get_local $0)
                (i32.const 48)
               )
              )
             )
            )
           )
           (if
            (i32.lt_u
             (get_local $0)
             (i32.const 7936)
            )
            (block
             (if
              (i32.eq
               (get_local $0)
               (i32.const 7545)
              )
              (return
               (i64.const 42877)
              )
             )
             (if
              (i32.eq
               (get_local $0)
               (i32.const 7549)
              )
              (return
               (i64.const 11363)
              )
             )
             (if
              (i32.eqz
               (tee_local $1
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 7681)
                 )
                 (i32.const 148)
                )
               )
              )
              (set_local $1
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 7841)
                )
                (i32.const 94)
               )
              )
             )
             (br_if $folding-inner1
              (get_local $1)
             )
             (if
              (i32.eq
               (get_local $0)
               (i32.const 7835)
              )
              (return
               (i64.const 7776)
              )
             )
            )
            (if
             (i32.lt_u
              (get_local $0)
              (i32.const 8192)
             )
             (block
              (if
               (i32.eqz
                (tee_local $1
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 7936)
                  )
                  (i32.const 7)
                 )
                )
               )
               (set_local $1
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 7952)
                 )
                 (i32.const 5)
                )
               )
              )
              (if
               (i32.eqz
                (get_local $1)
               )
               (set_local $1
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 7968)
                 )
                 (i32.const 7)
                )
               )
              )
              (if
               (i32.eqz
                (get_local $1)
               )
               (set_local $1
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 7984)
                 )
                 (i32.const 7)
                )
               )
              )
              (if
               (i32.eqz
                (get_local $1)
               )
               (set_local $1
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 8000)
                 )
                 (i32.const 5)
                )
               )
              )
              (if
               (i32.eqz
                (get_local $1)
               )
               (set_local $1
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 8032)
                 )
                 (i32.const 7)
                )
               )
              )
              (if
               (i32.eqz
                (get_local $1)
               )
               (set_local $1
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 8064)
                 )
                 (i32.const 7)
                )
               )
              )
              (if
               (i32.eqz
                (get_local $1)
               )
               (set_local $1
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 8080)
                 )
                 (i32.const 7)
                )
               )
              )
              (if
               (i32.eqz
                (get_local $1)
               )
               (set_local $1
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 8096)
                 )
                 (i32.const 7)
                )
               )
              )
              (if
               (i32.eqz
                (get_local $1)
               )
               (if
                (tee_local $1
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 8017)
                  )
                  (i32.const 6)
                 )
                )
                (set_local $1
                 (i32.and
                  (get_local $0)
                  (i32.const 1)
                 )
                )
               )
              )
              (if
               (get_local $1)
               (return
                (i64.extend_u/i32
                 (i32.add
                  (get_local $0)
                  (i32.const 8)
                 )
                )
               )
              )
              (if
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 8048)
                )
                (i32.const 131)
               )
               (block $break|2
                (block $case25|2
                 (block $case24|2
                  (block $case23|2
                   (block $case22|2
                    (block $case21|2
                     (block $case20|2
                      (block $case19|2
                       (block $case18|2
                        (block $case17|2
                         (block $case16|2
                          (block $case15|2
                           (block $case14|2
                            (block $case13|2
                             (block $case12|2
                              (block $case11|2
                               (block $case10|2
                                (block $case9|2
                                 (block $case8|2
                                  (block $case7|2
                                   (block $case6|2
                                    (block $case5|2
                                     (block $case4|2
                                      (block $case3|2
                                       (block $case2|2
                                        (block $case1|2
                                         (if
                                          (i32.ne
                                           (get_local $0)
                                           (i32.const 8112)
                                          )
                                          (block
                                           (br_if $case1|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8113)
                                            )
                                           )
                                           (br_if $case2|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8048)
                                            )
                                           )
                                           (br_if $case3|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8049)
                                            )
                                           )
                                           (br_if $case4|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8115)
                                            )
                                           )
                                           (br_if $case5|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8126)
                                            )
                                           )
                                           (br_if $case6|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8050)
                                            )
                                           )
                                           (br_if $case7|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8051)
                                            )
                                           )
                                           (br_if $case8|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8052)
                                            )
                                           )
                                           (br_if $case9|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8053)
                                            )
                                           )
                                           (br_if $case10|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8131)
                                            )
                                           )
                                           (br_if $case11|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8144)
                                            )
                                           )
                                           (br_if $case12|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8145)
                                            )
                                           )
                                           (br_if $case13|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8054)
                                            )
                                           )
                                           (br_if $case14|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8055)
                                            )
                                           )
                                           (br_if $case15|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8160)
                                            )
                                           )
                                           (br_if $case16|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8161)
                                            )
                                           )
                                           (br_if $case17|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8058)
                                            )
                                           )
                                           (br_if $case18|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8059)
                                            )
                                           )
                                           (br_if $case19|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8165)
                                            )
                                           )
                                           (br_if $case20|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8056)
                                            )
                                           )
                                           (br_if $case21|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8057)
                                            )
                                           )
                                           (br_if $case22|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8060)
                                            )
                                           )
                                           (br_if $case23|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8061)
                                            )
                                           )
                                           (br_if $case24|2
                                            (i32.eq
                                             (get_local $0)
                                             (i32.const 8179)
                                            )
                                           )
                                           (br $break|2)
                                          )
                                         )
                                         (return
                                          (i64.const 8120)
                                         )
                                        )
                                        (return
                                         (i64.const 8121)
                                        )
                                       )
                                       (return
                                        (i64.const 8122)
                                       )
                                      )
                                      (return
                                       (i64.const 8123)
                                      )
                                     )
                                     (return
                                      (i64.const 8124)
                                     )
                                    )
                                    (return
                                     (i64.const 921)
                                    )
                                   )
                                   (return
                                    (i64.const 8136)
                                   )
                                  )
                                  (return
                                   (i64.const 8137)
                                  )
                                 )
                                 (return
                                  (i64.const 8138)
                                 )
                                )
                                (return
                                 (i64.const 8139)
                                )
                               )
                               (return
                                (i64.const 8140)
                               )
                              )
                              (return
                               (i64.const 8152)
                              )
                             )
                             (return
                              (i64.const 8153)
                             )
                            )
                            (return
                             (i64.const 8154)
                            )
                           )
                           (return
                            (i64.const 8155)
                           )
                          )
                          (return
                           (i64.const 8168)
                          )
                         )
                         (return
                          (i64.const 8169)
                         )
                        )
                        (return
                         (i64.const 8170)
                        )
                       )
                       (return
                        (i64.const 8171)
                       )
                      )
                      (return
                       (i64.const 8172)
                      )
                     )
                     (return
                      (i64.const 8184)
                     )
                    )
                    (return
                     (i64.const 8185)
                    )
                   )
                   (return
                    (i64.const 8186)
                   )
                  )
                  (return
                   (i64.const 8187)
                  )
                 )
                 (return
                  (i64.const 8188)
                 )
                )
               )
              )
             )
             (if
              (i32.lt_u
               (get_local $0)
               (i32.const 12288)
              )
              (block
               (if
                (i32.eq
                 (get_local $0)
                 (i32.const 8526)
                )
                (return
                 (i64.const 8498)
                )
               )
               (if
                (i32.eq
                 (get_local $0)
                 (i32.const 8580)
                )
                (return
                 (i64.const 8579)
                )
               )
               (if
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 8560)
                 )
                 (i32.const 15)
                )
                (return
                 (i64.extend_u/i32
                  (i32.sub
                   (get_local $0)
                   (i32.const 16)
                  )
                 )
                )
               )
               (if
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 9424)
                 )
                 (i32.const 25)
                )
                (return
                 (i64.extend_u/i32
                  (i32.sub
                   (get_local $0)
                   (i32.const 26)
                  )
                 )
                )
               )
               (if
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 11312)
                 )
                 (i32.const 46)
                )
                (return
                 (i64.extend_u/i32
                  (i32.sub
                   (get_local $0)
                   (i32.const 48)
                  )
                 )
                )
               )
               (if
                (tee_local $1
                 (i32.eqz
                  (i32.and
                   (get_local $0)
                   (i32.const 1)
                  )
                 )
                )
                (set_local $1
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 11368)
                  )
                  (i32.const 4)
                 )
                )
               )
               (if
                (i32.eqz
                 (get_local $1)
                )
                (if
                 (tee_local $1
                  (i32.and
                   (get_local $0)
                   (i32.const 1)
                  )
                 )
                 (set_local $1
                  (i32.le_u
                   (i32.sub
                    (get_local $0)
                    (i32.const 11393)
                   )
                   (i32.const 98)
                  )
                 )
                )
               )
               (if
                (i32.eqz
                 (get_local $1)
                )
                (set_local $1
                 (i32.eqz
                  (i32.and
                   (i32.sub
                    (get_local $0)
                    (i32.const 11379)
                   )
                   (i32.sub
                    (get_local $0)
                    (i32.const 11382)
                   )
                  )
                 )
                )
               )
               (if
                (i32.eqz
                 (get_local $1)
                )
                (set_local $1
                 (i32.eqz
                  (i32.and
                   (i32.sub
                    (get_local $0)
                    (i32.const 11500)
                   )
                   (i32.sub
                    (get_local $0)
                    (i32.const 11502)
                   )
                  )
                 )
                )
               )
               (br_if $folding-inner0
                (get_local $1)
               )
               (if
                (tee_local $1
                 (i32.and
                  (get_local $0)
                  (i32.const 1)
                 )
                )
                (set_local $1
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 11393)
                  )
                  (i32.const 98)
                 )
                )
               )
               (br_if $folding-inner0
                (get_local $1)
               )
               (if
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 11520)
                 )
                 (i32.const 37)
                )
                (return
                 (i64.extend_u/i32
                  (i32.sub
                   (get_local $0)
                   (i32.const 7264)
                  )
                 )
                )
               )
               (block $break|3
                (block $case3|3
                 (block $case2|3
                  (block $case1|3
                   (if
                    (i32.ne
                     (get_local $0)
                     (i32.const 11361)
                    )
                    (block
                     (br_if $case1|3
                      (i32.eq
                       (get_local $0)
                       (i32.const 11365)
                      )
                     )
                     (br_if $case2|3
                      (i32.eq
                       (get_local $0)
                       (i32.const 11366)
                      )
                     )
                     (br $break|3)
                    )
                   )
                   (return
                    (i64.const 11360)
                   )
                  )
                  (return
                   (i64.const 570)
                  )
                 )
                 (return
                  (i64.const 574)
                 )
                )
               )
              )
              (if
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 40960)
                )
                (i32.const 4095)
               )
               (block
                (br_if $folding-inner0
                 (i32.eqz
                  (i32.and
                   (i32.and
                    (i32.sub
                     (get_local $0)
                     (i32.const 42874)
                    )
                    (i32.sub
                     (get_local $0)
                     (i32.const 42876)
                    )
                   )
                   (i32.sub
                    (get_local $0)
                    (i32.const 42892)
                   )
                  )
                 )
                )
                (if
                 (tee_local $1
                  (i32.and
                   (get_local $0)
                   (i32.const 1)
                  )
                 )
                 (block
                  (if
                   (i32.eqz
                    (tee_local $1
                     (i32.le_u
                      (i32.sub
                       (get_local $0)
                       (i32.const 42561)
                      )
                      (i32.const 30)
                     )
                    )
                   )
                   (set_local $1
                    (i32.le_u
                     (i32.sub
                      (get_local $0)
                      (i32.const 42595)
                     )
                     (i32.const 10)
                    )
                   )
                  )
                  (if
                   (i32.eqz
                    (get_local $1)
                   )
                   (set_local $1
                    (i32.le_u
                     (i32.sub
                      (get_local $0)
                      (i32.const 42625)
                     )
                     (i32.const 22)
                    )
                   )
                  )
                  (if
                   (i32.eqz
                    (get_local $1)
                   )
                   (set_local $1
                    (i32.le_u
                     (i32.sub
                      (get_local $0)
                      (i32.const 42787)
                     )
                     (i32.const 12)
                    )
                   )
                  )
                  (if
                   (i32.eqz
                    (get_local $1)
                   )
                   (set_local $1
                    (i32.le_u
                     (i32.sub
                      (get_local $0)
                      (i32.const 42803)
                     )
                     (i32.const 60)
                    )
                   )
                  )
                  (if
                   (i32.eqz
                    (get_local $1)
                   )
                   (set_local $1
                    (i32.le_u
                     (i32.sub
                      (get_local $0)
                      (i32.const 42879)
                     )
                     (i32.const 8)
                    )
                   )
                  )
                 )
                )
                (br_if $folding-inner0
                 (get_local $1)
                )
               )
               (block
                (br_if $folding-inner2
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 65345)
                  )
                  (i32.const 25)
                 )
                )
                (if
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 66600)
                  )
                  (i32.const 39)
                 )
                 (return
                  (i64.extend_u/i32
                   (i32.sub
                    (get_local $0)
                    (i32.const 40)
                   )
                  )
                 )
                )
               )
              )
             )
            )
           )
          )
         )
        )
       )
      )
      (return
       (i64.extend_u/i32
        (get_local $0)
       )
      )
     )
     (return
      (i64.extend_u/i32
       (i32.sub
        (get_local $0)
        (i32.const 1)
       )
      )
     )
    )
    (return
     (i64.extend_u/i32
      (i32.sub
       (get_local $0)
       (i32.and
        (get_local $0)
        (i32.const 1)
       )
      )
     )
    )
   )
   (return
    (i64.extend_u/i32
     (i32.sub
      (get_local $0)
      (i32.const 32)
     )
    )
   )
  )
  (i64.extend_u/i32
   (i32.sub
    (get_local $0)
    (i32.eqz
     (i32.and
      (get_local $0)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/allocator/arena/free_memory (; 28 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/internal/string/reallocate (; 29 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (tee_local $3
    (i32.gt_s
     (get_local $1)
     (i32.const 0)
    )
   )
   (set_local $3
    (i32.le_s
     (get_local $1)
     (i32.const 536870910)
    )
   )
  )
  (if
   (get_local $3)
   (set_local $3
    (i32.ge_s
     (get_local $2)
     (i32.const 0)
    )
   )
  )
  (if
   (get_local $3)
   (set_local $3
    (i32.le_s
     (get_local $2)
     (i32.const 536870910)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 368)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (i32.store
   (tee_local $3
    (call $~lib/allocator/arena/allocate_memory
     (i32.add
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
      (i32.const 4)
     )
    )
   )
   (get_local $1)
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const -1)
   )
   (set_local $2
    (get_local $1)
   )
  )
  (if
   (get_local $2)
   (call $~lib/memory/move_memory
    (i32.add
     (get_local $3)
     (i32.const 4)
    )
    (i32.add
     (get_local $0)
     (i32.const 4)
    )
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
  )
  (call $~lib/allocator/arena/free_memory
   (get_local $0)
  )
  (get_local $3)
 )
 (func $~lib/internal/string/reallocate|trampoline (; 30 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $~argc)
       (i32.const 2)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const -1)
   )
  )
  (call $~lib/internal/string/reallocate
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/string/String#toUpperCase (; 31 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 454)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (tee_local $5
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (i32.const 8)
   )
  )
  (set_local $2
   (call $~lib/internal/string/allocate
    (get_local $5)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $3)
      (get_local $5)
     )
    )
    (set_local $1
     (if (result i32)
      (i64.gt_u
       (tee_local $4
        (if (result i64)
         (i32.and
          (tee_local $6
           (i32.load16_u offset=4
            (i32.add
             (get_local $0)
             (i32.shl
              (get_local $3)
              (i32.const 1)
             )
            )
           )
          )
          (i32.const -128)
         )
         (call $~lib/internal/string/toUpper16
          (get_local $6)
         )
         (block (result i64)
          (set_local $8
           (i32.le_u
            (tee_local $7
             (i32.sub
              (get_local $6)
              (i32.const 97)
             )
            )
            (i32.const 25)
           )
          )
          (i64.extend_u/i32
           (select
            (i32.add
             (get_local $7)
             (i32.const 65)
            )
            (get_local $6)
            (get_local $8)
           )
          )
         )
        )
       )
       (i64.const 65535)
      )
      (block (result i32)
       (if
        (i32.eq
         (get_local $3)
         (get_local $1)
        )
        (set_local $2
         (call $~lib/internal/string/reallocate
          (get_local $2)
          (get_local $5)
          (get_local $3)
         )
        )
       )
       (i64.store32 offset=4
        (i32.add
         (get_local $2)
         (i32.shl
          (get_local $1)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
      (if (result i32)
       (i64.gt_u
        (get_local $4)
        (i64.const 4294967295)
       )
       (block (result i32)
        (if
         (i32.eq
          (get_local $3)
          (get_local $1)
         )
         (set_local $2
          (call $~lib/internal/string/reallocate
           (get_local $2)
           (i32.shl
            (get_local $5)
            (i32.const 1)
           )
           (i32.shl
            (get_local $3)
            (i32.const 1)
           )
          )
         )
        )
        (i64.store32 offset=4
         (i32.add
          (get_local $2)
          (i32.shl
           (get_local $1)
           (i32.const 2)
          )
         )
         (get_local $4)
        )
        (i64.store16 offset=4
         (i32.add
          (get_local $2)
          (i32.shl
           (i32.add
            (get_local $1)
            (i32.const 2)
           )
           (i32.const 1)
          )
         )
         (get_local $4)
        )
        (i32.add
         (get_local $1)
         (i32.const 3)
        )
       )
       (block (result i32)
        (i64.store16 offset=4
         (i32.add
          (get_local $2)
          (i32.shl
           (get_local $1)
           (i32.const 1)
          )
         )
         (get_local $4)
        )
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (i32.ne
    (get_local $3)
    (get_local $1)
   )
   (block
    (set_global $~argc
     (i32.const 2)
    )
    (return
     (call $~lib/internal/string/reallocate|trampoline
      (get_local $2)
      (get_local $1)
      (i32.const 0)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/string/toLower16 (; 32 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (block $folding-inner3
   (block $folding-inner2
    (block $folding-inner1
     (block $folding-inner0
      (if
       (i32.lt_u
        (get_local $0)
        (i32.const 256)
       )
       (block
        (if
         (i32.eqz
          (tee_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 65)
            )
            (i32.const 25)
           )
          )
         )
         (set_local $1
          (i32.le_u
           (i32.sub
            (get_local $0)
            (i32.const 192)
           )
           (i32.const 22)
          )
         )
        )
        (if
         (i32.eqz
          (get_local $1)
         )
         (set_local $1
          (i32.le_u
           (i32.sub
            (get_local $0)
            (i32.const 216)
           )
           (i32.const 6)
          )
         )
        )
        (br_if $folding-inner3
         (get_local $1)
        )
        (return
         (get_local $0)
        )
       )
       (if
        (i32.lt_u
         (get_local $0)
         (i32.const 768)
        )
        (block
         (if
          (i32.eqz
           (tee_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 256)
             )
             (i32.const 46)
            )
           )
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 306)
            )
            (i32.const 4)
           )
          )
         )
         (if
          (i32.eqz
           (get_local $1)
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 330)
            )
            (i32.const 44)
           )
          )
         )
         (if
          (i32.eqz
           (get_local $1)
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 478)
            )
            (i32.const 16)
           )
          )
         )
         (if
          (i32.eqz
           (get_local $1)
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 504)
            )
            (i32.const 38)
           )
          )
         )
         (if
          (i32.eqz
           (get_local $1)
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 546)
            )
            (i32.const 16)
           )
          )
         )
         (br_if $folding-inner2
          (get_local $1)
         )
         (if
          (i32.eq
           (get_local $0)
           (i32.const 304)
          )
          (return
           (i32.const 105)
          )
         )
         (if
          (i32.eqz
           (tee_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 313)
             )
             (i32.const 14)
            )
           )
          )
          (set_local $1
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 461)
            )
            (i32.const 14)
           )
          )
         )
         (br_if $folding-inner1
          (get_local $1)
         )
         (if
          (i32.le_u
           (i32.sub
            (get_local $0)
            (i32.const 376)
           )
           (i32.const 127)
          )
          (block $break|0
           (block $case59|0
            (block $case58|0
             (block $case57|0
              (block $case56|0
               (block $case52|0
                (block $case51|0
                 (block $case50|0
                  (block $case49|0
                   (block $case48|0
                    (block $case47|0
                     (block $case46|0
                      (block $case45|0
                       (block $case44|0
                        (block $case43|0
                         (block $case42|0
                          (block $case41|0
                           (block $case40|0
                            (block $case39|0
                             (block $case38|0
                              (block $case37|0
                               (block $case36|0
                                (block $case35|0
                                 (block $case34|0
                                  (block $case33|0
                                   (block $case32|0
                                    (if
                                     (i32.ne
                                      (get_local $0)
                                      (i32.const 376)
                                     )
                                     (block
                                      (block $tablify|0
                                       (br_table $case32|0 $tablify|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $tablify|0 $tablify|0 $case33|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case34|0 $case32|0 $tablify|0 $case35|0 $case36|0 $case32|0 $tablify|0 $tablify|0 $case37|0 $case38|0 $case39|0 $case32|0 $tablify|0 $case40|0 $case41|0 $tablify|0 $case42|0 $case43|0 $case32|0 $tablify|0 $tablify|0 $tablify|0 $case44|0 $case45|0 $tablify|0 $case46|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case47|0 $case32|0 $tablify|0 $case48|0 $tablify|0 $tablify|0 $case32|0 $tablify|0 $case49|0 $case32|0 $tablify|0 $case50|0 $case51|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case52|0 $case32|0 $tablify|0 $tablify|0 $tablify|0 $case32|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $case56|0 $case32|0 $tablify|0 $case56|0 $case32|0 $tablify|0 $case56|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $tablify|0 $case56|0 $case32|0 $tablify|0 $case32|0 $tablify|0 $case57|0 $case58|0 $tablify|0
                                        (i32.sub
                                         (get_local $0)
                                         (i32.const 377)
                                        )
                                       )
                                      )
                                      (br $break|0)
                                     )
                                    )
                                    (return
                                     (i32.const 255)
                                    )
                                   )
                                   (br $folding-inner0)
                                  )
                                  (return
                                   (i32.const 595)
                                  )
                                 )
                                 (return
                                  (i32.const 596)
                                 )
                                )
                                (return
                                 (i32.const 598)
                                )
                               )
                               (return
                                (i32.const 599)
                               )
                              )
                              (return
                               (i32.const 477)
                              )
                             )
                             (return
                              (i32.const 601)
                             )
                            )
                            (return
                             (i32.const 603)
                            )
                           )
                           (return
                            (i32.const 608)
                           )
                          )
                          (return
                           (i32.const 611)
                          )
                         )
                         (return
                          (i32.const 617)
                         )
                        )
                        (return
                         (i32.const 616)
                        )
                       )
                       (return
                        (i32.const 623)
                       )
                      )
                      (return
                       (i32.const 626)
                      )
                     )
                     (return
                      (i32.const 629)
                     )
                    )
                    (return
                     (i32.const 640)
                    )
                   )
                   (return
                    (i32.const 643)
                   )
                  )
                  (return
                   (i32.const 648)
                  )
                 )
                 (return
                  (i32.const 650)
                 )
                )
                (return
                 (i32.const 651)
                )
               )
               (return
                (i32.const 658)
               )
              )
              (return
               (i32.add
                (get_local $0)
                (i32.const 2)
               )
              )
             )
             (return
              (i32.const 405)
             )
            )
            (return
             (i32.const 447)
            )
           )
          )
          (if
           (i32.eq
            (get_local $0)
            (i32.const 544)
           )
           (return
            (i32.const 414)
           )
           (if
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 570)
             )
             (i32.const 20)
            )
            (block $break|1
             (block $case13|1
              (block $case12|1
               (block $case11|1
                (block $case10|1
                 (block $case9|1
                  (block $case8|1
                   (block $case7|1
                    (if
                     (i32.ne
                      (get_local $0)
                      (i32.const 570)
                     )
                     (block
                      (block $tablify|00
                       (br_table $case7|1 $tablify|00 $case8|1 $case9|1 $tablify|00 $tablify|00 $case7|1 $tablify|00 $case10|1 $case11|1 $case12|1 $case7|1 $tablify|00 $case7|1 $tablify|00 $case7|1 $tablify|00 $case7|1 $tablify|00 $case7|1 $tablify|00
                        (i32.sub
                         (get_local $0)
                         (i32.const 571)
                        )
                       )
                      )
                      (br $break|1)
                     )
                    )
                    (return
                     (i32.const 11365)
                    )
                   )
                   (br $folding-inner0)
                  )
                  (return
                   (i32.const 410)
                  )
                 )
                 (return
                  (i32.const 11366)
                 )
                )
                (return
                 (i32.const 384)
                )
               )
               (return
                (i32.const 649)
               )
              )
              (return
               (i32.const 652)
              )
             )
            )
           )
          )
         )
        )
        (if
         (i32.lt_u
          (get_local $0)
          (i32.const 1024)
         )
         (block
          (br_if $folding-inner0
           (i32.eqz
            (i32.and
             (i32.and
              (i32.sub
               (get_local $0)
               (i32.const 880)
              )
              (i32.sub
               (get_local $0)
               (i32.const 882)
              )
             )
             (i32.sub
              (get_local $0)
              (i32.const 886)
             )
            )
           )
          )
          (if
           (tee_local $1
            (i32.ne
             (get_local $0)
             (i32.const 930)
            )
           )
           (set_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 913)
             )
             (i32.const 26)
            )
           )
          )
          (br_if $folding-inner3
           (get_local $1)
          )
          (if
           (tee_local $1
            (i32.eqz
             (i32.and
              (get_local $0)
              (i32.const 1)
             )
            )
           )
           (set_local $1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 984)
             )
             (i32.const 22)
            )
           )
          )
          (br_if $folding-inner0
           (get_local $1)
          )
          (if
           (i32.le_u
            (i32.sub
             (get_local $0)
             (i32.const 902)
            )
            (i32.const 121)
           )
           (block $break|2
            (block $case15|2
             (block $case14|2
              (block $case13|2
               (block $case12|2
                (block $case11|2
                 (block $case10|2
                  (block $case9|2
                   (block $case8|2
                    (block $case7|2
                     (block $case6|2
                      (block $case5|2
                       (block $case4|2
                        (block $case3|2
                         (block $case2|2
                          (block $case1|2
                           (if
                            (i32.ne
                             (get_local $0)
                             (i32.const 902)
                            )
                            (block
                             (br_if $case1|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 904)
                              )
                             )
                             (br_if $case2|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 905)
                              )
                             )
                             (br_if $case3|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 906)
                              )
                             )
                             (br_if $case4|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 908)
                              )
                             )
                             (br_if $case5|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 910)
                              )
                             )
                             (br_if $case6|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 911)
                              )
                             )
                             (br_if $case7|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 975)
                              )
                             )
                             (br_if $case8|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 1012)
                              )
                             )
                             (br_if $case9|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 1015)
                              )
                             )
                             (br_if $case10|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 1017)
                              )
                             )
                             (br_if $case11|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 1018)
                              )
                             )
                             (br_if $case12|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 1021)
                              )
                             )
                             (br_if $case13|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 1022)
                              )
                             )
                             (br_if $case14|2
                              (i32.eq
                               (get_local $0)
                               (i32.const 1023)
                              )
                             )
                             (br $break|2)
                            )
                           )
                           (return
                            (i32.const 940)
                           )
                          )
                          (return
                           (i32.const 941)
                          )
                         )
                         (return
                          (i32.const 942)
                         )
                        )
                        (return
                         (i32.const 943)
                        )
                       )
                       (return
                        (i32.const 972)
                       )
                      )
                      (return
                       (i32.const 973)
                      )
                     )
                     (return
                      (i32.const 974)
                     )
                    )
                    (return
                     (i32.const 983)
                    )
                   )
                   (return
                    (i32.const 952)
                   )
                  )
                  (return
                   (i32.const 1016)
                  )
                 )
                 (return
                  (i32.const 1010)
                 )
                )
                (return
                 (i32.const 1019)
                )
               )
               (return
                (i32.const 891)
               )
              )
              (return
               (i32.const 892)
              )
             )
             (return
              (i32.const 893)
             )
            )
           )
          )
         )
         (if
          (i32.lt_u
           (get_local $0)
           (i32.const 1280)
          )
          (block
           (if
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 1024)
             )
             (i32.const 15)
            )
            (return
             (i32.add
              (get_local $0)
              (i32.const 80)
             )
            )
           )
           (br_if $folding-inner3
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 1040)
             )
             (i32.const 31)
            )
           )
           (if
            (i32.eqz
             (tee_local $1
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 1120)
               )
               (i32.const 32)
              )
             )
            )
            (set_local $1
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 1162)
              )
              (i32.const 52)
             )
            )
           )
           (if
            (i32.eqz
             (get_local $1)
            )
            (set_local $1
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 1232)
              )
              (i32.const 46)
             )
            )
           )
           (br_if $folding-inner2
            (get_local $1)
           )
           (if
            (i32.eq
             (get_local $0)
             (i32.const 1216)
            )
            (return
             (i32.const 1231)
            )
           )
           (br_if $folding-inner1
            (i32.le_u
             (i32.sub
              (get_local $0)
              (i32.const 1217)
             )
             (i32.const 12)
            )
           )
          )
          (if
           (i32.lt_u
            (get_local $0)
            (i32.const 7936)
           )
           (block
            (if
             (i32.eqz
              (tee_local $1
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 1280)
                )
                (i32.const 14)
               )
              )
             )
             (set_local $1
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 1296)
               )
               (i32.const 20)
              )
             )
            )
            (if
             (i32.eqz
              (get_local $1)
             )
             (set_local $1
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 7680)
               )
               (i32.const 148)
              )
             )
            )
            (if
             (i32.eqz
              (get_local $1)
             )
             (set_local $1
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 7840)
               )
               (i32.const 88)
              )
             )
            )
            (br_if $folding-inner2
             (get_local $1)
            )
            (if
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 1329)
              )
              (i32.const 37)
             )
             (return
              (i32.add
               (get_local $0)
               (i32.const 48)
              )
             )
            )
            (if
             (i32.le_u
              (i32.sub
               (get_local $0)
               (i32.const 4256)
              )
              (i32.const 37)
             )
             (return
              (i32.add
               (get_local $0)
               (i32.const 7264)
              )
             )
            )
            (if
             (i32.eq
              (get_local $0)
              (i32.const 7838)
             )
             (return
              (i32.const 223)
             )
            )
            (if
             (tee_local $1
              (i32.eqz
               (i32.and
                (get_local $0)
                (i32.const 1)
               )
              )
             )
             (set_local $1
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 7930)
               )
               (i32.const 4)
              )
             )
            )
            (br_if $folding-inner0
             (get_local $1)
            )
           )
           (if
            (i32.lt_u
             (get_local $0)
             (i32.const 8192)
            )
            (block
             (if
              (i32.eqz
               (tee_local $1
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 7944)
                 )
                 (i32.const 7)
                )
               )
              )
              (set_local $1
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 7960)
                )
                (i32.const 5)
               )
              )
             )
             (if
              (i32.eqz
               (get_local $1)
              )
              (set_local $1
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 7976)
                )
                (i32.const 7)
               )
              )
             )
             (if
              (i32.eqz
               (get_local $1)
              )
              (set_local $1
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 7992)
                )
                (i32.const 7)
               )
              )
             )
             (if
              (i32.eqz
               (get_local $1)
              )
              (set_local $1
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 8008)
                )
                (i32.const 5)
               )
              )
             )
             (if
              (i32.eqz
               (get_local $1)
              )
              (set_local $1
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 8040)
                )
                (i32.const 7)
               )
              )
             )
             (if
              (i32.eqz
               (get_local $1)
              )
              (set_local $1
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 8072)
                )
                (i32.const 7)
               )
              )
             )
             (if
              (i32.eqz
               (get_local $1)
              )
              (set_local $1
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 8088)
                )
                (i32.const 7)
               )
              )
             )
             (if
              (i32.eqz
               (get_local $1)
              )
              (set_local $1
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 8104)
                )
                (i32.const 7)
               )
              )
             )
             (if
              (get_local $1)
              (return
               (i32.sub
                (get_local $0)
                (i32.const 8)
               )
              )
             )
             (if
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 8025)
               )
               (i32.const 6)
              )
              (return
               (select
                (i32.sub
                 (get_local $0)
                 (i32.const 8)
                )
                (get_local $0)
                (i32.and
                 (get_local $0)
                 (i32.const 1)
                )
               )
              )
             )
             (if
              (i32.le_u
               (i32.sub
                (get_local $0)
                (i32.const 8120)
               )
               (i32.const 68)
              )
              (block $break|3
               (block $case24|3
                (block $case23|3
                 (block $case22|3
                  (block $case20|3
                   (block $case18|3
                    (block $case17|3
                     (block $case15|3
                      (block $case13|3
                       (block $case12|3
                        (block $case8|3
                         (block $case7|3
                          (block $case5|3
                           (br_if $case5|3
                            (i32.eq
                             (get_local $0)
                             (i32.const 8120)
                            )
                           )
                           (block $tablify|01
                            (br_table $case5|3 $case7|3 $case7|3 $case8|3 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $case12|3 $case12|3 $case12|3 $case12|3 $case13|3 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $case5|3 $case5|3 $case15|3 $case15|3 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $case5|3 $case5|3 $case17|3 $case17|3 $case18|3 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $tablify|01 $case20|3 $case20|3 $case22|3 $case22|3 $case23|3 $tablify|01
                             (i32.sub
                              (get_local $0)
                              (i32.const 8121)
                             )
                            )
                           )
                           (br $break|3)
                          )
                          (return
                           (i32.sub
                            (get_local $0)
                            (i32.const 8)
                           )
                          )
                         )
                         (return
                          (i32.sub
                           (get_local $0)
                           (i32.const 74)
                          )
                         )
                        )
                        (return
                         (i32.const 8115)
                        )
                       )
                       (return
                        (i32.sub
                         (get_local $0)
                         (i32.const 86)
                        )
                       )
                      )
                      (return
                       (i32.const 8131)
                      )
                     )
                     (return
                      (i32.sub
                       (get_local $0)
                       (i32.const 100)
                      )
                     )
                    )
                    (return
                     (i32.sub
                      (get_local $0)
                      (i32.const 112)
                     )
                    )
                   )
                   (return
                    (i32.const 8165)
                   )
                  )
                  (return
                   (i32.sub
                    (get_local $0)
                    (i32.const 128)
                   )
                  )
                 )
                 (return
                  (i32.sub
                   (get_local $0)
                   (i32.const 126)
                  )
                 )
                )
                (return
                 (i32.const 8179)
                )
               )
              )
             )
            )
            (if
             (i32.lt_u
              (get_local $0)
              (i32.const 11264)
             )
             (block
              (if
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 8544)
                )
                (i32.const 15)
               )
               (return
                (i32.add
                 (get_local $0)
                 (i32.const 16)
                )
               )
              )
              (if
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 9398)
                )
                (i32.const 25)
               )
               (return
                (i32.add
                 (get_local $0)
                 (i32.const 26)
                )
               )
              )
              (block $break|4
               (block $case5|4
                (block $case4|4
                 (block $case3|4
                  (block $case2|4
                   (block $case1|4
                    (if
                     (i32.ne
                      (get_local $0)
                      (i32.const 8486)
                     )
                     (block
                      (br_if $case1|4
                       (i32.eq
                        (get_local $0)
                        (i32.const 8490)
                       )
                      )
                      (br_if $case2|4
                       (i32.eq
                        (get_local $0)
                        (i32.const 8491)
                       )
                      )
                      (br_if $case3|4
                       (i32.eq
                        (get_local $0)
                        (i32.const 8498)
                       )
                      )
                      (br_if $case4|4
                       (i32.eq
                        (get_local $0)
                        (i32.const 8579)
                       )
                      )
                      (br $break|4)
                     )
                    )
                    (return
                     (i32.const 969)
                    )
                   )
                   (return
                    (i32.const 107)
                   )
                  )
                  (return
                   (i32.const 229)
                  )
                 )
                 (return
                  (i32.const 8526)
                 )
                )
                (return
                 (i32.const 8580)
                )
               )
              )
             )
             (if
              (i32.lt_u
               (get_local $0)
               (i32.const 11520)
              )
              (block
               (if
                (i32.le_u
                 (i32.sub
                  (get_local $0)
                  (i32.const 11264)
                 )
                 (i32.const 46)
                )
                (return
                 (i32.add
                  (get_local $0)
                  (i32.const 48)
                 )
                )
               )
               (if
                (tee_local $1
                 (i32.eqz
                  (i32.and
                   (get_local $0)
                   (i32.const 1)
                  )
                 )
                )
                (set_local $1
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 11392)
                  )
                  (i32.const 98)
                 )
                )
               )
               (br_if $folding-inner0
                (get_local $1)
               )
               (block $break|5
                (block $case17|5
                 (block $case16|5
                  (block $case15|5
                   (block $case14|5
                    (block $case13|5
                     (block $case12|5
                      (block $case11|5
                       (block $case10|5
                        (block $case3|5
                         (block $case2|5
                          (block $case1|5
                           (if
                            (i32.ne
                             (get_local $0)
                             (i32.const 11360)
                            )
                            (block
                             (br_if $case1|5
                              (i32.eq
                               (get_local $0)
                               (i32.const 11362)
                              )
                             )
                             (br_if $case2|5
                              (i32.eq
                               (get_local $0)
                               (i32.const 11363)
                              )
                             )
                             (br_if $case3|5
                              (i32.eq
                               (get_local $0)
                               (i32.const 11364)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 11367)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 11369)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 11371)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 11378)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 11381)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 11499)
                              )
                             )
                             (br_if $folding-inner0
                              (i32.eq
                               (get_local $0)
                               (i32.const 11501)
                              )
                             )
                             (br_if $case11|5
                              (i32.eq
                               (get_local $0)
                               (i32.const 11373)
                              )
                             )
                             (br_if $case12|5
                              (i32.eq
                               (get_local $0)
                               (i32.const 11374)
                              )
                             )
                             (br_if $case13|5
                              (i32.eq
                               (get_local $0)
                               (i32.const 11375)
                              )
                             )
                             (br_if $case14|5
                              (i32.eq
                               (get_local $0)
                               (i32.const 11376)
                              )
                             )
                             (br_if $case15|5
                              (i32.eq
                               (get_local $0)
                               (i32.const 11390)
                              )
                             )
                             (br_if $case16|5
                              (i32.eq
                               (get_local $0)
                               (i32.const 11391)
                              )
                             )
                             (br $break|5)
                            )
                           )
                           (return
                            (i32.const 11361)
                           )
                          )
                          (return
                           (i32.const 619)
                          )
                         )
                         (return
                          (i32.const 7549)
                         )
                        )
                        (return
                         (i32.const 637)
                        )
                       )
                      )
                      (return
                       (i32.const 593)
                      )
                     )
                     (return
                      (i32.const 625)
                     )
                    )
                    (return
                     (i32.const 592)
                    )
                   )
                   (return
                    (i32.const 594)
                   )
                  )
                  (return
                   (i32.const 575)
                  )
                 )
                 (return
                  (i32.const 576)
                 )
                )
               )
              )
              (if
               (i32.le_u
                (i32.sub
                 (get_local $0)
                 (i32.const 42496)
                )
                (i32.const 511)
               )
               (block
                (if
                 (i32.eqz
                  (tee_local $1
                   (i32.le_u
                    (i32.sub
                     (get_local $0)
                     (i32.const 42560)
                    )
                    (i32.const 30)
                   )
                  )
                 )
                 (set_local $1
                  (i32.le_u
                   (i32.sub
                    (get_local $0)
                    (i32.const 42594)
                   )
                   (i32.const 10)
                  )
                 )
                )
                (if
                 (i32.eqz
                  (get_local $1)
                 )
                 (set_local $1
                  (i32.le_u
                   (i32.sub
                    (get_local $0)
                    (i32.const 42624)
                   )
                   (i32.const 22)
                  )
                 )
                )
                (if
                 (i32.eqz
                  (get_local $1)
                 )
                 (set_local $1
                  (i32.le_u
                   (i32.sub
                    (get_local $0)
                    (i32.const 42786)
                   )
                   (i32.const 12)
                  )
                 )
                )
                (if
                 (i32.eqz
                  (get_local $1)
                 )
                 (set_local $1
                  (i32.le_u
                   (i32.sub
                    (get_local $0)
                    (i32.const 42802)
                   )
                   (i32.const 60)
                  )
                 )
                )
                (if
                 (i32.eqz
                  (get_local $1)
                 )
                 (set_local $1
                  (i32.le_u
                   (i32.sub
                    (get_local $0)
                    (i32.const 42879)
                   )
                   (i32.const 7)
                  )
                 )
                )
                (br_if $folding-inner2
                 (get_local $1)
                )
                (block $break|6
                 (block $case5|6
                  (block $case4|6
                   (block $case3|6
                    (br_if $folding-inner0
                     (i32.eq
                      (get_local $0)
                      (i32.const 42873)
                     )
                    )
                    (br_if $folding-inner0
                     (i32.eq
                      (get_local $0)
                      (i32.const 42875)
                     )
                    )
                    (br_if $folding-inner0
                     (i32.eq
                      (get_local $0)
                      (i32.const 42878)
                     )
                    )
                    (br_if $folding-inner0
                     (i32.eq
                      (get_local $0)
                      (i32.const 42891)
                     )
                    )
                    (br_if $case4|6
                     (i32.eq
                      (get_local $0)
                      (i32.const 42877)
                     )
                    )
                    (br $break|6)
                   )
                  )
                  (return
                   (i32.const 7545)
                  )
                 )
                )
               )
               (block
                (br_if $folding-inner3
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 65313)
                  )
                  (i32.const 25)
                 )
                )
                (if
                 (i32.le_u
                  (i32.sub
                   (get_local $0)
                   (i32.const 66560)
                  )
                  (i32.const 39)
                 )
                 (return
                  (i32.add
                   (get_local $0)
                   (i32.const 40)
                  )
                 )
                )
               )
              )
             )
            )
           )
          )
         )
        )
       )
      )
      (return
       (get_local $0)
      )
     )
     (return
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (return
     (i32.add
      (get_local $0)
      (i32.and
       (get_local $0)
       (i32.const 1)
      )
     )
    )
   )
   (return
    (i32.add
     (get_local $0)
     (i32.eqz
      (i32.and
       (get_local $0)
       (i32.const 1)
      )
     )
    )
   )
  )
  (i32.add
   (get_local $0)
   (i32.const 32)
  )
 )
 (func $~lib/string/String#toLowerCase (; 33 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 80)
     (i32.const 481)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (tee_local $5
     (i32.load
      (get_local $0)
     )
    )
   )
   (return
    (i32.const 8)
   )
  )
  (set_local $3
   (call $~lib/internal/string/allocate
    (get_local $5)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $5)
     )
    )
    (set_local $1
     (if (result i32)
      (i32.gt_u
       (tee_local $4
        (if (result i32)
         (i32.and
          (tee_local $4
           (i32.load16_u offset=4
            (i32.add
             (get_local $0)
             (i32.shl
              (get_local $2)
              (i32.const 1)
             )
            )
           )
          )
          (i32.const -128)
         )
         (call $~lib/internal/string/toLower16
          (get_local $4)
         )
         (block (result i32)
          (set_local $7
           (i32.le_u
            (tee_local $6
             (i32.sub
              (get_local $4)
              (i32.const 65)
             )
            )
            (i32.const 25)
           )
          )
          (select
           (i32.add
            (get_local $6)
            (i32.const 97)
           )
           (get_local $4)
           (get_local $7)
          )
         )
        )
       )
       (i32.const 65535)
      )
      (block (result i32)
       (if
        (i32.eq
         (get_local $2)
         (get_local $1)
        )
        (set_local $3
         (call $~lib/internal/string/reallocate
          (get_local $3)
          (get_local $5)
          (get_local $2)
         )
        )
       )
       (i32.store offset=4
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $1)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
      (block (result i32)
       (i32.store16 offset=4
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $1)
          (i32.const 1)
         )
        )
        (get_local $4)
       )
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (i32.ne
    (get_local $2)
    (get_local $1)
   )
   (block
    (set_global $~argc
     (i32.const 2)
    )
    (return
     (call $~lib/internal/string/reallocate|trampoline
      (get_local $3)
      (get_local $1)
      (i32.const 0)
     )
    )
   )
  )
  (get_local $3)
 )
 (func $~lib/internal/itoa/decimalCountU32 (; 34 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $2
   (i32.load offset=8
    (i32.add
     (i32.load
      (i32.const 2336)
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
 (func $~lib/internal/itoa/utoa32_lut (; 35 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (i32.const 2408)
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
 (func $~lib/internal/itoa/itoa32 (; 36 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 204)
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
 (func $~lib/internal/itoa/utoa32 (; 37 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 204)
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
 (func $~lib/internal/itoa/decimalCountU64 (; 38 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i64)
  (set_local $2
   (i64.load32_u offset=8
    (i32.add
     (i32.load
      (i32.const 3184)
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
 (func $~lib/internal/itoa/utoa64_lut (; 39 ;) (type $iIiv) (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (i32.load
    (i32.const 3256)
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
 (func $~lib/internal/itoa/utoa64 (; 40 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i64.eqz
    (get_local $0)
   )
   (return
    (i32.const 204)
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
 (func $~lib/internal/itoa/itoa64 (; 41 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i64.eqz
    (get_local $0)
   )
   (return
    (i32.const 204)
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
 (func $start (; 42 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.const -8)
   )
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
     (i32.const 13)
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
     (i32.const 15)
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
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String#startsWith
     (get_global $std/string/str)
     (i32.const 112)
     (i32.const 0)
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
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.eqz
    (call $~lib/string/String#endsWith|trampoline
     (get_global $std/string/str)
     (i32.const 132)
     (i32.const 0)
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
    (call $~lib/string/String#includes
     (get_global $std/string/str)
     (i32.const 148)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 19)
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
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#indexOf
     (i32.const 8)
     (i32.const 112)
     (i32.const 0)
    )
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 22)
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
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#indexOf
     (get_global $std/string/str)
     (i32.const 160)
     (i32.const 0)
    )
    (i32.const 2)
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
  (if
   (i32.ne
    (call $~lib/string/String#indexOf
     (get_global $std/string/str)
     (i32.const 168)
     (i32.const 0)
    )
    (i32.const -1)
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
   (i32.ne
    (call $~lib/string/String#indexOf
     (get_global $std/string/str)
     (i32.const 160)
     (i32.const 2)
    )
    (i32.const 2)
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
  (if
   (i32.ne
    (call $~lib/string/String#indexOf
     (get_global $std/string/str)
     (i32.const 160)
     (i32.const 3)
    )
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 27)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#indexOf
     (get_global $std/string/str)
     (i32.const 176)
     (i32.const -1)
    )
    (i32.const 2)
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
   (call $~lib/string/String#lastIndexOf|trampoline
    (i32.const 8)
    (i32.const 8)
    (i32.const 0)
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
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf|trampoline
     (i32.const 8)
     (i32.const 112)
     (i32.const 0)
    )
    (i32.const -1)
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
   (i32.ne
    (call $~lib/string/String#lastIndexOf|trampoline
     (get_global $std/string/str)
     (i32.const 160)
     (i32.const 0)
    )
    (i32.const 2)
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
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf|trampoline
     (get_global $std/string/str)
     (i32.const 168)
     (i32.const 0)
    )
    (i32.const -1)
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
  (set_global $~argc
   (i32.const 1)
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf|trampoline
     (get_global $std/string/str)
     (i32.const 188)
     (i32.const 0)
    )
    (i32.const 15)
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
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf
     (get_global $std/string/str)
     (i32.const 160)
     (i32.const 2)
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 36)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf
     (get_global $std/string/str)
     (i32.const 160)
     (i32.const 3)
    )
    (i32.const 2)
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
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf
     (get_global $std/string/str)
     (i32.const 176)
     (i32.const -1)
    )
    (i32.const -1)
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
  (if
   (i32.ne
    (call $~lib/string/String#lastIndexOf
     (get_global $std/string/str)
     (i32.const 196)
     (i32.const 0)
    )
    (i32.const -1)
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
   (call $~lib/string/String#lastIndexOf
    (get_global $std/string/str)
    (i32.const 112)
    (i32.const 0)
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
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 204)
     (i32.const 0)
    )
    (f64.const 0)
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
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 212)
     (i32.const 0)
    )
    (f64.const 1)
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
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 220)
     (i32.const 0)
    )
    (f64.const 5)
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
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 236)
     (i32.const 0)
    )
    (f64.const 455)
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
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 252)
     (i32.const 0)
    )
    (f64.const 3855)
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
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 268)
     (i32.const 0)
    )
    (f64.const 3855)
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
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 284)
     (i32.const 0)
    )
    (f64.const 11)
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
   (f64.ne
    (call $~lib/string/parseInt
     (i32.const 296)
     (i32.const 0)
    )
    (f64.const 1)
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
  (if
   (f64.ne
    (call $~lib/string/parseFloat
     (i32.const 204)
    )
    (f64.const 0)
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
  (if
   (f64.ne
    (call $~lib/string/parseFloat
     (i32.const 212)
    )
    (f64.const 1)
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
  (if
   (f64.ne
    (call $~lib/string/parseFloat
     (i32.const 308)
    )
    (f64.const 0.1)
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
  (if
   (f64.ne
    (call $~lib/string/parseFloat
     (i32.const 320)
    )
    (f64.const 0.25)
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
  (if
   (f64.ne
    (call $~lib/string/parseFloat
     (i32.const 332)
    )
    (f64.const 0.1)
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
  (set_global $std/string/c
   (call $~lib/string/String.__concat
    (i32.const 352)
    (i32.const 360)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (get_global $std/string/c)
     (i32.const 420)
    )
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
   (i32.eqz
    (call $~lib/string/String.__ne
     (get_global $std/string/c)
     (i32.const 352)
    )
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
     (i32.const 64)
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
     (i32.const 65)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 360)
     (i32.const 352)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 67)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 428)
     (i32.const 352)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 68)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 428)
     (i32.const 436)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 69)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 428)
     (i32.const 420)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 70)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__lt
    (i32.const 428)
    (i32.const 420)
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
   (call $~lib/string/String.__lt
    (i32.const 360)
    (get_global $std/string/nullStr)
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
   (call $~lib/string/String.__lt
    (get_global $std/string/nullStr)
    (i32.const 360)
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
   (i32.eqz
    (call $~lib/string/String.__gt
     (i32.const 444)
     (i32.const 8)
    )
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
   (i32.eqz
    (call $~lib/string/String.__lt
     (i32.const 8)
     (i32.const 444)
    )
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
   (i32.eqz
    (call $~lib/string/String.__gte
     (i32.const 444)
     (i32.const 8)
    )
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
   (i32.eqz
    (call $~lib/string/String.__lte
     (i32.const 8)
     (i32.const 444)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 79)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (call $~lib/string/String.__lt
    (i32.const 444)
    (i32.const 8)
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
   (call $~lib/string/String.__gt
    (i32.const 8)
    (i32.const 444)
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
   (call $~lib/string/String.__lt
    (i32.const 8)
    (i32.const 8)
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
   (call $~lib/string/String.__gt
    (i32.const 8)
    (i32.const 8)
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
     (i32.const 84)
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
     (i32.const 85)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load
     (i32.const 456)
    )
    (i32.const 3)
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
     (i32.const 89)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 352)
      (i32.const 0)
     )
     (i32.const 8)
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
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 352)
      (i32.const 1)
     )
     (i32.const 352)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 91)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 352)
      (i32.const 2)
     )
     (i32.const 436)
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
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 352)
      (i32.const 3)
     )
     (i32.const 468)
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
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 420)
      (i32.const 4)
     )
     (i32.const 480)
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
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 352)
      (i32.const 5)
     )
     (i32.const 500)
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
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 352)
      (i32.const 6)
     )
     (i32.const 516)
    )
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
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#repeat
      (i32.const 352)
      (i32.const 7)
     )
     (i32.const 532)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 97)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 8)
     )
     (i32.const 8)
    )
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
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 8)
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 100)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 552)
     )
     (i32.const 576)
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
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 552)
     )
     (i32.const 600)
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
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 624)
     )
     (i32.const 704)
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
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 704)
     )
     (i32.const 784)
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
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 864)
     )
     (i32.const 904)
    )
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
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 904)
     )
     (i32.const 944)
    )
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
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 984)
     )
     (i32.const 1056)
    )
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
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 1056)
     )
     (i32.const 1128)
    )
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
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 1200)
     )
     (i32.const 1276)
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
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toLowerCase
      (i32.const 1276)
     )
     (i32.const 1352)
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
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 1428)
     )
     (i32.const 1480)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 112)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 1532)
     )
     (i32.const 1580)
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
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/string/String#toUpperCase
      (i32.const 1628)
     )
     (i32.const 1680)
    )
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
     (call $~lib/string/String#toUpperCase
      (i32.const 1732)
     )
     (i32.const 1864)
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
     (call $~lib/string/String#toLowerCase
      (i32.const 1732)
     )
     (i32.const 1996)
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
     (call $~lib/string/String#toLowerCase
      (call $~lib/string/String#toUpperCase
       (i32.const 2128)
      )
     )
     (i32.const 2128)
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
     (call $~lib/string/String#toLowerCase
      (call $~lib/string/String#toUpperCase
       (i32.const 2136)
      )
     )
     (i32.const 2136)
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
     (call $~lib/string/String#toLowerCase
      (call $~lib/string/String#toUpperCase
       (i32.const 2144)
      )
     )
     (i32.const 2144)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const 0)
     )
     (i32.const 204)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const 1)
     )
     (i32.const 212)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const 8)
     )
     (i32.const 2928)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const 123)
     )
     (i32.const 456)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const -1000)
     )
     (i32.const 2936)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const 1234)
     )
     (i32.const 2952)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const 12345)
     )
     (i32.const 2964)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const 123456)
     )
     (i32.const 2980)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const 1111111)
     )
     (i32.const 2996)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const 1234567)
     )
     (i32.const 3016)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const 2147483646)
     )
     (i32.const 3036)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 160)
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
     (i32.const 3060)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const -2147483648)
     )
     (i32.const 3084)
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
     (call $~lib/internal/itoa/itoa32
      (i32.const -1)
     )
     (i32.const 3112)
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
     (call $~lib/internal/itoa/utoa32
      (i32.const 0)
     )
     (i32.const 204)
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
     (call $~lib/internal/itoa/utoa32
      (i32.const 1000)
     )
     (i32.const 3120)
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
     (call $~lib/internal/itoa/utoa32
      (i32.const 2147483647)
     )
     (i32.const 3060)
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
     (call $~lib/internal/itoa/utoa32
      (i32.const -2147483648)
     )
     (i32.const 3132)
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
     (call $~lib/internal/itoa/utoa32
      (i32.const -1)
     )
     (i32.const 3156)
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
     (call $~lib/internal/itoa/utoa64
      (i64.const 0)
     )
     (i32.const 204)
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
  (if
   (i32.eqz
    (call $~lib/string/String.__eq
     (call $~lib/internal/itoa/utoa64
      (i64.const 1234)
     )
     (i32.const 2952)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 172)
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
     (i32.const 3776)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 173)
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
     (i32.const 3796)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 174)
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
     (i32.const 3156)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 175)
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
     (i32.const 3820)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 176)
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
     (i32.const 3848)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 177)
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
     (i32.const 3876)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 178)
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
     (i32.const 3912)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 179)
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
     (i32.const 3948)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 180)
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
     (i32.const 3988)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 181)
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
     (i32.const 204)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 183)
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
     (i32.const 4032)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 184)
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
     (i32.const 3156)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 185)
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
     (i32.const 4048)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 186)
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
     (i32.const 3820)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 187)
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
     (i32.const 4076)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 188)
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
     (i32.const 4104)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 189)
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
     (i32.const 4136)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 190)
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
     (i32.const 4172)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 191)
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
     (i32.const 4212)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 192)
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
     (i32.const 4256)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 193)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
