(module
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $features/stringref/stringGlobal (mut stringref) (ref.null none))
 (global $features/stringref/stringviewWtf8Global (mut stringview_wtf8) (ref.null none))
 (global $features/stringref/stringviewWtf16Global (mut stringview_wtf16) (ref.null none))
 (global $features/stringref/stringviewIterGlobal (mut stringview_iter) (ref.null none))
 (global $features/stringref/utf8_data i32 (i32.const 8))
 (global $features/stringref/wtf16_data i32 (i32.const 12))
 (global $features/stringref/temp_data i32 (i32.const 32))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 124))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32892))
 (global $~lib/memory/__heap_base i32 (i32.const 32892))
 (memory $0 1)
 (data $0 (i32.const 8) "abc")
 (data $1 (i32.const 12) "a\00b\00c\00")
 (data $2 (i32.const 32) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 60) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00s\00t\00r\00i\00n\00g\00r\00e\00f\00.\00t\00s\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $features/stringref/test_locals (type $none_=>_none)
  (local $stringLocal stringref)
  (local $stringviewWtf8Local stringview_wtf8)
  (local $stringviewWtf16Local stringview_wtf16)
  (local $stringviewIterLocal stringview_iter)
  ref.null none
  local.set $stringLocal
  ref.null none
  local.set $stringLocal
  ref.null none
  local.set $stringviewWtf8Local
  ref.null none
  local.set $stringviewWtf8Local
  ref.null none
  local.set $stringviewWtf16Local
  ref.null none
  local.set $stringviewWtf16Local
  ref.null none
  local.set $stringviewIterLocal
  ref.null none
  local.set $stringviewIterLocal
 )
 (func $features/stringref/test_utf8 (type $none_=>_none)
  nop
 )
 (func $features/stringref/test_lossy_utf8 (type $none_=>_none)
  nop
 )
 (func $features/stringref/test_wtf8 (type $none_=>_none)
  (local $str (ref string))
  (local $vl i32)
  (local $vr i32)
  (local $n i32)
  (local $vl|4 i32)
  (local $vr|5 i32)
  (local $n|6 i32)
  (local $a i32)
  (local $b i32)
  (local $9 i32)
  (local $a|10 i32)
  (local $b|11 i32)
  (local $view (ref stringview_wtf8))
  global.get $features/stringref/utf8_data
  i32.const 3
  string.new_wtf8 wtf8
  local.set $str
  local.get $str
  string.measure_wtf8 wtf8
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 46
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  string.hash
  drop
  local.get $str
  string.is_usv_sequence
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 48
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  local.get $str
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 49
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  string.const "abc"
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 50
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  local.get $str
  string.compare
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 51
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  string.const "b"
  string.compare
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 52
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  string.const "`"
  string.compare
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 53
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  global.get $features/stringref/temp_data
  string.encode_wtf8 wtf8
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 54
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/memory/memory.compare|inlined.0 (result i32)
   global.get $features/stringref/utf8_data
   local.set $vl
   global.get $features/stringref/temp_data
   local.set $vr
   i32.const 3
   local.set $n
   block $~lib/util/memory/memcmp|inlined.0 (result i32)
    local.get $vl
    local.set $vl|4
    local.get $vr
    local.set $vr|5
    local.get $n
    local.set $n|6
    local.get $vl|4
    local.get $vr|5
    i32.eq
    if
     i32.const 0
     br $~lib/util/memory/memcmp|inlined.0
    end
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $vl|4
    i32.const 7
    i32.and
    local.get $vr|5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $vl|4
      i32.const 7
      i32.and
      if
       local.get $n|6
       i32.eqz
       if
        i32.const 0
        br $~lib/util/memory/memcmp|inlined.0
       end
       local.get $vl|4
       i32.load8_u $0
       local.set $a
       local.get $vr|5
       i32.load8_u $0
       local.set $b
       local.get $a
       local.get $b
       i32.ne
       if
        local.get $a
        local.get $b
        i32.sub
        br $~lib/util/memory/memcmp|inlined.0
       end
       local.get $n|6
       i32.const 1
       i32.sub
       local.set $n|6
       local.get $vl|4
       i32.const 1
       i32.add
       local.set $vl|4
       local.get $vr|5
       i32.const 1
       i32.add
       local.set $vr|5
       br $while-continue|0
      end
     end
     block $while-break|1
      loop $while-continue|1
       local.get $n|6
       i32.const 8
       i32.ge_u
       if
        local.get $vl|4
        i64.load $0
        local.get $vr|5
        i64.load $0
        i64.ne
        if
         br $while-break|1
        end
        local.get $vl|4
        i32.const 8
        i32.add
        local.set $vl|4
        local.get $vr|5
        i32.const 8
        i32.add
        local.set $vr|5
        local.get $n|6
        i32.const 8
        i32.sub
        local.set $n|6
        br $while-continue|1
       end
      end
     end
    end
    loop $while-continue|2
     local.get $n|6
     local.tee $9
     i32.const 1
     i32.sub
     local.set $n|6
     local.get $9
     if
      local.get $vl|4
      i32.load8_u $0
      local.set $a|10
      local.get $vr|5
      i32.load8_u $0
      local.set $b|11
      local.get $a|10
      local.get $b|11
      i32.ne
      if
       local.get $a|10
       local.get $b|11
       i32.sub
       br $~lib/util/memory/memcmp|inlined.0
      end
      local.get $vl|4
      i32.const 1
      i32.add
      local.set $vl|4
      local.get $vr|5
      i32.const 1
      i32.add
      local.set $vr|5
      br $while-continue|2
     end
    end
    i32.const 0
    br $~lib/util/memory/memcmp|inlined.0
   end
   br $~lib/memory/memory.compare|inlined.0
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 55
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  string.as_wtf8
  local.set $view
  local.get $view
  i32.const 0
  i32.const 0
  stringview_wtf8.advance
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 58
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 0
  i32.const 1
  stringview_wtf8.advance
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 59
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 0
  i32.const 2
  stringview_wtf8.advance
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 60
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 0
  i32.const 3
  stringview_wtf8.advance
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 61
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 0
  i32.const 4
  stringview_wtf8.advance
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 62
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const -1
  i32.const 0
  stringview_wtf8.advance
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 63
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  local.get $view
  i32.const 0
  i32.const 3
  stringview_wtf8.slice
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 64
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/stringref/test_wtf16 (type $none_=>_none)
  (local $str (ref string))
  (local $vl i32)
  (local $vr i32)
  (local $n i32)
  (local $vl|4 i32)
  (local $vr|5 i32)
  (local $n|6 i32)
  (local $a i32)
  (local $b i32)
  (local $9 i32)
  (local $a|10 i32)
  (local $b|11 i32)
  (local $view (ref stringview_wtf16))
  global.get $features/stringref/wtf16_data
  i32.const 3
  string.new_wtf16
  local.set $str
  local.get $str
  string.measure_wtf16
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 72
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  string.hash
  drop
  local.get $str
  string.is_usv_sequence
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  local.get $str
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 75
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  string.const "abc"
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 76
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  local.get $str
  string.compare
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 77
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  string.const "b"
  string.compare
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 78
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  string.const "`"
  string.compare
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 79
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  global.get $features/stringref/temp_data
  string.encode_wtf16
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 80
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/memory/memory.compare|inlined.1 (result i32)
   global.get $features/stringref/wtf16_data
   local.set $vl
   global.get $features/stringref/temp_data
   local.set $vr
   i32.const 6
   local.set $n
   block $~lib/util/memory/memcmp|inlined.1 (result i32)
    local.get $vl
    local.set $vl|4
    local.get $vr
    local.set $vr|5
    local.get $n
    local.set $n|6
    local.get $vl|4
    local.get $vr|5
    i32.eq
    if
     i32.const 0
     br $~lib/util/memory/memcmp|inlined.1
    end
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $vl|4
    i32.const 7
    i32.and
    local.get $vr|5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $vl|4
      i32.const 7
      i32.and
      if
       local.get $n|6
       i32.eqz
       if
        i32.const 0
        br $~lib/util/memory/memcmp|inlined.1
       end
       local.get $vl|4
       i32.load8_u $0
       local.set $a
       local.get $vr|5
       i32.load8_u $0
       local.set $b
       local.get $a
       local.get $b
       i32.ne
       if
        local.get $a
        local.get $b
        i32.sub
        br $~lib/util/memory/memcmp|inlined.1
       end
       local.get $n|6
       i32.const 1
       i32.sub
       local.set $n|6
       local.get $vl|4
       i32.const 1
       i32.add
       local.set $vl|4
       local.get $vr|5
       i32.const 1
       i32.add
       local.set $vr|5
       br $while-continue|0
      end
     end
     block $while-break|1
      loop $while-continue|1
       local.get $n|6
       i32.const 8
       i32.ge_u
       if
        local.get $vl|4
        i64.load $0
        local.get $vr|5
        i64.load $0
        i64.ne
        if
         br $while-break|1
        end
        local.get $vl|4
        i32.const 8
        i32.add
        local.set $vl|4
        local.get $vr|5
        i32.const 8
        i32.add
        local.set $vr|5
        local.get $n|6
        i32.const 8
        i32.sub
        local.set $n|6
        br $while-continue|1
       end
      end
     end
    end
    loop $while-continue|2
     local.get $n|6
     local.tee $9
     i32.const 1
     i32.sub
     local.set $n|6
     local.get $9
     if
      local.get $vl|4
      i32.load8_u $0
      local.set $a|10
      local.get $vr|5
      i32.load8_u $0
      local.set $b|11
      local.get $a|10
      local.get $b|11
      i32.ne
      if
       local.get $a|10
       local.get $b|11
       i32.sub
       br $~lib/util/memory/memcmp|inlined.1
      end
      local.get $vl|4
      i32.const 1
      i32.add
      local.set $vl|4
      local.get $vr|5
      i32.const 1
      i32.add
      local.set $vr|5
      br $while-continue|2
     end
    end
    i32.const 0
    br $~lib/util/memory/memcmp|inlined.1
   end
   br $~lib/memory/memory.compare|inlined.1
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 81
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  string.as_wtf16
  local.set $view
  local.get $view
  stringview_wtf16.length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 84
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  local.get $view
  i32.const 0
  i32.const 3
  stringview_wtf16.slice
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 85
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 0
  stringview_wtf16.get_codeunit
  i32.const 97
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 86
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 1
  stringview_wtf16.get_codeunit
  i32.const 98
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 87
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 2
  stringview_wtf16.get_codeunit
  i32.const 99
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 88
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $features/stringref/test_iter (type $none_=>_none)
  (local $str (ref string))
  (local $view (ref stringview_iter))
  global.get $features/stringref/wtf16_data
  i32.const 3
  string.new_wtf16
  local.set $str
  local.get $str
  string.as_iter
  local.set $view
  local.get $view
  stringview_iter.next
  i32.const 97
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 97
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  stringview_iter.next
  i32.const 98
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 98
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  stringview_iter.next
  i32.const 99
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 99
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  stringview_iter.next
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 100
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 1
  stringview_iter.rewind
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 101
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  stringview_iter.next
  i32.const 99
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 102
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  stringview_iter.next
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 103
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const -1
  stringview_iter.rewind
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 104
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 2
  stringview_iter.advance
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 105
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  stringview_iter.next
  i32.const 99
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 106
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  stringview_iter.next
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 107
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const -1
  stringview_iter.rewind
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 108
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 1
  stringview_iter.slice
  i32.const 97
  string.from_code_point
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 109
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 2
  stringview_iter.slice
  i32.const 97
  string.from_code_point
  i32.const 98
  string.from_code_point
  string.concat
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 110
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 3
  stringview_iter.slice
  local.get $str
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 111
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const -1
  stringview_iter.slice
  local.get $str
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 112
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  stringview_iter.next
  drop
  local.get $view
  i32.const 1
  stringview_iter.slice
  i32.const 98
  string.from_code_point
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 114
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const 2
  stringview_iter.slice
  i32.const 98
  string.from_code_point
  i32.const 99
  string.from_code_point
  string.concat
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 115
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $view
  i32.const -1
  stringview_iter.slice
  i32.const 98
  string.from_code_point
  i32.const 99
  string.from_code_point
  string.concat
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 116
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $start:features/stringref (type $none_=>_none)
  call $features/stringref/test_locals
  call $features/stringref/test_utf8
  call $features/stringref/test_lossy_utf8
  call $features/stringref/test_wtf8
  call $features/stringref/test_wtf16
  call $features/stringref/test_iter
 )
 (func $~start (type $none_=>_none)
  call $start:features/stringref
 )
)
