(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data $0 (i32.const 1036) ",")
 (data $0.1 (i32.const 1048) "\02\00\00\00\1c\00\00\00i\00s\00s\00u\00e\00s\00/\002\008\002\005\00.\00t\00s")
 (export "init" (func $issues/2825/init))
 (export "memory" (memory $0))
 (start $~start)
 (func $issues/2825/init
  loop $for-loop|0
   br $for-loop|0
  end
  unreachable
 )
 (func $~start
  (local $0 i32)
  loop $for-loop|0
   local.get $0
   i32.const 10
   i32.lt_s
   if
    local.get $0
    i32.const 1234
    i32.eq
    if
     i32.const 0
     i32.const 1056
     i32.const 2
     i32.const 3
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
 )
)
