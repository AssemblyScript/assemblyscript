(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1024) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\001\002\003")
 (data (i32.const 1056) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\002\003\004")
 (data (i32.const 1088) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00d\00o\00T\00h\00r\00o\00w\00I\00f")
 (data (i32.const 1136) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00t\00h\00r\00o\00w\00.\00t\00s")
 (data (i32.const 1168) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\003\004\005")
 (data (i32.const 1200) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00d\00o\00T\00h\00r\00o\00w\00I\00f\00L\00o\00o\00p")
 (data (i32.const 1248) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\004\005\006")
 (data (i32.const 1280) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\005\006\007")
 (data (i32.const 1312) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00d\00o\00T\00h\00r\00o\00w")
 (data (i32.const 1344) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1392) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (export "memory" (memory $0))
 (export "doThrow" (func $throw/doThrow))
 (start $~start)
 (func $throw/doThrow
  i32.const 1328
  i32.const 1152
  i32.const 3
  i32.const 3
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  (local $0 i32)
  loop $while-continue|0
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   i32.const 10
   i32.lt_s
   if
    local.get $0
    i32.const 10
    i32.gt_s
    if
     i32.const 1216
     i32.const 1152
     i32.const 26
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    br $while-continue|0
   end
  end
 )
)
