(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\001\002\003")
 (data (i32.const 1068) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\002\003\004")
 (data (i32.const 1100) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00d\00o\00T\00h\00r\00o\00w\00I\00f")
 (data (i32.const 1148) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00t\00h\00r\00o\00w\00.\00t\00s")
 (data (i32.const 1196) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\003\004\005")
 (data (i32.const 1228) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00d\00o\00T\00h\00r\00o\00w\00I\00f\00L\00o\00o\00p")
 (data (i32.const 1276) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\004\005\006")
 (data (i32.const 1308) "\1c\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\06\00\00\005\006\007")
 (data (i32.const 1340) ",\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00d\00o\00T\00h\00r\00o\00w")
 (data (i32.const 1388) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 1452) "<\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (export "memory" (memory $0))
 (export "doThrow" (func $throw/doThrow))
 (start $~start)
 (func $throw/doThrow
  i32.const 1360
  i32.const 1168
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
     i32.const 1248
     i32.const 1168
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
