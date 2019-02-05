(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00.\00t\00s\00")
 (table $0 2 funcref)
 (elem (i32.const 0) $null $inlining/func_fe~anonymous|1)
 (global $inlining/constantGlobal i32 (i32.const 1))
 (global $~argc (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 36))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "test" (func $inlining/test))
 (start $start)
 (func $inlining/test (; 1 ;) (type $i) (result i32)
  global.get $inlining/constantGlobal
  i32.const 2
  i32.add
 )
 (func $inlining/func_ii (; 2 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 42
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 42
  i32.lt_s
  if (result i32)
   i32.const 2
  else   
   i32.const 3
  end
 )
 (func $inlining/func_ii_opt (; 3 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $inlining/func_ii_loc (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.set $1
  local.get $1
  local.set $3
  local.get $3
  local.set $4
  local.get $4
  i32.const 1
  i32.add
  local.set $2
  local.get $2
 )
 (func $inlining/func_iv (; 5 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $inlining/func_fe~anonymous|1 (; 6 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
 )
 (func $inlining/func_fe (; 7 ;) (type $i) (result i32)
  i32.const 1
 )
 (func $inlining/Foo.method_static (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $inlining/Foo#method_this (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
 )
 (func $inlining/test_funcs (; 10 ;) (type $v)
  (local $0 f32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i32)
  f32.const -1
  local.set $0
  f64.const -2
  local.set $1
  block $__inlined_func$inlining/func_ii (result i32)
   i32.const 42
   local.set $3
   block (result i32)
    local.get $3
    i32.const 42
    i32.eq
    if
     i32.const 1
     br $__inlined_func$inlining/func_ii
    end
    local.get $3
    i32.const 42
    i32.lt_s
    if (result i32)
     i32.const 2
    else     
     i32.const 3
    end
   end
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 59
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$inlining/func_ii0 (result i32)
   i32.const 41
   local.set $4
   block (result i32)
    local.get $4
    i32.const 42
    i32.eq
    if
     i32.const 1
     br $__inlined_func$inlining/func_ii0
    end
    local.get $4
    i32.const 42
    i32.lt_s
    if (result i32)
     i32.const 2
    else     
     i32.const 3
    end
   end
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 60
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$inlining/func_ii1 (result i32)
   i32.const 43
   local.set $5
   block (result i32)
    local.get $5
    i32.const 42
    i32.eq
    if
     i32.const 1
     br $__inlined_func$inlining/func_ii1
    end
    local.get $5
    i32.const 42
    i32.lt_s
    if (result i32)
     i32.const 2
    else     
     i32.const 3
    end
   end
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 61
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$inlining/func_ii_opt (result i32)
   i32.const 0
   local.set $6
   local.get $6
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 62
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$inlining/func_ii_opt0 (result i32)
   i32.const 1
   local.set $7
   local.get $7
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 63
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$inlining/func_ii_loc (result i32)
   i32.const 2
   local.set $8
   i32.const 0
   local.set $9
   i32.const 0
   local.set $10
   i32.const 0
   local.set $11
   i32.const 0
   local.set $12
   block (result i32)
    local.get $8
    local.set $9
    local.get $9
    local.set $11
    local.get $11
    local.set $12
    local.get $12
    i32.const 1
    i32.add
    local.set $10
    local.get $10
   end
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 64
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$inlining/func_ii_loc0 (result i32)
   i32.const 3
   local.set $13
   i32.const 0
   local.set $14
   i32.const 0
   local.set $15
   i32.const 0
   local.set $16
   i32.const 0
   local.set $17
   block (result i32)
    local.get $13
    local.set $14
    local.get $14
    local.set $16
    local.get $16
    local.set $17
    local.get $17
    i32.const 1
    i32.add
    local.set $15
    local.get $15
   end
  end
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 65
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$inlining/func_iv
   i32.const 0
   local.set $18
   nop
  end
  block (result i32)
   i32.const 1
   global.set $~argc
   i32.const 2
   block $__inlined_func$inlining/func_fe (result i32)
    i32.const 1
   end
   call_indirect (type $ii)
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 67
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $__inlined_func$inlining/Foo.method_static (result i32)
   i32.const 42
   local.set $19
   i32.const 2
   local.set $20
   local.get $19
   local.get $20
   i32.add
  end
  i32.const 44
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 68
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 123
  local.set $2
  block $__inlined_func$inlining/Foo#method_this (result i32)
   local.get $2
   local.set $21
   i32.const 43
   local.set $22
   i32.const 3
   local.set $23
   local.get $21
  end
  i32.const 123
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 70
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $inlining/recursive_b (; 11 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 0
  i32.ne
  if
   local.get $0
   local.set $1
   local.get $1
   i32.const 0
   i32.ne
   if
    local.get $1
    call $inlining/recursive_b
   end
  end
 )
 (func $inlining/recursive_a (; 12 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 0
  i32.ne
  if
   local.get $0
   local.set $1
   i32.const 0
   local.set $2
   local.get $1
   i32.const 0
   i32.ne
   if
    local.get $1
    local.set $2
    local.get $2
    i32.const 0
    i32.ne
    if
     local.get $2
     call $inlining/recursive_b
    end
   end
  end
 )
 (func $inlining/test_recursive (; 13 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  local.set $0
  i32.const 0
  local.set $1
  i32.const 0
  local.set $2
  local.get $0
  i32.const 0
  i32.ne
  if
   local.get $0
   local.set $1
   i32.const 0
   local.set $2
   local.get $1
   i32.const 0
   i32.ne
   if
    local.get $1
    local.set $2
    local.get $2
    i32.const 0
    i32.ne
    if
     local.get $2
     call $inlining/recursive_b
    end
   end
  end
 )
 (func $start (; 14 ;) (type $v)
  call $inlining/test
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 10
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  call $inlining/test_funcs
  call $inlining/test_recursive
 )
 (func $null (; 15 ;) (type $v)
 )
)
