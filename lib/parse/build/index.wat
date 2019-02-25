(module
 (type $ii_ (func (param i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iii_ (func (param i32 i32 i32)))
 (type $iiiiii_ (func (param i32 i32 i32 i32 i32 i32)))
 (type $iiiii_ (func (param i32 i32 i32 i32 i32)))
 (type $iiii_ (func (param i32 i32 i32 i32)))
 (type $_ (func))
 (type $I (func (result i64)))
 (type $i_ (func (param i32)))
 (type $FUNCSIG$i (func (result i32)))
 (import "env" "memory" (memory $0 0))
 (import "options" "onSection" (func $assembly/options/onSection (param i32 i32 i32 i32 i32) (result i32)))
 (import "options" "onType" (func $assembly/options/onType (param i32 i32)))
 (import "options" "onTypeParam" (func $assembly/options/onTypeParam (param i32 i32 i32)))
 (import "options" "onTypeReturn" (func $assembly/options/onTypeReturn (param i32 i32 i32)))
 (import "options" "onImport" (func $assembly/options/onImport (param i32 i32 i32 i32 i32 i32)))
 (import "options" "onFunctionImport" (func $assembly/options/onFunctionImport (param i32 i32)))
 (import "options" "onTableImport" (func $assembly/options/onTableImport (param i32 i32 i32 i32 i32)))
 (import "options" "onMemoryImport" (func $assembly/options/onMemoryImport (param i32 i32 i32 i32)))
 (import "options" "onGlobalImport" (func $assembly/options/onGlobalImport (param i32 i32 i32)))
 (import "options" "onFunction" (func $assembly/options/onFunction (param i32 i32)))
 (import "options" "onTable" (func $assembly/options/onTable (param i32 i32 i32 i32 i32)))
 (import "options" "onMemory" (func $assembly/options/onMemory (param i32 i32 i32 i32)))
 (import "options" "onGlobal" (func $assembly/options/onGlobal (param i32 i32 i32)))
 (import "options" "onExport" (func $assembly/options/onExport (param i32 i32 i32 i32 i32)))
 (import "options" "onStart" (func $assembly/options/onStart (param i32)))
 (import "options" "onModuleName" (func $assembly/options/onModuleName (param i32 i32)))
 (import "options" "onFunctionName" (func $assembly/options/onFunctionName (param i32 i32 i32)))
 (import "options" "onLocalName" (func $assembly/options/onLocalName (param i32 i32 i32 i32)))
 (import "options" "onSourceMappingURL" (func $assembly/options/onSourceMappingURL (param i32 i32)))
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $src/common/SectionId.Custom (mut i32) (i32.const 0))
 (global $src/common/SectionId.Type (mut i32) (i32.const 1))
 (global $src/common/SectionId.Import (mut i32) (i32.const 2))
 (global $src/common/SectionId.Function (mut i32) (i32.const 3))
 (global $src/common/SectionId.Table (mut i32) (i32.const 4))
 (global $src/common/SectionId.Memory (mut i32) (i32.const 5))
 (global $src/common/SectionId.Global (mut i32) (i32.const 6))
 (global $src/common/SectionId.Export (mut i32) (i32.const 7))
 (global $src/common/SectionId.Start (mut i32) (i32.const 8))
 (global $src/common/SectionId.Element (mut i32) (i32.const 9))
 (global $src/common/SectionId.Code (mut i32) (i32.const 10))
 (global $src/common/SectionId.Data (mut i32) (i32.const 11))
 (global $ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/internal/string/CharCode.PLUS i32 (i32.const 43))
 (global $~lib/internal/string/CharCode.MINUS i32 (i32.const 45))
 (global $~lib/internal/string/CharCode.DOT i32 (i32.const 46))
 (global $~lib/internal/string/CharCode._0 i32 (i32.const 48))
 (global $~lib/internal/string/CharCode._1 i32 (i32.const 49))
 (global $~lib/internal/string/CharCode._2 i32 (i32.const 50))
 (global $~lib/internal/string/CharCode._3 i32 (i32.const 51))
 (global $~lib/internal/string/CharCode._4 i32 (i32.const 52))
 (global $~lib/internal/string/CharCode._5 i32 (i32.const 53))
 (global $~lib/internal/string/CharCode._6 i32 (i32.const 54))
 (global $~lib/internal/string/CharCode._7 i32 (i32.const 55))
 (global $~lib/internal/string/CharCode._8 i32 (i32.const 56))
 (global $~lib/internal/string/CharCode._9 i32 (i32.const 57))
 (global $~lib/internal/string/CharCode.A i32 (i32.const 65))
 (global $~lib/internal/string/CharCode.B i32 (i32.const 66))
 (global $~lib/internal/string/CharCode.E i32 (i32.const 69))
 (global $~lib/internal/string/CharCode.N i32 (i32.const 78))
 (global $~lib/internal/string/CharCode.O i32 (i32.const 79))
 (global $~lib/internal/string/CharCode.X i32 (i32.const 88))
 (global $~lib/internal/string/CharCode.Z i32 (i32.const 90))
 (global $~lib/internal/string/CharCode.a i32 (i32.const 97))
 (global $~lib/internal/string/CharCode.b i32 (i32.const 98))
 (global $~lib/internal/string/CharCode.e i32 (i32.const 101))
 (global $~lib/internal/string/CharCode.n i32 (i32.const 110))
 (global $~lib/internal/string/CharCode.o i32 (i32.const 111))
 (global $~lib/internal/string/CharCode.x i32 (i32.const 120))
 (global $~lib/internal/string/CharCode.z i32 (i32.const 122))
 (global $src/common/ExternalKind.Function (mut i32) (i32.const 0))
 (global $src/common/ExternalKind.Table (mut i32) (i32.const 1))
 (global $src/common/ExternalKind.Memory (mut i32) (i32.const 2))
 (global $src/common/ExternalKind.Global (mut i32) (i32.const 3))
 (global $src/common/NameType.Module (mut i32) (i32.const 0))
 (global $src/common/NameType.Function (mut i32) (i32.const 1))
 (global $src/common/NameType.Local (mut i32) (i32.const 2))
 (global $src/common/Opcode.end (mut i32) (i32.const 11))
 (global $src/common/Opcode.get_global (mut i32) (i32.const 35))
 (global $src/common/Opcode.i32_const (mut i32) (i32.const 65))
 (global $src/common/Opcode.i64_const (mut i32) (i32.const 66))
 (global $src/common/Opcode.f32_const (mut i32) (i32.const 67))
 (global $src/common/Opcode.f64_const (mut i32) (i32.const 68))
 (global $assembly/index/off (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "getType" (func $assembly/index/getType))
 (export "getImports" (func $assembly/index/getImports))
 (export "removeSection" (func $assembly/index/removeSection))
 (export "removeStartFunction" (func $assembly/index/removeStartFunction))
 (export "exportDataSection" (func $assembly/index/exportDataSection))
 (export "toString" (func $assembly/index/toString))
 (export "hasStart" (func $assembly/index/hasStart))
 (export "Parser#constructor" (func $assembly/index/Parser#constructor))
 (export "Parser#get:buf" (func $Parser#get:buf))
 (export "Parser#set:buf" (func $Parser#set:buf))
 (export "Parser#get:module" (func $Parser#get:module))
 (export "Parser#set:module" (func $Parser#set:module))
 (export "Parser#parseString" (func $assembly/index/Parser#parseString))
 (export "Parser#readVaruint" (func $assembly/index/Parser#readVaruint))
 (export "Parser#get:off" (func $assembly/index/Parser#get:off))
 (export "Parser#set:off" (func $assembly/index/Parser#set:off))
 (export "Parser#parse" (func $assembly/index/Parser#parse))
 (export "memory.fill" (func $~lib/memory/memory.fill))
 (export "memory.copy" (func $~lib/memory/memory.copy))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "memory.allocate" (func $~lib/memory/memory.allocate))
 (export "memory.free" (func $~lib/memory/memory.free))
 (export "memory.reset" (func $~lib/memory/memory.reset))
 (export "TypeSection#get:header" (func $TypeSection#get:header))
 (export "TypeSection#set:header" (func $TypeSection#set:header))
 (export "TypeSection#get:funcs" (func $TypeSection#get:funcs))
 (export "TypeSection#set:funcs" (func $TypeSection#set:funcs))
 (export "TypeSection#parse" (func $assembly/module/index/TypeSection#parse))
 (export "TypeSection#toString" (func $assembly/module/index/TypeSection#toString))
 (export "Module#constructor" (func $assembly/module/index/Module#constructor))
 (export "Module#get:headers" (func $Module#get:headers))
 (export "Module#set:headers" (func $Module#set:headers))
 (export "Module#get:buf" (func $Module#get:buf))
 (export "Module#set:buf" (func $Module#set:buf))
 (export "Module#get:Type" (func $assembly/module/index/Module#get:Type))
 (export "Module#get:hasStart" (func $assembly/module/index/Module#get:hasStart))
 (export "Module#get:start" (func $assembly/module/index/Module#get:start))
 (export "Module#parseSection" (func $assembly/module/index/Module#parseSection))
 (export "Module#getID" (func $assembly/module/index/Module#getID))
 (export "Module#hasSection" (func $assembly/module/index/Module#hasSection))
 (export "Module#getType" (func $assembly/module/index/Module#getType))
 (export "Module#getImports" (func $assembly/module/index/Module#getImports))
 (export "Module#print" (func $assembly/module/index/Module#print))
 (start $start)
 (func $~lib/internal/memory/memset (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $assembly/index/off
  local.set $0
  loop $continue|0
   local.get $0
   local.tee $1
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.load8_u
   local.tee $1
   i32.const 127
   i32.and
   local.get $3
   i32.shl
   local.get $2
   i32.or
   local.set $2
   local.get $1
   i32.const 128
   i32.and
   if
    local.get $3
    i32.const 7
    i32.add
    local.set $3
    br $continue|0
   end
   unreachable
  end
  local.get $0
  global.set $assembly/index/off
  local.get $2
 )
 (func $~lib/internal/arraybuffer/computeSize (; 20 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  get_local $0
  get_global $~lib/internal/arraybuffer/HEADER_SIZE
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 21 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  get_local $0
  get_global $~lib/internal/arraybuffer/MAX_BLENGTH
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 40
   i32.const 26
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  block $~lib/memory/memory.allocate|inlined.0 (result i32)
   get_local $0
   call $~lib/internal/arraybuffer/computeSize
   set_local $2
   get_local $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  set_local $1
  get_local $1
  get_local $0
  i32.store
  get_local $1
 )
 (func $~lib/array/Array<FuncType>#constructor (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $assembly/index/off
  local.set $2
  loop $continue|0
   local.get $2
   local.tee $4
   i32.const 1
   i32.add
   local.set $2
   local.get $4
   i32.load8_u
   local.tee $5
   i32.const 127
   i32.and
   local.get $1
   i32.shl
   local.get $3
   i32.or
   local.set $3
   local.get $1
   i32.const 7
   i32.add
   local.set $1
   local.get $5
   i32.const 128
   i32.and
   br_if $continue|0
  end
  local.get $2
  global.set $assembly/index/off
  i32.const -1
  local.get $1
  i32.shl
  local.get $3
  i32.or
  local.set $2
  local.get $1
  local.get $0
  i32.lt_u
  local.tee $4
  if
   local.get $5
   i32.const 64
   i32.and
   i32.const 0
   i32.ne
   local.set $4
  end
  local.get $2
  local.get $3
  local.get $4
  select
 )
 (func $~lib/string/String.__concat (; 38 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  get_local $0
  i32.eqz
  if
   i32.const 864
   set_local $0
  end
  get_local $0
  get_local $1
  call $~lib/string/String#concat
 )
 (func $assembly/host/index/log<String> (; 39 ;) (type $iv) (param $0 i32)
  get_local $0
  call $assembly/host/index/_log_str
 )
 (func $assembly/host/index/err (; 40 ;) (type $iv) (param $0 i32)
  i32.const 840
  get_local $0
  call $~lib/string/String.__concat
  call $assembly/host/index/log<String>
  unreachable
 )
 (func $assembly/module/index/typeName (; 41 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  block $break|0
   block $case7|0
    block $case6|0
     block $case5|0
      block $case4|0
       block $case3|0
        block $case2|0
         block $case1|0
          block $case0|0
           get_local $0
           set_local $1
           get_local $1
           i32.const 127
           i32.eq
           br_if $case0|0
           get_local $1
           i32.const 126
           i32.eq
           br_if $case1|0
           get_local $1
           i32.const 125
           i32.eq
           br_if $case2|0
           get_local $1
           i32.const 124
           i32.eq
           br_if $case3|0
           get_local $1
           i32.const 112
           i32.eq
           br_if $case4|0
           get_local $1
           i32.const 96
           i32.eq
           br_if $case5|0
           get_local $1
           i32.const 64
           i32.eq
           br_if $case6|0
           br $case7|0
          end
          i32.const 688
          return
         end
         i32.const 704
         return
        end
        i32.const 720
        return
       end
       i32.const 736
       return
      end
      i32.const 752
      return
     end
     i32.const 776
     return
    end
    i32.const 792
    return
   end
   i32.const 808
   call $assembly/host/index/err
  end
  i32.const 912
 )
 (func $~lib/array/Array<i32>#__get (; 42 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  global.get $assembly/index/off
  local.set $3
  loop $continue|0
   local.get $3
   local.tee $2
   i32.const 1
   i32.add
   local.set $3
   local.get $2
   i64.load8_u
   local.tee $4
   i64.const 127
   i64.and
   local.get $0
   i64.shl
   local.get $1
   i64.or
   local.set $1
   local.get $0
   i64.const 7
   i64.add
   local.set $0
   local.get $4
   i64.const 128
   i64.and
   i64.const 0
   i64.ne
   br_if $continue|0
  end
  local.get $3
  global.set $assembly/index/off
  i64.const -1
  local.get $0
  i64.shl
  local.get $1
  i64.or
  local.set $5
  local.get $0
  i64.const 64
  i64.lt_u
  local.tee $2
  if
   local.get $4
   i64.const 64
   i64.and
   i64.const 0
   i64.ne
   local.set $2
  end
  local.get $5
  local.get $1
  local.get $2
  select
 )
 (func $assembly/index/skipInitExpr (; 22 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  global.get $assembly/index/off
  local.tee $1
  i32.load8_u
  local.set $0
  local.get $1
  i32.const 1
  i32.add
  global.set $assembly/index/off
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        global.get $src/common/Opcode.i32_const
        local.get $0
        i32.ne
        if
         global.get $src/common/Opcode.i64_const
         local.get $0
         i32.eq
         br_if $case1|0
         global.get $src/common/Opcode.f32_const
         local.get $0
         i32.eq
         br_if $case2|0
         global.get $src/common/Opcode.f64_const
         local.get $0
         i32.eq
         br_if $case3|0
         global.get $src/common/Opcode.get_global
         local.get $0
         i32.eq
         br_if $case4|0
         br $case5|0
        end
       end
      end
      global.get $assembly/index/off
      local.tee $0
      i32.load
      drop
      local.get $0
      i32.const 4
      i32.add
      global.set $assembly/index/off
      br $break|0
     end
     global.get $assembly/index/off
     local.tee $0
     i64.load
     drop
     local.get $0
     i32.const 8
     i32.add
     global.set $assembly/index/off
     br $break|0
    end
   end
  end
  get_local $2
  get_local $1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 880
   i32.const 535
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $assembly/index/off
  local.tee $1
  i32.load8_u
  local.set $0
  local.get $1
  i32.const 1
  i32.add
  global.set $assembly/index/off
  global.get $src/common/Opcode.end
  local.get $0
  i32.ne
  if
   get_local $1
   i32.const 268435454
   i32.ge_u
   if
    i32.const 0
    i32.const 8
    i32.const 109
    i32.const 41
    call $~lib/env/abort
    unreachable
   end
   get_local $3
   get_local $1
   i32.const 1
   i32.add
   i32.const 2
   i32.shl
   call $~lib/internal/arraybuffer/reallocateUnsafe
   set_local $3
   get_local $0
   get_local $3
   i32.store
   get_local $0
   get_local $1
   i32.const 1
   i32.add
   i32.store offset=4
  end
  i32.const 0
  set_local $5
  get_local $3
  get_local $1
  i32.const 2
  i32.shl
  i32.add
  get_local $5
  i32.add
  get_local $2
  i32.store offset=8
 )
 (func $assembly/index/parse (; 23 ;) (type $ii_) (param $0 i32) (param $1 i32)
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
  local.get $0
  global.set $assembly/index/off
  global.get $assembly/index/off
  local.tee $0
  i32.load
  local.set $6
  local.get $0
  i32.const 4
  i32.add
  global.set $assembly/index/off
  local.get $6
  i32.const 1836278016
  i32.ne
  if
   nop
  end
 )
 (func $assembly/module/index/SectionHeader#get:end (; 58 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=12
  get_local $0
  i32.load offset=8
  i32.add
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#constructor (; 59 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_local $1
  i32.const 1073741816
  i32.gt_u
  if
   i32.const 0
   i32.const 1080
   i32.const 23
   i32.const 34
   call $~lib/env/abort
   unreachable
  end
  global.get $assembly/index/off
  local.tee $0
  i32.load
  local.set $6
  local.get $0
  i32.const 4
  i32.add
  global.set $assembly/index/off
  local.get $6
  i32.const 1
  i32.ne
  if
   unreachable
  end
  loop $continue|0
   global.get $assembly/index/off
   local.get $1
   i32.lt_u
   if
    call $assembly/index/readVaruint
    local.set $2
    call $assembly/index/readVaruint
    local.set $8
    i32.const 0
    local.set $4
    i32.const 0
    local.set $0
    local.get $2
    if
     local.get $2
     global.get $src/common/SectionId.Data
     i32.gt_u
     if
      unreachable
     end
    else     
     global.get $assembly/index/off
     local.set $5
     call $assembly/index/readVaruint
     local.tee $0
     global.get $assembly/index/off
     local.tee $4
     i32.add
     global.set $assembly/index/off
     local.get $8
     global.get $assembly/index/off
     local.get $5
     i32.sub
     i32.sub
     local.set $8
    end
    local.get $2
    global.get $assembly/index/off
    local.tee $5
    local.get $8
    local.get $4
    local.get $0
    call $assembly/options/onSection
    if
     block $break|1
      block $case12|1
       block $case11|1
        block $case8|1
         block $case7|1
          block $case6|1
           block $case5|1
            block $case4|1
             block $case3|1
              block $case2|1
               block $case1|1
                global.get $src/common/SectionId.Type
                local.get $2
                i32.ne
                if
                 global.get $src/common/SectionId.Import
                 local.get $2
                 i32.eq
                 br_if $case1|1
                 global.get $src/common/SectionId.Function
                 local.get $2
                 i32.eq
                 br_if $case2|1
                 global.get $src/common/SectionId.Table
                 local.get $2
                 i32.eq
                 br_if $case3|1
                 global.get $src/common/SectionId.Memory
                 local.get $2
                 i32.eq
                 br_if $case4|1
                 global.get $src/common/SectionId.Global
                 local.get $2
                 i32.eq
                 br_if $case5|1
                 global.get $src/common/SectionId.Export
                 local.get $2
                 i32.eq
                 br_if $case6|1
                 global.get $src/common/SectionId.Start
                 local.get $2
                 i32.eq
                 br_if $case7|1
                 global.get $src/common/SectionId.Custom
                 local.get $2
                 i32.eq
                 br_if $case8|1
                 global.get $src/common/SectionId.Element
                 local.get $2
                 i32.eq
                 br_if $case11|1
                 global.get $src/common/SectionId.Code
                 local.get $2
                 i32.eq
                 br_if $case11|1
                 global.get $src/common/SectionId.Data
                 local.get $2
                 i32.eq
                 br_if $case11|1
                 br $case12|1
                end
                call $assembly/index/readVaruint
                local.set $2
                i32.const 0
                local.set $3
                loop $repeat|2
                 local.get $3
                 local.get $2
                 i32.lt_u
                 if
                  local.get $3
                  i32.const 7
                  call $assembly/index/readVarint
                  i32.const 127
                  i32.and
                  call $assembly/options/onType
                  call $assembly/index/readVaruint
                  local.set $5
                  i32.const 0
                  local.set $7
                  loop $repeat|3
                   local.get $7
                   local.get $5
                   i32.lt_u
                   if
                    local.get $3
                    local.get $7
                    i32.const 7
                    call $assembly/index/readVarint
                    i32.const 127
                    i32.and
                    call $assembly/options/onTypeParam
                    local.get $7
                    i32.const 1
                    i32.add
                    local.set $7
                    br $repeat|3
                   end
                  end
                  call $assembly/index/readVaruint
                  local.set $7
                  i32.const 0
                  local.set $4
                  loop $repeat|4
                   local.get $4
                   local.get $7
                   i32.lt_u
                   if
                    local.get $3
                    local.get $4
                    i32.const 7
                    call $assembly/index/readVarint
                    i32.const 127
                    i32.and
                    call $assembly/options/onTypeReturn
                    local.get $4
                    i32.const 1
                    i32.add
                    local.set $4
                    br $repeat|4
                   end
                  end
                  local.get $3
                  i32.const 1
                  i32.add
                  local.set $3
                  br $repeat|2
                 end
                end
                br $break|1
               end
               call $assembly/index/readVaruint
               local.set $2
               i32.const 0
               local.set $3
               loop $repeat|5
                local.get $3
                local.get $2
                i32.lt_u
                if
                 call $assembly/index/readVaruint
                 local.set $7
                 local.get $7
                 global.get $assembly/index/off
                 local.tee $5
                 i32.add
                 global.set $assembly/index/off
                 call $assembly/index/readVaruint
                 local.set $9
                 local.get $9
                 global.get $assembly/index/off
                 local.tee $4
                 i32.add
                 global.set $assembly/index/off
                 global.get $assembly/index/off
                 local.tee $6
                 i32.load8_u
                 local.set $0
                 local.get $6
                 i32.const 1
                 i32.add
                 global.set $assembly/index/off
                 local.get $3
                 local.get $0
                 local.get $5
                 local.get $7
                 local.get $4
                 local.get $9
                 call $assembly/options/onImport
                 block $break|6
                  block $case4|6
                   block $case3|6
                    block $case2|6
                     block $case1|6
                      local.get $0
                      local.tee $6
                      global.get $src/common/ExternalKind.Function
                      i32.ne
                      if
                       global.get $src/common/ExternalKind.Table
                       local.get $6
                       i32.eq
                       br_if $case1|6
                       global.get $src/common/ExternalKind.Memory
                       local.get $6
                       i32.eq
                       br_if $case2|6
                       global.get $src/common/ExternalKind.Global
                       local.get $6
                       i32.eq
                       br_if $case3|6
                       br $case4|6
                      end
                      local.get $11
                      local.tee $10
                      i32.const 1
                      i32.add
                      local.set $11
                      local.get $10
                      call $assembly/index/readVaruint
                      call $assembly/options/onFunctionImport
                      br $break|6
                     end
                     i32.const 7
                     call $assembly/index/readVarint
                     i32.const 127
                     i32.and
                     local.set $6
                     call $assembly/index/readVaruint
                     local.set $10
                     local.get $12
                     local.tee $0
                     i32.const 1
                     i32.add
                     local.set $12
                     local.get $0
                     local.get $6
                     call $assembly/index/readVaruint
                     local.get $10
                     i32.const 1
                     i32.and
                     if (result i32)
                      call $assembly/index/readVaruint
                     else                      
                      i32.const -1
                     end
                     local.get $10
                     call $assembly/options/onTableImport
                     br $break|6
                    end
                    call $assembly/index/readVaruint
                    local.set $8
                    local.get $13
                    local.tee $6
                    i32.const 1
                    i32.add
                    local.set $13
                    local.get $6
                    call $assembly/index/readVaruint
                    local.get $8
                    i32.const 1
                    i32.and
                    if (result i32)
                     call $assembly/index/readVaruint
                    else                     
                     i32.const 65535
                    end
                    local.get $8
                    call $assembly/options/onMemoryImport
                    br $break|6
                   end
                   local.get $14
                   local.tee $8
                   i32.const 1
                   i32.add
                   local.set $14
                   local.get $8
                   i32.const 7
                   call $assembly/index/readVarint
                   i32.const 127
                   i32.and
                   call $assembly/index/readVaruint
                   call $assembly/options/onGlobalImport
                   br $break|6
                  end
                  unreachable
                 end
                 local.get $3
                 i32.const 1
                 i32.add
                 local.set $3
                 br $repeat|5
                end
               end
               br $break|1
              end
              call $assembly/index/readVaruint
              local.set $2
              i32.const 0
              local.set $3
              loop $repeat|7
               local.get $3
               local.get $2
               i32.lt_u
               if
                local.get $11
                local.tee $4
                i32.const 1
                i32.add
                local.set $11
                local.get $4
                call $assembly/index/readVaruint
                call $assembly/options/onFunction
                local.get $3
                i32.const 1
                i32.add
                local.set $3
                br $repeat|7
               end
               i32.const 1168
               return
              end
              i32.const 1184
              return
             end
             call $assembly/index/readVaruint
             local.set $2
             i32.const 0
             local.set $3
             loop $repeat|8
              local.get $3
              local.get $2
              i32.lt_u
              if
               call $assembly/index/readVaruint
               i32.const 127
               i32.and
               local.set $0
               call $assembly/index/readVaruint
               local.set $4
               local.get $12
               local.tee $7
               i32.const 1
               i32.add
               local.set $12
               local.get $7
               local.get $0
               call $assembly/index/readVaruint
               local.get $4
               i32.const 1
               i32.and
               if (result i32)
                call $assembly/index/readVaruint
               else                
                i32.const -1
               end
               local.get $4
               call $assembly/options/onTable
               local.get $3
               i32.const 1
               i32.add
               local.set $3
               br $repeat|8
              end
             end
             br $break|1
            end
            call $assembly/index/readVaruint
            local.set $2
            i32.const 0
            local.set $3
            loop $repeat|9
             local.get $3
             local.get $2
             i32.lt_u
             if
              call $assembly/index/readVaruint
              local.set $5
              local.get $13
              local.tee $0
              i32.const 1
              i32.add
              local.set $13
              local.get $0
              call $assembly/index/readVaruint
              local.get $5
              i32.const 1
              i32.and
              if (result i32)
               call $assembly/index/readVaruint
              else               
               i32.const 65535
              end
              local.get $5
              call $assembly/options/onMemory
              local.get $3
              i32.const 1
              i32.add
              local.set $3
              br $repeat|9
             end
            end
            br $break|1
           end
           call $assembly/index/readVaruint
           local.set $2
           i32.const 0
           local.set $3
           loop $repeat|10
            local.get $3
            local.get $2
            i32.lt_u
            if
             i32.const 7
             call $assembly/index/readVarint
             i32.const 127
             i32.and
             local.set $4
             call $assembly/index/readVaruint
             local.set $9
             call $assembly/index/skipInitExpr
             local.get $14
             local.tee $5
             i32.const 1
             i32.add
             local.set $14
             local.get $5
             local.get $4
             local.get $9
             call $assembly/options/onGlobal
             local.get $3
             i32.const 1
             i32.add
             local.set $3
             br $repeat|10
            end
           end
           br $break|1
          end
          call $assembly/index/readVaruint
          local.set $2
          i32.const 0
          local.set $3
          loop $repeat|11
           local.get $3
           local.get $2
           i32.lt_u
           if
            call $assembly/index/readVaruint
            local.set $9
            local.get $9
            global.get $assembly/index/off
            local.tee $4
            i32.add
            global.set $assembly/index/off
            global.get $assembly/index/off
            local.tee $0
            i32.load8_u
            local.set $6
            local.get $0
            i32.const 1
            i32.add
            global.set $assembly/index/off
            local.get $3
            local.get $6
            call $assembly/index/readVaruint
            local.get $4
            local.get $9
            call $assembly/options/onExport
            local.get $3
            i32.const 1
            i32.add
            local.set $3
            br $repeat|11
           end
          end
          br $break|1
         end
         i32.const 1272
         return
        end
        local.get $0
        i32.const 4
        i32.eq
        local.tee $2
        if (result i32)
         local.get $4
         i32.load
         i32.const 1701667182
         i32.eq
        else         
         local.get $2
        end
        if
         call $assembly/index/readVaruint
         local.set $2
         call $assembly/index/readVaruint
         local.set $3
         global.get $assembly/index/off
         local.set $0
         block $break|12
          block $case3|12
           block $case2|12
            block $case1|12
             local.get $2
             local.tee $5
             global.get $src/common/NameType.Module
             i32.ne
             if
              global.get $src/common/NameType.Function
              local.get $5
              i32.eq
              br_if $case1|12
              global.get $src/common/NameType.Local
              local.get $5
              i32.eq
              br_if $case2|12
              br $case3|12
             end
             call $assembly/index/readVaruint
             local.set $5
             global.get $assembly/index/off
             local.get $5
             call $assembly/options/onModuleName
             br $break|12
            end
            call $assembly/index/readVaruint
            local.set $4
            i32.const 0
            local.set $5
            loop $repeat|13
             local.get $5
             local.get $4
             i32.lt_u
             if
              call $assembly/index/readVaruint
              local.set $9
              call $assembly/index/readVaruint
              local.set $7
              local.get $7
              global.get $assembly/index/off
              local.tee $2
              i32.add
              global.set $assembly/index/off
              local.get $9
              local.get $2
              local.get $7
              call $assembly/options/onFunctionName
              local.get $5
              i32.const 1
              i32.add
              local.set $5
              br $repeat|13
             end
            end
            br $break|12
           end
           call $assembly/index/readVaruint
           local.set $4
           i32.const 0
           local.set $5
           loop $repeat|14
            local.get $5
            local.get $4
            i32.lt_u
            if
             call $assembly/index/readVaruint
             local.set $2
             call $assembly/index/readVaruint
             local.set $7
             i32.const 0
             local.set $9
             loop $repeat|15
              local.get $9
              local.get $7
              i32.lt_u
              if
               call $assembly/index/readVaruint
               local.set $10
               call $assembly/index/readVaruint
               local.tee $8
               global.get $assembly/index/off
               local.tee $6
               i32.add
               global.set $assembly/index/off
               local.get $2
               local.get $10
               local.get $6
               local.get $8
               call $assembly/options/onLocalName
               local.get $9
               i32.const 1
               i32.add
               local.set $9
               br $repeat|15
              end
             end
             local.get $5
             i32.const 1
             i32.add
             local.set $5
             br $repeat|14
            end
           end
           br $break|12
          end
          unreachable
         end
         local.get $0
         local.get $3
         i32.add
         global.set $assembly/index/off
         br $break|1
        else         
         block (result i32)
          local.get $0
          i32.const 16
          i32.eq
          local.tee $0
          if
           local.get $4
           i64.load
           i64.const 7011371672682196851
           i64.eq
           local.set $0
          end
          local.get $0
         end
         if (result i32)
          local.get $4
          i32.const 8
          i32.add
          i64.load
          i64.const 5499551997695193200
          i64.eq
         else          
          local.get $0
         end
         if
          call $assembly/index/readVaruint
          local.tee $0
          global.get $assembly/index/off
          local.tee $3
          i32.add
          global.set $assembly/index/off
          local.get $3
          local.get $0
          call $assembly/options/onSourceMappingURL
         end
        end
        local.get $5
        local.get $8
        i32.add
        global.set $assembly/index/off
        br $break|1
       end
       global.get $assembly/index/off
       local.get $8
       i32.add
       global.set $assembly/index/off
       br $break|1
      end
      i32.const 1320
      return
     end
    else     
     global.get $assembly/index/off
     local.get $8
     i32.add
     global.set $assembly/index/off
    end
    i32.const 1360
    return
   end
   unreachable
   unreachable
  end
  global.get $assembly/index/off
  local.get $1
  i32.ne
  if
   unreachable
  end
  get_local $0
  i32.load
  call $assembly/buffer/index/Buffer#readUint<u32>
  set_local $3
  get_local $3
  i32.const 1
  i32.ne
  if
   unreachable
  end
  i32.const 0
  set_local $4
  i32.const 0
  set_local $5
  i32.const 0
  set_local $6
  i32.const 0
  set_local $7
  block $break|0
   loop $continue|0
    get_local $0
    i32.load
    i32.load offset=8
    get_local $0
    i32.load
    i32.load offset=16
    i32.lt_u
    if
     block
      i32.const 0
      get_local $0
      i32.load
      call $assembly/module/index/SectionHeader#constructor
      set_local $8
      get_local $0
      i32.load offset=4
      get_local $8
      call $assembly/module/index/Module#parseSection
      get_local $0
      get_local $8
      call $assembly/module/index/SectionHeader#get:end
      call $assembly/index/Parser#set:off
     end
     br $continue|0
    end
   end
  end
 )
 (func $null (; 24 ;) (type $_)
  nop
 )
 (func $null (; 91 ;) (type $v)
 )
 (func $Parser#get:buf (; 92 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
 )
 (func $Parser#set:buf (; 93 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  i32.store
 )
 (func $Parser#get:module (; 94 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=4
 )
 (func $Parser#set:module (; 95 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  i32.store offset=4
 )
 (func $TypeSection#get:header (; 96 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
 )
 (func $TypeSection#set:header (; 97 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  i32.store
 )
 (func $TypeSection#get:funcs (; 98 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=4
 )
 (func $TypeSection#set:funcs (; 99 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  i32.store offset=4
 )
 (func $Module#get:headers (; 100 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load
 )
 (func $Module#set:headers (; 101 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  i32.store
 )
 (func $Module#get:buf (; 102 ;) (type $ii) (param $0 i32) (result i32)
  get_local $0
  i32.load offset=4
 )
 (func $Module#set:buf (; 103 ;) (type $iiv) (param $0 i32) (param $1 i32)
  get_local $0
  get_local $1
  i32.store offset=4
 )
)
