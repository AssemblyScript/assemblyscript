(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\t\00\00\00m\00e\00m\00c\00p\00y\00.\00t\00s\00")
 (table $0 1 anyfunc)
 (elem (i32.const 0) $null)
 (global $memcpy/base i32 (i32.const 8))
 (global $memcpy/dest (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 32))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "memcpy" (func $memcpy/memcpy))
 (start $start)
 (func $memcpy/memcpy (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  get_local $0
  set_local $3
  block $break|0
   loop $continue|0
    get_local $2
    if (result i32)
     get_local $1
     i32.const 4
     i32.rem_u
    else     
     get_local $2
    end
    if
     block
      block (result i32)
       get_local $0
       tee_local $6
       i32.const 1
       i32.add
       set_local $0
       get_local $6
      end
      block (result i32)
       get_local $1
       tee_local $6
       i32.const 1
       i32.add
       set_local $1
       get_local $6
      end
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 1
      i32.sub
      set_local $2
     end
     br $continue|0
    end
   end
  end
  get_local $0
  i32.const 4
  i32.rem_u
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     get_local $2
     i32.const 16
     i32.ge_u
     if
      block
       get_local $0
       get_local $1
       i32.load
       i32.store
       get_local $0
       i32.const 4
       i32.add
       get_local $1
       i32.const 4
       i32.add
       i32.load
       i32.store
       get_local $0
       i32.const 8
       i32.add
       get_local $1
       i32.const 8
       i32.add
       i32.load
       i32.store
       get_local $0
       i32.const 12
       i32.add
       get_local $1
       i32.const 12
       i32.add
       i32.load
       i32.store
       get_local $1
       i32.const 16
       i32.add
       set_local $1
       get_local $0
       i32.const 16
       i32.add
       set_local $0
       get_local $2
       i32.const 16
       i32.sub
       set_local $2
      end
      br $continue|1
     end
    end
   end
   get_local $2
   i32.const 8
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    get_local $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    get_local $0
    i32.const 8
    i32.add
    set_local $0
    get_local $1
    i32.const 8
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 4
   i32.and
   if
    get_local $0
    get_local $1
    i32.load
    i32.store
    get_local $0
    i32.const 4
    i32.add
    set_local $0
    get_local $1
    i32.const 4
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 2
   i32.and
   if
    get_local $0
    get_local $1
    i32.load16_u
    i32.store16
    get_local $0
    i32.const 2
    i32.add
    set_local $0
    get_local $1
    i32.const 2
    i32.add
    set_local $1
   end
   get_local $2
   i32.const 1
   i32.and
   if
    block (result i32)
     get_local $0
     tee_local $6
     i32.const 1
     i32.add
     set_local $0
     get_local $6
    end
    block (result i32)
     get_local $1
     tee_local $6
     i32.const 1
     i32.add
     set_local $1
     get_local $6
    end
    i32.load8_u
    i32.store8
   end
   get_local $3
   return
  end
  get_local $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       get_local $0
       i32.const 4
       i32.rem_u
       set_local $6
       get_local $6
       i32.const 1
       i32.eq
       br_if $case0|2
       get_local $6
       i32.const 2
       i32.eq
       br_if $case1|2
       get_local $6
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      get_local $1
      i32.load
      set_local $4
      block (result i32)
       get_local $0
       tee_local $6
       i32.const 1
       i32.add
       set_local $0
       get_local $6
      end
      block (result i32)
       get_local $1
       tee_local $6
       i32.const 1
       i32.add
       set_local $1
       get_local $6
      end
      i32.load8_u
      i32.store8
      block (result i32)
       get_local $0
       tee_local $6
       i32.const 1
       i32.add
       set_local $0
       get_local $6
      end
      block (result i32)
       get_local $1
       tee_local $6
       i32.const 1
       i32.add
       set_local $1
       get_local $6
      end
      i32.load8_u
      i32.store8
      block (result i32)
       get_local $0
       tee_local $6
       i32.const 1
       i32.add
       set_local $0
       get_local $6
      end
      block (result i32)
       get_local $1
       tee_local $6
       i32.const 1
       i32.add
       set_local $1
       get_local $6
      end
      i32.load8_u
      i32.store8
      get_local $2
      i32.const 3
      i32.sub
      set_local $2
      block $break|3
       loop $continue|3
        get_local $2
        i32.const 17
        i32.ge_u
        if
         block
          get_local $1
          i32.const 1
          i32.add
          i32.load
          set_local $5
          get_local $0
          get_local $4
          i32.const 24
          i32.shr_u
          get_local $5
          i32.const 8
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 5
          i32.add
          i32.load
          set_local $4
          get_local $0
          i32.const 4
          i32.add
          get_local $5
          i32.const 24
          i32.shr_u
          get_local $4
          i32.const 8
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 9
          i32.add
          i32.load
          set_local $5
          get_local $0
          i32.const 8
          i32.add
          get_local $4
          i32.const 24
          i32.shr_u
          get_local $5
          i32.const 8
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 13
          i32.add
          i32.load
          set_local $4
          get_local $0
          i32.const 12
          i32.add
          get_local $5
          i32.const 24
          i32.shr_u
          get_local $4
          i32.const 8
          i32.shl
          i32.or
          i32.store
          get_local $1
          i32.const 16
          i32.add
          set_local $1
          get_local $0
          i32.const 16
          i32.add
          set_local $0
          get_local $2
          i32.const 16
          i32.sub
          set_local $2
         end
         br $continue|3
        end
       end
      end
      br $break|2
     end
     get_local $1
     i32.load
     set_local $4
     block (result i32)
      get_local $0
      tee_local $6
      i32.const 1
      i32.add
      set_local $0
      get_local $6
     end
     block (result i32)
      get_local $1
      tee_local $6
      i32.const 1
      i32.add
      set_local $1
      get_local $6
     end
     i32.load8_u
     i32.store8
     block (result i32)
      get_local $0
      tee_local $6
      i32.const 1
      i32.add
      set_local $0
      get_local $6
     end
     block (result i32)
      get_local $1
      tee_local $6
      i32.const 1
      i32.add
      set_local $1
      get_local $6
     end
     i32.load8_u
     i32.store8
     get_local $2
     i32.const 2
     i32.sub
     set_local $2
     block $break|4
      loop $continue|4
       get_local $2
       i32.const 18
       i32.ge_u
       if
        block
         get_local $1
         i32.const 2
         i32.add
         i32.load
         set_local $5
         get_local $0
         get_local $4
         i32.const 16
         i32.shr_u
         get_local $5
         i32.const 16
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 6
         i32.add
         i32.load
         set_local $4
         get_local $0
         i32.const 4
         i32.add
         get_local $5
         i32.const 16
         i32.shr_u
         get_local $4
         i32.const 16
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 10
         i32.add
         i32.load
         set_local $5
         get_local $0
         i32.const 8
         i32.add
         get_local $4
         i32.const 16
         i32.shr_u
         get_local $5
         i32.const 16
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 14
         i32.add
         i32.load
         set_local $4
         get_local $0
         i32.const 12
         i32.add
         get_local $5
         i32.const 16
         i32.shr_u
         get_local $4
         i32.const 16
         i32.shl
         i32.or
         i32.store
         get_local $1
         i32.const 16
         i32.add
         set_local $1
         get_local $0
         i32.const 16
         i32.add
         set_local $0
         get_local $2
         i32.const 16
         i32.sub
         set_local $2
        end
        br $continue|4
       end
      end
     end
     br $break|2
    end
    get_local $1
    i32.load
    set_local $4
    block (result i32)
     get_local $0
     tee_local $6
     i32.const 1
     i32.add
     set_local $0
     get_local $6
    end
    block (result i32)
     get_local $1
     tee_local $6
     i32.const 1
     i32.add
     set_local $1
     get_local $6
    end
    i32.load8_u
    i32.store8
    get_local $2
    i32.const 1
    i32.sub
    set_local $2
    block $break|5
     loop $continue|5
      get_local $2
      i32.const 19
      i32.ge_u
      if
       block
        get_local $1
        i32.const 3
        i32.add
        i32.load
        set_local $5
        get_local $0
        get_local $4
        i32.const 8
        i32.shr_u
        get_local $5
        i32.const 24
        i32.shl
        i32.or
        i32.store
        get_local $1
        i32.const 7
        i32.add
        i32.load
        set_local $4
        get_local $0
        i32.const 4
        i32.add
        get_local $5
        i32.const 8
        i32.shr_u
        get_local $4
        i32.const 24
        i32.shl
        i32.or
        i32.store
        get_local $1
        i32.const 11
        i32.add
        i32.load
        set_local $5
        get_local $0
        i32.const 8
        i32.add
        get_local $4
        i32.const 8
        i32.shr_u
        get_local $5
        i32.const 24
        i32.shl
        i32.or
        i32.store
        get_local $1
        i32.const 15
        i32.add
        i32.load
        set_local $4
        get_local $0
        i32.const 12
        i32.add
        get_local $5
        i32.const 8
        i32.shr_u
        get_local $4
        i32.const 24
        i32.shl
        i32.or
        i32.store
        get_local $1
        i32.const 16
        i32.add
        set_local $1
        get_local $0
        i32.const 16
        i32.add
        set_local $0
        get_local $2
        i32.const 16
        i32.sub
        set_local $2
       end
       br $continue|5
      end
     end
    end
    br $break|2
   end
  end
  get_local $2
  i32.const 16
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 8
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 4
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 2
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
  end
  get_local $2
  i32.const 1
  i32.and
  if
   block (result i32)
    get_local $0
    tee_local $6
    i32.const 1
    i32.add
    set_local $0
    get_local $6
   end
   block (result i32)
    get_local $1
    tee_local $6
    i32.const 1
    i32.add
    set_local $1
    get_local $6
   end
   i32.load8_u
   i32.store8
  end
  get_local $3
 )
 (func $start (; 2 ;) (type $v)
  get_global $memcpy/base
  i64.const 1229782938247303441
  i64.store
  get_global $memcpy/base
  i32.const 8
  i32.add
  i64.const 2459565876494606882
  i64.store
  get_global $memcpy/base
  i32.const 16
  i32.add
  i64.const 3689348814741910323
  i64.store
  get_global $memcpy/base
  i32.const 24
  i32.add
  i64.const 4919131752989213764
  i64.store
  get_global $memcpy/base
  i32.const 1
  i32.add
  get_global $memcpy/base
  i32.const 16
  i32.add
  i32.const 4
  call $memcpy/memcpy
  set_global $memcpy/dest
  get_global $memcpy/dest
  get_global $memcpy/base
  i32.const 1
  i32.add
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 151
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memcpy/base
  i64.load
  i64.const 1229783084848853777
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 152
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memcpy/base
  get_global $memcpy/base
  i32.const 32
  call $memcpy/memcpy
  set_global $memcpy/dest
  get_global $memcpy/dest
  get_global $memcpy/base
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 155
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memcpy/base
  i64.load
  i64.const 1229783084848853777
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 156
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memcpy/base
  i32.const 8
  i32.add
  i64.load
  i64.const 2459565876494606882
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 157
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memcpy/base
  i32.const 16
  i32.add
  i64.load
  i64.const 3689348814741910323
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 158
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memcpy/base
  i32.const 24
  i32.add
  i64.load
  i64.const 4919131752989213764
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 159
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memcpy/base
  i32.const 5
  i32.add
  get_global $memcpy/base
  i32.const 28
  i32.add
  i32.const 3
  call $memcpy/memcpy
  set_global $memcpy/dest
  get_global $memcpy/base
  i64.load
  i64.const 4919131679688438545
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 162
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memcpy/base
  i32.const 8
  i32.add
  get_global $memcpy/base
  i32.const 16
  i32.add
  i32.const 15
  call $memcpy/memcpy
  set_global $memcpy/dest
  get_global $memcpy/base
  i64.load
  i64.const 4919131679688438545
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 165
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memcpy/base
  i32.const 8
  i32.add
  i64.load
  i64.const 3689348814741910323
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 166
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memcpy/base
  i32.const 16
  i32.add
  i64.load
  i64.const 3694152654344438852
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 167
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  get_global $memcpy/base
  i32.const 24
  i32.add
  i64.load
  i64.const 4919131752989213764
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 168
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
 )
 (func $null (; 3 ;) (type $v)
 )
)
