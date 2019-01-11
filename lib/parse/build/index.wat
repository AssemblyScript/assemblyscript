(module
 (type $iiv (func (param i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiiiiiv (func (param i32 i32 i32 i32 i32 i32)))
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $I (func (result i64)))
 (type $iv (func (param i32)))
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
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $assembly/index/off (mut i32) (i32.const 0))
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
 (global $src/common/ExternalKind.Function (mut i32) (i32.const 0))
 (global $src/common/ExternalKind.Table (mut i32) (i32.const 1))
 (global $src/common/ExternalKind.Memory (mut i32) (i32.const 2))
 (global $src/common/ExternalKind.Global (mut i32) (i32.const 3))
 (global $src/common/Opcode.end (mut i32) (i32.const 11))
 (global $src/common/Opcode.get_global (mut i32) (i32.const 35))
 (global $src/common/Opcode.i32_const (mut i32) (i32.const 65))
 (global $src/common/Opcode.i64_const (mut i32) (i32.const 66))
 (global $src/common/Opcode.f32_const (mut i32) (i32.const 67))
 (global $src/common/Opcode.f64_const (mut i32) (i32.const 68))
 (global $src/common/NameType.Module (mut i32) (i32.const 0))
 (global $src/common/NameType.Function (mut i32) (i32.const 1))
 (global $src/common/NameType.Local (mut i32) (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "parse" (func $assembly/index/parse))
 (func $assembly/index/readVaruint (; 19 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  get_global $assembly/index/off
  set_local $0
  loop $continue|0
   get_local $0
   tee_local $1
   i32.const 1
   i32.add
   set_local $0
   get_local $1
   i32.load8_u
   tee_local $1
   i32.const 127
   i32.and
   get_local $3
   i32.shl
   get_local $2
   i32.or
   set_local $2
   get_local $1
   i32.const 128
   i32.and
   if
    get_local $3
    i32.const 7
    i32.add
    set_local $3
    br $continue|0
   end
  end
  get_local $0
  set_global $assembly/index/off
  get_local $2
 )
 (func $assembly/index/readVarint (; 20 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  get_global $assembly/index/off
  set_local $2
  loop $continue|0
   get_local $2
   tee_local $4
   i32.const 1
   i32.add
   set_local $2
   get_local $4
   i32.load8_u
   tee_local $5
   i32.const 127
   i32.and
   get_local $1
   i32.shl
   get_local $3
   i32.or
   set_local $3
   get_local $1
   i32.const 7
   i32.add
   set_local $1
   get_local $5
   i32.const 128
   i32.and
   br_if $continue|0
  end
  get_local $2
  set_global $assembly/index/off
  i32.const -1
  get_local $1
  i32.shl
  get_local $3
  i32.or
  set_local $2
  get_local $1
  get_local $0
  i32.lt_u
  tee_local $4
  if
   get_local $5
   i32.const 64
   i32.and
   i32.const 0
   i32.ne
   set_local $4
  end
  get_local $2
  get_local $3
  get_local $4
  select
 )
 (func $assembly/index/readVarint64 (; 21 ;) (type $I) (result i64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  get_global $assembly/index/off
  set_local $3
  loop $continue|0
   get_local $3
   tee_local $2
   i32.const 1
   i32.add
   set_local $3
   get_local $2
   i64.load8_u
   tee_local $4
   i64.const 127
   i64.and
   get_local $0
   i64.shl
   get_local $1
   i64.or
   set_local $1
   get_local $0
   i64.const 7
   i64.add
   set_local $0
   get_local $4
   i64.const 128
   i64.and
   i64.const 0
   i64.ne
   br_if $continue|0
  end
  get_local $3
  set_global $assembly/index/off
  i64.const -1
  get_local $0
  i64.shl
  get_local $1
  i64.or
  set_local $5
  get_local $0
  i64.const 64
  i64.lt_u
  tee_local $2
  if
   get_local $4
   i64.const 64
   i64.and
   i64.const 0
   i64.ne
   set_local $2
  end
  get_local $5
  get_local $1
  get_local $2
  select
 )
 (func $assembly/index/skipInitExpr (; 22 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  get_global $assembly/index/off
  tee_local $1
  i32.load8_u
  set_local $0
  get_local $1
  i32.const 1
  i32.add
  set_global $assembly/index/off
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        get_global $src/common/Opcode.i32_const
        get_local $0
        i32.ne
        if
         get_global $src/common/Opcode.i64_const
         get_local $0
         i32.eq
         br_if $case1|0
         get_global $src/common/Opcode.f32_const
         get_local $0
         i32.eq
         br_if $case2|0
         get_global $src/common/Opcode.f64_const
         get_local $0
         i32.eq
         br_if $case3|0
         get_global $src/common/Opcode.get_global
         get_local $0
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        i32.const 32
        call $assembly/index/readVarint
        drop
        br $break|0
       end
       call $assembly/index/readVarint64
       drop
       br $break|0
      end
      get_global $assembly/index/off
      tee_local $0
      i32.load
      drop
      get_local $0
      i32.const 4
      i32.add
      set_global $assembly/index/off
      br $break|0
     end
     get_global $assembly/index/off
     tee_local $0
     i64.load
     drop
     get_local $0
     i32.const 8
     i32.add
     set_global $assembly/index/off
     br $break|0
    end
    call $assembly/index/readVaruint
    drop
    br $break|0
   end
   unreachable
  end
  get_global $assembly/index/off
  tee_local $1
  i32.load8_u
  set_local $0
  get_local $1
  i32.const 1
  i32.add
  set_global $assembly/index/off
  get_global $src/common/Opcode.end
  get_local $0
  i32.ne
  if
   unreachable
  end
 )
 (func $assembly/index/parse (; 23 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
  get_local $0
  set_global $assembly/index/off
  get_global $assembly/index/off
  tee_local $0
  i32.load
  set_local $6
  get_local $0
  i32.const 4
  i32.add
  set_global $assembly/index/off
  get_local $6
  i32.const 1836278016
  i32.ne
  if
   unreachable
  end
  get_global $assembly/index/off
  tee_local $0
  i32.load
  set_local $6
  get_local $0
  i32.const 4
  i32.add
  set_global $assembly/index/off
  get_local $6
  i32.const 1
  i32.ne
  if
   unreachable
  end
  loop $continue|0
   get_global $assembly/index/off
   get_local $1
   i32.lt_u
   if
    call $assembly/index/readVaruint
    set_local $2
    call $assembly/index/readVaruint
    set_local $8
    i32.const 0
    set_local $4
    i32.const 0
    set_local $0
    get_local $2
    if
     get_local $2
     get_global $src/common/SectionId.Data
     i32.gt_u
     if
      unreachable
     end
    else     
     get_global $assembly/index/off
     set_local $5
     call $assembly/index/readVaruint
     tee_local $0
     get_global $assembly/index/off
     tee_local $4
     i32.add
     set_global $assembly/index/off
     get_local $8
     get_global $assembly/index/off
     get_local $5
     i32.sub
     i32.sub
     set_local $8
    end
    get_local $2
    get_global $assembly/index/off
    tee_local $5
    get_local $8
    get_local $4
    get_local $0
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
                get_global $src/common/SectionId.Type
                get_local $2
                i32.ne
                if
                 get_global $src/common/SectionId.Import
                 get_local $2
                 i32.eq
                 br_if $case1|1
                 get_global $src/common/SectionId.Function
                 get_local $2
                 i32.eq
                 br_if $case2|1
                 get_global $src/common/SectionId.Table
                 get_local $2
                 i32.eq
                 br_if $case3|1
                 get_global $src/common/SectionId.Memory
                 get_local $2
                 i32.eq
                 br_if $case4|1
                 get_global $src/common/SectionId.Global
                 get_local $2
                 i32.eq
                 br_if $case5|1
                 get_global $src/common/SectionId.Export
                 get_local $2
                 i32.eq
                 br_if $case6|1
                 get_global $src/common/SectionId.Start
                 get_local $2
                 i32.eq
                 br_if $case7|1
                 get_global $src/common/SectionId.Custom
                 get_local $2
                 i32.eq
                 br_if $case8|1
                 get_global $src/common/SectionId.Element
                 get_local $2
                 i32.eq
                 br_if $case11|1
                 get_global $src/common/SectionId.Code
                 get_local $2
                 i32.eq
                 br_if $case11|1
                 get_global $src/common/SectionId.Data
                 get_local $2
                 i32.eq
                 br_if $case11|1
                 br $case12|1
                end
                call $assembly/index/readVaruint
                set_local $2
                i32.const 0
                set_local $3
                loop $repeat|2
                 get_local $3
                 get_local $2
                 i32.lt_u
                 if
                  get_local $3
                  i32.const 7
                  call $assembly/index/readVarint
                  i32.const 127
                  i32.and
                  call $assembly/options/onType
                  call $assembly/index/readVaruint
                  set_local $5
                  i32.const 0
                  set_local $7
                  loop $repeat|3
                   get_local $7
                   get_local $5
                   i32.lt_u
                   if
                    get_local $3
                    get_local $7
                    i32.const 7
                    call $assembly/index/readVarint
                    i32.const 127
                    i32.and
                    call $assembly/options/onTypeParam
                    get_local $7
                    i32.const 1
                    i32.add
                    set_local $7
                    br $repeat|3
                   end
                  end
                  call $assembly/index/readVaruint
                  set_local $7
                  i32.const 0
                  set_local $4
                  loop $repeat|4
                   get_local $4
                   get_local $7
                   i32.lt_u
                   if
                    get_local $3
                    get_local $4
                    i32.const 7
                    call $assembly/index/readVarint
                    i32.const 127
                    i32.and
                    call $assembly/options/onTypeReturn
                    get_local $4
                    i32.const 1
                    i32.add
                    set_local $4
                    br $repeat|4
                   end
                  end
                  get_local $3
                  i32.const 1
                  i32.add
                  set_local $3
                  br $repeat|2
                 end
                end
                br $break|1
               end
               call $assembly/index/readVaruint
               set_local $2
               i32.const 0
               set_local $3
               loop $repeat|5
                get_local $3
                get_local $2
                i32.lt_u
                if
                 call $assembly/index/readVaruint
                 set_local $7
                 get_local $7
                 get_global $assembly/index/off
                 tee_local $5
                 i32.add
                 set_global $assembly/index/off
                 call $assembly/index/readVaruint
                 set_local $9
                 get_local $9
                 get_global $assembly/index/off
                 tee_local $4
                 i32.add
                 set_global $assembly/index/off
                 get_global $assembly/index/off
                 tee_local $6
                 i32.load8_u
                 set_local $0
                 get_local $6
                 i32.const 1
                 i32.add
                 set_global $assembly/index/off
                 get_local $3
                 get_local $0
                 get_local $5
                 get_local $7
                 get_local $4
                 get_local $9
                 call $assembly/options/onImport
                 block $break|6
                  block $case4|6
                   block $case3|6
                    block $case2|6
                     block $case1|6
                      get_local $0
                      tee_local $6
                      get_global $src/common/ExternalKind.Function
                      i32.ne
                      if
                       get_global $src/common/ExternalKind.Table
                       get_local $6
                       i32.eq
                       br_if $case1|6
                       get_global $src/common/ExternalKind.Memory
                       get_local $6
                       i32.eq
                       br_if $case2|6
                       get_global $src/common/ExternalKind.Global
                       get_local $6
                       i32.eq
                       br_if $case3|6
                       br $case4|6
                      end
                      get_local $11
                      tee_local $10
                      i32.const 1
                      i32.add
                      set_local $11
                      get_local $10
                      call $assembly/index/readVaruint
                      call $assembly/options/onFunctionImport
                      br $break|6
                     end
                     i32.const 7
                     call $assembly/index/readVarint
                     i32.const 127
                     i32.and
                     set_local $6
                     call $assembly/index/readVaruint
                     set_local $10
                     get_local $12
                     tee_local $0
                     i32.const 1
                     i32.add
                     set_local $12
                     get_local $0
                     get_local $6
                     call $assembly/index/readVaruint
                     get_local $10
                     i32.const 1
                     i32.and
                     if (result i32)
                      call $assembly/index/readVaruint
                     else                      
                      i32.const -1
                     end
                     get_local $10
                     call $assembly/options/onTableImport
                     br $break|6
                    end
                    call $assembly/index/readVaruint
                    set_local $8
                    get_local $13
                    tee_local $6
                    i32.const 1
                    i32.add
                    set_local $13
                    get_local $6
                    call $assembly/index/readVaruint
                    get_local $8
                    i32.const 1
                    i32.and
                    if (result i32)
                     call $assembly/index/readVaruint
                    else                     
                     i32.const 65535
                    end
                    get_local $8
                    call $assembly/options/onMemoryImport
                    br $break|6
                   end
                   get_local $14
                   tee_local $8
                   i32.const 1
                   i32.add
                   set_local $14
                   get_local $8
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
                 get_local $3
                 i32.const 1
                 i32.add
                 set_local $3
                 br $repeat|5
                end
               end
               br $break|1
              end
              call $assembly/index/readVaruint
              set_local $2
              i32.const 0
              set_local $3
              loop $repeat|7
               get_local $3
               get_local $2
               i32.lt_u
               if
                get_local $11
                tee_local $4
                i32.const 1
                i32.add
                set_local $11
                get_local $4
                call $assembly/index/readVaruint
                call $assembly/options/onFunction
                get_local $3
                i32.const 1
                i32.add
                set_local $3
                br $repeat|7
               end
              end
              br $break|1
             end
             call $assembly/index/readVaruint
             set_local $2
             i32.const 0
             set_local $3
             loop $repeat|8
              get_local $3
              get_local $2
              i32.lt_u
              if
               call $assembly/index/readVaruint
               i32.const 127
               i32.and
               set_local $0
               call $assembly/index/readVaruint
               set_local $4
               get_local $12
               tee_local $7
               i32.const 1
               i32.add
               set_local $12
               get_local $7
               get_local $0
               call $assembly/index/readVaruint
               get_local $4
               i32.const 1
               i32.and
               if (result i32)
                call $assembly/index/readVaruint
               else                
                i32.const -1
               end
               get_local $4
               call $assembly/options/onTable
               get_local $3
               i32.const 1
               i32.add
               set_local $3
               br $repeat|8
              end
             end
             br $break|1
            end
            call $assembly/index/readVaruint
            set_local $2
            i32.const 0
            set_local $3
            loop $repeat|9
             get_local $3
             get_local $2
             i32.lt_u
             if
              call $assembly/index/readVaruint
              set_local $5
              get_local $13
              tee_local $0
              i32.const 1
              i32.add
              set_local $13
              get_local $0
              call $assembly/index/readVaruint
              get_local $5
              i32.const 1
              i32.and
              if (result i32)
               call $assembly/index/readVaruint
              else               
               i32.const 65535
              end
              get_local $5
              call $assembly/options/onMemory
              get_local $3
              i32.const 1
              i32.add
              set_local $3
              br $repeat|9
             end
            end
            br $break|1
           end
           call $assembly/index/readVaruint
           set_local $2
           i32.const 0
           set_local $3
           loop $repeat|10
            get_local $3
            get_local $2
            i32.lt_u
            if
             i32.const 7
             call $assembly/index/readVarint
             i32.const 127
             i32.and
             set_local $4
             call $assembly/index/readVaruint
             set_local $9
             call $assembly/index/skipInitExpr
             get_local $14
             tee_local $5
             i32.const 1
             i32.add
             set_local $14
             get_local $5
             get_local $4
             get_local $9
             call $assembly/options/onGlobal
             get_local $3
             i32.const 1
             i32.add
             set_local $3
             br $repeat|10
            end
           end
           br $break|1
          end
          call $assembly/index/readVaruint
          set_local $2
          i32.const 0
          set_local $3
          loop $repeat|11
           get_local $3
           get_local $2
           i32.lt_u
           if
            call $assembly/index/readVaruint
            set_local $9
            get_local $9
            get_global $assembly/index/off
            tee_local $4
            i32.add
            set_global $assembly/index/off
            get_global $assembly/index/off
            tee_local $0
            i32.load8_u
            set_local $6
            get_local $0
            i32.const 1
            i32.add
            set_global $assembly/index/off
            get_local $3
            get_local $6
            call $assembly/index/readVaruint
            get_local $4
            get_local $9
            call $assembly/options/onExport
            get_local $3
            i32.const 1
            i32.add
            set_local $3
            br $repeat|11
           end
          end
          br $break|1
         end
         call $assembly/index/readVaruint
         call $assembly/options/onStart
         br $break|1
        end
        get_local $0
        i32.const 4
        i32.eq
        tee_local $2
        if (result i32)
         get_local $4
         i32.load
         i32.const 1701667182
         i32.eq
        else         
         get_local $2
        end
        if
         call $assembly/index/readVaruint
         set_local $2
         call $assembly/index/readVaruint
         set_local $3
         get_global $assembly/index/off
         set_local $0
         block $break|12
          block $case3|12
           block $case2|12
            block $case1|12
             get_local $2
             tee_local $5
             get_global $src/common/NameType.Module
             i32.ne
             if
              get_global $src/common/NameType.Function
              get_local $5
              i32.eq
              br_if $case1|12
              get_global $src/common/NameType.Local
              get_local $5
              i32.eq
              br_if $case2|12
              br $case3|12
             end
             call $assembly/index/readVaruint
             set_local $5
             get_global $assembly/index/off
             get_local $5
             call $assembly/options/onModuleName
             br $break|12
            end
            call $assembly/index/readVaruint
            set_local $4
            i32.const 0
            set_local $5
            loop $repeat|13
             get_local $5
             get_local $4
             i32.lt_u
             if
              call $assembly/index/readVaruint
              set_local $9
              call $assembly/index/readVaruint
              set_local $7
              get_local $7
              get_global $assembly/index/off
              tee_local $2
              i32.add
              set_global $assembly/index/off
              get_local $9
              get_local $2
              get_local $7
              call $assembly/options/onFunctionName
              get_local $5
              i32.const 1
              i32.add
              set_local $5
              br $repeat|13
             end
            end
            br $break|12
           end
           call $assembly/index/readVaruint
           set_local $4
           i32.const 0
           set_local $5
           loop $repeat|14
            get_local $5
            get_local $4
            i32.lt_u
            if
             call $assembly/index/readVaruint
             set_local $2
             call $assembly/index/readVaruint
             set_local $7
             i32.const 0
             set_local $9
             loop $repeat|15
              get_local $9
              get_local $7
              i32.lt_u
              if
               call $assembly/index/readVaruint
               set_local $10
               call $assembly/index/readVaruint
               tee_local $8
               get_global $assembly/index/off
               tee_local $6
               i32.add
               set_global $assembly/index/off
               get_local $2
               get_local $10
               get_local $6
               get_local $8
               call $assembly/options/onLocalName
               get_local $9
               i32.const 1
               i32.add
               set_local $9
               br $repeat|15
              end
             end
             get_local $5
             i32.const 1
             i32.add
             set_local $5
             br $repeat|14
            end
           end
           br $break|12
          end
          unreachable
         end
         get_local $0
         get_local $3
         i32.add
         set_global $assembly/index/off
         br $break|1
        else         
         block (result i32)
          get_local $0
          i32.const 16
          i32.eq
          tee_local $0
          if
           get_local $4
           i64.load
           i64.const 7011371672682196851
           i64.eq
           set_local $0
          end
          get_local $0
         end
         if (result i32)
          get_local $4
          i32.const 8
          i32.add
          i64.load
          i64.const 5499551997695193200
          i64.eq
         else          
          get_local $0
         end
         if
          call $assembly/index/readVaruint
          tee_local $0
          get_global $assembly/index/off
          tee_local $3
          i32.add
          set_global $assembly/index/off
          get_local $3
          get_local $0
          call $assembly/options/onSourceMappingURL
         end
        end
        get_local $5
        get_local $8
        i32.add
        set_global $assembly/index/off
        br $break|1
       end
       get_global $assembly/index/off
       get_local $8
       i32.add
       set_global $assembly/index/off
       br $break|1
      end
      unreachable
     end
    else     
     get_global $assembly/index/off
     get_local $8
     i32.add
     set_global $assembly/index/off
    end
    br $continue|0
   end
  end
  get_global $assembly/index/off
  get_local $1
  i32.ne
  if
   unreachable
  end
 )
 (func $null (; 24 ;) (type $v)
  nop
 )
)
