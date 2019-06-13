(module
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$viiiiii (func (param i32 i32 i32 i32 i32 i32)))
 (type $FUNCSIG$viiiii (func (param i32 i32 i32 i32 i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
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
 (global $assembly/index/off (mut i32) (i32.const 0))
 (export "memory" (memory $0))
 (export "parse" (func $assembly/index/parse))
 (func $assembly/index/readVaruint (; 19 ;) (type $FUNCSIG$i) (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
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
  end
  local.get $0
  global.set $assembly/index/off
  local.get $2
 )
 (func $assembly/index/readVarint (; 20 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $assembly/index/off
  local.set $4
  loop $continue|0
   local.get $4
   local.tee $3
   i32.const 1
   i32.add
   local.set $4
   local.get $3
   i32.load8_u
   local.tee $3
   i32.const 127
   i32.and
   local.get $1
   i32.shl
   local.get $2
   i32.or
   local.set $2
   local.get $1
   i32.const 7
   i32.add
   local.set $1
   local.get $3
   i32.const 128
   i32.and
   br_if $continue|0
  end
  local.get $4
  global.set $assembly/index/off
  i32.const -1
  local.get $1
  i32.shl
  local.get $2
  i32.or
  local.get $2
  local.get $3
  i32.const 64
  i32.and
  i32.const 0
  i32.ne
  i32.const 0
  local.get $1
  local.get $0
  i32.lt_u
  select
  select
 )
 (func $assembly/index/readVarint64 (; 21 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  global.get $assembly/index/off
  local.set $0
  loop $continue|0
   local.get $0
   local.tee $2
   i32.const 1
   i32.add
   local.set $0
   local.get $2
   i64.load8_u
   local.tee $4
   i64.const 127
   i64.and
   local.get $1
   i64.shl
   local.get $3
   i64.or
   local.set $3
   local.get $1
   i64.const 7
   i64.add
   local.set $1
   local.get $4
   i64.const 128
   i64.and
   i64.const 0
   i64.ne
   br_if $continue|0
  end
  local.get $0
  global.set $assembly/index/off
 )
 (func $assembly/index/skipInitExpr (; 22 ;) (type $FUNCSIG$v)
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
        local.get $0
        i32.const 65
        i32.ne
        if
         local.get $0
         i32.const 66
         i32.eq
         br_if $case1|0
         local.get $0
         i32.const 67
         i32.eq
         br_if $case2|0
         local.get $0
         i32.const 68
         i32.eq
         br_if $case3|0
         local.get $0
         i32.const 35
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
       br $break|0
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
    call $assembly/index/readVaruint
    drop
    br $break|0
   end
   unreachable
  end
  global.get $assembly/index/off
  local.tee $1
  i32.load8_u
  local.get $1
  i32.const 1
  i32.add
  global.set $assembly/index/off
  i32.const 11
  i32.ne
  if
   unreachable
  end
 )
 (func $assembly/index/parse (; 23 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.get $0
  i32.const 4
  i32.add
  global.set $assembly/index/off
  i32.const 1836278016
  i32.ne
  if
   unreachable
  end
  global.get $assembly/index/off
  local.tee $0
  i32.load
  local.get $0
  i32.const 4
  i32.add
  global.set $assembly/index/off
  i32.const 1
  i32.ne
  if
   unreachable
  end
  i32.const 0
  local.set $0
  loop $continue|0
   global.get $assembly/index/off
   local.get $1
   i32.lt_u
   if
    call $assembly/index/readVaruint
    local.set $4
    call $assembly/index/readVaruint
    local.set $3
    i32.const 0
    local.set $5
    i32.const 0
    local.set $2
    local.get $4
    if
     local.get $4
     i32.const 11
     i32.gt_u
     if
      unreachable
     end
    else     
     global.get $assembly/index/off
     local.set $6
     call $assembly/index/readVaruint
     local.tee $2
     global.get $assembly/index/off
     local.tee $5
     i32.add
     global.set $assembly/index/off
     local.get $3
     global.get $assembly/index/off
     local.get $6
     i32.sub
     i32.sub
     local.set $3
    end
    local.get $4
    global.get $assembly/index/off
    local.tee $6
    local.get $3
    local.get $5
    local.get $2
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
                local.get $4
                i32.const 1
                i32.ne
                if
                 local.get $4
                 i32.const 2
                 i32.eq
                 br_if $case1|1
                 block $tablify|0
                  local.get $4
                  br_table $case8|1 $tablify|0 $tablify|0 $case2|1 $case3|1 $case4|1 $case5|1 $case6|1 $case7|1 $case11|1 $case11|1 $case11|1 $tablify|0
                 end
                 br $case12|1
                end
                call $assembly/index/readVaruint
                local.set $4
                i32.const 0
                local.set $2
                loop $loop|2
                 local.get $2
                 local.get $4
                 i32.lt_u
                 if
                  local.get $2
                  i32.const 7
                  call $assembly/index/readVarint
                  i32.const 127
                  i32.and
                  call $assembly/options/onType
                  call $assembly/index/readVaruint
                  local.set $5
                  i32.const 0
                  local.set $3
                  loop $loop|3
                   local.get $3
                   local.get $5
                   i32.lt_u
                   if
                    local.get $2
                    local.get $3
                    i32.const 7
                    call $assembly/index/readVarint
                    i32.const 127
                    i32.and
                    call $assembly/options/onTypeParam
                    local.get $3
                    i32.const 1
                    i32.add
                    local.set $3
                    br $loop|3
                   end
                  end
                  call $assembly/index/readVaruint
                  local.set $5
                  i32.const 0
                  local.set $3
                  loop $loop|4
                   local.get $3
                   local.get $5
                   i32.lt_u
                   if
                    local.get $2
                    local.get $3
                    i32.const 7
                    call $assembly/index/readVarint
                    i32.const 127
                    i32.and
                    call $assembly/options/onTypeReturn
                    local.get $3
                    i32.const 1
                    i32.add
                    local.set $3
                    br $loop|4
                   end
                  end
                  local.get $2
                  i32.const 1
                  i32.add
                  local.set $2
                  br $loop|2
                 end
                end
                br $break|1
               end
               call $assembly/index/readVaruint
               local.set $7
               i32.const 0
               local.set $4
               loop $loop|5
                local.get $4
                local.get $7
                i32.lt_u
                if
                 call $assembly/index/readVaruint
                 local.tee $3
                 global.get $assembly/index/off
                 local.tee $5
                 i32.add
                 global.set $assembly/index/off
                 call $assembly/index/readVaruint
                 local.tee $6
                 global.get $assembly/index/off
                 local.tee $8
                 i32.add
                 global.set $assembly/index/off
                 global.get $assembly/index/off
                 local.tee $9
                 i32.load8_u
                 local.set $2
                 local.get $9
                 i32.const 1
                 i32.add
                 global.set $assembly/index/off
                 local.get $4
                 local.get $2
                 local.get $5
                 local.get $3
                 local.get $8
                 local.get $6
                 call $assembly/options/onImport
                 block $break|6
                  block $case4|6
                   block $case3|6
                    block $case2|6
                     block $case1|6
                      local.get $2
                      if
                       local.get $2
                       i32.const 1
                       i32.sub
                       br_table $case1|6 $case2|6 $case3|6 $case4|6
                      end
                      local.get $10
                      local.tee $2
                      i32.const 1
                      i32.add
                      local.set $10
                      local.get $2
                      call $assembly/index/readVaruint
                      call $assembly/options/onFunctionImport
                      br $break|6
                     end
                     i32.const 7
                     call $assembly/index/readVarint
                     i32.const 127
                     i32.and
                     local.set $3
                     call $assembly/index/readVaruint
                     local.set $5
                     local.get $0
                     local.tee $2
                     i32.const 1
                     i32.add
                     local.set $0
                     local.get $2
                     local.get $3
                     call $assembly/index/readVaruint
                     local.get $5
                     i32.const 1
                     i32.and
                     if (result i32)
                      call $assembly/index/readVaruint
                     else                      
                      i32.const -1
                     end
                     local.get $5
                     call $assembly/options/onTableImport
                     br $break|6
                    end
                    call $assembly/index/readVaruint
                    local.set $3
                    local.get $11
                    local.tee $2
                    i32.const 1
                    i32.add
                    local.set $11
                    local.get $2
                    call $assembly/index/readVaruint
                    local.get $3
                    i32.const 1
                    i32.and
                    if (result i32)
                     call $assembly/index/readVaruint
                    else                     
                     i32.const 65535
                    end
                    local.get $3
                    call $assembly/options/onMemoryImport
                    br $break|6
                   end
                   local.get $12
                   local.tee $2
                   i32.const 1
                   i32.add
                   local.set $12
                   local.get $2
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
                 local.get $4
                 i32.const 1
                 i32.add
                 local.set $4
                 br $loop|5
                end
               end
               br $break|1
              end
              call $assembly/index/readVaruint
              local.set $4
              i32.const 0
              local.set $3
              loop $loop|7
               local.get $3
               local.get $4
               i32.lt_u
               if
                local.get $10
                local.tee $2
                i32.const 1
                i32.add
                local.set $10
                local.get $2
                call $assembly/index/readVaruint
                call $assembly/options/onFunction
                local.get $3
                i32.const 1
                i32.add
                local.set $3
                br $loop|7
               end
              end
              br $break|1
             end
             call $assembly/index/readVaruint
             local.set $7
             i32.const 0
             local.set $4
             loop $loop|8
              local.get $4
              local.get $7
              i32.lt_u
              if
               call $assembly/index/readVaruint
               i32.const 127
               i32.and
               local.set $3
               call $assembly/index/readVaruint
               local.set $5
               local.get $0
               local.tee $2
               i32.const 1
               i32.add
               local.set $0
               local.get $2
               local.get $3
               call $assembly/index/readVaruint
               local.get $5
               i32.const 1
               i32.and
               if (result i32)
                call $assembly/index/readVaruint
               else                
                i32.const -1
               end
               local.get $5
               call $assembly/options/onTable
               local.get $4
               i32.const 1
               i32.add
               local.set $4
               br $loop|8
              end
             end
             br $break|1
            end
            call $assembly/index/readVaruint
            local.set $6
            i32.const 0
            local.set $3
            loop $loop|9
             local.get $3
             local.get $6
             i32.lt_u
             if
              call $assembly/index/readVaruint
              local.set $4
              local.get $11
              local.tee $2
              i32.const 1
              i32.add
              local.set $11
              local.get $2
              call $assembly/index/readVaruint
              local.get $4
              i32.const 1
              i32.and
              if (result i32)
               call $assembly/index/readVaruint
              else               
               i32.const 65535
              end
              local.get $4
              call $assembly/options/onMemory
              local.get $3
              i32.const 1
              i32.add
              local.set $3
              br $loop|9
             end
            end
            br $break|1
           end
           call $assembly/index/readVaruint
           local.set $4
           i32.const 0
           local.set $3
           loop $loop|10
            local.get $3
            local.get $4
            i32.lt_u
            if
             i32.const 7
             call $assembly/index/readVarint
             i32.const 127
             i32.and
             local.set $5
             call $assembly/index/readVaruint
             local.set $6
             call $assembly/index/skipInitExpr
             local.get $12
             local.tee $2
             i32.const 1
             i32.add
             local.set $12
             local.get $2
             local.get $5
             local.get $6
             call $assembly/options/onGlobal
             local.get $3
             i32.const 1
             i32.add
             local.set $3
             br $loop|10
            end
           end
           br $break|1
          end
          call $assembly/index/readVaruint
          local.set $3
          i32.const 0
          local.set $2
          loop $loop|11
           local.get $2
           local.get $3
           i32.lt_u
           if
            call $assembly/index/readVaruint
            local.tee $4
            global.get $assembly/index/off
            local.tee $5
            i32.add
            global.set $assembly/index/off
            global.get $assembly/index/off
            local.tee $6
            i32.load8_u
            local.set $7
            local.get $6
            i32.const 1
            i32.add
            global.set $assembly/index/off
            local.get $2
            local.get $7
            call $assembly/index/readVaruint
            local.get $5
            local.get $4
            call $assembly/options/onExport
            local.get $2
            i32.const 1
            i32.add
            local.set $2
            br $loop|11
           end
          end
          br $break|1
         end
         call $assembly/index/readVaruint
         call $assembly/options/onStart
         br $break|1
        end
        local.get $2
        i32.const 4
        i32.eq
        if (result i32)
         local.get $5
         i32.load
         i32.const 1701667182
         i32.eq
        else         
         i32.const 0
        end
        if
         call $assembly/index/readVaruint
         local.set $2
         call $assembly/index/readVaruint
         global.get $assembly/index/off
         block $break|12
          block $case3|12
           block $case2|12
            block $case1|12
             local.get $2
             if
              local.get $2
              i32.const 1
              i32.eq
              br_if $case1|12
              local.get $2
              i32.const 2
              i32.eq
              br_if $case2|12
              br $case3|12
             end
             call $assembly/index/readVaruint
             local.set $2
             global.get $assembly/index/off
             local.get $2
             call $assembly/options/onModuleName
             br $break|12
            end
            call $assembly/index/readVaruint
            local.set $2
            i32.const 0
            local.set $3
            loop $loop|13
             local.get $3
             local.get $2
             i32.lt_u
             if
              call $assembly/index/readVaruint
              call $assembly/index/readVaruint
              local.tee $7
              global.get $assembly/index/off
              local.tee $8
              i32.add
              global.set $assembly/index/off
              local.get $8
              local.get $7
              call $assembly/options/onFunctionName
              local.get $3
              i32.const 1
              i32.add
              local.set $3
              br $loop|13
             end
            end
            br $break|12
           end
           call $assembly/index/readVaruint
           local.set $6
           i32.const 0
           local.set $2
           loop $loop|14
            local.get $2
            local.get $6
            i32.lt_u
            if
             call $assembly/index/readVaruint
             local.set $7
             call $assembly/index/readVaruint
             local.set $8
             i32.const 0
             local.set $3
             loop $loop|15
              local.get $3
              local.get $8
              i32.lt_u
              if
               call $assembly/index/readVaruint
               local.set $9
               call $assembly/index/readVaruint
               local.tee $13
               global.get $assembly/index/off
               local.tee $14
               i32.add
               global.set $assembly/index/off
               local.get $7
               local.get $9
               local.get $14
               local.get $13
               call $assembly/options/onLocalName
               local.get $3
               i32.const 1
               i32.add
               local.set $3
               br $loop|15
              end
             end
             local.get $2
             i32.const 1
             i32.add
             local.set $2
             br $loop|14
            end
           end
           br $break|12
          end
          unreachable
         end
         i32.add
         global.set $assembly/index/off
         br $break|1
        else         
         local.get $2
         i32.const 16
         i32.eq
         if (result i32)
          local.get $5
          i64.load
          i64.const 7011371672682196851
          i64.eq
         else          
          i32.const 0
         end
         if (result i32)
          local.get $5
          i32.const 8
          i32.add
          i64.load
          i64.const 5499551997695193200
          i64.eq
         else          
          i32.const 0
         end
         if
          call $assembly/index/readVaruint
          local.tee $2
          global.get $assembly/index/off
          local.tee $4
          i32.add
          global.set $assembly/index/off
          local.get $4
          local.get $2
          call $assembly/options/onSourceMappingURL
         end
        end
        local.get $3
        local.get $6
        i32.add
        global.set $assembly/index/off
        br $break|1
       end
       global.get $assembly/index/off
       local.get $3
       i32.add
       global.set $assembly/index/off
       br $break|1
      end
      unreachable
     end
    else     
     global.get $assembly/index/off
     local.get $3
     i32.add
     global.set $assembly/index/off
    end
    br $continue|0
   end
  end
  global.get $assembly/index/off
  local.get $1
  i32.ne
  if
   unreachable
  end
 )
 (func $null (; 24 ;) (type $FUNCSIG$v)
  nop
 )
)
