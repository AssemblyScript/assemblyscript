(module
 (type $i32_=>_externref (func (param i32) (result externref)))
 (type $none_=>_none (func))
 (type $externref_=>_none (func (param externref)))
 (type $externref_=>_i32 (func (param externref) (result i32)))
 (type $externref_=>_externref (func (param externref) (result externref)))
 (type $externref_i32_=>_externref (func (param externref i32) (result externref)))
 (import "DOM" "newString" (func $~lib/bindings/DOM/newString (param i32) (result externref)))
 (import "DOM" "console.log" (func $~lib/bindings/DOM/console.log (param externref)))
 (import "DOM" "String#get:length" (func $~lib/bindings/DOM/String#get:length (param externref) (result i32)))
 (import "DOM" "newNumber" (func $~lib/bindings/DOM/newNumber (param i32) (result externref)))
 (import "DOM" "String#repeat" (func $~lib/bindings/DOM/String#repeat (param externref i32) (result externref)))
 (import "DOM" "Object#toString" (func $~lib/bindings/DOM/Object#toString (param externref) (result externref)))
 (memory $0 1)
 (data (i32.const 1024) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00h\00e\00l\00l\00o\00 \00w\00o\00r\00l\00d")
 (export "memory" (memory $0))
 (start $~start)
 (func $~start
  (local $0 externref)
  i32.const 1040
  call $~lib/bindings/DOM/newString
  local.tee $0
  call $~lib/bindings/DOM/console.log
  local.get $0
  call $~lib/bindings/DOM/String#get:length
  call $~lib/bindings/DOM/newNumber
  call $~lib/bindings/DOM/console.log
  local.get $0
  i32.const 2
  call $~lib/bindings/DOM/String#repeat
  call $~lib/bindings/DOM/String#get:length
  call $~lib/bindings/DOM/newNumber
  call $~lib/bindings/DOM/Object#toString
  call $~lib/bindings/DOM/console.log
 )
)
