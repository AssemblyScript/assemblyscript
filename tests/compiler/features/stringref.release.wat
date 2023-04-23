(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data $0 (i32.const 1024) "abc")
 (data $1 (i32.const 1028) "a\00b\00c")
 (data $3 (i32.const 1068) "<")
 (data $3.1 (i32.const 1080) "\02\00\00\00*\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00s\00t\00r\00i\00n\00g\00r\00e\00f\00.\00t\00s")
 (data $4 (i32.const 1132) "<")
 (data $4.1 (i32.const 1144) "\02\00\00\00$\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00o\00d\00e\00 \00p\00o\00i\00n\00t")
 (data $5 (i32.const 1196) "<")
 (data $5.1 (i32.const 1208) "\02\00\00\00\"\00\00\00~\00l\00i\00b\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00.\00t\00s")
 (data $6 (i32.const 1260) "<")
 (data $6.1 (i32.const 1272) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
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
   i32.const 60
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
   i32.const 62
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
   i32.const 63
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
   i32.const 64
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
   i32.const 65
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
   i32.const 66
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
   i32.const 67
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
   i32.const 68
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
   i32.const 69
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
   i32.const 72
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
   i32.const 73
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
   i32.const 74
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
   i32.const 75
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
   i32.const 76
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
   i32.const 77
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
   i32.const 78
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
   i32.const 86
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
   i32.const 88
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
   i32.const 89
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
   i32.const 90
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
   i32.const 91
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
   i32.const 92
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
   i32.const 93
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
   i32.const 94
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
   i32.const 95
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
   i32.const 98
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
   i32.const 99
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
   i32.const 100
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
   i32.const 101
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
   i32.const 102
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
   i32.const 111
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
   i32.const 112
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
   i32.const 113
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
   i32.const 114
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
   i32.const 115
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
   i32.const 116
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
   i32.const 117
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
   i32.const 118
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
   i32.const 119
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
   i32.const 120
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
   i32.const 121
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
   i32.const 122
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
   i32.const 123
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
   i32.const 124
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
   i32.const 125
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
   i32.const 126
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
   i32.const 128
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
   i32.const 129
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
   i32.const 130
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:features/stringref (type $none_=>_none)
  (local $0 i32)
  (local $1 (ref stringview_wtf16))
  (local $2 i32)
  (local $3 i32)
  string.const ""
  string.as_wtf8
  drop
  string.const ""
  string.as_wtf16
  drop
  string.const ""
  string.as_iter
  drop
  call $features/stringref/test_wtf8
  call $features/stringref/test_wtf16
  call $features/stringref/test_iter
  i32.const 97
  string.from_code_point
  string.const "a"
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 145
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.measure_wtf16
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 147
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.measure_wtf16
  i32.const 1
  i32.le_u
  if
   i32.const 1280
   i32.const 1216
   i32.const 73
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.as_wtf16
  i32.const 1
  stringview_wtf16.get_codeunit
  string.from_code_point
  string.const "b"
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 148
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.measure_wtf16
  if (result (ref string))
   string.const "abc"
   string.as_wtf16
   i32.const 0
   stringview_wtf16.get_codeunit
   string.from_code_point
  else
   string.const ""
  end
  string.const "a"
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 149
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.measure_wtf16
  if (result i32)
   string.const "abc"
   string.as_wtf16
   i32.const 0
   stringview_wtf16.get_codeunit
  else
   i32.const -1
  end
  i32.const 97
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 150
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const -1
  local.set $0
  block $__inlined_func$~lib/reference/RefString#codePointAt
   string.const "abc"
   string.measure_wtf16
   local.tee $2
   i32.eqz
   br_if $__inlined_func$~lib/reference/RefString#codePointAt
   local.get $2
   i32.const 1
   i32.eq
   string.const "abc"
   string.as_wtf16
   local.tee $1
   i32.const 0
   stringview_wtf16.get_codeunit
   local.tee $0
   i32.const 64512
   i32.and
   i32.const 55296
   i32.ne
   i32.or
   br_if $__inlined_func$~lib/reference/RefString#codePointAt
   local.get $1
   i32.const 1
   stringview_wtf16.get_codeunit
   local.tee $2
   i32.const 64512
   i32.and
   i32.const 56320
   i32.ne
   br_if $__inlined_func$~lib/reference/RefString#codePointAt
   local.get $0
   i32.const 10
   i32.shl
   local.get $2
   i32.add
   i32.const 56613888
   i32.sub
   local.set $0
  end
  local.get $0
  i32.const 97
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 151
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.const "abc"
  string.concat
  string.const "abcabc"
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 152
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1073741823
  string.const "abc"
  string.measure_wtf16
  local.tee $0
  local.get $0
  i32.const 1073741823
  i32.gt_s
  select
  local.get $0
  i32.sub
  local.tee $2
  i32.const 0
  i32.lt_s
  if (result i32)
   i32.const 0
  else
   string.const "abc"
   string.as_wtf16
   local.get $2
   local.get $0
   local.get $2
   i32.add
   stringview_wtf16.slice
   string.const "abc"
   string.eq
  end
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 153
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.const "abc"
  string.eq
  i32.eqz
  if
   i32.const 0
   i32.const 1088
   i32.const 154
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  ref.null none
  string.eq
  if
   i32.const 0
   i32.const 1088
   i32.const 155
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.const ""
  string.eq
  if
   i32.const 0
   i32.const 1088
   i32.const 156
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.const "ab"
  string.compare
  i32.const 0
  i32.le_s
  if
   i32.const 0
   i32.const 1088
   i32.const 157
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.const "ab"
  string.compare
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   i32.const 1088
   i32.const 158
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.const "abcd"
  string.compare
  i32.const 0
  i32.ge_s
  if
   i32.const 0
   i32.const 1088
   i32.const 159
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  string.const "abc"
  string.const "abcd"
  string.compare
  i32.const 0
  i32.gt_s
  if
   i32.const 0
   i32.const 1088
   i32.const 160
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  block $__inlined_func$~lib/reference/RefString#indexOf
   string.const "b"
   string.measure_wtf16
   local.tee $2
   i32.eqz
   br_if $__inlined_func$~lib/reference/RefString#indexOf
   i32.const -1
   local.set $0
   string.const "abc"
   string.measure_wtf16
   local.tee $3
   i32.eqz
   br_if $__inlined_func$~lib/reference/RefString#indexOf
   local.get $3
   i32.const 0
   local.get $3
   i32.const 0
   i32.le_s
   select
   local.set $0
   string.const "abc"
   string.as_wtf16
   local.set $1
   local.get $3
   local.get $2
   i32.sub
   local.set $3
   loop $for-loop|0
    local.get $0
    local.get $3
    i32.le_s
    if
     local.get $1
     local.get $0
     local.get $0
     local.get $2
     i32.add
     stringview_wtf16.slice
     string.const "b"
     string.eq
     br_if $__inlined_func$~lib/reference/RefString#indexOf
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
  i32.const -1
  i32.eq
  if
   i32.const 0
   i32.const 1088
   i32.const 161
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $0
  block $__inlined_func$~lib/reference/RefString#indexOf0
   string.const "b"
   string.measure_wtf16
   local.tee $2
   i32.eqz
   br_if $__inlined_func$~lib/reference/RefString#indexOf0
   i32.const -1
   local.set $0
   string.const "abc"
   string.measure_wtf16
   local.tee $3
   i32.eqz
   br_if $__inlined_func$~lib/reference/RefString#indexOf0
   local.get $3
   i32.const 0
   local.get $3
   i32.const 0
   i32.le_s
   select
   local.set $0
   string.const "abc"
   string.as_wtf16
   local.set $1
   local.get $3
   local.get $2
   i32.sub
   local.set $3
   loop $for-loop|01
    local.get $0
    local.get $3
    i32.le_s
    if
     local.get $1
     local.get $0
     local.get $0
     local.get $2
     i32.add
     stringview_wtf16.slice
     string.const "b"
     string.eq
     br_if $__inlined_func$~lib/reference/RefString#indexOf0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|01
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $__inlined_func$~lib/reference/RefString#lastIndexOf
   string.const "b"
   string.measure_wtf16
   local.tee $2
   i32.eqz
   if
    string.const "abc"
    string.measure_wtf16
    local.set $0
    br $__inlined_func$~lib/reference/RefString#lastIndexOf
   end
   i32.const -1
   local.set $0
   string.const "abc"
   string.measure_wtf16
   local.tee $3
   i32.eqz
   br_if $__inlined_func$~lib/reference/RefString#lastIndexOf
   local.get $3
   local.get $2
   i32.sub
   local.set $0
   loop $for-loop|03
    local.get $0
    i32.const 0
    i32.ge_s
    if
     string.const "abc"
     string.as_wtf16
     local.get $0
     local.get $0
     local.get $2
     i32.add
     stringview_wtf16.slice
     string.const "b"
     string.eq
     br_if $__inlined_func$~lib/reference/RefString#lastIndexOf
     local.get $0
     i32.const 1
     i32.sub
     local.set $0
     br $for-loop|03
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 1088
   i32.const 163
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (type $none_=>_none)
  call $start:features/stringref
 )
)
