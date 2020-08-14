(module
 (type $i32_=>_externref (func (param i32) (result externref)))
 (type $externref_i32_=>_externref (func (param externref i32) (result externref)))
 (type $externref_externref_=>_externref (func (param externref externref) (result externref)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $externref_=>_none (func (param externref)))
 (type $externref_=>_i32 (func (param externref) (result i32)))
 (type $externref_externref_=>_i32 (func (param externref externref) (result i32)))
 (import "DOM" "newString" (func $~lib/bindings/DOM/String.new (param i32) (result externref)))
 (import "DOM" "console.log" (func $~lib/bindings/DOM/console.log (param externref)))
 (import "DOM" "String#get:length" (func $~lib/bindings/DOM/String#get:length (param externref) (result i32)))
 (import "DOM" "Number#constructor" (func $~lib/bindings/DOM/Number.new<i32> (param i32) (result externref)))
 (import "DOM" "String#repeat" (func $~lib/bindings/DOM/String#repeat (param externref i32) (result externref)))
 (import "DOM" "Number#toString" (func $~lib/bindings/DOM/Number#toString (param externref i32) (result externref)))
 (import "DOM" "RegExp#constructor" (func $~lib/bindings/DOM/RegExp#constructor (param externref externref) (result externref)))
 (import "DOM" "RegExp#test" (func $~lib/bindings/DOM/RegExp#test (param externref externref) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "DOM" "RegExp#exec" (func $~lib/bindings/DOM/RegExp#exec (param externref externref) (result externref)))
 (memory $0 1)
 (data (i32.const 1024) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d")
 (data (i32.const 1072) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00b")
 (data (i32.const 1104) "\02\00\00\00\01\00\00\00\01\00\00\00\02\00\00\00g")
 (data (i32.const 1136) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00a\00b\00b\00a")
 (data (i32.const 1168) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00b\00i\00n\00d\00i\00n\00g\00s\00/\00d\00o\00m\00.\00t\00s")
 (global $~started (mut i32) (i32.const 0))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (func $~start
  (local $0 externref)
  (local $1 externref)
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  i32.const 1040
  call $~lib/bindings/DOM/String.new
  local.tee $0
  call $~lib/bindings/DOM/console.log
  local.get $0
  call $~lib/bindings/DOM/String#get:length
  call $~lib/bindings/DOM/Number.new<i32>
  call $~lib/bindings/DOM/console.log
  local.get $0
  i32.const 2
  call $~lib/bindings/DOM/String#repeat
  call $~lib/bindings/DOM/String#get:length
  call $~lib/bindings/DOM/Number.new<i32>
  i32.const 10
  call $~lib/bindings/DOM/Number#toString
  call $~lib/bindings/DOM/console.log
  i32.const 1088
  call $~lib/bindings/DOM/String.new
  i32.const 1120
  call $~lib/bindings/DOM/String.new
  call $~lib/bindings/DOM/RegExp#constructor
  local.tee $0
  i32.const 1152
  call $~lib/bindings/DOM/String.new
  local.tee $1
  call $~lib/bindings/DOM/RegExp#test
  i32.eqz
  if
   i32.const 0
   i32.const 1184
   i32.const 16
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/bindings/DOM/RegExp#exec
  call $~lib/bindings/DOM/console.log
 )
)
