(module
 (type $none_=>_none (func))
 (type $ref|string|_ref|string|_i32_=>_i32 (func (param (ref string) (ref string) i32) (result i32)))
 (type $ref|string|_ref|string|_=>_i32 (func (param (ref string) (ref string)) (result i32)))
 (type $ref|string|_i32_=>_stringref (func (param (ref string) i32) (result stringref)))
 (type $ref|string|_i32_=>_i32 (func (param (ref string) i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_ref|string| (func (param i32) (result (ref string))))
 (type $stringref_stringref_=>_i32 (func (param stringref stringref) (result i32)))
 (type $ref|string|_=>_i32 (func (param (ref string)) (result i32)))
 (type $ref|string|_ref|string|_=>_ref|string| (func (param (ref string) (ref string)) (result (ref string))))
 (type $stringref_=>_i32 (func (param stringref) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $features/stringref/stringGlobalNull (mut stringref) (ref.null none))
 (global $features/stringref/stringviewWtf8GlobalNull (mut stringview_wtf8) (ref.null none))
 (global $features/stringref/stringviewWtf16GlobalNull (mut stringview_wtf16) (ref.null none))
 (global $features/stringref/stringviewIterGlobalNull (mut stringview_iter) (ref.null none))
 (global $features/stringref/stringGlobal (mut (ref string)) (string.const ""))
 (global $features/stringref/stringviewWtf8Global (mut stringview_wtf8) (ref.null none))
 (global $features/stringref/stringviewWtf16Global (mut stringview_wtf16) (ref.null none))
 (global $features/stringref/stringviewIterGlobal (mut stringview_iter) (ref.null none))
 (global $features/stringref/utf8_data i32 (i32.const 8))
 (global $features/stringref/wtf16_data i32 (i32.const 12))
 (global $features/stringref/temp_data i32 (i32.const 32))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $features/stringref/str (mut (ref string)) (string.const "abc"))
 (global $~lib/reference/RefString.MAX_LENGTH i32 (i32.const 1073741823))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/memory/__data_end i32 (i32.const 316))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 33084))
 (global $~lib/memory/__heap_base i32 (i32.const 33084))
 (memory $0 1)
 (data $0 (i32.const 8) "abc")
 (data $1 (i32.const 12) "a\00b\00c\00")
 (data $2 (i32.const 32) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 60) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00f\00e\00a\00t\00u\00r\00e\00s\00/\00s\00t\00r\00i\00n\00g\00r\00e\00f\00.\00t\00s\00\00\00")
 (data $4 (i32.const 124) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00o\00d\00e\00 \00p\00o\00i\00n\00t\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 188) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00~\00l\00i\00b\00/\00r\00e\00f\00e\00r\00e\00n\00c\00e\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 252) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $features/stringref/test_locals (type $none_=>_none)
  (local $stringLocalNull stringref)
  (local $stringviewWtf8LocalNull stringview_wtf8)
  (local $stringviewWtf16LocalNull stringview_wtf16)
  (local $stringviewIterLocalNull stringview_iter)
  (local $stringLocal (ref string))
  (local $stringviewWtf8Local (ref stringview_wtf8))
  (local $stringviewWtf16Local (ref stringview_wtf16))
  (local $stringviewIterLocal (ref stringview_iter))
  ref.null none
  local.set $stringLocalNull
  ref.null none
  local.set $stringLocalNull
  ref.null none
  local.set $stringviewWtf8LocalNull
  ref.null none
  local.set $stringviewWtf8LocalNull
  ref.null none
  local.set $stringviewWtf16LocalNull
  ref.null none
  local.set $stringviewWtf16LocalNull
  ref.null none
  local.set $stringviewIterLocalNull
  ref.null none
  local.set $stringviewIterLocalNull
  string.const ""
  local.set $stringLocal
  local.get $stringLocal
  string.as_wtf8
  local.set $stringviewWtf8Local
  local.get $stringLocal
  string.as_wtf16
  local.set $stringviewWtf16Local
  local.get $stringLocal
  string.as_iter
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
   i32.const 60
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
   i32.const 62
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
   i32.const 63
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
   i32.const 64
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
   i32.const 65
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
   i32.const 66
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
   i32.const 67
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
   i32.const 68
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
   i32.const 69
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
   i32.const 72
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
   i32.const 73
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
   i32.const 74
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
   i32.const 75
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
   i32.const 76
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
   i32.const 77
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
   i32.const 78
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
   i32.const 86
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
   i32.const 88
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
   i32.const 89
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
   i32.const 90
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
   i32.const 91
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
   i32.const 92
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
   i32.const 93
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
   i32.const 94
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
   i32.const 95
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
   i32.const 98
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
   i32.const 99
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
   i32.const 100
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
   i32.const 101
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
   i32.const 102
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
   i32.const 111
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
   i32.const 112
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
   i32.const 113
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
   i32.const 114
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
   i32.const 115
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
   i32.const 116
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
   i32.const 117
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
   i32.const 118
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
   i32.const 119
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
   i32.const 120
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
   i32.const 121
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
   i32.const 122
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
   i32.const 123
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
   i32.const 124
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
   i32.const 125
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
   i32.const 126
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
   i32.const 128
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
   i32.const 129
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
   i32.const 130
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/reference/RefString.fromCodePoint (type $i32_=>_ref|string|) (param $cp i32) (result (ref string))
  local.get $cp
  i32.const 1114111
  i32.gt_u
  if
   i32.const 144
   i32.const 208
   i32.const 61
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $cp
  string.from_code_point
  return
 )
 (func $~lib/reference/RefString.__eq (type $stringref_stringref_=>_i32) (param $left stringref) (param $right stringref) (result i32)
  local.get $left
  local.get $right
  string.eq
  return
 )
 (func $~lib/reference/RefString#get:length (type $ref|string|_=>_i32) (param $this (ref string)) (result i32)
  local.get $this
  string.measure_wtf16
  return
 )
 (func $~lib/reference/RefString#at (type $ref|string|_i32_=>_stringref) (param $this (ref string)) (param $pos i32) (result stringref)
  (local $len i32)
  local.get $this
  string.measure_wtf16
  local.set $len
  local.get $pos
  i32.const 0
  local.get $len
  local.get $pos
  i32.const 0
  i32.ge_s
  select
  i32.add
  local.set $pos
  local.get $pos
  local.get $len
  i32.ge_u
  if
   i32.const 272
   i32.const 208
   i32.const 73
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  string.as_wtf16
  local.get $pos
  stringview_wtf16.get_codeunit
  string.from_code_point
  return
 )
 (func $~lib/reference/RefString#charAt (type $ref|string|_i32_=>_stringref) (param $this (ref string)) (param $pos i32) (result stringref)
  local.get $pos
  local.get $this
  string.measure_wtf16
  i32.ge_u
  if
   string.const ""
   return
  end
  local.get $this
  string.as_wtf16
  local.get $pos
  stringview_wtf16.get_codeunit
  string.from_code_point
  return
 )
 (func $~lib/reference/RefString#charCodeAt (type $ref|string|_i32_=>_i32) (param $this (ref string)) (param $pos i32) (result i32)
  local.get $pos
  local.get $this
  string.measure_wtf16
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $this
  string.as_wtf16
  local.get $pos
  stringview_wtf16.get_codeunit
  return
 )
 (func $~lib/reference/RefString#codePointAt (type $ref|string|_i32_=>_i32) (param $this (ref string)) (param $pos i32) (result i32)
  (local $len i32)
  (local $view (ref stringview_wtf16))
  (local $first i32)
  (local $second i32)
  local.get $this
  string.measure_wtf16
  local.set $len
  local.get $pos
  local.get $len
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $this
  string.as_wtf16
  local.set $view
  local.get $view
  local.get $pos
  stringview_wtf16.get_codeunit
  local.set $first
  local.get $first
  i32.const 64512
  i32.and
  i32.const 55296
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $pos
   i32.const 1
   i32.add
   local.get $len
   i32.eq
  end
  if
   local.get $first
   return
  end
  local.get $view
  local.get $pos
  i32.const 1
  i32.add
  stringview_wtf16.get_codeunit
  local.set $second
  local.get $second
  i32.const 64512
  i32.and
  i32.const 56320
  i32.ne
  if
   local.get $first
   return
  end
  local.get $first
  i32.const 55296
  i32.sub
  i32.const 10
  i32.shl
  local.get $second
  i32.const 56320
  i32.sub
  i32.add
  i32.const 65536
  i32.add
  return
 )
 (func $~lib/reference/RefString#concat (type $ref|string|_ref|string|_=>_ref|string|) (param $this (ref string)) (param $other (ref string)) (result (ref string))
  local.get $this
  local.get $other
  string.concat
  return
 )
 (func $~lib/reference/RefString#endsWith (type $ref|string|_ref|string|_i32_=>_i32) (param $this (ref string)) (param $search (ref string)) (param $end i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $searchLength i32)
  (local $searchStart i32)
  local.get $end
  local.tee $3
  i32.const 0
  local.tee $4
  local.get $3
  local.get $4
  i32.gt_s
  select
  local.tee $5
  local.get $this
  string.measure_wtf16
  local.tee $6
  local.get $5
  local.get $6
  i32.lt_s
  select
  local.set $end
  local.get $search
  string.measure_wtf16
  local.set $searchLength
  local.get $end
  local.get $searchLength
  i32.sub
  local.set $searchStart
  local.get $searchStart
  i32.const 0
  i32.lt_s
  if
   i32.const 0
   return
  end
  local.get $this
  string.as_wtf16
  local.get $searchStart
  local.get $searchStart
  local.get $searchLength
  i32.add
  stringview_wtf16.slice
  local.get $search
  string.eq
  return
 )
 (func $~lib/reference/RefString#endsWith@varargs (type $ref|string|_ref|string|_i32_=>_i32) (param $this (ref string)) (param $search (ref string)) (param $end i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/reference/RefString.MAX_LENGTH
   local.set $end
  end
  local.get $this
  local.get $search
  local.get $end
  call $~lib/reference/RefString#endsWith
 )
 (func $~lib/reference/RefString.__not (type $stringref_=>_i32) (param $str stringref) (result i32)
  local.get $str
  ref.null none
  string.eq
  return
 )
 (func $~lib/reference/RefString.__gt (type $ref|string|_ref|string|_=>_i32) (param $left (ref string)) (param $right (ref string)) (result i32)
  local.get $left
  local.get $right
  string.compare
  i32.const 0
  i32.gt_s
  return
 )
 (func $~lib/reference/RefString.__gte (type $ref|string|_ref|string|_=>_i32) (param $left (ref string)) (param $right (ref string)) (result i32)
  local.get $left
  local.get $right
  string.compare
  i32.const 0
  i32.ge_s
  return
 )
 (func $~lib/reference/RefString.__lt (type $ref|string|_ref|string|_=>_i32) (param $left (ref string)) (param $right (ref string)) (result i32)
  local.get $left
  local.get $right
  string.compare
  i32.const 0
  i32.lt_s
  return
 )
 (func $~lib/reference/RefString.__lte (type $ref|string|_ref|string|_=>_i32) (param $left (ref string)) (param $right (ref string)) (result i32)
  local.get $left
  local.get $right
  string.compare
  i32.const 0
  i32.le_s
  return
 )
 (func $~lib/reference/RefString#indexOf (type $ref|string|_ref|string|_i32_=>_i32) (param $this (ref string)) (param $search (ref string)) (param $start i32) (result i32)
  (local $searchLen i32)
  (local $len i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $searchStart i32)
  (local $view (ref stringview_wtf16))
  local.get $search
  string.measure_wtf16
  local.set $searchLen
  local.get $searchLen
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $this
  string.measure_wtf16
  local.set $len
  local.get $len
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $start
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.tee $7
  local.get $len
  local.tee $8
  local.get $7
  local.get $8
  i32.lt_s
  select
  local.set $searchStart
  local.get $this
  string.as_wtf16
  local.set $view
  local.get $len
  local.get $searchLen
  i32.sub
  local.set $len
  loop $for-loop|0
   local.get $searchStart
   local.get $len
   i32.le_s
   if
    local.get $view
    local.get $searchStart
    local.get $searchStart
    local.get $searchLen
    i32.add
    stringview_wtf16.slice
    local.get $search
    string.eq
    if
     local.get $searchStart
     return
    end
    local.get $searchStart
    i32.const 1
    i32.add
    local.set $searchStart
    br $for-loop|0
   end
  end
  i32.const -1
  return
 )
 (func $~lib/reference/RefString#includes (type $ref|string|_ref|string|_i32_=>_i32) (param $this (ref string)) (param $search (ref string)) (param $start i32) (result i32)
  local.get $this
  local.get $search
  local.get $start
  call $~lib/reference/RefString#indexOf
  i32.const -1
  i32.ne
  return
 )
 (func $~lib/reference/RefString#lastIndexOf (type $ref|string|_ref|string|_i32_=>_i32) (param $this (ref string)) (param $search (ref string)) (param $start i32) (result i32)
  (local $searchLen i32)
  (local $len i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $searchStart i32)
  local.get $search
  string.measure_wtf16
  local.set $searchLen
  local.get $searchLen
  i32.eqz
  if
   local.get $this
   string.measure_wtf16
   return
  end
  local.get $this
  string.measure_wtf16
  local.set $len
  local.get $len
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $start
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.tee $7
  local.get $len
  local.get $searchLen
  i32.sub
  local.tee $8
  local.get $7
  local.get $8
  i32.lt_s
  select
  local.set $searchStart
  loop $for-loop|0
   local.get $searchStart
   i32.const 0
   i32.ge_s
   if
    local.get $this
    string.as_wtf16
    local.get $searchStart
    local.get $searchStart
    local.get $searchLen
    i32.add
    stringview_wtf16.slice
    local.get $search
    string.eq
    if
     local.get $searchStart
     return
    end
    local.get $searchStart
    i32.const 1
    i32.sub
    local.set $searchStart
    br $for-loop|0
   end
  end
  i32.const -1
  return
 )
 (func $~lib/reference/RefString#lastIndexOf@varargs (type $ref|string|_ref|string|_i32_=>_i32) (param $this (ref string)) (param $search (ref string)) (param $start i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $start
  end
  local.get $this
  local.get $search
  local.get $start
  call $~lib/reference/RefString#lastIndexOf
 )
 (func $start:features/stringref (type $none_=>_none)
  global.get $features/stringref/stringGlobal
  string.as_wtf8
  global.set $features/stringref/stringviewWtf8Global
  global.get $features/stringref/stringGlobal
  string.as_wtf16
  global.set $features/stringref/stringviewWtf16Global
  global.get $features/stringref/stringGlobal
  string.as_iter
  global.set $features/stringref/stringviewIterGlobal
  call $features/stringref/test_locals
  call $features/stringref/test_utf8
  call $features/stringref/test_lossy_utf8
  call $features/stringref/test_wtf8
  call $features/stringref/test_wtf16
  call $features/stringref/test_iter
  i32.const 97
  call $~lib/reference/RefString.fromCodePoint
  string.const "a"
  call $~lib/reference/RefString.__eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 145
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  call $~lib/reference/RefString#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 147
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  i32.const 1
  call $~lib/reference/RefString#at
  string.const "b"
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 148
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  i32.const 0
  call $~lib/reference/RefString#charAt
  string.const "a"
  string.eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 149
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  i32.const 0
  call $~lib/reference/RefString#charCodeAt
  i32.const 97
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 150
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  i32.const 0
  call $~lib/reference/RefString#codePointAt
  i32.const 97
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 151
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  global.get $features/stringref/str
  call $~lib/reference/RefString#concat
  string.const "abcabc"
  call $~lib/reference/RefString.__eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 152
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  string.const "abc"
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/reference/RefString#endsWith@varargs
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 153
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  global.get $features/stringref/str
  call $~lib/reference/RefString.__eq
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 154
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  call $~lib/reference/RefString.__not
  i32.const 0
  i32.ne
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 155
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  string.const ""
  string.eq
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 156
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  string.const "ab"
  call $~lib/reference/RefString.__gt
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 157
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  string.const "ab"
  call $~lib/reference/RefString.__gte
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 158
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  string.const "abcd"
  call $~lib/reference/RefString.__lt
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 159
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  string.const "abcd"
  call $~lib/reference/RefString.__lte
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 160
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  string.const "b"
  i32.const 0
  call $~lib/reference/RefString#includes
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 161
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  string.const "b"
  i32.const 0
  call $~lib/reference/RefString#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
   i32.const 162
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $features/stringref/str
  string.const "b"
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/reference/RefString#lastIndexOf@varargs
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 80
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
