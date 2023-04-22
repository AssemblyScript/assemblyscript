(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data $0 (i32.const 1024) "abc")
 (data $1 (i32.const 1028) "a\00b\00c")
 (data $3 (i32.const 1068) "<")
 (data $3.1 (i32.const 1080) "\02\00\00\00*\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00s\00t\00r\00i\00n\00g\00r\00e\00f\00.\00t\00s")
 (export "memory" (memory $0))
 (start $~start)
 (func $features/stringref/test_wtf8 (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 (ref stringview_wtf8))
  (local $4 i32)
  (local $5 i32)
  (local $6 (ref string))
  (local $7 i32)
  i32.const 1024
  i32.const 3
  string.new_wtf8 wtf8
  local.tee $6
  string.measure_wtf8 wtf8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 29
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  string.hash
  drop
  local.get $6
  string.is_usv_sequence
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 31
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  local.get $6
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 32
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  string.const "abc"
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 33
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  local.get $6
  string.compare
  if
   i32.const 0
   i32.const 1088
   i32.const 34
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  string.const "b"
  string.compare
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 35
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  string.const "`"
  string.compare
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 36
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 1040
  string.encode_wtf8 wtf8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 3
  local.set $1
  i32.const 1024
  local.set $5
  i32.const 1040
  local.set $4
  block $~lib/util/memory/memcmp|inlined.0
   loop $while-continue|0
    local.get $5
    i32.const 7
    i32.and
    if
     i32.const 0
     local.set $7
     local.get $1
     i32.eqz
     br_if $~lib/util/memory/memcmp|inlined.0
     local.get $5
     i32.load8_u $0
     local.tee $2
     local.get $4
     i32.load8_u $0
     local.tee $0
     i32.sub
     local.set $7
     local.get $0
     local.get $2
     i32.ne
     br_if $~lib/util/memory/memcmp|inlined.0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|0
    end
   end
   loop $while-continue|1
    local.get $1
    i32.const 8
    i32.ge_u
    if
     local.get $5
     i64.load $0
     local.get $4
     i64.load $0
     i64.eq
     if
      local.get $5
      i32.const 8
      i32.add
      local.set $5
      local.get $4
      i32.const 8
      i32.add
      local.set $4
      local.get $1
      i32.const 8
      i32.sub
      local.set $1
      br $while-continue|1
     end
    end
   end
   loop $while-continue|2
    local.get $1
    local.tee $0
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    if
     local.get $5
     i32.load8_u $0
     local.tee $2
     local.get $4
     i32.load8_u $0
     local.tee $0
     i32.sub
     local.set $7
     local.get $0
     local.get $2
     i32.ne
     br_if $~lib/util/memory/memcmp|inlined.0
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
   i32.const 0
   local.set $7
  end
  local.get $7
  if
   i32.const 0
   i32.const 1088
   i32.const 38
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  string.as_wtf8
  local.tee $3
  i32.const 0
  i32.const 0
  stringview_wtf8.advance
  if
   i32.const 0
   i32.const 1088
   i32.const 41
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.const 1
  stringview_wtf8.advance
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 42
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.const 2
  stringview_wtf8.advance
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 43
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.const 3
  stringview_wtf8.advance
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 44
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.const 4
  stringview_wtf8.advance
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 45
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -1
  i32.const 0
  stringview_wtf8.advance
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  local.get $3
  i32.const 0
  i32.const 3
  stringview_wtf8.slice
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 47
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/stringref/test_wtf16 (type $none_=>_none)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 (ref stringview_wtf16))
  (local $6 (ref string))
  (local $7 i32)
  i32.const 1028
  i32.const 3
  string.new_wtf16
  local.tee $6
  string.measure_wtf16
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 55
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  string.hash
  drop
  local.get $6
  string.is_usv_sequence
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 57
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  local.get $6
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 58
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  string.const "abc"
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 59
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  local.get $6
  string.compare
  if
   i32.const 0
   i32.const 1088
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  string.const "b"
  string.compare
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 61
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  string.const "`"
  string.compare
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 62
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const 1040
  string.encode_wtf16
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 6
  local.set $1
  i32.const 1028
  local.set $4
  i32.const 1040
  local.set $3
  block $~lib/util/memory/memcmp|inlined.1
   loop $while-continue|2
    local.get $1
    local.tee $0
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    if
     local.get $4
     i32.load8_u $0
     local.tee $2
     local.get $3
     i32.load8_u $0
     local.tee $0
     i32.sub
     local.set $7
     local.get $0
     local.get $2
     i32.ne
     br_if $~lib/util/memory/memcmp|inlined.1
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $while-continue|2
    end
   end
   i32.const 0
   local.set $7
  end
  local.get $7
  if
   i32.const 0
   i32.const 1088
   i32.const 64
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  string.as_wtf16
  local.tee $5
  stringview_wtf16.length
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 67
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  local.get $5
  i32.const 0
  i32.const 3
  stringview_wtf16.slice
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 68
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 0
  stringview_wtf16.get_codeunit
  i32.const 97
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 69
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 1
  stringview_wtf16.get_codeunit
  i32.const 98
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 2
  stringview_wtf16.get_codeunit
  i32.const 99
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 71
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/stringref/test_iter (type $none_=>_none)
  (local $0 (ref stringview_iter))
  (local $1 (ref string))
  i32.const 1028
  i32.const 3
  string.new_wtf16
  local.tee $1
  string.as_iter
  local.tee $0
  stringview_iter.next
  i32.const 97
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 80
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  stringview_iter.next
  i32.const 98
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 81
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  stringview_iter.next
  i32.const 99
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 82
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  stringview_iter.next
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 83
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  stringview_iter.rewind
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 84
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  stringview_iter.next
  i32.const 99
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 85
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  stringview_iter.next
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 86
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  stringview_iter.rewind
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 87
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  stringview_iter.advance
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 88
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  stringview_iter.next
  i32.const 99
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 89
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  stringview_iter.next
  i32.const -1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 90
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  stringview_iter.rewind
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 91
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  stringview_iter.slice
  i32.const 97
  string.from_code_point
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 92
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  stringview_iter.slice
  i32.const 97
  string.from_code_point
  i32.const 98
  string.from_code_point
  string.concat
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 93
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  stringview_iter.slice
  local.get $1
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 94
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  stringview_iter.slice
  local.get $1
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 95
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  stringview_iter.next
  drop
  local.get $0
  i32.const 1
  stringview_iter.slice
  i32.const 98
  string.from_code_point
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 97
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  stringview_iter.slice
  i32.const 98
  string.from_code_point
  i32.const 99
  string.from_code_point
  string.concat
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 98
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const -1
  stringview_iter.slice
  i32.const 98
  string.from_code_point
  i32.const 99
  string.from_code_point
  string.concat
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 99
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (type $none_=>_none)
  call $features/stringref/test_wtf8
  call $features/stringref/test_wtf16
  call $features/stringref/test_iter
 )
)
