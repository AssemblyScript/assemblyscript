(module
 (type $none_=>_none (func))
 (global $features/gc/a anyref (ref.null any))
 (global $features/gc/b i31ref (ref.null i31))
 (global $features/gc/c dataref (ref.null data))
 (memory $0 1)
 (data (i32.const 1036) ",")
 (data (i32.const 1048) "\01\00\00\00\1c\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00g\00c\00.\00t\00s")
 (export "a" (global $features/gc/a))
 (export "b" (global $features/gc/b))
 (export "c" (global $features/gc/c))
 (export "memory" (memory $0))
 (export "_start" (func $~start))
 (func $~start
  nop
 )
)
