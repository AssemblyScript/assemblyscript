(module
 (type $0 (func))
 (type $1 (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/__abort_impl (param i32 i32 i32 i32)))
 (global $std/encoding/BASE i32 (i32.const 8192))
 (global $~lib/native/ASC_FEATURE_EXCEPTION_HANDLING i32 (i32.const 0))
 (global $std/encoding/DB i32 (i32.const 8448))
 (global $std/encoding/SRC i32 (i32.const 8536))
 (global $std/encoding/HEX i32 (i32.const 8636))
 (global $std/encoding/DEC i32 (i32.const 8736))
 (global $std/encoding/hexLen (mut i32) (i32.const 0))
 (global $std/encoding/decLen (mut i32) (i32.const 0))
 (global $std/encoding/BR i32 (i32.const 8960))
 (global $std/encoding/VB i32 (i32.const 9036))
 (global $std/encoding/bytesRead (mut i32) (i32.const 0))
 (global $std/encoding/written (mut i32) (i32.const 0))
 (global $std/encoding/decoded (mut i32) (i32.const 0))
 (global $std/encoding/decoded2 (mut i32) (i32.const 0))
 (global $std/encoding/decoded3 (mut i32) (i32.const 0))
 (global $std/encoding/VB64 i32 (i32.const 9136))
 (global $std/encoding/decoded64 (mut i64) (i64.const 0))
 (global $std/encoding/CB i32 (i32.const 9236))
 (global $std/encoding/compactDecoded (mut i64) (i64.const 0))
 (global $~lib/memory/__data_end i32 (i32.const 76))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32844))
 (global $~lib/memory/__heap_base i32 (i32.const 32844))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00s\00t\00d\00/\00e\00n\00c\00o\00d\00i\00n\00g\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:std/encoding
  (local $value i32)
  (local $dst i32)
  (local $hi i32)
  (local $lo i32)
  (local $value|4 i32)
  (local $dst|5 i32)
  (local $hi|6 i32)
  (local $lo|7 i32)
  (local $value|8 i32)
  (local $dst|9 i32)
  (local $hi|10 i32)
  (local $lo|11 i32)
  (local $value|12 i32)
  (local $dst|13 i32)
  (local $hi|14 i32)
  (local $lo|15 i32)
  (local $src i32)
  (local $c i32)
  (local $hi|18 i32)
  (local $c|19 i32)
  (local $lo|20 i32)
  (local $src|21 i32)
  (local $c|22 i32)
  (local $hi|23 i32)
  (local $c|24 i32)
  (local $lo|25 i32)
  (local $src|26 i32)
  (local $c|27 i32)
  (local $hi|28 i32)
  (local $c|29 i32)
  (local $lo|30 i32)
  (local $src|31 i32)
  (local $c|32 i32)
  (local $hi|33 i32)
  (local $c|34 i32)
  (local $lo|35 i32)
  (local $src|36 i32)
  (local $srcLen i32)
  (local $dst|38 i32)
  (local $i i32)
  (local $value|40 i32)
  (local $dst|41 i32)
  (local $hi|42 i32)
  (local $lo|43 i32)
  (local $src|44 i32)
  (local $srcLen|45 i32)
  (local $dst|46 i32)
  (local $outLen i32)
  (local $i|48 i32)
  (local $src|49 i32)
  (local $c|50 i32)
  (local $hi|51 i32)
  (local $c|52 i32)
  (local $lo|53 i32)
  (local $b i32)
  (local $src|55 i32)
  (local $srcLen|56 i32)
  (local $dst|57 i32)
  (local $outLen|58 i32)
  (local $i|59 i32)
  (local $src|60 i32)
  (local $c|61 i32)
  (local $hi|62 i32)
  (local $c|63 i32)
  (local $lo|64 i32)
  (local $b|65 i32)
  (local $this i32)
  (local $offset i32)
  (local $value|68 i32)
  (local $dst|69 i32)
  (local $i|70 i32)
  (local $value|71 i32)
  (local $dst|72 i32)
  (local $i|73 i32)
  (local $value|74 i32)
  (local $dst|75 i32)
  (local $i|76 i32)
  (local $src|77 i32)
  (local $bytesRead i32)
  (local $result i32)
  (local $shift i32)
  (local $i|81 i32)
  (local $b|82 i32)
  (local $this|83 i32)
  (local $value|84 i32)
  (local $this|85 i32)
  (local $value|86 i32)
  (local $dst|87 i32)
  (local $i|88 i32)
  (local $src|89 i32)
  (local $bytesRead|90 i32)
  (local $result|91 i32)
  (local $shift|92 i32)
  (local $i|93 i32)
  (local $b|94 i32)
  (local $this|95 i32)
  (local $value|96 i32)
  (local $value|97 i32)
  (local $dst|98 i32)
  (local $i|99 i32)
  (local $src|100 i32)
  (local $bytesRead|101 i32)
  (local $result|102 i32)
  (local $shift|103 i32)
  (local $i|104 i32)
  (local $b|105 i32)
  (local $this|106 i32)
  (local $value|107 i32)
  (local $this|108 i32)
  (local $value|109 i64)
  (local $dst|110 i32)
  (local $i|111 i32)
  (local $src|112 i32)
  (local $bytesRead|113 i32)
  (local $result|114 i64)
  (local $shift|115 i64)
  (local $i|116 i32)
  (local $b|117 i32)
  (local $this|118 i32)
  (local $value|119 i32)
  (local $value|120 i64)
  (local $dst|121 i32)
  (local $src|122 i32)
  (local $bytesRead|123 i32)
  (local $first i32)
  (local $this|125 i32)
  (local $value|126 i32)
  (local $this|127 i32)
  (local $value|128 i32)
  (local $this|129 i32)
  (local $value|130 i32)
  (local $this|131 i32)
  (local $value|132 i32)
  (local $this|133 i32)
  (local $value|134 i64)
  (local $dst|135 i32)
  (local $src|136 i32)
  (local $bytesRead|137 i32)
  (local $first|138 i32)
  (local $this|139 i32)
  (local $value|140 i32)
  (local $this|141 i32)
  (local $value|142 i32)
  (local $this|143 i32)
  (local $value|144 i32)
  (local $this|145 i32)
  (local $value|146 i32)
  (local $this|147 i32)
  (local $value|148 i64)
  (local $dst|149 i32)
  (local $src|150 i32)
  (local $bytesRead|151 i32)
  (local $first|152 i32)
  (local $this|153 i32)
  (local $value|154 i32)
  (local $this|155 i32)
  (local $value|156 i32)
  (local $this|157 i32)
  (local $value|158 i32)
  (local $this|159 i32)
  (local $value|160 i32)
  (local $this|161 i32)
  (local $value|162 i64)
  (local $dst|163 i32)
  (local $src|164 i32)
  (local $bytesRead|165 i32)
  (local $first|166 i32)
  (local $this|167 i32)
  (local $value|168 i32)
  (local $this|169 i32)
  (local $value|170 i32)
  (local $this|171 i32)
  (local $value|172 i32)
  (local $this|173 i32)
  (local $value|174 i32)
  (local $this|175 i32)
  (local $value|176 i64)
  (local $dst|177 i32)
  (local $src|178 i32)
  (local $bytesRead|179 i32)
  (local $first|180 i32)
  (local $this|181 i32)
  (local $value|182 i32)
  (local $this|183 i32)
  (local $value|184 i32)
  (local $this|185 i32)
  (local $value|186 i32)
  (local $this|187 i32)
  (local $value|188 i32)
  (local $this|189 i32)
  i32.const 0
  local.set $value
  global.get $std/encoding/BASE
  local.set $dst
  local.get $value
  i32.const 4
  i32.const 7
  i32.and
  i32.shr_u
  i32.const 15
  i32.and
  local.set $hi
  local.get $value
  i32.const 15
  i32.and
  local.set $lo
  local.get $dst
  local.get $hi
  i32.const 10
  i32.lt_u
  if (result i32)
   local.get $hi
   i32.const 48
   i32.add
  else
   local.get $hi
   i32.const 87
   i32.add
  end
  i32.store8
  local.get $dst
  i32.const 1
  i32.add
  local.get $lo
  i32.const 10
  i32.lt_u
  if (result i32)
   local.get $lo
   i32.const 48
   i32.add
  else
   local.get $lo
   i32.const 87
   i32.add
  end
  i32.store8
  global.get $std/encoding/BASE
  i32.load8_u
  i32.const 48
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 11
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/BASE
  i32.const 1
  i32.add
  i32.load8_u
  i32.const 48
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 12
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 255
  local.set $value|4
  global.get $std/encoding/BASE
  i32.const 4
  i32.add
  local.set $dst|5
  local.get $value|4
  i32.const 4
  i32.const 7
  i32.and
  i32.shr_u
  i32.const 15
  i32.and
  local.set $hi|6
  local.get $value|4
  i32.const 15
  i32.and
  local.set $lo|7
  local.get $dst|5
  local.get $hi|6
  i32.const 10
  i32.lt_u
  if (result i32)
   local.get $hi|6
   i32.const 48
   i32.add
  else
   local.get $hi|6
   i32.const 87
   i32.add
  end
  i32.store8
  local.get $dst|5
  i32.const 1
  i32.add
  local.get $lo|7
  i32.const 10
  i32.lt_u
  if (result i32)
   local.get $lo|7
   i32.const 48
   i32.add
  else
   local.get $lo|7
   i32.const 87
   i32.add
  end
  i32.store8
  global.get $std/encoding/BASE
  i32.const 4
  i32.add
  i32.load8_u
  i32.const 102
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 15
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/BASE
  i32.const 5
  i32.add
  i32.load8_u
  i32.const 102
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 16
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 171
  local.set $value|8
  global.get $std/encoding/BASE
  i32.const 8
  i32.add
  local.set $dst|9
  local.get $value|8
  i32.const 4
  i32.const 7
  i32.and
  i32.shr_u
  i32.const 15
  i32.and
  local.set $hi|10
  local.get $value|8
  i32.const 15
  i32.and
  local.set $lo|11
  local.get $dst|9
  local.get $hi|10
  i32.const 10
  i32.lt_u
  if (result i32)
   local.get $hi|10
   i32.const 48
   i32.add
  else
   local.get $hi|10
   i32.const 87
   i32.add
  end
  i32.store8
  local.get $dst|9
  i32.const 1
  i32.add
  local.get $lo|11
  i32.const 10
  i32.lt_u
  if (result i32)
   local.get $lo|11
   i32.const 48
   i32.add
  else
   local.get $lo|11
   i32.const 87
   i32.add
  end
  i32.store8
  global.get $std/encoding/BASE
  i32.const 8
  i32.add
  i32.load8_u
  i32.const 97
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 19
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/BASE
  i32.const 9
  i32.add
  i32.load8_u
  i32.const 98
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 20
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 31
  local.set $value|12
  global.get $std/encoding/BASE
  i32.const 12
  i32.add
  local.set $dst|13
  local.get $value|12
  i32.const 4
  i32.const 7
  i32.and
  i32.shr_u
  i32.const 15
  i32.and
  local.set $hi|14
  local.get $value|12
  i32.const 15
  i32.and
  local.set $lo|15
  local.get $dst|13
  local.get $hi|14
  i32.const 10
  i32.lt_u
  if (result i32)
   local.get $hi|14
   i32.const 48
   i32.add
  else
   local.get $hi|14
   i32.const 87
   i32.add
  end
  i32.store8
  local.get $dst|13
  i32.const 1
  i32.add
  local.get $lo|15
  i32.const 10
  i32.lt_u
  if (result i32)
   local.get $lo|15
   i32.const 48
   i32.add
  else
   local.get $lo|15
   i32.const 87
   i32.add
  end
  i32.store8
  global.get $std/encoding/BASE
  i32.const 12
  i32.add
  i32.load8_u
  i32.const 49
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 23
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/BASE
  i32.const 13
  i32.add
  i32.load8_u
  i32.const 102
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 24
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/DB
  i32.const 48
  i32.store8
  global.get $std/encoding/DB
  i32.const 1
  i32.add
  i32.const 48
  i32.store8
  block $~lib/encoding/Encoding.Hex.decodeByte|inlined.0 (result i32)
   global.get $std/encoding/DB
   local.set $src
   block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.0 (result i32)
    local.get $src
    i32.load8_u
    local.set $c
    local.get $c
    i32.const 48
    i32.ge_u
    if (result i32)
     local.get $c
     i32.const 57
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c
     i32.const 48
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.0
    end
    local.get $c
    i32.const 97
    i32.ge_u
    if (result i32)
     local.get $c
     i32.const 102
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c
     i32.const 87
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.0
    end
    local.get $c
    i32.const 65
    i32.ge_u
    if (result i32)
     local.get $c
     i32.const 70
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c
     i32.const 55
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.0
    end
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.0
   end
   local.set $hi|18
   block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.1 (result i32)
    local.get $src
    i32.const 1
    i32.add
    i32.load8_u
    local.set $c|19
    local.get $c|19
    i32.const 48
    i32.ge_u
    if (result i32)
     local.get $c|19
     i32.const 57
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|19
     i32.const 48
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.1
    end
    local.get $c|19
    i32.const 97
    i32.ge_u
    if (result i32)
     local.get $c|19
     i32.const 102
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|19
     i32.const 87
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.1
    end
    local.get $c|19
    i32.const 65
    i32.ge_u
    if (result i32)
     local.get $c|19
     i32.const 70
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|19
     i32.const 55
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.1
    end
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.1
   end
   local.set $lo|20
   local.get $hi|18
   local.get $lo|20
   i32.or
   i32.const 0
   i32.lt_s
   if
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeByte|inlined.0
   end
   local.get $hi|18
   i32.const 4
   i32.shl
   local.get $lo|20
   i32.or
   br $~lib/encoding/Encoding.Hex.decodeByte|inlined.0
  end
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 29
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/DB
  i32.const 2
  i32.add
  i32.const 102
  i32.store8
  global.get $std/encoding/DB
  i32.const 3
  i32.add
  i32.const 102
  i32.store8
  block $~lib/encoding/Encoding.Hex.decodeByte|inlined.1 (result i32)
   global.get $std/encoding/DB
   i32.const 2
   i32.add
   local.set $src|21
   block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.2 (result i32)
    local.get $src|21
    i32.load8_u
    local.set $c|22
    local.get $c|22
    i32.const 48
    i32.ge_u
    if (result i32)
     local.get $c|22
     i32.const 57
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|22
     i32.const 48
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.2
    end
    local.get $c|22
    i32.const 97
    i32.ge_u
    if (result i32)
     local.get $c|22
     i32.const 102
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|22
     i32.const 87
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.2
    end
    local.get $c|22
    i32.const 65
    i32.ge_u
    if (result i32)
     local.get $c|22
     i32.const 70
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|22
     i32.const 55
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.2
    end
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.2
   end
   local.set $hi|23
   block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.3 (result i32)
    local.get $src|21
    i32.const 1
    i32.add
    i32.load8_u
    local.set $c|24
    local.get $c|24
    i32.const 48
    i32.ge_u
    if (result i32)
     local.get $c|24
     i32.const 57
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|24
     i32.const 48
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.3
    end
    local.get $c|24
    i32.const 97
    i32.ge_u
    if (result i32)
     local.get $c|24
     i32.const 102
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|24
     i32.const 87
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.3
    end
    local.get $c|24
    i32.const 65
    i32.ge_u
    if (result i32)
     local.get $c|24
     i32.const 70
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|24
     i32.const 55
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.3
    end
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.3
   end
   local.set $lo|25
   local.get $hi|23
   local.get $lo|25
   i32.or
   i32.const 0
   i32.lt_s
   if
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeByte|inlined.1
   end
   local.get $hi|23
   i32.const 4
   i32.shl
   local.get $lo|25
   i32.or
   br $~lib/encoding/Encoding.Hex.decodeByte|inlined.1
  end
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 32
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/DB
  i32.const 4
  i32.add
  i32.const 65
  i32.store8
  global.get $std/encoding/DB
  i32.const 5
  i32.add
  i32.const 66
  i32.store8
  block $~lib/encoding/Encoding.Hex.decodeByte|inlined.2 (result i32)
   global.get $std/encoding/DB
   i32.const 4
   i32.add
   local.set $src|26
   block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.4 (result i32)
    local.get $src|26
    i32.load8_u
    local.set $c|27
    local.get $c|27
    i32.const 48
    i32.ge_u
    if (result i32)
     local.get $c|27
     i32.const 57
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|27
     i32.const 48
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.4
    end
    local.get $c|27
    i32.const 97
    i32.ge_u
    if (result i32)
     local.get $c|27
     i32.const 102
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|27
     i32.const 87
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.4
    end
    local.get $c|27
    i32.const 65
    i32.ge_u
    if (result i32)
     local.get $c|27
     i32.const 70
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|27
     i32.const 55
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.4
    end
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.4
   end
   local.set $hi|28
   block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.5 (result i32)
    local.get $src|26
    i32.const 1
    i32.add
    i32.load8_u
    local.set $c|29
    local.get $c|29
    i32.const 48
    i32.ge_u
    if (result i32)
     local.get $c|29
     i32.const 57
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|29
     i32.const 48
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.5
    end
    local.get $c|29
    i32.const 97
    i32.ge_u
    if (result i32)
     local.get $c|29
     i32.const 102
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|29
     i32.const 87
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.5
    end
    local.get $c|29
    i32.const 65
    i32.ge_u
    if (result i32)
     local.get $c|29
     i32.const 70
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|29
     i32.const 55
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.5
    end
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.5
   end
   local.set $lo|30
   local.get $hi|28
   local.get $lo|30
   i32.or
   i32.const 0
   i32.lt_s
   if
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeByte|inlined.2
   end
   local.get $hi|28
   i32.const 4
   i32.shl
   local.get $lo|30
   i32.or
   br $~lib/encoding/Encoding.Hex.decodeByte|inlined.2
  end
  i32.const 171
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 35
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/DB
  i32.const 8
  i32.add
  i32.const 103
  i32.store8
  global.get $std/encoding/DB
  i32.const 9
  i32.add
  i32.const 48
  i32.store8
  block $~lib/encoding/Encoding.Hex.decodeByte|inlined.3 (result i32)
   global.get $std/encoding/DB
   i32.const 8
   i32.add
   local.set $src|31
   block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.6 (result i32)
    local.get $src|31
    i32.load8_u
    local.set $c|32
    local.get $c|32
    i32.const 48
    i32.ge_u
    if (result i32)
     local.get $c|32
     i32.const 57
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|32
     i32.const 48
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.6
    end
    local.get $c|32
    i32.const 97
    i32.ge_u
    if (result i32)
     local.get $c|32
     i32.const 102
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|32
     i32.const 87
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.6
    end
    local.get $c|32
    i32.const 65
    i32.ge_u
    if (result i32)
     local.get $c|32
     i32.const 70
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|32
     i32.const 55
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.6
    end
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.6
   end
   local.set $hi|33
   block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.7 (result i32)
    local.get $src|31
    i32.const 1
    i32.add
    i32.load8_u
    local.set $c|34
    local.get $c|34
    i32.const 48
    i32.ge_u
    if (result i32)
     local.get $c|34
     i32.const 57
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|34
     i32.const 48
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.7
    end
    local.get $c|34
    i32.const 97
    i32.ge_u
    if (result i32)
     local.get $c|34
     i32.const 102
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|34
     i32.const 87
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.7
    end
    local.get $c|34
    i32.const 65
    i32.ge_u
    if (result i32)
     local.get $c|34
     i32.const 70
     i32.le_u
    else
     i32.const 0
    end
    if
     local.get $c|34
     i32.const 55
     i32.sub
     i32.const 255
     i32.and
     br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.7
    end
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.7
   end
   local.set $lo|35
   local.get $hi|33
   local.get $lo|35
   i32.or
   i32.const 0
   i32.lt_s
   if
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decodeByte|inlined.3
   end
   local.get $hi|33
   i32.const 4
   i32.shl
   local.get $lo|35
   i32.or
   br $~lib/encoding/Encoding.Hex.decodeByte|inlined.3
  end
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 39
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/SRC
  i32.const 222
  i32.store8
  global.get $std/encoding/SRC
  i32.const 1
  i32.add
  i32.const 173
  i32.store8
  global.get $std/encoding/SRC
  i32.const 2
  i32.add
  i32.const 190
  i32.store8
  global.get $std/encoding/SRC
  i32.const 3
  i32.add
  i32.const 239
  i32.store8
  block $~lib/encoding/Encoding.Hex.encode|inlined.0 (result i32)
   global.get $std/encoding/SRC
   local.set $src|36
   i32.const 4
   local.set $srcLen
   global.get $std/encoding/HEX
   local.set $dst|38
   i32.const 0
   local.set $i
   loop $for-loop|0
    local.get $i
    local.get $srcLen
    i32.lt_s
    if
     local.get $src|36
     local.get $i
     i32.add
     i32.load8_u
     local.set $value|40
     local.get $dst|38
     local.get $i
     i32.const 1
     i32.shl
     i32.add
     local.set $dst|41
     local.get $value|40
     i32.const 4
     i32.const 7
     i32.and
     i32.shr_u
     i32.const 15
     i32.and
     local.set $hi|42
     local.get $value|40
     i32.const 15
     i32.and
     local.set $lo|43
     local.get $dst|41
     local.get $hi|42
     i32.const 10
     i32.lt_u
     if (result i32)
      local.get $hi|42
      i32.const 48
      i32.add
     else
      local.get $hi|42
      i32.const 87
      i32.add
     end
     i32.store8
     local.get $dst|41
     i32.const 1
     i32.add
     local.get $lo|43
     i32.const 10
     i32.lt_u
     if (result i32)
      local.get $lo|43
      i32.const 48
      i32.add
     else
      local.get $lo|43
      i32.const 87
      i32.add
     end
     i32.store8
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     br $for-loop|0
    end
   end
   local.get $srcLen
   i32.const 1
   i32.shl
   br $~lib/encoding/Encoding.Hex.encode|inlined.0
  end
  global.set $std/encoding/hexLen
  global.get $std/encoding/hexLen
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 50
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Hex.decode|inlined.0 (result i32)
   global.get $std/encoding/HEX
   local.set $src|44
   i32.const 8
   local.set $srcLen|45
   global.get $std/encoding/DEC
   local.set $dst|46
   local.get $srcLen|45
   i32.const 1
   i32.and
   if
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decode|inlined.0
   end
   local.get $srcLen|45
   i32.const 1
   i32.shr_s
   local.set $outLen
   i32.const 0
   local.set $i|48
   loop $for-loop|1
    local.get $i|48
    local.get $outLen
    i32.lt_s
    if
     block $~lib/encoding/Encoding.Hex.decodeByte|inlined.4 (result i32)
      local.get $src|44
      local.get $i|48
      i32.const 1
      i32.shl
      i32.add
      local.set $src|49
      block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.8 (result i32)
       local.get $src|49
       i32.load8_u
       local.set $c|50
       local.get $c|50
       i32.const 48
       i32.ge_u
       if (result i32)
        local.get $c|50
        i32.const 57
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|50
        i32.const 48
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.8
       end
       local.get $c|50
       i32.const 97
       i32.ge_u
       if (result i32)
        local.get $c|50
        i32.const 102
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|50
        i32.const 87
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.8
       end
       local.get $c|50
       i32.const 65
       i32.ge_u
       if (result i32)
        local.get $c|50
        i32.const 70
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|50
        i32.const 55
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.8
       end
       i32.const -1
       br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.8
      end
      local.set $hi|51
      block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.9 (result i32)
       local.get $src|49
       i32.const 1
       i32.add
       i32.load8_u
       local.set $c|52
       local.get $c|52
       i32.const 48
       i32.ge_u
       if (result i32)
        local.get $c|52
        i32.const 57
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|52
        i32.const 48
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.9
       end
       local.get $c|52
       i32.const 97
       i32.ge_u
       if (result i32)
        local.get $c|52
        i32.const 102
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|52
        i32.const 87
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.9
       end
       local.get $c|52
       i32.const 65
       i32.ge_u
       if (result i32)
        local.get $c|52
        i32.const 70
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|52
        i32.const 55
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.9
       end
       i32.const -1
       br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.9
      end
      local.set $lo|53
      local.get $hi|51
      local.get $lo|53
      i32.or
      i32.const 0
      i32.lt_s
      if
       i32.const -1
       br $~lib/encoding/Encoding.Hex.decodeByte|inlined.4
      end
      local.get $hi|51
      i32.const 4
      i32.shl
      local.get $lo|53
      i32.or
      br $~lib/encoding/Encoding.Hex.decodeByte|inlined.4
     end
     local.set $b
     local.get $b
     i32.const 0
     i32.lt_s
     if
      i32.const -1
      br $~lib/encoding/Encoding.Hex.decode|inlined.0
     end
     local.get $dst|46
     local.get $i|48
     i32.add
     local.get $b
     i32.store8
     local.get $i|48
     i32.const 1
     i32.add
     local.set $i|48
     br $for-loop|1
    end
   end
   local.get $outLen
   br $~lib/encoding/Encoding.Hex.decode|inlined.0
  end
  global.set $std/encoding/decLen
  global.get $std/encoding/decLen
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 53
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/DEC
  i32.load8_u
  i32.const 222
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 54
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/DEC
  i32.const 1
  i32.add
  i32.load8_u
  i32.const 173
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 55
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/DEC
  i32.const 2
  i32.add
  i32.load8_u
  i32.const 190
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 56
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/DEC
  i32.const 3
  i32.add
  i32.load8_u
  i32.const 239
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 57
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Hex.decode|inlined.1 (result i32)
   global.get $std/encoding/HEX
   local.set $src|55
   i32.const 7
   local.set $srcLen|56
   global.get $std/encoding/DEC
   i32.const 100
   i32.add
   local.set $dst|57
   local.get $srcLen|56
   i32.const 1
   i32.and
   if
    i32.const -1
    br $~lib/encoding/Encoding.Hex.decode|inlined.1
   end
   local.get $srcLen|56
   i32.const 1
   i32.shr_s
   local.set $outLen|58
   i32.const 0
   local.set $i|59
   loop $for-loop|2
    local.get $i|59
    local.get $outLen|58
    i32.lt_s
    if
     block $~lib/encoding/Encoding.Hex.decodeByte|inlined.5 (result i32)
      local.get $src|55
      local.get $i|59
      i32.const 1
      i32.shl
      i32.add
      local.set $src|60
      block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.10 (result i32)
       local.get $src|60
       i32.load8_u
       local.set $c|61
       local.get $c|61
       i32.const 48
       i32.ge_u
       if (result i32)
        local.get $c|61
        i32.const 57
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|61
        i32.const 48
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.10
       end
       local.get $c|61
       i32.const 97
       i32.ge_u
       if (result i32)
        local.get $c|61
        i32.const 102
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|61
        i32.const 87
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.10
       end
       local.get $c|61
       i32.const 65
       i32.ge_u
       if (result i32)
        local.get $c|61
        i32.const 70
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|61
        i32.const 55
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.10
       end
       i32.const -1
       br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.10
      end
      local.set $hi|62
      block $~lib/encoding/Encoding.Hex.decodeNibble|inlined.11 (result i32)
       local.get $src|60
       i32.const 1
       i32.add
       i32.load8_u
       local.set $c|63
       local.get $c|63
       i32.const 48
       i32.ge_u
       if (result i32)
        local.get $c|63
        i32.const 57
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|63
        i32.const 48
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.11
       end
       local.get $c|63
       i32.const 97
       i32.ge_u
       if (result i32)
        local.get $c|63
        i32.const 102
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|63
        i32.const 87
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.11
       end
       local.get $c|63
       i32.const 65
       i32.ge_u
       if (result i32)
        local.get $c|63
        i32.const 70
        i32.le_u
       else
        i32.const 0
       end
       if
        local.get $c|63
        i32.const 55
        i32.sub
        i32.const 255
        i32.and
        br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.11
       end
       i32.const -1
       br $~lib/encoding/Encoding.Hex.decodeNibble|inlined.11
      end
      local.set $lo|64
      local.get $hi|62
      local.get $lo|64
      i32.or
      i32.const 0
      i32.lt_s
      if
       i32.const -1
       br $~lib/encoding/Encoding.Hex.decodeByte|inlined.5
      end
      local.get $hi|62
      i32.const 4
      i32.shl
      local.get $lo|64
      i32.or
      br $~lib/encoding/Encoding.Hex.decodeByte|inlined.5
     end
     local.set $b|65
     local.get $b|65
     i32.const 0
     i32.lt_s
     if
      i32.const -1
      br $~lib/encoding/Encoding.Hex.decode|inlined.1
     end
     local.get $dst|57
     local.get $i|59
     i32.add
     local.get $b|65
     i32.store8
     local.get $i|59
     i32.const 1
     i32.add
     local.set $i|59
     br $for-loop|2
    end
   end
   local.get $outLen|58
   br $~lib/encoding/Encoding.Hex.decode|inlined.1
  end
  i32.const -1
  i32.eq
  drop
  block $~lib/pointer/Pointer<i32>#constructor|inlined.0 (result i32)
   i32.const 0
   local.set $this
   global.get $std/encoding/BR
   local.set $offset
   local.get $offset
   br $~lib/pointer/Pointer<i32>#constructor|inlined.0
  end
  global.set $std/encoding/bytesRead
  block $~lib/encoding/Encoding.Varint.encodeU32|inlined.0 (result i32)
   i32.const 0
   local.set $value|68
   global.get $std/encoding/VB
   local.set $dst|69
   i32.const 0
   local.set $i|70
   loop $while-continue|3
    local.get $value|68
    i32.const 128
    i32.ge_u
    if
     local.get $dst|69
     local.get $i|70
     i32.add
     local.get $value|68
     i32.const 127
     i32.and
     i32.const 128
     i32.or
     i32.store8
     local.get $value|68
     i32.const 7
     i32.shr_u
     local.set $value|68
     local.get $i|70
     i32.const 1
     i32.add
     local.set $i|70
     br $while-continue|3
    end
   end
   local.get $dst|69
   local.get $i|70
   i32.add
   local.get $value|68
   i32.store8
   local.get $i|70
   i32.const 1
   i32.add
   br $~lib/encoding/Encoding.Varint.encodeU32|inlined.0
  end
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 73
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/VB
  i32.load8_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 74
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.encodeU32|inlined.1 (result i32)
   i32.const 127
   local.set $value|71
   global.get $std/encoding/VB
   local.set $dst|72
   i32.const 0
   local.set $i|73
   loop $while-continue|4
    local.get $value|71
    i32.const 128
    i32.ge_u
    if
     local.get $dst|72
     local.get $i|73
     i32.add
     local.get $value|71
     i32.const 127
     i32.and
     i32.const 128
     i32.or
     i32.store8
     local.get $value|71
     i32.const 7
     i32.shr_u
     local.set $value|71
     local.get $i|73
     i32.const 1
     i32.add
     local.set $i|73
     br $while-continue|4
    end
   end
   local.get $dst|72
   local.get $i|73
   i32.add
   local.get $value|71
   i32.store8
   local.get $i|73
   i32.const 1
   i32.add
   br $~lib/encoding/Encoding.Varint.encodeU32|inlined.1
  end
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 77
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/encoding/VB
  i32.load8_u
  i32.const 127
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 78
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.encodeU32|inlined.2 (result i32)
   i32.const 128
   local.set $value|74
   global.get $std/encoding/VB
   local.set $dst|75
   i32.const 0
   local.set $i|76
   loop $while-continue|5
    local.get $value|74
    i32.const 128
    i32.ge_u
    if
     local.get $dst|75
     local.get $i|76
     i32.add
     local.get $value|74
     i32.const 127
     i32.and
     i32.const 128
     i32.or
     i32.store8
     local.get $value|74
     i32.const 7
     i32.shr_u
     local.set $value|74
     local.get $i|76
     i32.const 1
     i32.add
     local.set $i|76
     br $while-continue|5
    end
   end
   local.get $dst|75
   local.get $i|76
   i32.add
   local.get $value|74
   i32.store8
   local.get $i|76
   i32.const 1
   i32.add
   br $~lib/encoding/Encoding.Varint.encodeU32|inlined.2
  end
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 82
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.decodeU32|inlined.0 (result i32)
   global.get $std/encoding/VB
   local.set $src|77
   global.get $std/encoding/bytesRead
   local.set $bytesRead
   i32.const 0
   local.set $result
   i32.const 0
   local.set $shift
   i32.const 0
   local.set $i|81
   block $do-break|6
    loop $do-loop|6
     local.get $src|77
     local.get $i|81
     i32.add
     i32.load8_u
     local.set $b|82
     local.get $result
     local.get $b|82
     i32.const 127
     i32.and
     local.get $shift
     i32.shl
     i32.or
     local.set $result
     local.get $shift
     i32.const 7
     i32.add
     local.set $shift
     local.get $i|81
     i32.const 1
     i32.add
     local.set $i|81
     local.get $i|81
     i32.const 5
     i32.ge_s
     if
      br $do-break|6
     end
     local.get $b|82
     i32.const 128
     i32.and
     br_if $do-loop|6
    end
   end
   local.get $bytesRead
   local.set $this|83
   local.get $i|81
   local.set $value|84
   i32.const 0
   drop
   local.get $this|83
   local.get $value|84
   i32.store
   local.get $result
   br $~lib/encoding/Encoding.Varint.decodeU32|inlined.0
  end
  global.set $std/encoding/decoded
  global.get $std/encoding/decoded
  i32.const 128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 84
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/pointer/Pointer<i32>#get:value|inlined.0 (result i32)
   global.get $std/encoding/bytesRead
   local.set $this|85
   i32.const 0
   drop
   local.get $this|85
   i32.load
   br $~lib/pointer/Pointer<i32>#get:value|inlined.0
  end
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 85
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.encodeU32|inlined.3 (result i32)
   i32.const 300
   local.set $value|86
   global.get $std/encoding/VB
   local.set $dst|87
   i32.const 0
   local.set $i|88
   loop $while-continue|7
    local.get $value|86
    i32.const 128
    i32.ge_u
    if
     local.get $dst|87
     local.get $i|88
     i32.add
     local.get $value|86
     i32.const 127
     i32.and
     i32.const 128
     i32.or
     i32.store8
     local.get $value|86
     i32.const 7
     i32.shr_u
     local.set $value|86
     local.get $i|88
     i32.const 1
     i32.add
     local.set $i|88
     br $while-continue|7
    end
   end
   local.get $dst|87
   local.get $i|88
   i32.add
   local.get $value|86
   i32.store8
   local.get $i|88
   i32.const 1
   i32.add
   br $~lib/encoding/Encoding.Varint.encodeU32|inlined.3
  end
  global.set $std/encoding/written
  block $~lib/encoding/Encoding.Varint.decodeU32|inlined.1 (result i32)
   global.get $std/encoding/VB
   local.set $src|89
   global.get $std/encoding/bytesRead
   local.set $bytesRead|90
   i32.const 0
   local.set $result|91
   i32.const 0
   local.set $shift|92
   i32.const 0
   local.set $i|93
   block $do-break|8
    loop $do-loop|8
     local.get $src|89
     local.get $i|93
     i32.add
     i32.load8_u
     local.set $b|94
     local.get $result|91
     local.get $b|94
     i32.const 127
     i32.and
     local.get $shift|92
     i32.shl
     i32.or
     local.set $result|91
     local.get $shift|92
     i32.const 7
     i32.add
     local.set $shift|92
     local.get $i|93
     i32.const 1
     i32.add
     local.set $i|93
     local.get $i|93
     i32.const 5
     i32.ge_s
     if
      br $do-break|8
     end
     local.get $b|94
     i32.const 128
     i32.and
     br_if $do-loop|8
    end
   end
   local.get $bytesRead|90
   local.set $this|95
   local.get $i|93
   local.set $value|96
   i32.const 0
   drop
   local.get $this|95
   local.get $value|96
   i32.store
   local.get $result|91
   br $~lib/encoding/Encoding.Varint.decodeU32|inlined.1
  end
  global.set $std/encoding/decoded2
  global.get $std/encoding/decoded2
  i32.const 300
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 89
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.encodeU32|inlined.4 (result i32)
   i32.const -1
   local.set $value|97
   global.get $std/encoding/VB
   local.set $dst|98
   i32.const 0
   local.set $i|99
   loop $while-continue|9
    local.get $value|97
    i32.const 128
    i32.ge_u
    if
     local.get $dst|98
     local.get $i|99
     i32.add
     local.get $value|97
     i32.const 127
     i32.and
     i32.const 128
     i32.or
     i32.store8
     local.get $value|97
     i32.const 7
     i32.shr_u
     local.set $value|97
     local.get $i|99
     i32.const 1
     i32.add
     local.set $i|99
     br $while-continue|9
    end
   end
   local.get $dst|98
   local.get $i|99
   i32.add
   local.get $value|97
   i32.store8
   local.get $i|99
   i32.const 1
   i32.add
   br $~lib/encoding/Encoding.Varint.encodeU32|inlined.4
  end
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 93
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.decodeU32|inlined.2 (result i32)
   global.get $std/encoding/VB
   local.set $src|100
   global.get $std/encoding/bytesRead
   local.set $bytesRead|101
   i32.const 0
   local.set $result|102
   i32.const 0
   local.set $shift|103
   i32.const 0
   local.set $i|104
   block $do-break|10
    loop $do-loop|10
     local.get $src|100
     local.get $i|104
     i32.add
     i32.load8_u
     local.set $b|105
     local.get $result|102
     local.get $b|105
     i32.const 127
     i32.and
     local.get $shift|103
     i32.shl
     i32.or
     local.set $result|102
     local.get $shift|103
     i32.const 7
     i32.add
     local.set $shift|103
     local.get $i|104
     i32.const 1
     i32.add
     local.set $i|104
     local.get $i|104
     i32.const 5
     i32.ge_s
     if
      br $do-break|10
     end
     local.get $b|105
     i32.const 128
     i32.and
     br_if $do-loop|10
    end
   end
   local.get $bytesRead|101
   local.set $this|106
   local.get $i|104
   local.set $value|107
   i32.const 0
   drop
   local.get $this|106
   local.get $value|107
   i32.store
   local.get $result|102
   br $~lib/encoding/Encoding.Varint.decodeU32|inlined.2
  end
  global.set $std/encoding/decoded3
  global.get $std/encoding/decoded3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 95
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/pointer/Pointer<i32>#get:value|inlined.1 (result i32)
   global.get $std/encoding/bytesRead
   local.set $this|108
   i32.const 0
   drop
   local.get $this|108
   i32.load
   br $~lib/pointer/Pointer<i32>#get:value|inlined.1
  end
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 96
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.encodeU64|inlined.0 (result i32)
   i64.const 72623859790382856
   local.set $value|109
   global.get $std/encoding/VB64
   local.set $dst|110
   i32.const 0
   local.set $i|111
   loop $while-continue|11
    local.get $value|109
    i64.const 128
    i64.ge_u
    if
     local.get $dst|110
     local.get $i|111
     i32.add
     local.get $value|109
     i64.const 127
     i64.and
     i32.wrap_i64
     i32.const 128
     i32.or
     i32.store8
     local.get $value|109
     i64.const 7
     i64.shr_u
     local.set $value|109
     local.get $i|111
     i32.const 1
     i32.add
     local.set $i|111
     br $while-continue|11
    end
   end
   local.get $dst|110
   local.get $i|111
   i32.add
   local.get $value|109
   i32.wrap_i64
   i32.store8
   local.get $i|111
   i32.const 1
   i32.add
   br $~lib/encoding/Encoding.Varint.encodeU64|inlined.0
  end
  global.set $std/encoding/written
  block $~lib/encoding/Encoding.Varint.decodeU64|inlined.0 (result i64)
   global.get $std/encoding/VB64
   local.set $src|112
   global.get $std/encoding/bytesRead
   local.set $bytesRead|113
   i64.const 0
   local.set $result|114
   i64.const 0
   local.set $shift|115
   i32.const 0
   local.set $i|116
   block $do-break|12
    loop $do-loop|12
     local.get $src|112
     local.get $i|116
     i32.add
     i32.load8_u
     local.set $b|117
     local.get $result|114
     local.get $b|117
     i32.const 127
     i32.and
     i64.extend_i32_u
     local.get $shift|115
     i64.shl
     i64.or
     local.set $result|114
     local.get $shift|115
     i64.const 7
     i64.add
     local.set $shift|115
     local.get $i|116
     i32.const 1
     i32.add
     local.set $i|116
     local.get $i|116
     i32.const 10
     i32.ge_s
     if
      br $do-break|12
     end
     local.get $b|117
     i32.const 128
     i32.and
     br_if $do-loop|12
    end
   end
   local.get $bytesRead|113
   local.set $this|118
   local.get $i|116
   local.set $value|119
   i32.const 0
   drop
   local.get $this|118
   local.get $value|119
   i32.store
   local.get $result|114
   br $~lib/encoding/Encoding.Varint.decodeU64|inlined.0
  end
  global.set $std/encoding/decoded64
  global.get $std/encoding/decoded64
  i64.const 72623859790382856
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 102
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.encodeCompact|inlined.0 (result i32)
   i64.const 252
   local.set $value|120
   global.get $std/encoding/CB
   local.set $dst|121
   local.get $value|120
   i64.const 253
   i64.lt_u
   if
    local.get $dst|121
    local.get $value|120
    i32.wrap_i64
    i32.store8
    i32.const 1
    br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.0
   else
    local.get $value|120
    i64.const 65535
    i64.le_u
    if
     local.get $dst|121
     i32.const 253
     i32.store8
     local.get $dst|121
     i32.const 1
     i32.add
     local.get $value|120
     i32.wrap_i64
     i32.store16
     i32.const 3
     br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.0
    else
     local.get $value|120
     i64.const 4294967295
     i64.le_u
     if
      local.get $dst|121
      i32.const 254
      i32.store8
      local.get $dst|121
      i32.const 1
      i32.add
      local.get $value|120
      i32.wrap_i64
      i32.store
      i32.const 5
      br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.0
     else
      local.get $dst|121
      i32.const 255
      i32.store8
      local.get $dst|121
      i32.const 1
      i32.add
      local.get $value|120
      i64.store
      i32.const 9
      br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.0
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 110
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.decodeCompact|inlined.0 (result i64)
   global.get $std/encoding/CB
   local.set $src|122
   global.get $std/encoding/bytesRead
   local.set $bytesRead|123
   local.get $src|122
   i32.load8_u
   local.set $first
   local.get $first
   i32.const 253
   i32.lt_u
   if
    local.get $bytesRead|123
    local.set $this|125
    i32.const 1
    local.set $value|126
    i32.const 0
    drop
    local.get $this|125
    local.get $value|126
    i32.store
    local.get $first
    i64.extend_i32_u
    br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.0
   else
    local.get $first
    i32.const 253
    i32.eq
    if
     local.get $bytesRead|123
     local.set $this|127
     i32.const 3
     local.set $value|128
     i32.const 0
     drop
     local.get $this|127
     local.get $value|128
     i32.store
     local.get $src|122
     i32.const 1
     i32.add
     i64.load16_u
     br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.0
    else
     local.get $first
     i32.const 254
     i32.eq
     if
      local.get $bytesRead|123
      local.set $this|129
      i32.const 5
      local.set $value|130
      i32.const 0
      drop
      local.get $this|129
      local.get $value|130
      i32.store
      local.get $src|122
      i32.const 1
      i32.add
      i64.load32_u
      br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.0
     else
      local.get $bytesRead|123
      local.set $this|131
      i32.const 9
      local.set $value|132
      i32.const 0
      drop
      local.get $this|131
      local.get $value|132
      i32.store
      local.get $src|122
      i32.const 1
      i32.add
      i64.load
      br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.0
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  global.set $std/encoding/compactDecoded
  global.get $std/encoding/compactDecoded
  i64.const 252
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 112
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/pointer/Pointer<i32>#get:value|inlined.2 (result i32)
   global.get $std/encoding/bytesRead
   local.set $this|133
   i32.const 0
   drop
   local.get $this|133
   i32.load
   br $~lib/pointer/Pointer<i32>#get:value|inlined.2
  end
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 113
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.encodeCompact|inlined.1 (result i32)
   i64.const 253
   local.set $value|134
   global.get $std/encoding/CB
   local.set $dst|135
   local.get $value|134
   i64.const 253
   i64.lt_u
   if
    local.get $dst|135
    local.get $value|134
    i32.wrap_i64
    i32.store8
    i32.const 1
    br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.1
   else
    local.get $value|134
    i64.const 65535
    i64.le_u
    if
     local.get $dst|135
     i32.const 253
     i32.store8
     local.get $dst|135
     i32.const 1
     i32.add
     local.get $value|134
     i32.wrap_i64
     i32.store16
     i32.const 3
     br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.1
    else
     local.get $value|134
     i64.const 4294967295
     i64.le_u
     if
      local.get $dst|135
      i32.const 254
      i32.store8
      local.get $dst|135
      i32.const 1
      i32.add
      local.get $value|134
      i32.wrap_i64
      i32.store
      i32.const 5
      br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.1
     else
      local.get $dst|135
      i32.const 255
      i32.store8
      local.get $dst|135
      i32.const 1
      i32.add
      local.get $value|134
      i64.store
      i32.const 9
      br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.1
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 117
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.decodeCompact|inlined.1 (result i64)
   global.get $std/encoding/CB
   local.set $src|136
   global.get $std/encoding/bytesRead
   local.set $bytesRead|137
   local.get $src|136
   i32.load8_u
   local.set $first|138
   local.get $first|138
   i32.const 253
   i32.lt_u
   if
    local.get $bytesRead|137
    local.set $this|139
    i32.const 1
    local.set $value|140
    i32.const 0
    drop
    local.get $this|139
    local.get $value|140
    i32.store
    local.get $first|138
    i64.extend_i32_u
    br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.1
   else
    local.get $first|138
    i32.const 253
    i32.eq
    if
     local.get $bytesRead|137
     local.set $this|141
     i32.const 3
     local.set $value|142
     i32.const 0
     drop
     local.get $this|141
     local.get $value|142
     i32.store
     local.get $src|136
     i32.const 1
     i32.add
     i64.load16_u
     br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.1
    else
     local.get $first|138
     i32.const 254
     i32.eq
     if
      local.get $bytesRead|137
      local.set $this|143
      i32.const 5
      local.set $value|144
      i32.const 0
      drop
      local.get $this|143
      local.get $value|144
      i32.store
      local.get $src|136
      i32.const 1
      i32.add
      i64.load32_u
      br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.1
     else
      local.get $bytesRead|137
      local.set $this|145
      i32.const 9
      local.set $value|146
      i32.const 0
      drop
      local.get $this|145
      local.get $value|146
      i32.store
      local.get $src|136
      i32.const 1
      i32.add
      i64.load
      br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.1
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  global.set $std/encoding/compactDecoded
  global.get $std/encoding/compactDecoded
  i64.const 253
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 119
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/pointer/Pointer<i32>#get:value|inlined.3 (result i32)
   global.get $std/encoding/bytesRead
   local.set $this|147
   i32.const 0
   drop
   local.get $this|147
   i32.load
   br $~lib/pointer/Pointer<i32>#get:value|inlined.3
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 120
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.encodeCompact|inlined.2 (result i32)
   i64.const 65535
   local.set $value|148
   global.get $std/encoding/CB
   local.set $dst|149
   local.get $value|148
   i64.const 253
   i64.lt_u
   if
    local.get $dst|149
    local.get $value|148
    i32.wrap_i64
    i32.store8
    i32.const 1
    br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.2
   else
    local.get $value|148
    i64.const 65535
    i64.le_u
    if
     local.get $dst|149
     i32.const 253
     i32.store8
     local.get $dst|149
     i32.const 1
     i32.add
     local.get $value|148
     i32.wrap_i64
     i32.store16
     i32.const 3
     br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.2
    else
     local.get $value|148
     i64.const 4294967295
     i64.le_u
     if
      local.get $dst|149
      i32.const 254
      i32.store8
      local.get $dst|149
      i32.const 1
      i32.add
      local.get $value|148
      i32.wrap_i64
      i32.store
      i32.const 5
      br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.2
     else
      local.get $dst|149
      i32.const 255
      i32.store8
      local.get $dst|149
      i32.const 1
      i32.add
      local.get $value|148
      i64.store
      i32.const 9
      br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.2
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 123
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.decodeCompact|inlined.2 (result i64)
   global.get $std/encoding/CB
   local.set $src|150
   global.get $std/encoding/bytesRead
   local.set $bytesRead|151
   local.get $src|150
   i32.load8_u
   local.set $first|152
   local.get $first|152
   i32.const 253
   i32.lt_u
   if
    local.get $bytesRead|151
    local.set $this|153
    i32.const 1
    local.set $value|154
    i32.const 0
    drop
    local.get $this|153
    local.get $value|154
    i32.store
    local.get $first|152
    i64.extend_i32_u
    br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.2
   else
    local.get $first|152
    i32.const 253
    i32.eq
    if
     local.get $bytesRead|151
     local.set $this|155
     i32.const 3
     local.set $value|156
     i32.const 0
     drop
     local.get $this|155
     local.get $value|156
     i32.store
     local.get $src|150
     i32.const 1
     i32.add
     i64.load16_u
     br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.2
    else
     local.get $first|152
     i32.const 254
     i32.eq
     if
      local.get $bytesRead|151
      local.set $this|157
      i32.const 5
      local.set $value|158
      i32.const 0
      drop
      local.get $this|157
      local.get $value|158
      i32.store
      local.get $src|150
      i32.const 1
      i32.add
      i64.load32_u
      br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.2
     else
      local.get $bytesRead|151
      local.set $this|159
      i32.const 9
      local.set $value|160
      i32.const 0
      drop
      local.get $this|159
      local.get $value|160
      i32.store
      local.get $src|150
      i32.const 1
      i32.add
      i64.load
      br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.2
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  global.set $std/encoding/compactDecoded
  global.get $std/encoding/compactDecoded
  i64.const 65535
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 125
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/pointer/Pointer<i32>#get:value|inlined.4 (result i32)
   global.get $std/encoding/bytesRead
   local.set $this|161
   i32.const 0
   drop
   local.get $this|161
   i32.load
   br $~lib/pointer/Pointer<i32>#get:value|inlined.4
  end
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 126
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.encodeCompact|inlined.3 (result i32)
   i64.const 65536
   local.set $value|162
   global.get $std/encoding/CB
   local.set $dst|163
   local.get $value|162
   i64.const 253
   i64.lt_u
   if
    local.get $dst|163
    local.get $value|162
    i32.wrap_i64
    i32.store8
    i32.const 1
    br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.3
   else
    local.get $value|162
    i64.const 65535
    i64.le_u
    if
     local.get $dst|163
     i32.const 253
     i32.store8
     local.get $dst|163
     i32.const 1
     i32.add
     local.get $value|162
     i32.wrap_i64
     i32.store16
     i32.const 3
     br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.3
    else
     local.get $value|162
     i64.const 4294967295
     i64.le_u
     if
      local.get $dst|163
      i32.const 254
      i32.store8
      local.get $dst|163
      i32.const 1
      i32.add
      local.get $value|162
      i32.wrap_i64
      i32.store
      i32.const 5
      br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.3
     else
      local.get $dst|163
      i32.const 255
      i32.store8
      local.get $dst|163
      i32.const 1
      i32.add
      local.get $value|162
      i64.store
      i32.const 9
      br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.3
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 130
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.decodeCompact|inlined.3 (result i64)
   global.get $std/encoding/CB
   local.set $src|164
   global.get $std/encoding/bytesRead
   local.set $bytesRead|165
   local.get $src|164
   i32.load8_u
   local.set $first|166
   local.get $first|166
   i32.const 253
   i32.lt_u
   if
    local.get $bytesRead|165
    local.set $this|167
    i32.const 1
    local.set $value|168
    i32.const 0
    drop
    local.get $this|167
    local.get $value|168
    i32.store
    local.get $first|166
    i64.extend_i32_u
    br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.3
   else
    local.get $first|166
    i32.const 253
    i32.eq
    if
     local.get $bytesRead|165
     local.set $this|169
     i32.const 3
     local.set $value|170
     i32.const 0
     drop
     local.get $this|169
     local.get $value|170
     i32.store
     local.get $src|164
     i32.const 1
     i32.add
     i64.load16_u
     br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.3
    else
     local.get $first|166
     i32.const 254
     i32.eq
     if
      local.get $bytesRead|165
      local.set $this|171
      i32.const 5
      local.set $value|172
      i32.const 0
      drop
      local.get $this|171
      local.get $value|172
      i32.store
      local.get $src|164
      i32.const 1
      i32.add
      i64.load32_u
      br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.3
     else
      local.get $bytesRead|165
      local.set $this|173
      i32.const 9
      local.set $value|174
      i32.const 0
      drop
      local.get $this|173
      local.get $value|174
      i32.store
      local.get $src|164
      i32.const 1
      i32.add
      i64.load
      br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.3
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  global.set $std/encoding/compactDecoded
  global.get $std/encoding/compactDecoded
  i64.const 65536
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 132
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/pointer/Pointer<i32>#get:value|inlined.5 (result i32)
   global.get $std/encoding/bytesRead
   local.set $this|175
   i32.const 0
   drop
   local.get $this|175
   i32.load
   br $~lib/pointer/Pointer<i32>#get:value|inlined.5
  end
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 133
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.encodeCompact|inlined.4 (result i32)
   i64.const 4294967296
   local.set $value|176
   global.get $std/encoding/CB
   local.set $dst|177
   local.get $value|176
   i64.const 253
   i64.lt_u
   if
    local.get $dst|177
    local.get $value|176
    i32.wrap_i64
    i32.store8
    i32.const 1
    br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.4
   else
    local.get $value|176
    i64.const 65535
    i64.le_u
    if
     local.get $dst|177
     i32.const 253
     i32.store8
     local.get $dst|177
     i32.const 1
     i32.add
     local.get $value|176
     i32.wrap_i64
     i32.store16
     i32.const 3
     br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.4
    else
     local.get $value|176
     i64.const 4294967295
     i64.le_u
     if
      local.get $dst|177
      i32.const 254
      i32.store8
      local.get $dst|177
      i32.const 1
      i32.add
      local.get $value|176
      i32.wrap_i64
      i32.store
      i32.const 5
      br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.4
     else
      local.get $dst|177
      i32.const 255
      i32.store8
      local.get $dst|177
      i32.const 1
      i32.add
      local.get $value|176
      i64.store
      i32.const 9
      br $~lib/encoding/Encoding.Varint.encodeCompact|inlined.4
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  global.set $std/encoding/written
  global.get $std/encoding/written
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 137
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/encoding/Encoding.Varint.decodeCompact|inlined.4 (result i64)
   global.get $std/encoding/CB
   local.set $src|178
   global.get $std/encoding/bytesRead
   local.set $bytesRead|179
   local.get $src|178
   i32.load8_u
   local.set $first|180
   local.get $first|180
   i32.const 253
   i32.lt_u
   if
    local.get $bytesRead|179
    local.set $this|181
    i32.const 1
    local.set $value|182
    i32.const 0
    drop
    local.get $this|181
    local.get $value|182
    i32.store
    local.get $first|180
    i64.extend_i32_u
    br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.4
   else
    local.get $first|180
    i32.const 253
    i32.eq
    if
     local.get $bytesRead|179
     local.set $this|183
     i32.const 3
     local.set $value|184
     i32.const 0
     drop
     local.get $this|183
     local.get $value|184
     i32.store
     local.get $src|178
     i32.const 1
     i32.add
     i64.load16_u
     br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.4
    else
     local.get $first|180
     i32.const 254
     i32.eq
     if
      local.get $bytesRead|179
      local.set $this|185
      i32.const 5
      local.set $value|186
      i32.const 0
      drop
      local.get $this|185
      local.get $value|186
      i32.store
      local.get $src|178
      i32.const 1
      i32.add
      i64.load32_u
      br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.4
     else
      local.get $bytesRead|179
      local.set $this|187
      i32.const 9
      local.set $value|188
      i32.const 0
      drop
      local.get $this|187
      local.get $value|188
      i32.store
      local.get $src|178
      i32.const 1
      i32.add
      i64.load
      br $~lib/encoding/Encoding.Varint.decodeCompact|inlined.4
     end
     unreachable
    end
    unreachable
   end
   unreachable
  end
  global.set $std/encoding/compactDecoded
  global.get $std/encoding/compactDecoded
  i64.const 4294967296
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 139
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/pointer/Pointer<i32>#get:value|inlined.6 (result i32)
   global.get $std/encoding/bytesRead
   local.set $this|189
   i32.const 0
   drop
   local.get $this|189
   i32.load
   br $~lib/pointer/Pointer<i32>#get:value|inlined.6
  end
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 140
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start
  call $start:std/encoding
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 32864
   i32.const 32912
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/builtins/abort (param $message i32) (param $fileName i32) (param $lineNumber i32) (param $columnNumber i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  drop
  local.get $message
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $fileName
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $lineNumber
  local.get $columnNumber
  call $~lib/builtins/__abort_impl
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
