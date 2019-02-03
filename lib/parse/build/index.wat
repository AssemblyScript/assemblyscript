(module
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $v (func))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiv (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 16) "\08")
 (data (i32.const 24) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 56) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 128) "x")
 (data (i32.const 136) "\01\00\00\000")
 (data (i32.const 144) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 200) "\90\01\00\00\00\00\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data (i32.const 712) "\c8\00\00\00d")
 (data (i32.const 720) "\03\00\00\00i\003\002")
 (data (i32.const 736) "\03\00\00\00i\006\004")
 (data (i32.const 752) "\03\00\00\00f\003\002")
 (data (i32.const 768) "\03\00\00\00f\006\004")
 (data (i32.const 784) "\07\00\00\00a\00n\00y\00f\00u\00n\00c")
 (data (i32.const 808) "\04\00\00\00f\00u\00n\00c")
 (data (i32.const 824) "\04\00\00\00n\00o\00n\00e")
 (data (i32.const 848) "\04\00\00\00n\00u\00l\00l")
 (data (i32.const 864) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 896) "\02\00\00\00,\00 ")
 (data (i32.const 904) "\04\00\00\00v\00o\00i\00d")
 (data (i32.const 920) "\07\00\00\00i\00n\00d\00e\00x\00:\00 ")
 (data (i32.const 944) "\06\00\00\00f\00o\00r\00m\00:\00 ")
 (data (i32.const 960) "\03\00\00\00,\00 \00(")
 (data (i32.const 976) "\05\00\00\00)\00 \00=\00>\00 ")
 (data (i32.const 1000) "\e0\03")
 (data (i32.const 1008) "\01\00\00\00\n")
 (data (i32.const 1024) "\f8\03")
 (data (i32.const 1032) "\01\00\00\00\'")
 (data (i32.const 1040) "\06\00\00\00C\00u\00s\00t\00o\00m")
 (data (i32.const 1056) "\04\00\00\00T\00y\00p\00e")
 (data (i32.const 1072) "\06\00\00\00I\00m\00p\00o\00r\00t")
 (data (i32.const 1088) "\08\00\00\00F\00u\00n\00c\00t\00i\00o\00n")
 (data (i32.const 1112) "\05\00\00\00T\00a\00b\00l\00e")
 (data (i32.const 1128) "\06\00\00\00M\00e\00m\00o\00r\00y")
 (data (i32.const 1144) "\06\00\00\00G\00l\00o\00b\00a\00l")
 (data (i32.const 1160) "\06\00\00\00E\00x\00p\00o\00r\00t")
 (data (i32.const 1176) "\05\00\00\00S\00t\00a\00r\00t")
 (data (i32.const 1192) "\07\00\00\00E\00l\00e\00m\00e\00n\00t")
 (data (i32.const 1216) "\04\00\00\00C\00o\00d\00e")
 (data (i32.const 1232) "\04\00\00\00D\00a\00t\00a")
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "index" "_log_str" (func $assembly/host/index/_log_str (param i32)))
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $assembly/index/type (mut i32) (i32.const 0))
 (global $src/common/SectionId.Type (mut i32) (i32.const 1))
 (global $src/common/SectionId.Data (mut i32) (i32.const 11))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "getType" (func $assembly/index/getType))
 (export "toString" (func $assembly/index/toString))
 (export "Parser#constructor" (func $assembly/index/Parser#constructor))
 (export "Parser#get:buf" (func $Parser#get:buf))
 (export "Parser#set:buf" (func $Parser#set:buf))
 (export "Parser#get:module" (func $Parser#get:module))
 (export "Parser#set:module" (func $Parser#set:module))
 (export "Parser#parseString" (func $assembly/index/Parser#parseString))
 (export "Parser#readVaruint" (func $assembly/index/Parser#readVaruint))
 (export "Parser#get:off" (func $assembly/index/Parser#get:off))
 (export "Parser#set:off" (func $assembly/index/Parser#set:off))
 (export "Parser#parse" (func $assembly/index/Parser#parse))
 (export "newParser" (func $assembly/index/newParser))
 (export "parse" (func $assembly/index/parse))
 (export "memory.fill" (func $~lib/memory/memory.fill))
 (export "memory.copy" (func $~lib/memory/memory.copy))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "memory.allocate" (func $~lib/memory/memory.allocate))
 (export "memory.free" (func $~lib/memory/memory.free))
 (export "memory.reset" (func $~lib/memory/memory.reset))
 (start $start)
 (func $~lib/internal/memory/memset (; 2 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  get_local $2
  i32.eqz
  if
   return
  end
  get_local $0
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 1
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 2
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 1
  i32.add
  get_local $1
  i32.store8
  get_local $0
  i32.const 2
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  tee_local $3
  i32.const 2
  i32.sub
  get_local $1
  i32.store8
  get_local $3
  i32.const 3
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 6
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 3
  i32.add
  get_local $1
  i32.store8
  get_local $0
  get_local $2
  i32.add
  i32.const 4
  i32.sub
  get_local $1
  i32.store8
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $2
  i32.const 0
  get_local $0
  i32.sub
  i32.const 3
  i32.and
  tee_local $3
  i32.sub
  set_local $2
  get_local $0
  get_local $3
  i32.add
  tee_local $0
  get_local $1
  i32.const 255
  i32.and
  i32.const 16843009
  i32.mul
  tee_local $1
  i32.store
  get_local $2
  i32.const -4
  i32.and
  tee_local $2
  get_local $0
  i32.add
  i32.const 4
  i32.sub
  get_local $1
  i32.store
  get_local $2
  i32.const 8
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 4
  i32.add
  get_local $1
  i32.store
  get_local $0
  i32.const 8
  i32.add
  get_local $1
  i32.store
  get_local $0
  get_local $2
  i32.add
  tee_local $3
  i32.const 12
  i32.sub
  get_local $1
  i32.store
  get_local $3
  i32.const 8
  i32.sub
  get_local $1
  i32.store
  get_local $2
  i32.const 24
  i32.le_u
  if
   return
  end
  get_local $0
  i32.const 12
  i32.add
  get_local $1
  i32.store
  get_local $0
  i32.const 16
  i32.add
  get_local $1
  i32.store
  get_local $0
  i32.const 20
  i32.add
  get_local $1
  i32.store
  get_local $0
  i32.const 24
  i32.add
  get_local $1
  i32.store
  get_local $0
  get_local $2
  i32.add
  tee_local $3
  i32.const 28
  i32.sub
  get_local $1
  i32.store
  get_local $3
  i32.const 24
  i32.sub
  get_local $1
  i32.store
  get_local $3
  i32.const 20
  i32.sub
  get_local $1
  i32.store
  get_local $3
  i32.const 16
  i32.sub
  get_local $1
  i32.store
  get_local $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  tee_local $3
  get_local $0
  i32.add
  set_local $0
  get_local $2
  get_local $3
  i32.sub
  set_local $2
  get_local $1
  i64.extend_u/i32
  tee_local $4
  get_local $4
  i64.const 32
  i64.shl
  i64.or
  set_local $4
  loop $continue|0
   get_local $2
   i32.const 32
   i32.ge_u
   if
    get_local $0
    get_local $4
    i64.store
    get_local $0
    i32.const 8
    i32.add
    get_local $4
    i64.store
    get_local $0
    i32.const 16
    i32.add
    get_local $4
    i64.store
    get_local $0
    i32.const 24
    i32.add
    get_local $4
    i64.store
    get_local $2
    i32.const 32
    i32.sub
    set_local $2
    get_local $0
    i32.const 32
    i32.add
    set_local $0
    br $continue|0
   end
  end
 )
 (func $~lib/memory/memory.fill (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $0
  get_local $1
  get_local $2
  call $~lib/internal/memory/memset
 )
 (func $~lib/internal/memory/memcpy (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $continue|0
   get_local $2
   if (result i32)
    get_local $1
    i32.const 3
    i32.and
   else    
    get_local $2
   end
   tee_local $3
   if
    get_local $0
    tee_local $4
    i32.const 1
    i32.add
    set_local $0
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $4
    get_local $3
    i32.load8_u
    i32.store8
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    br $continue|0
   end
  end
  get_local $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $continue|1
    get_local $2
    i32.const 16
    i32.ge_u
    if
     get_local $0
     get_local $1
     i32.load
     i32.store
     get_local $0
     i32.const 4
     i32.add
     get_local $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     get_local $0
     i32.const 8
     i32.add
     get_local $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     get_local $0
     i32.const 12
     i32.add
     get_local $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     get_local $1
     i32.const 16
     i32.add
     set_local $1
     get_local $0
     i32.const 16
     i32.add
     set_local $0
     get_local $2
     i32.const 16
     i32.sub
     set_local $2
     br $continue|1
    end
   end
   get_local $2
   i32.const 8
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    get_local $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    get_local $0
    i32.const 8
    i32.add
    set_local $0
    get_local $1
    i32.const 8
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 4
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    set_local $0
    get_local $1
    i32.const 4
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 2
   i32.and
   if
    get_local $0
    get_local $1
    i32.load16_u
    i32.store16
    get_local $0
    i32.const 2
    i32.add
    set_local $0
    get_local $1
    i32.const 2
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 1
   i32.and
   if
    get_local $1
    set_local $3
    get_local $0
    get_local $1
    i32.load8_u
    i32.store8
   end
   return
  end
  get_local $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      get_local $0
      i32.const 3
      i32.and
      tee_local $3
      i32.const 1
      i32.ne
      if
       get_local $3
       i32.const 2
       i32.eq
       br_if $case1|2
       get_local $3
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      get_local $1
      i32.load
      set_local $5
      get_local $0
      get_local $1
      tee_local $3
      i32.load8_u
      i32.store8
      get_local $0
      i32.const 1
      i32.add
      tee_local $1
      set_local $0
      get_local $1
      get_local $3
      i32.const 1
      i32.add
      tee_local $1
      i32.load8_u
      i32.store8
      get_local $0
      i32.const 1
      i32.add
      tee_local $4
      i32.const 1
      i32.add
      set_local $0
      get_local $1
      i32.const 1
      i32.add
      tee_local $3
      i32.const 1
      i32.add
      set_local $1
      get_local $4
      get_local $3
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 3
      i32.sub
      set_local $2
      loop $continue|3
       get_local $2
       i32.const 17
       i32.ge_u
       if
        get_local $0
        get_local $1
        i32.const 1
        i32.add
        i32.load
        tee_local $3
        i32.const 8
        i32.shl
        get_local $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $0
        i32.const 4
        i32.add
        get_local $1
        i32.const 5
        i32.add
        i32.load
        tee_local $5
        i32.const 8
        i32.shl
        get_local $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $0
        i32.const 8
        i32.add
        get_local $1
        i32.const 9
        i32.add
        i32.load
        tee_local $3
        i32.const 8
        i32.shl
        get_local $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $0
        i32.const 12
        i32.add
        get_local $1
        i32.const 13
        i32.add
        i32.load
        tee_local $5
        i32.const 8
        i32.shl
        get_local $3
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        get_local $1
        i32.const 16
        i32.add
        set_local $1
        get_local $0
        i32.const 16
        i32.add
        set_local $0
        get_local $2
        i32.const 16
        i32.sub
        set_local $2
        br $continue|3
       end
      end
      br $break|2
     end
     get_local $1
     i32.load
     set_local $5
     get_local $0
     get_local $1
     i32.load8_u
     i32.store8
     get_local $0
     i32.const 1
     i32.add
     tee_local $4
     i32.const 1
     i32.add
     set_local $0
     get_local $1
     i32.const 1
     i32.add
     tee_local $3
     i32.const 1
     i32.add
     set_local $1
     get_local $4
     get_local $3
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 2
     i32.sub
     set_local $2
     loop $continue|4
      get_local $2
      i32.const 18
      i32.ge_u
      if
       get_local $0
       get_local $1
       i32.const 2
       i32.add
       i32.load
       tee_local $3
       i32.const 16
       i32.shl
       get_local $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $0
       i32.const 4
       i32.add
       get_local $1
       i32.const 6
       i32.add
       i32.load
       tee_local $5
       i32.const 16
       i32.shl
       get_local $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $0
       i32.const 8
       i32.add
       get_local $1
       i32.const 10
       i32.add
       i32.load
       tee_local $3
       i32.const 16
       i32.shl
       get_local $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $0
       i32.const 12
       i32.add
       get_local $1
       i32.const 14
       i32.add
       i32.load
       tee_local $5
       i32.const 16
       i32.shl
       get_local $3
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       get_local $1
       i32.const 16
       i32.add
       set_local $1
       get_local $0
       i32.const 16
       i32.add
       set_local $0
       get_local $2
       i32.const 16
       i32.sub
       set_local $2
       br $continue|4
      end
     end
     br $break|2
    end
    get_local $1
    i32.load
    set_local $5
    get_local $0
    tee_local $4
    i32.const 1
    i32.add
    set_local $0
    get_local $1
    tee_local $3
    i32.const 1
    i32.add
    set_local $1
    get_local $4
    get_local $3
    i32.load8_u
    i32.store8
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    loop $continue|5
     get_local $2
     i32.const 19
     i32.ge_u
     if
      get_local $0
      get_local $1
      i32.const 3
      i32.add
      i32.load
      tee_local $3
      i32.const 24
      i32.shl
      get_local $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 4
      i32.add
      get_local $1
      i32.const 7
      i32.add
      i32.load
      tee_local $5
      i32.const 24
      i32.shl
      get_local $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 8
      i32.add
      get_local $1
      i32.const 11
      i32.add
      i32.load
      tee_local $3
      i32.const 24
      i32.shl
      get_local $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $0
      i32.const 12
      i32.add
      get_local $1
      i32.const 15
      i32.add
      i32.load
      tee_local $5
      i32.const 24
      i32.shl
      get_local $3
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      get_local $1
      i32.const 16
      i32.add
      set_local $1
      get_local $0
      i32.const 16
      i32.add
      set_local $0
      get_local $2
      i32.const 16
      i32.sub
      set_local $2
      br $continue|5
     end
    end
   end
  end
  get_local $2
  i32.const 16
  i32.and
  if
   get_local $0
   get_local $1
   tee_local $3
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $1
   set_local $0
   get_local $1
   get_local $3
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $4
   i32.const 1
   i32.add
   set_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $3
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 8
  i32.and
  if
   get_local $0
   get_local $1
   tee_local $3
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $1
   set_local $0
   get_local $1
   get_local $3
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $4
   i32.const 1
   i32.add
   set_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $3
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 4
  i32.and
  if
   get_local $0
   get_local $1
   tee_local $3
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $1
   set_local $0
   get_local $1
   get_local $3
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $3
   set_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $4
   i32.const 1
   i32.add
   set_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $3
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 2
  i32.and
  if
   get_local $0
   get_local $1
   i32.load8_u
   i32.store8
   get_local $0
   i32.const 1
   i32.add
   tee_local $4
   i32.const 1
   i32.add
   set_local $0
   get_local $1
   i32.const 1
   i32.add
   tee_local $3
   i32.const 1
   i32.add
   set_local $1
   get_local $4
   get_local $3
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 1
  i32.and
  if
   get_local $1
   set_local $3
   get_local $0
   get_local $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 5 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   return
  end
  get_local $1
  get_local $2
  i32.add
  get_local $0
  i32.le_u
  tee_local $3
  i32.eqz
  if
   get_local $0
   get_local $2
   i32.add
   get_local $1
   i32.le_u
   set_local $3
  end
  get_local $3
  if
   get_local $0
   get_local $1
   get_local $2
   call $~lib/internal/memory/memcpy
   return
  end
  get_local $0
  get_local $1
  i32.lt_u
  if
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    loop $continue|0
     get_local $0
     i32.const 7
     i32.and
     if
      get_local $2
      i32.eqz
      if
       return
      end
      get_local $2
      i32.const 1
      i32.sub
      set_local $2
      get_local $0
      tee_local $4
      tee_local $3
      i32.const 1
      i32.add
      set_local $0
      get_local $1
      tee_local $3
      i32.const 1
      i32.add
      set_local $1
      get_local $4
      get_local $3
      i32.load8_u
      i32.store8
      br $continue|0
     end
    end
    loop $continue|1
     get_local $2
     i32.const 8
     i32.ge_u
     if
      get_local $0
      get_local $1
      i64.load
      i64.store
      get_local $2
      i32.const 8
      i32.sub
      set_local $2
      get_local $0
      i32.const 8
      i32.add
      set_local $0
      get_local $1
      i32.const 8
      i32.add
      set_local $1
      br $continue|1
     end
    end
   end
   loop $continue|2
    get_local $2
    if
     get_local $0
     tee_local $4
     tee_local $3
     i32.const 1
     i32.add
     set_local $0
     get_local $1
     tee_local $3
     i32.const 1
     i32.add
     set_local $1
     get_local $4
     get_local $3
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 1
     i32.sub
     set_local $2
     br $continue|2
    end
   end
  else   
   get_local $1
   i32.const 7
   i32.and
   get_local $0
   i32.const 7
   i32.and
   i32.eq
   if
    loop $continue|3
     get_local $0
     get_local $2
     i32.add
     i32.const 7
     i32.and
     if
      get_local $2
      i32.eqz
      if
       return
      end
      get_local $2
      i32.const 1
      i32.sub
      tee_local $2
      get_local $0
      i32.add
      get_local $1
      get_local $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|3
     end
    end
    loop $continue|4
     get_local $2
     i32.const 8
     i32.ge_u
     if
      get_local $2
      i32.const 8
      i32.sub
      tee_local $2
      get_local $0
      i32.add
      get_local $1
      get_local $2
      i32.add
      i64.load
      i64.store
      br $continue|4
     end
    end
   end
   loop $continue|5
    get_local $2
    if
     get_local $2
     i32.const 1
     i32.sub
     tee_local $2
     get_local $0
     i32.add
     get_local $1
     get_local $2
     i32.add
     i32.load8_u
     i32.store8
     br $continue|5
    end
   end
  end
 )
 (func $~lib/memory/memory.copy (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  get_local $0
  get_local $1
  get_local $2
  call $~lib/internal/memory/memmove
 )
 (func $~lib/internal/memory/memcmp (; 7 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  get_local $0
  get_local $1
  i32.eq
  if
   i32.const 0
   return
  end
  loop $continue|0
   get_local $2
   i32.const 0
   i32.ne
   tee_local $3
   if
    get_local $0
    i32.load8_u
    get_local $1
    i32.load8_u
    i32.eq
    set_local $3
   end
   get_local $3
   if
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    get_local $0
    i32.const 1
    i32.add
    set_local $0
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $continue|0
   end
  end
  get_local $2
  if (result i32)
   get_local $0
   i32.load8_u
   get_local $1
   i32.load8_u
   i32.sub
  else   
   i32.const 0
  end
  tee_local $0
 )
 (func $~lib/memory/memory.compare (; 8 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  get_local $0
  get_local $1
  get_local $2
  call $~lib/internal/memory/memcmp
 )
 (func $~lib/allocator/arena/__memory_allocate (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  get_global $~lib/allocator/arena/offset
  tee_local $1
  get_local $0
  i32.const 1
  get_local $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  tee_local $2
  current_memory
  tee_local $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   get_local $3
   get_local $2
   get_local $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   tee_local $0
   get_local $3
   get_local $0
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    get_local $0
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  get_local $2
  set_global $~lib/allocator/arena/offset
  get_local $1
 )
 (func $~lib/memory/memory.allocate (; 10 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $~lib/allocator/arena/__memory_allocate
 )
 (func $~lib/memory/memory.free (; 11 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $~lib/memory/memory.reset (; 12 ;) (type $v)
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 56
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32.const 32
  get_local $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  get_local $1
  get_local $0
  i32.load
  tee_local $2
  i32.gt_s
  if
   get_local $1
   i32.const 1073741816
   i32.gt_s
   if
    i32.const 0
    i32.const 56
    i32.const 40
    i32.const 4
    call $~lib/env/abort
    unreachable
   end
   get_local $1
   i32.const 1
   i32.const 32
   get_local $2
   i32.const 7
   i32.add
   i32.clz
   i32.sub
   i32.shl
   i32.const 8
   i32.sub
   i32.le_s
   if
    get_local $0
    get_local $1
    i32.store
   else    
    get_local $1
    call $~lib/internal/arraybuffer/allocateUnsafe
    tee_local $3
    i32.const 8
    i32.add
    get_local $0
    i32.const 8
    i32.add
    get_local $2
    call $~lib/internal/memory/memmove
    get_local $3
    set_local $0
   end
   get_local $0
   i32.const 8
   i32.add
   get_local $2
   i32.add
   i32.const 0
   get_local $1
   get_local $2
   i32.sub
   call $~lib/internal/memory/memset
  else   
   get_local $1
   get_local $2
   i32.lt_s
   if
    get_local $1
    i32.const 0
    i32.lt_s
    if
     i32.const 0
     i32.const 56
     i32.const 62
     i32.const 4
     call $~lib/env/abort
     unreachable
    end
    get_local $0
    get_local $1
    i32.store
   end
  end
  get_local $0
 )
 (func $~lib/array/Array<SectionHeader>#push (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load offset=4
  tee_local $2
  i32.const 1
  i32.add
  set_local $3
  get_local $2
  get_local $0
  i32.load
  tee_local $4
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   get_local $2
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 24
    i32.const 184
    i32.const 42
    call $~lib/env/abort
    unreachable
   end
   get_local $0
   get_local $4
   get_local $3
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   tee_local $4
   i32.store
  end
  get_local $0
  get_local $3
  i32.store offset=4
  get_local $4
  get_local $2
  i32.const 2
  i32.shl
  i32.add
  get_local $1
  i32.store offset=8
  get_local $3
 )
 (func $assembly/module/index/Module#getID (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load
  i32.load offset=4
  set_local $4
  loop $repeat|0
   get_local $2
   get_local $4
   i32.lt_s
   if
    get_local $2
    get_local $0
    i32.load
    i32.load
    tee_local $3
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     get_local $2
     i32.const 2
     i32.shl
     get_local $3
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    tee_local $3
    i32.load offset=4
    get_local $1
    i32.eq
    if
     i32.const 16
     get_local $2
     get_local $0
     i32.load
     i32.load
     tee_local $3
     i32.load
     i32.const 2
     i32.shr_u
     i32.lt_u
     if (result i32)
      get_local $2
      i32.const 2
      i32.shl
      get_local $3
      i32.add
      i32.load offset=8
     else      
      unreachable
     end
     tee_local $3
     call $~lib/array/Array<SectionHeader>#push
     drop
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
   end
  end
  i32.const 16
 )
 (func $assembly/module/index/TypeSection#constructor (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  i32.const 0
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  get_local $0
  i32.store
  get_local $1
  i32.const 128
  i32.store offset=4
  get_local $1
 )
 (func $assembly/buffer/index/Buffer#readVaruint (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.load offset=8
  set_local $1
  loop $continue|0
   get_local $1
   tee_local $2
   i32.const 1
   i32.add
   set_local $1
   get_local $2
   i32.load8_u
   tee_local $2
   i32.const 127
   i32.and
   get_local $4
   i32.shl
   get_local $3
   i32.or
   set_local $3
   get_local $2
   i32.const 128
   i32.and
   if
    get_local $4
    i32.const 7
    i32.add
    set_local $4
    br $continue|0
   end
  end
  get_local $0
  get_local $1
  i32.store offset=8
  get_local $3
 )
 (func $~lib/array/Array<FuncType>#constructor (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.const 268435454
  i32.gt_u
  if
   i32.const 0
   i32.const 24
   i32.const 45
   i32.const 39
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 2
  i32.shl
  tee_local $3
  call $~lib/internal/arraybuffer/allocateUnsafe
  set_local $2
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  i32.const 0
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  get_local $2
  i32.store
  get_local $1
  get_local $0
  i32.store offset=4
  get_local $2
  i32.const 8
  i32.add
  i32.const 0
  get_local $3
  call $~lib/internal/memory/memset
  get_local $1
 )
 (func $assembly/buffer/index/Buffer#readVarint (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  i32.load offset=8
  set_local $5
  loop $continue|0
   get_local $5
   tee_local $4
   i32.const 1
   i32.add
   set_local $5
   get_local $4
   i32.load8_u
   tee_local $6
   i32.const 127
   i32.and
   get_local $2
   i32.shl
   get_local $3
   i32.or
   set_local $3
   get_local $2
   i32.const 7
   i32.add
   set_local $2
   get_local $6
   i32.const 128
   i32.and
   br_if $continue|0
  end
  get_local $0
  get_local $5
  i32.store offset=8
  i32.const -1
  get_local $2
  i32.shl
  get_local $3
  i32.or
  set_local $0
  get_local $2
  get_local $1
  i32.lt_u
  tee_local $4
  if
   get_local $6
   i32.const 64
   i32.and
   i32.const 0
   i32.ne
   set_local $4
  end
  get_local $0
  get_local $3
  get_local $4
  select
 )
 (func $assembly/buffer/index/Buffer#readVarint8 (; 21 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 7
  call $assembly/buffer/index/Buffer#readVarint
 )
 (func $assembly/module/index/FuncType#constructor (; 22 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  i32.const 13
  call $~lib/allocator/arena/__memory_allocate
  tee_local $2
  i32.const 0
  i32.store
  get_local $2
  i32.const 0
  i32.store offset=4
  get_local $2
  get_local $0
  i32.store offset=8
  get_local $2
  get_local $1
  i32.store8 offset=12
  get_local $2
 )
 (func $~lib/array/Array<FuncType>#__set (; 23 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $1
  get_local $0
  i32.load
  tee_local $3
  i32.load
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 24
    i32.const 109
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   get_local $0
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   tee_local $4
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   tee_local $3
   i32.store
   get_local $0
   get_local $4
   i32.store offset=4
  end
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $~lib/internal/number/decimalCount32 (; 24 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.const 100000
  i32.lt_u
  if (result i32)
   get_local $0
   i32.const 100
   i32.lt_u
   if (result i32)
    i32.const 1
    i32.const 2
    get_local $0
    i32.const 10
    i32.lt_u
    select
   else    
    i32.const 3
    i32.const 4
    i32.const 5
    get_local $0
    i32.const 10000
    i32.lt_u
    select
    get_local $0
    i32.const 1000
    i32.lt_u
    select
   end
  else   
   get_local $0
   i32.const 10000000
   i32.lt_u
   if (result i32)
    i32.const 6
    i32.const 7
    get_local $0
    i32.const 1000000
    i32.lt_u
    select
   else    
    i32.const 8
    i32.const 9
    i32.const 10
    get_local $0
    i32.const 1000000000
    i32.lt_u
    select
    get_local $0
    i32.const 100000000
    i32.lt_u
    select
   end
  end
 )
 (func $~lib/internal/string/allocateUnsafe (; 25 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  get_local $0
  i32.const 0
  i32.gt_s
  tee_local $1
  if
   get_local $0
   i32.const 536870910
   i32.le_s
   set_local $1
  end
  get_local $1
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 14
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  get_local $0
  i32.const 1
  i32.shl
  i32.const 4
  i32.add
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/internal/number/utoa32_lut (; 26 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 712
  i32.load
  set_local $3
  loop $continue|0
   get_local $1
   i32.const 10000
   i32.ge_u
   if
    get_local $1
    i32.const 10000
    i32.rem_u
    set_local $4
    get_local $1
    i32.const 10000
    i32.div_u
    set_local $1
    get_local $2
    i32.const 4
    i32.sub
    tee_local $2
    i32.const 1
    i32.shl
    get_local $0
    i32.add
    get_local $3
    get_local $4
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u offset=8
    get_local $3
    get_local $4
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u offset=8
    i64.const 32
    i64.shl
    i64.or
    i64.store offset=4
    br $continue|0
   end
  end
  get_local $1
  i32.const 100
  i32.ge_u
  if
   get_local $1
   i32.const 100
   i32.rem_u
   set_local $4
   get_local $1
   i32.const 100
   i32.div_u
   set_local $1
   get_local $2
   i32.const 2
   i32.sub
   tee_local $2
   i32.const 1
   i32.shl
   get_local $0
   i32.add
   get_local $3
   get_local $4
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
   i32.store offset=4
  end
  get_local $1
  i32.const 10
  i32.ge_u
  if
   get_local $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   get_local $0
   i32.add
   get_local $3
   get_local $1
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=8
   i32.store offset=4
  else   
   get_local $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   get_local $0
   i32.add
   get_local $1
   i32.const 48
   i32.add
   i32.store16 offset=4
  end
 )
 (func $~lib/internal/number/itoa<u32> (; 27 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  block $__inlined_func$~lib/internal/number/utoa32
   get_local $0
   tee_local $1
   i32.eqz
   if
    i32.const 136
    set_local $0
    br $__inlined_func$~lib/internal/number/utoa32
   end
   get_local $1
   call $~lib/internal/number/decimalCount32
   tee_local $2
   call $~lib/internal/string/allocateUnsafe
   tee_local $0
   get_local $1
   get_local $2
   call $~lib/internal/number/utoa32_lut
  end
  get_local $0
 )
 (func $assembly/module/index/typeName (; 28 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  block $case7|0
   block $case6|0
    block $case5|0
     block $case4|0
      block $case3|0
       block $case2|0
        block $case1|0
         get_local $0
         i32.const 127
         i32.ne
         if
          get_local $0
          tee_local $1
          i32.const 126
          i32.eq
          br_if $case1|0
          get_local $1
          i32.const 125
          i32.eq
          br_if $case2|0
          get_local $1
          i32.const 124
          i32.eq
          br_if $case3|0
          get_local $1
          i32.const 112
          i32.eq
          br_if $case4|0
          get_local $1
          i32.const 96
          i32.eq
          br_if $case5|0
          get_local $1
          i32.const 64
          i32.eq
          br_if $case6|0
          br $case7|0
         end
         i32.const 720
         return
        end
        i32.const 736
        return
       end
       i32.const 752
       return
      end
      i32.const 768
      return
     end
     i32.const 784
     return
    end
    i32.const 808
    return
   end
   i32.const 824
   return
  end
  unreachable
 )
 (func $~lib/internal/string/copyUnsafe (; 29 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  get_local $1
  i32.const 1
  i32.shl
  get_local $0
  i32.add
  i32.const 4
  i32.add
  get_local $2
  i32.const 4
  i32.add
  get_local $3
  i32.const 1
  i32.shl
  call $~lib/internal/memory/memmove
 )
 (func $~lib/string/String#concat (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  get_local $0
  i32.eqz
  if
   i32.const 0
   i32.const 864
   i32.const 110
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $1
  i32.eqz
  if
   i32.const 848
   set_local $1
  end
  get_local $0
  i32.load
  tee_local $3
  get_local $1
  i32.load
  tee_local $4
  i32.add
  tee_local $2
  i32.eqz
  if
   i32.const 840
   return
  end
  get_local $2
  call $~lib/internal/string/allocateUnsafe
  tee_local $2
  i32.const 0
  get_local $0
  get_local $3
  call $~lib/internal/string/copyUnsafe
  get_local $2
  get_local $3
  get_local $1
  get_local $4
  call $~lib/internal/string/copyUnsafe
  get_local $2
 )
 (func $~lib/string/String.__concat (; 31 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.eqz
  if
   i32.const 848
   set_local $0
  end
  get_local $0
  get_local $1
  call $~lib/string/String#concat
 )
 (func $assembly/module/index/FuncType#toString (; 32 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $0
  i32.load offset=8
  call $~lib/internal/number/itoa<u32>
  set_local $4
  get_local $0
  i32.load8_s offset=12
  call $assembly/module/index/typeName
  set_local $5
  i32.const 840
  set_local $1
  loop $repeat|0
   get_local $2
   get_local $0
   i32.load
   i32.load offset=4
   i32.lt_s
   if
    get_local $1
    get_local $2
    get_local $0
    i32.load
    i32.load
    tee_local $3
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     get_local $2
     i32.const 2
     i32.shl
     get_local $3
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    tee_local $3
    call $assembly/module/index/typeName
    call $~lib/string/String.__concat
    set_local $1
    get_local $2
    get_local $0
    i32.load
    i32.load offset=4
    i32.const 1
    i32.sub
    i32.lt_s
    if
     get_local $1
     i32.const 896
     call $~lib/string/String.__concat
     set_local $1
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
   end
  end
  get_local $0
  i32.load offset=4
  i32.load offset=4
  i32.const 1
  i32.eq
  if (result i32)
   i32.const 0
   get_local $0
   i32.load offset=4
   i32.load
   tee_local $0
   i32.load
   i32.const 2
   i32.shr_u
   i32.lt_u
   if (result i32)
    get_local $0
    i32.load offset=8
   else    
    unreachable
   end
   tee_local $0
   call $assembly/module/index/typeName
  else   
   i32.const 904
  end
  set_local $0
  i32.const 920
  get_local $4
  call $~lib/string/String.__concat
  i32.const 896
  call $~lib/string/String.__concat
  i32.const 944
  call $~lib/string/String.__concat
  get_local $5
  call $~lib/string/String.__concat
  i32.const 960
  call $~lib/string/String.__concat
  get_local $1
  call $~lib/string/String.__concat
  i32.const 976
  call $~lib/string/String.__concat
  get_local $0
  call $~lib/string/String.__concat
 )
 (func $assembly/module/index/TypeSection#parse (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  get_local $1
  get_local $0
  i32.load
  i32.load offset=12
  i32.store offset=8
  get_local $1
  call $assembly/buffer/index/Buffer#readVaruint
  tee_local $8
  call $~lib/array/Array<FuncType>#constructor
  set_local $6
  loop $repeat|0
   get_local $2
   get_local $8
   i32.lt_u
   if
    get_local $6
    get_local $2
    get_local $2
    get_local $1
    call $assembly/buffer/index/Buffer#readVarint8
    i32.const 127
    i32.and
    call $assembly/module/index/FuncType#constructor
    tee_local $4
    call $~lib/array/Array<FuncType>#__set
    get_local $4
    get_local $1
    call $assembly/buffer/index/Buffer#readVaruint
    tee_local $7
    call $~lib/array/Array<FuncType>#constructor
    i32.store
    i32.const 0
    set_local $4
    loop $repeat|1
     get_local $4
     get_local $7
     i32.lt_u
     if
      get_local $1
      call $assembly/buffer/index/Buffer#readVarint8
      i32.const 127
      i32.and
      set_local $5
      get_local $2
      get_local $6
      i32.load
      tee_local $3
      i32.load
      i32.const 2
      i32.shr_u
      i32.lt_u
      if (result i32)
       get_local $2
       i32.const 2
       i32.shl
       get_local $3
       i32.add
       i32.load offset=8
      else       
       unreachable
      end
      tee_local $3
      i32.load
      get_local $4
      get_local $5
      call $~lib/array/Array<FuncType>#__set
      get_local $4
      i32.const 1
      i32.add
      set_local $4
      br $repeat|1
     end
    end
    get_local $1
    call $assembly/buffer/index/Buffer#readVaruint
    set_local $4
    get_local $2
    get_local $6
    i32.load
    tee_local $3
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     get_local $2
     i32.const 2
     i32.shl
     get_local $3
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    tee_local $3
    get_local $4
    call $~lib/array/Array<FuncType>#constructor
    i32.store offset=4
    i32.const 0
    set_local $5
    loop $repeat|2
     get_local $5
     get_local $4
     i32.lt_u
     if
      get_local $1
      call $assembly/buffer/index/Buffer#readVarint8
      i32.const 127
      i32.and
      set_local $7
      get_local $2
      get_local $6
      i32.load
      tee_local $3
      i32.load
      i32.const 2
      i32.shr_u
      i32.lt_u
      if (result i32)
       get_local $2
       i32.const 2
       i32.shl
       get_local $3
       i32.add
       i32.load offset=8
      else       
       unreachable
      end
      tee_local $3
      i32.load offset=4
      get_local $5
      get_local $7
      call $~lib/array/Array<FuncType>#__set
      get_local $5
      i32.const 1
      i32.add
      set_local $5
      br $repeat|2
     end
    end
    get_local $2
    tee_local $3
    get_local $6
    i32.load
    tee_local $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     get_local $3
     i32.const 2
     i32.shl
     get_local $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    tee_local $2
    call $assembly/module/index/FuncType#toString
    call $assembly/host/index/_log_str
    get_local $3
    i32.const 1
    i32.add
    set_local $2
    br $repeat|0
   end
  end
  get_local $0
 )
 (func $~lib/array/Array<String>#join (; 34 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 1004
  i32.load
  i32.const 1
  i32.sub
  tee_local $4
  i32.const 0
  i32.lt_s
  if
   i32.const 840
   return
  end
  i32.const 1000
  i32.load
  set_local $5
  i32.const 1008
  i32.load
  tee_local $6
  i32.const 0
  i32.ne
  set_local $7
  get_local $4
  i32.eqz
  if
   get_local $5
   i32.load offset=8
   return
  end
  get_local $4
  i32.const 1
  i32.add
  set_local $1
  loop $repeat|0
   get_local $0
   get_local $1
   i32.lt_s
   if
    get_local $0
    i32.const 2
    i32.shl
    get_local $5
    i32.add
    i32.load offset=8
    i32.load
    get_local $2
    i32.add
    set_local $2
    get_local $0
    i32.const 1
    i32.add
    set_local $0
    br $repeat|0
   end
  end
  i32.const 0
  set_local $1
  get_local $4
  get_local $6
  i32.mul
  get_local $2
  i32.add
  call $~lib/internal/string/allocateUnsafe
  set_local $0
  i32.const 0
  set_local $2
  loop $repeat|1
   get_local $2
   get_local $4
   i32.lt_s
   if
    get_local $2
    i32.const 2
    i32.shl
    get_local $5
    i32.add
    i32.load offset=8
    tee_local $3
    if
     get_local $0
     get_local $1
     get_local $3
     get_local $3
     i32.load
     tee_local $3
     call $~lib/internal/string/copyUnsafe
     get_local $1
     get_local $3
     i32.add
     set_local $1
    end
    get_local $7
    if
     get_local $0
     get_local $1
     i32.const 1008
     get_local $6
     call $~lib/internal/string/copyUnsafe
     get_local $1
     get_local $6
     i32.add
     set_local $1
    end
    get_local $2
    i32.const 1
    i32.add
    set_local $2
    br $repeat|1
   end
  end
  get_local $4
  i32.const 2
  i32.shl
  get_local $5
  i32.add
  i32.load offset=8
  tee_local $3
  if
   get_local $0
   get_local $1
   get_local $3
   get_local $3
   i32.load
   call $~lib/internal/string/copyUnsafe
  end
  get_local $0
 )
 (func $assembly/module/index/TypeSection#toString (; 35 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  loop $repeat|0
   get_local $1
   get_local $0
   i32.load offset=4
   i32.load offset=4
   i32.lt_s
   if
    i32.const 1000
    get_local $1
    get_local $0
    i32.load offset=4
    i32.load
    tee_local $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     get_local $1
     i32.const 2
     i32.shl
     get_local $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    tee_local $2
    call $assembly/module/index/FuncType#toString
    call $~lib/array/Array<SectionHeader>#push
    drop
    get_local $1
    i32.const 1
    i32.add
    set_local $1
    br $repeat|0
   end
  end
  call $~lib/array/Array<String>#join
 )
 (func $assembly/index/getType (; 36 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  get_local $0
  get_global $src/common/SectionId.Type
  call $assembly/module/index/Module#getID
  i32.load
  tee_local $1
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   get_local $1
   i32.load offset=8
  else   
   unreachable
  end
  tee_local $1
  call $assembly/module/index/TypeSection#constructor
  get_local $0
  i32.load offset=4
  call $assembly/module/index/TypeSection#parse
  set_global $assembly/index/type
  get_global $assembly/index/type
  call $assembly/module/index/TypeSection#toString
 )
 (func $assembly/index/toString (; 37 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $assembly/module/index/TypeSection#toString
 )
 (func $assembly/module/index/Module#constructor (; 38 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 8
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  i32.const 0
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  get_local $0
  i32.store offset=4
  get_local $1
  i32.const 1024
  i32.store
  get_local $1
 )
 (func $assembly/index/Parser#constructor (; 39 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.eqz
  if
   i32.const 8
   call $~lib/allocator/arena/__memory_allocate
   tee_local $0
   i32.const 0
   i32.store
   get_local $0
   i32.const 0
   i32.store offset=4
  end
  get_local $0
  get_local $1
  i32.store
  get_local $0
  get_local $1
  call $assembly/module/index/Module#constructor
  i32.store offset=4
  get_local $0
 )
 (func $~lib/string/String.fromUTF8 (; 40 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $1
  i32.const 1
  i32.lt_u
  if
   i32.const 840
   return
  end
  get_local $1
  i32.const 1
  i32.shl
  call $~lib/allocator/arena/__memory_allocate
  set_local $6
  loop $continue|0
   get_local $2
   get_local $1
   i32.lt_u
   if
    get_local $2
    tee_local $3
    i32.const 1
    i32.add
    set_local $2
    get_local $0
    get_local $3
    i32.add
    i32.load8_u
    tee_local $3
    i32.const 128
    i32.lt_u
    if (result i32)
     get_local $4
     get_local $6
     i32.add
     get_local $3
     i32.store16
     get_local $4
     i32.const 2
     i32.add
    else     
     get_local $3
     i32.const 191
     i32.gt_u
     tee_local $5
     if
      get_local $3
      i32.const 224
      i32.lt_u
      set_local $5
     end
     get_local $5
     if
      get_local $2
      i32.const 1
      i32.add
      get_local $1
      i32.gt_u
      if
       i32.const 0
       i32.const 864
       i32.const 510
       i32.const 8
       call $~lib/env/abort
       unreachable
      end
      get_local $2
      tee_local $5
      i32.const 1
      i32.add
      set_local $2
      get_local $4
      get_local $6
      i32.add
      get_local $0
      get_local $5
      i32.add
      i32.load8_u
      i32.const 63
      i32.and
      get_local $3
      i32.const 31
      i32.and
      i32.const 6
      i32.shl
      i32.or
      i32.store16
     else      
      get_local $3
      i32.const 239
      i32.gt_u
      tee_local $5
      if
       get_local $3
       i32.const 365
       i32.lt_u
       set_local $5
      end
      get_local $5
      if
       get_local $2
       i32.const 3
       i32.add
       get_local $1
       i32.gt_u
       if
        i32.const 0
        i32.const 864
        i32.const 514
        i32.const 8
        call $~lib/env/abort
        unreachable
       end
       get_local $4
       get_local $6
       i32.add
       get_local $3
       i32.const 7
       i32.and
       i32.const 18
       i32.shl
       get_local $2
       tee_local $5
       get_local $0
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 12
       i32.shl
       i32.or
       get_local $2
       i32.const 1
       i32.add
       tee_local $2
       get_local $0
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       tee_local $3
       get_local $2
       i32.const 1
       i32.add
       tee_local $2
       get_local $0
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.or
       i32.const 65536
       i32.sub
       tee_local $3
       i32.const 10
       i32.shr_u
       i32.const 55296
       i32.add
       i32.store16
       get_local $6
       get_local $4
       i32.const 2
       i32.add
       tee_local $4
       i32.add
       get_local $3
       i32.const 1023
       i32.and
       i32.const 56320
       i32.add
       i32.store16
      else       
       get_local $2
       i32.const 2
       i32.add
       get_local $1
       i32.gt_u
       if
        i32.const 0
        i32.const 864
        i32.const 526
        i32.const 8
        call $~lib/env/abort
        unreachable
       end
       get_local $4
       get_local $6
       i32.add
       get_local $3
       i32.const 15
       i32.and
       i32.const 12
       i32.shl
       get_local $2
       tee_local $5
       get_local $0
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.const 6
       i32.shl
       i32.or
       tee_local $3
       get_local $2
       i32.const 1
       i32.add
       tee_local $2
       get_local $0
       i32.add
       i32.load8_u
       i32.const 63
       i32.and
       i32.or
       i32.store16
      end
      get_local $2
      i32.const 1
      i32.add
      set_local $2
     end
     get_local $4
     i32.const 2
     i32.add
    end
    set_local $4
    br $continue|0
   end
  end
  get_local $1
  get_local $2
  i32.ne
  if
   i32.const 0
   i32.const 864
   i32.const 535
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  get_local $4
  i32.const 1
  i32.shr_u
  call $~lib/internal/string/allocateUnsafe
  tee_local $0
  i32.const 4
  i32.add
  get_local $6
  get_local $4
  call $~lib/internal/memory/memmove
  get_local $0
 )
 (func $assembly/index/Parser#parseString (; 41 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
  i32.load offset=8
  get_local $0
  i32.load
  call $assembly/buffer/index/Buffer#readVaruint
  call $~lib/string/String.fromUTF8
 )
 (func $assembly/index/Parser#readVaruint (; 42 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.load
  call $assembly/buffer/index/Buffer#readVaruint
 )
 (func $assembly/index/Parser#get:off (; 43 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
  i32.load offset=8
 )
 (func $assembly/index/Parser#set:off (; 44 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  i32.load
  get_local $1
  i32.store offset=8
 )
 (func $assembly/module/index/sectionName (; 45 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  block $case12|0
   block $case11|0
    block $case10|0
     block $case9|0
      block $case8|0
       block $case7|0
        block $case6|0
         block $case5|0
          block $case4|0
           block $case3|0
            block $case2|0
             block $case1|0
              get_local $0
              if
               get_local $0
               tee_local $1
               i32.const 1
               i32.eq
               br_if $case1|0
               block $tablify|0
                get_local $1
                i32.const 2
                i32.sub
                br_table $case2|0 $case3|0 $case4|0 $case5|0 $case6|0 $case7|0 $case8|0 $case9|0 $case10|0 $case11|0 $tablify|0
               end
               br $case12|0
              end
              i32.const 1040
              return
             end
             i32.const 1056
             return
            end
            i32.const 1072
            return
           end
           i32.const 1088
           return
          end
          i32.const 1112
          return
         end
         i32.const 1128
         return
        end
        i32.const 1144
        return
       end
       i32.const 1160
       return
      end
      i32.const 1176
      return
     end
     i32.const 1192
     return
    end
    i32.const 1216
    return
   end
   i32.const 1232
   return
  end
  unreachable
 )
 (func $assembly/module/index/SectionHeader#constructor (; 46 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 20
  call $~lib/allocator/arena/__memory_allocate
  tee_local $2
  i32.const 0
  i32.store
  get_local $2
  i32.const 0
  i32.store offset=4
  get_local $2
  i32.const 0
  i32.store offset=8
  get_local $2
  i32.const 0
  i32.store offset=12
  get_local $2
  i32.const 840
  i32.store offset=16
  get_local $2
  tee_local $1
  get_local $0
  i32.load offset=8
  i32.store
  get_local $1
  get_local $0
  call $assembly/buffer/index/Buffer#readVaruint
  i32.store offset=4
  get_local $1
  get_local $0
  call $assembly/buffer/index/Buffer#readVaruint
  i32.store offset=8
  get_local $1
  i32.load offset=4
  if
   get_local $1
   i32.load offset=4
   get_global $src/common/SectionId.Data
   i32.le_u
   if
    get_local $1
    get_local $1
    i32.load offset=4
    call $assembly/module/index/sectionName
    i32.store offset=16
   else    
    unreachable
   end
  else   
   get_local $0
   i32.load offset=8
   set_local $2
   get_local $0
   call $assembly/buffer/index/Buffer#readVaruint
   set_local $3
   get_local $1
   i32.const 1032
   get_local $0
   i32.load offset=8
   get_local $3
   call $~lib/string/String.fromUTF8
   call $~lib/string/String.__concat
   i32.const 1032
   call $~lib/string/String.__concat
   i32.store offset=16
   get_local $0
   get_local $0
   i32.load offset=8
   get_local $3
   i32.add
   i32.store offset=8
   get_local $1
   get_local $1
   i32.load offset=8
   get_local $0
   i32.load offset=8
   get_local $2
   i32.sub
   i32.sub
   i32.store offset=8
  end
  get_local $1
  get_local $0
  i32.load offset=8
  i32.store offset=12
  get_local $1
 )
 (func $assembly/index/Parser#parse (; 47 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_local $0
  i32.load
  tee_local $1
  i32.load offset=8
  tee_local $2
  i32.load
  set_local $3
  get_local $1
  get_local $2
  i32.const 4
  i32.add
  i32.store offset=8
  get_local $3
  i32.const 1836278016
  i32.ne
  if
   unreachable
  end
  get_local $0
  i32.load
  tee_local $1
  i32.load offset=8
  tee_local $2
  i32.load
  set_local $3
  get_local $1
  get_local $2
  i32.const 4
  i32.add
  i32.store offset=8
  get_local $3
  i32.const 1
  i32.ne
  if
   unreachable
  end
  loop $continue|0
   get_local $0
   i32.load
   i32.load offset=8
   get_local $0
   i32.load
   i32.load offset=4
   i32.lt_u
   if
    get_local $0
    i32.load
    call $assembly/module/index/SectionHeader#constructor
    set_local $1
    get_local $0
    i32.load offset=4
    i32.load
    get_local $1
    call $~lib/array/Array<SectionHeader>#push
    drop
    block $break|0
     get_global $src/common/SectionId.Type
     get_local $1
     i32.load offset=4
     i32.eq
     br_if $break|0
    end
    get_local $0
    i32.load
    get_local $1
    i32.load offset=12
    get_local $1
    i32.load offset=8
    i32.add
    i32.store offset=8
    br $continue|0
   end
  end
 )
 (func $assembly/buffer/index/Buffer#constructor (; 48 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 20
  call $~lib/allocator/arena/__memory_allocate
  tee_local $1
  i32.const 0
  i32.store
  get_local $1
  i32.const 0
  i32.store offset=4
  get_local $1
  i32.const 0
  i32.store offset=8
  get_local $1
  i32.const 0
  i32.store offset=12
  get_local $1
  i32.const 0
  i32.store offset=16
  get_local $1
  get_local $0
  i32.store
  get_local $1
  get_local $0
  i32.load
  i32.const 8
  i32.add
  i32.store offset=8
  get_local $1
  get_local $0
  i32.load offset=8
  i32.store offset=4
  get_local $1
  get_local $1
  i32.load offset=8
  i32.store offset=12
  get_local $1
  get_local $1
  i32.load offset=8
  get_local $1
  i32.load offset=4
  i32.add
  i32.store offset=16
  get_local $1
 )
 (func $assembly/index/newParser (; 49 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 0
  get_local $0
  call $assembly/buffer/index/Buffer#constructor
  call $assembly/index/Parser#constructor
 )
 (func $assembly/index/parse (; 50 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  call $assembly/index/Parser#parse
  get_local $0
  i32.load offset=4
 )
 (func $start (; 51 ;) (type $v)
  i32.const 1248
  set_global $~lib/allocator/arena/startOffset
  get_global $~lib/allocator/arena/startOffset
  set_global $~lib/allocator/arena/offset
 )
 (func $null (; 52 ;) (type $v)
  nop
 )
 (func $Parser#get:buf (; 53 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
 )
 (func $Parser#set:buf (; 54 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  i32.store
 )
 (func $Parser#get:module (; 55 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=4
 )
 (func $Parser#set:module (; 56 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  i32.store offset=4
 )
)
