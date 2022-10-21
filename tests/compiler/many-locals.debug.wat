(module
 (type $i32_=>_i32 (func_subtype (param i32) (result i32) func))
 (type $none_=>_none (func_subtype func))
 (type $i32_i32_i32_i32_=>_none (func_subtype (param i32 i32 i32 i32) func))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/memory/__data_end i32 (i32.const 60))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 32828))
 (global $~lib/memory/__heap_base i32 (i32.const 32828))
 (memory $0 1)
 (data (i32.const 12) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00m\00a\00n\00y\00-\00l\00o\00c\00a\00l\00s\00.\00t\00s\00")
 (table $0 1 1 funcref)
 (elem $0 (i32.const 1))
 (export "testI32" (func $many-locals/testI32))
 (export "testI8" (func $many-locals/testI8))
 (export "memory" (memory $0))
 (start $~start)
 (func $many-locals/testI32 (type $i32_=>_i32) (param $a i32) (result i32)
  (local $a00 i32)
  (local $a01 i32)
  (local $a02 i32)
  (local $a03 i32)
  (local $a04 i32)
  (local $a05 i32)
  (local $a06 i32)
  (local $a07 i32)
  (local $a08 i32)
  (local $a09 i32)
  (local $a0A i32)
  (local $a0B i32)
  (local $a0C i32)
  (local $a0D i32)
  (local $a0E i32)
  (local $a0F i32)
  (local $a10 i32)
  (local $a11 i32)
  (local $a12 i32)
  (local $a13 i32)
  (local $a14 i32)
  (local $a15 i32)
  (local $a16 i32)
  (local $a17 i32)
  (local $a18 i32)
  (local $a19 i32)
  (local $a1A i32)
  (local $a1B i32)
  (local $a1C i32)
  (local $a1D i32)
  (local $a1E i32)
  (local $a1F i32)
  (local $a20 i32)
  (local $a21 i32)
  (local $a22 i32)
  (local $a23 i32)
  (local $a24 i32)
  (local $a25 i32)
  (local $a26 i32)
  (local $a27 i32)
  (local $a28 i32)
  (local $a29 i32)
  (local $a2A i32)
  (local $a2B i32)
  (local $a2C i32)
  (local $a2D i32)
  (local $a2E i32)
  (local $a2F i32)
  (local $a30 i32)
  (local $a31 i32)
  (local $a32 i32)
  (local $a33 i32)
  (local $a34 i32)
  (local $a35 i32)
  (local $a36 i32)
  (local $a37 i32)
  (local $a38 i32)
  (local $a39 i32)
  (local $a3A i32)
  (local $a3B i32)
  (local $a3C i32)
  (local $a3D i32)
  (local $a3E i32)
  (local $a3F i32)
  (local $a40 i32)
  (local $a41 i32)
  (local $a42 i32)
  (local $a43 i32)
  (local $a44 i32)
  (local $a45 i32)
  (local $a46 i32)
  (local $a47 i32)
  (local $a48 i32)
  (local $a49 i32)
  (local $a4A i32)
  (local $a4B i32)
  (local $a4C i32)
  (local $a4D i32)
  (local $a4E i32)
  (local $a4F i32)
  (local $a50 i32)
  (local $a51 i32)
  (local $a52 i32)
  (local $a53 i32)
  (local $a54 i32)
  (local $a55 i32)
  (local $a56 i32)
  (local $a57 i32)
  (local $a58 i32)
  (local $a59 i32)
  (local $a5A i32)
  (local $a5B i32)
  (local $a5C i32)
  (local $a5D i32)
  (local $a5E i32)
  (local $a5F i32)
  (local $a60 i32)
  (local $a61 i32)
  (local $a62 i32)
  (local $a63 i32)
  (local $a64 i32)
  (local $a65 i32)
  (local $a66 i32)
  (local $a67 i32)
  (local $a68 i32)
  (local $a69 i32)
  (local $a6A i32)
  (local $a6B i32)
  (local $a6C i32)
  (local $a6D i32)
  (local $a6E i32)
  (local $a6F i32)
  (local $a70 i32)
  (local $a71 i32)
  (local $a72 i32)
  (local $a73 i32)
  (local $a74 i32)
  (local $a75 i32)
  (local $a76 i32)
  (local $a77 i32)
  (local $a78 i32)
  (local $a79 i32)
  (local $a7A i32)
  (local $a7B i32)
  (local $a7C i32)
  (local $a7D i32)
  (local $a7E i32)
  (local $a7F i32)
  local.get $a
  local.set $a00
  local.get $a00
  local.set $a01
  local.get $a01
  local.set $a02
  local.get $a02
  local.set $a03
  local.get $a03
  local.set $a04
  local.get $a04
  local.set $a05
  local.get $a05
  local.set $a06
  local.get $a06
  local.set $a07
  local.get $a07
  local.set $a08
  local.get $a08
  local.set $a09
  local.get $a09
  local.set $a0A
  local.get $a0A
  local.set $a0B
  local.get $a0B
  local.set $a0C
  local.get $a0C
  local.set $a0D
  local.get $a0D
  local.set $a0E
  local.get $a0E
  local.set $a0F
  local.get $a0F
  local.set $a10
  local.get $a10
  local.set $a11
  local.get $a11
  local.set $a12
  local.get $a12
  local.set $a13
  local.get $a13
  local.set $a14
  local.get $a14
  local.set $a15
  local.get $a15
  local.set $a16
  local.get $a16
  local.set $a17
  local.get $a17
  local.set $a18
  local.get $a18
  local.set $a19
  local.get $a19
  local.set $a1A
  local.get $a1A
  local.set $a1B
  local.get $a1B
  local.set $a1C
  local.get $a1C
  local.set $a1D
  local.get $a1D
  local.set $a1E
  local.get $a1E
  local.set $a1F
  local.get $a1F
  local.set $a20
  local.get $a20
  local.set $a21
  local.get $a21
  local.set $a22
  local.get $a22
  local.set $a23
  local.get $a23
  local.set $a24
  local.get $a24
  local.set $a25
  local.get $a25
  local.set $a26
  local.get $a26
  local.set $a27
  local.get $a27
  local.set $a28
  local.get $a28
  local.set $a29
  local.get $a29
  local.set $a2A
  local.get $a2A
  local.set $a2B
  local.get $a2B
  local.set $a2C
  local.get $a2C
  local.set $a2D
  local.get $a2D
  local.set $a2E
  local.get $a2E
  local.set $a2F
  local.get $a2F
  local.set $a30
  local.get $a30
  local.set $a31
  local.get $a31
  local.set $a32
  local.get $a32
  local.set $a33
  local.get $a33
  local.set $a34
  local.get $a34
  local.set $a35
  local.get $a35
  local.set $a36
  local.get $a36
  local.set $a37
  local.get $a37
  local.set $a38
  local.get $a38
  local.set $a39
  local.get $a39
  local.set $a3A
  local.get $a3A
  local.set $a3B
  local.get $a3B
  local.set $a3C
  local.get $a3C
  local.set $a3D
  local.get $a3D
  local.set $a3E
  local.get $a3E
  local.set $a3F
  local.get $a3F
  local.set $a40
  local.get $a40
  local.set $a41
  local.get $a41
  local.set $a42
  local.get $a42
  local.set $a43
  local.get $a43
  local.set $a44
  local.get $a44
  local.set $a45
  local.get $a45
  local.set $a46
  local.get $a46
  local.set $a47
  local.get $a47
  local.set $a48
  local.get $a48
  local.set $a49
  local.get $a49
  local.set $a4A
  local.get $a4A
  local.set $a4B
  local.get $a4B
  local.set $a4C
  local.get $a4C
  local.set $a4D
  local.get $a4D
  local.set $a4E
  local.get $a4E
  local.set $a4F
  local.get $a4F
  local.set $a50
  local.get $a50
  local.set $a51
  local.get $a51
  local.set $a52
  local.get $a52
  local.set $a53
  local.get $a53
  local.set $a54
  local.get $a54
  local.set $a55
  local.get $a55
  local.set $a56
  local.get $a56
  local.set $a57
  local.get $a57
  local.set $a58
  local.get $a58
  local.set $a59
  local.get $a59
  local.set $a5A
  local.get $a5A
  local.set $a5B
  local.get $a5B
  local.set $a5C
  local.get $a5C
  local.set $a5D
  local.get $a5D
  local.set $a5E
  local.get $a5E
  local.set $a5F
  local.get $a5F
  local.set $a60
  local.get $a60
  local.set $a61
  local.get $a61
  local.set $a62
  local.get $a62
  local.set $a63
  local.get $a63
  local.set $a64
  local.get $a64
  local.set $a65
  local.get $a65
  local.set $a66
  local.get $a66
  local.set $a67
  local.get $a67
  local.set $a68
  local.get $a68
  local.set $a69
  local.get $a69
  local.set $a6A
  local.get $a6A
  local.set $a6B
  local.get $a6B
  local.set $a6C
  local.get $a6C
  local.set $a6D
  local.get $a6D
  local.set $a6E
  local.get $a6E
  local.set $a6F
  local.get $a6F
  local.set $a70
  local.get $a70
  local.set $a71
  local.get $a71
  local.set $a72
  local.get $a72
  local.set $a73
  local.get $a73
  local.set $a74
  local.get $a74
  local.set $a75
  local.get $a75
  local.set $a76
  local.get $a76
  local.set $a77
  local.get $a77
  local.set $a78
  local.get $a78
  local.set $a79
  local.get $a79
  local.set $a7A
  local.get $a7A
  local.set $a7B
  local.get $a7B
  local.set $a7C
  local.get $a7C
  local.set $a7D
  local.get $a7D
  local.set $a7E
  local.get $a7E
  local.set $a7F
  local.get $a7F
 )
 (func $many-locals/testI8 (type $i32_=>_i32) (param $a i32) (result i32)
  (local $a00 i32)
  (local $a01 i32)
  (local $a02 i32)
  (local $a03 i32)
  (local $a04 i32)
  (local $a05 i32)
  (local $a06 i32)
  (local $a07 i32)
  (local $a08 i32)
  (local $a09 i32)
  (local $a0A i32)
  (local $a0B i32)
  (local $a0C i32)
  (local $a0D i32)
  (local $a0E i32)
  (local $a0F i32)
  (local $a10 i32)
  (local $a11 i32)
  (local $a12 i32)
  (local $a13 i32)
  (local $a14 i32)
  (local $a15 i32)
  (local $a16 i32)
  (local $a17 i32)
  (local $a18 i32)
  (local $a19 i32)
  (local $a1A i32)
  (local $a1B i32)
  (local $a1C i32)
  (local $a1D i32)
  (local $a1E i32)
  (local $a1F i32)
  (local $a20 i32)
  (local $a21 i32)
  (local $a22 i32)
  (local $a23 i32)
  (local $a24 i32)
  (local $a25 i32)
  (local $a26 i32)
  (local $a27 i32)
  (local $a28 i32)
  (local $a29 i32)
  (local $a2A i32)
  (local $a2B i32)
  (local $a2C i32)
  (local $a2D i32)
  (local $a2E i32)
  (local $a2F i32)
  (local $a30 i32)
  (local $a31 i32)
  (local $a32 i32)
  (local $a33 i32)
  (local $a34 i32)
  (local $a35 i32)
  (local $a36 i32)
  (local $a37 i32)
  (local $a38 i32)
  (local $a39 i32)
  (local $a3A i32)
  (local $a3B i32)
  (local $a3C i32)
  (local $a3D i32)
  (local $a3E i32)
  (local $a3F i32)
  (local $a40 i32)
  (local $a41 i32)
  (local $a42 i32)
  (local $a43 i32)
  (local $a44 i32)
  (local $a45 i32)
  (local $a46 i32)
  (local $a47 i32)
  (local $a48 i32)
  (local $a49 i32)
  (local $a4A i32)
  (local $a4B i32)
  (local $a4C i32)
  (local $a4D i32)
  (local $a4E i32)
  (local $a4F i32)
  (local $a50 i32)
  (local $a51 i32)
  (local $a52 i32)
  (local $a53 i32)
  (local $a54 i32)
  (local $a55 i32)
  (local $a56 i32)
  (local $a57 i32)
  (local $a58 i32)
  (local $a59 i32)
  (local $a5A i32)
  (local $a5B i32)
  (local $a5C i32)
  (local $a5D i32)
  (local $a5E i32)
  (local $a5F i32)
  (local $a60 i32)
  (local $a61 i32)
  (local $a62 i32)
  (local $a63 i32)
  (local $a64 i32)
  (local $a65 i32)
  (local $a66 i32)
  (local $a67 i32)
  (local $a68 i32)
  (local $a69 i32)
  (local $a6A i32)
  (local $a6B i32)
  (local $a6C i32)
  (local $a6D i32)
  (local $a6E i32)
  (local $a6F i32)
  (local $a70 i32)
  (local $a71 i32)
  (local $a72 i32)
  (local $a73 i32)
  (local $a74 i32)
  (local $a75 i32)
  (local $a76 i32)
  (local $a77 i32)
  (local $a78 i32)
  (local $a79 i32)
  (local $a7A i32)
  (local $a7B i32)
  (local $a7C i32)
  (local $a7D i32)
  (local $a7E i32)
  (local $a7F i32)
  local.get $a
  local.set $a00
  local.get $a00
  local.set $a01
  local.get $a01
  local.set $a02
  local.get $a02
  local.set $a03
  local.get $a03
  local.set $a04
  local.get $a04
  local.set $a05
  local.get $a05
  local.set $a06
  local.get $a06
  local.set $a07
  local.get $a07
  local.set $a08
  local.get $a08
  local.set $a09
  local.get $a09
  local.set $a0A
  local.get $a0A
  local.set $a0B
  local.get $a0B
  local.set $a0C
  local.get $a0C
  local.set $a0D
  local.get $a0D
  local.set $a0E
  local.get $a0E
  local.set $a0F
  local.get $a0F
  local.set $a10
  local.get $a10
  local.set $a11
  local.get $a11
  local.set $a12
  local.get $a12
  local.set $a13
  local.get $a13
  local.set $a14
  local.get $a14
  local.set $a15
  local.get $a15
  local.set $a16
  local.get $a16
  local.set $a17
  local.get $a17
  local.set $a18
  local.get $a18
  local.set $a19
  local.get $a19
  local.set $a1A
  local.get $a1A
  local.set $a1B
  local.get $a1B
  local.set $a1C
  local.get $a1C
  local.set $a1D
  local.get $a1D
  local.set $a1E
  local.get $a1E
  local.set $a1F
  local.get $a1F
  local.set $a20
  local.get $a20
  local.set $a21
  local.get $a21
  local.set $a22
  local.get $a22
  local.set $a23
  local.get $a23
  local.set $a24
  local.get $a24
  local.set $a25
  local.get $a25
  local.set $a26
  local.get $a26
  local.set $a27
  local.get $a27
  local.set $a28
  local.get $a28
  local.set $a29
  local.get $a29
  local.set $a2A
  local.get $a2A
  local.set $a2B
  local.get $a2B
  local.set $a2C
  local.get $a2C
  local.set $a2D
  local.get $a2D
  local.set $a2E
  local.get $a2E
  local.set $a2F
  local.get $a2F
  local.set $a30
  local.get $a30
  local.set $a31
  local.get $a31
  local.set $a32
  local.get $a32
  local.set $a33
  local.get $a33
  local.set $a34
  local.get $a34
  local.set $a35
  local.get $a35
  local.set $a36
  local.get $a36
  local.set $a37
  local.get $a37
  local.set $a38
  local.get $a38
  local.set $a39
  local.get $a39
  local.set $a3A
  local.get $a3A
  local.set $a3B
  local.get $a3B
  local.set $a3C
  local.get $a3C
  local.set $a3D
  local.get $a3D
  local.set $a3E
  local.get $a3E
  local.set $a3F
  local.get $a3F
  local.set $a40
  local.get $a40
  local.set $a41
  local.get $a41
  local.set $a42
  local.get $a42
  local.set $a43
  local.get $a43
  local.set $a44
  local.get $a44
  local.set $a45
  local.get $a45
  local.set $a46
  local.get $a46
  local.set $a47
  local.get $a47
  local.set $a48
  local.get $a48
  local.set $a49
  local.get $a49
  local.set $a4A
  local.get $a4A
  local.set $a4B
  local.get $a4B
  local.set $a4C
  local.get $a4C
  local.set $a4D
  local.get $a4D
  local.set $a4E
  local.get $a4E
  local.set $a4F
  local.get $a4F
  local.set $a50
  local.get $a50
  local.set $a51
  local.get $a51
  local.set $a52
  local.get $a52
  local.set $a53
  local.get $a53
  local.set $a54
  local.get $a54
  local.set $a55
  local.get $a55
  local.set $a56
  local.get $a56
  local.set $a57
  local.get $a57
  local.set $a58
  local.get $a58
  local.set $a59
  local.get $a59
  local.set $a5A
  local.get $a5A
  local.set $a5B
  local.get $a5B
  local.set $a5C
  local.get $a5C
  local.set $a5D
  local.get $a5D
  local.set $a5E
  local.get $a5E
  local.set $a5F
  local.get $a5F
  local.set $a60
  local.get $a60
  local.set $a61
  local.get $a61
  local.set $a62
  local.get $a62
  local.set $a63
  local.get $a63
  local.set $a64
  local.get $a64
  local.set $a65
  local.get $a65
  local.set $a66
  local.get $a66
  local.set $a67
  local.get $a67
  local.set $a68
  local.get $a68
  local.set $a69
  local.get $a69
  local.set $a6A
  local.get $a6A
  local.set $a6B
  local.get $a6B
  local.set $a6C
  local.get $a6C
  local.set $a6D
  local.get $a6D
  local.set $a6E
  local.get $a6E
  local.set $a6F
  local.get $a6F
  local.set $a70
  local.get $a70
  local.set $a71
  local.get $a71
  local.set $a72
  local.get $a72
  local.set $a73
  local.get $a73
  local.set $a74
  local.get $a74
  local.set $a75
  local.get $a75
  local.set $a76
  local.get $a76
  local.set $a77
  local.get $a77
  local.set $a78
  local.get $a78
  local.set $a79
  local.get $a79
  local.set $a7A
  local.get $a7A
  local.set $a7B
  local.get $a7B
  local.set $a7C
  local.get $a7C
  local.set $a7D
  local.get $a7D
  local.set $a7E
  local.get $a7E
  local.set $a7F
  local.get $a7F
  i32.extend8_s
 )
 (func $start:many-locals (type $none_=>_none)
  i32.const 42
  call $many-locals/testI32
  i32.const 42
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
  i32.const 42
  call $many-locals/testI8
  i32.const 42
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 267
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~start (type $none_=>_none)
  call $start:many-locals
 )
)
