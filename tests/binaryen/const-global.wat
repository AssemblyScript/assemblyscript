(module
 (type $i (func (result i32)))
 (global $testGlobal i32 (i32.const 2))
 (export "test" (func $test))
 (func $test (; 0 ;) (type $i) (result i32)
  (get_global $testGlobal)
 )
)