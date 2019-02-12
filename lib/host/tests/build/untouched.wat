(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $i_ (func (param i32)))
 (type $_ (func))
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii_ (func (param i32 i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 8) "\1f\00\00\00D\00o\00e\00s\00 \00t\00h\00e\00 \00s\00t\00r\00i\00n\00g\00 \00p\00r\00i\00n\00t\00i\00n\00g\00 \00w\00o\00r\00k\00?\00?\00")
 (import "host" "_log_str" (func $assembly/host/_log_str (param i32)))
 (import "host" "_logi" (func $assembly/host/_logi (param i32)))
 (import "host" "_log" (func $assembly/host/_log<i32> (param i32 i32)))
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $tests/assembly/index/Car._i (mut i32) (i32.const 10))
 (global $HEAP_BASE i32 (i32.const 76))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "Car.i" (func $tests/assembly/index/Car.i))
 (export "Car#constructor" (func $tests/assembly/index/Car#constructor))
 (export "Car#get:length" (func $Car#get:length))
 (export "Car#set:length" (func $Car#set:length))
 (export "Car#get:weight" (func $Car#get:weight))
 (export "Car#set:weight" (func $Car#set:weight))
 (export "Car#createAnother!Car" (func $tests/assembly/index/Car#createAnother))
 (export "Car#combine!Car" (func $tests/assembly/index/Car#combine))
 (export "runTest" (func $tests/assembly/index/runTest))
 (export "memory.compare" (func $~lib/memory/memory.compare))
 (export "memory.allocate" (func $~lib/memory/memory.allocate))
 (export "memory.free" (func $~lib/memory/memory.free))
 (export "memory.reset" (func $~lib/memory/memory.reset))
 (start $start)
 (func $~lib/internal/memory/memcmp (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 0
   return
  end
  block $break|0
   loop $continue|0
    local.get $2
    i32.const 0
    i32.ne
    local.tee $3
    if (result i32)
     local.get $0
     i32.load8_u
     local.get $1
     i32.load8_u
     i32.eq
    else     
     local.get $3
    end
    if
     block
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 1
      i32.add
      local.set $1
     end
     br $continue|0
    end
   end
  end
  local.get $2
  if (result i32)
   local.get $0
   i32.load8_u
   local.get $1
   i32.load8_u
   i32.sub
  else   
   i32.const 0
  end
 )
 (func $~lib/memory/memory.compare (; 4 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/internal/memory/memcmp
 )
 (func $~lib/allocator/arena/__memory_allocate (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  global.get $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 6 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/allocator/arena/__memory_free (; 7 ;) (type $i_) (param $0 i32)
  nop
 )
 (func $~lib/memory/memory.free (; 8 ;) (type $i_) (param $0 i32)
  local.get $0
  call $~lib/allocator/arena/__memory_free
  return
 )
 (func $~lib/allocator/arena/__memory_reset (; 9 ;) (type $_)
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $~lib/memory/memory.reset (; 10 ;) (type $_)
  call $~lib/allocator/arena/__memory_reset
  return
 )
 (func $tests/assembly/index/Car.i (; 11 ;) (type $i) (result i32)
  global.get $tests/assembly/index/Car._i
 )
 (func $tests/assembly/index/Car#constructor (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  i32.const 200002
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $tests/assembly/index/Car#createAnother (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $1
  call $tests/assembly/index/Car#constructor
 )
 (func $tests/assembly/index/Car#combine (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  i32.const 0
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  i32.add
  call $tests/assembly/index/Car#constructor
 )
 (func $assembly/index/log<String> (; 15 ;) (type $i_) (param $0 i32)
  local.get $0
  call $assembly/host/_log_str
 )
 (func $assembly/index/log<i32> (; 16 ;) (type $i_) (param $0 i32)
  local.get $0
  call $assembly/host/_logi
 )
 (func $assembly/index/log<Car> (; 17 ;) (type $i_) (param $0 i32)
  local.get $0
  i32.const 8
  call $assembly/host/_log<i32>
 )
 (func $tests/assembly/index/runTest (; 18 ;) (type $_)
  i32.const 8
  call $assembly/index/log<String>
  i32.const 42
  call $assembly/index/log<i32>
  i32.const 0
  i32.const 42
  call $tests/assembly/index/Car#constructor
  call $assembly/index/log<Car>
 )
 (func $start (; 19 ;) (type $_)
  global.get $HEAP_BASE
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $null (; 20 ;) (type $_)
 )
 (func $Car#get:length (; 21 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $Car#set:length (; 22 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $Car#get:weight (; 23 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $Car#set:weight (; 24 ;) (type $ii_) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
)
