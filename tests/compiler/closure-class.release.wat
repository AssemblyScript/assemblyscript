(module
 (type $0 (func (result i32)))
 (type $1 (func (param i32)))
 (type $2 (func (param i32) (result i32)))
 (type $3 (func))
 (type $4 (func (param i32 i32)))
 (type $5 (func (param i32 i32) (result i32)))
 (type $6 (func (param i32 i32 i32) (result i32)))
 (type $7 (func (param i32 i32 i32 i32)))
 (type $8 (func (param i32 i32 i64)))
 (type $9 (func (param i32 i32 i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/__closure_env (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 36860))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $4 (i32.const 1228) "<")
 (data $4.1 (i32.const 1240) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $5 (i32.const 1292) ",")
 (data $5.1 (i32.const 1304) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) "\1c")
 (data $8.1 (i32.const 1448) "\05\00\00\00\08\00\00\00\01")
 (data $9 (i32.const 1468) "\1c")
 (data $9.1 (i32.const 1480) "\06\00\00\00\08\00\00\00\02")
 (data $10 (i32.const 1500) "<")
 (data $10.1 (i32.const 1512) "\02\00\00\00 \00\00\00c\00l\00o\00s\00u\00r\00e\00-\00c\00l\00a\00s\00s\00.\00t\00s")
 (data $11 (i32.const 1564) "\1c")
 (data $11.1 (i32.const 1576) "\08\00\00\00\08\00\00\00\03")
 (data $12 (i32.const 1596) "\1c")
 (data $12.1 (i32.const 1608) "\t\00\00\00\08\00\00\00\04")
 (data $13 (i32.const 1628) "\1c")
 (data $13.1 (i32.const 1640) "\06\00\00\00\08\00\00\00\05")
 (data $14 (i32.const 1660) "\1c")
 (data $14.1 (i32.const 1672) "\06\00\00\00\08\00\00\00\06")
 (data $15 (i32.const 1692) "\1c")
 (data $15.1 (i32.const 1704) "\06\00\00\00\08\00\00\00\07")
 (data $16 (i32.const 1724) "\1c")
 (data $16.1 (i32.const 1736) "\06\00\00\00\08\00\00\00\08")
 (data $17 (i32.const 1756) "\1c")
 (data $17.1 (i32.const 1768) "\08\00\00\00\08\00\00\00\t")
 (data $18 (i32.const 1788) "\1c")
 (data $18.1 (i32.const 1800) "\02\00\00\00\06\00\00\00R\00e\00x")
 (data $19 (i32.const 1820) "<")
 (data $19.1 (i32.const 1832) "\02\00\00\00\1e\00\00\00G\00e\00r\00m\00a\00n\00 \00S\00h\00e\00p\00h\00e\00r\00d")
 (data $20 (i32.const 1884) "\1c")
 (data $20.1 (i32.const 1896) "\06\00\00\00\08\00\00\00\n")
 (data $21 (i32.const 1916) "\1c")
 (data $21.1 (i32.const 1928) "\05\00\00\00\08\00\00\00\0b")
 (data $22 (i32.const 1948) "\1c")
 (data $22.1 (i32.const 1960) "\0f\00\00\00\08\00\00\00\0c")
 (data $23 (i32.const 1980) ",")
 (data $23.1 (i32.const 1992) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $24 (i32.const 2028) ",")
 (data $24.1 (i32.const 2040) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $25 (i32.const 2076) "\1c")
 (data $25.1 (i32.const 2088) "\08\00\00\00\08\00\00\00\r")
 (data $26 (i32.const 2108) "|")
 (data $26.1 (i32.const 2120) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $27 (i32.const 2236) "\1c")
 (data $27.1 (i32.const 2248) "\02\00\00\00\02\00\00\00*")
 (data $28 (i32.const 2268) "\1c")
 (data $28.1 (i32.const 2280) "\02")
 (data $29 (i32.const 2300) "\1c")
 (data $29.1 (i32.const 2312) "\14\00\00\00\08\00\00\00\0e")
 (data $30 (i32.const 2332) "\1c")
 (data $30.1 (i32.const 2344) "\14\00\00\00\08\00\00\00\0f")
 (data $31 (i32.const 2364) "\1c")
 (data $31.1 (i32.const 2376) "\14\00\00\00\08\00\00\00\10")
 (data $32 (i32.const 2396) ",")
 (data $32.1 (i32.const 2408) "\02\00\00\00\0e\00\00\00S\00E\00L\00E\00C\00T\00 ")
 (data $33 (i32.const 2444) "\1c")
 (data $33.1 (i32.const 2456) "\02\00\00\00\0c\00\00\00 \00F\00R\00O\00M\00 ")
 (data $34 (i32.const 2476) ",")
 (data $34.1 (i32.const 2488) "\02\00\00\00\0e\00\00\00 \00W\00H\00E\00R\00E\00 ")
 (data $35 (i32.const 2524) "\1c")
 (data $35.1 (i32.const 2536) "\0f\00\00\00\08\00\00\00\11")
 (data $36 (i32.const 2556) ",")
 (data $36.1 (i32.const 2568) "\02\00\00\00\10\00\00\00i\00d\00,\00 \00n\00a\00m\00e")
 (data $37 (i32.const 2604) "\1c")
 (data $37.1 (i32.const 2616) "\02\00\00\00\n\00\00\00u\00s\00e\00r\00s")
 (data $38 (i32.const 2636) ",")
 (data $38.1 (i32.const 2648) "\02\00\00\00\14\00\00\00a\00c\00t\00i\00v\00e\00 \00=\00 \001")
 (data $39 (i32.const 2684) "l")
 (data $39.1 (i32.const 2696) "\02\00\00\00V\00\00\00S\00E\00L\00E\00C\00T\00 \00i\00d\00,\00 \00n\00a\00m\00e\00 \00F\00R\00O\00M\00 \00u\00s\00e\00r\00s\00 \00W\00H\00E\00R\00E\00 \00a\00c\00t\00i\00v\00e\00 \00=\00 \001")
 (data $40 (i32.const 2796) "\1c")
 (data $40.1 (i32.const 2808) "\16\00\00\00\08\00\00\00\12")
 (data $41 (i32.const 2828) "\1c")
 (data $41.1 (i32.const 2840) "\16\00\00\00\08\00\00\00\13")
 (data $42 (i32.const 2860) "\1c")
 (data $42.1 (i32.const 2872) "\16\00\00\00\08\00\00\00\14")
 (data $43 (i32.const 2892) "\1c")
 (data $43.1 (i32.const 2904) "\05\00\00\00\08\00\00\00\15")
 (data $44 (i32.const 2924) "\1c")
 (data $44.1 (i32.const 2936) "\06\00\00\00\08\00\00\00\16")
 (data $45 (i32.const 2956) "\1c")
 (data $45.1 (i32.const 2968) "\19\00\00\00\08\00\00\00\17")
 (data $46 (i32.const 2988) "\1c")
 (data $46.1 (i32.const 3000) "\08\00\00\00\08\00\00\00\18")
 (data $47 (i32.const 3020) "\1c")
 (data $47.1 (i32.const 3032) "\06\00\00\00\08\00\00\00\19")
 (data $48 (i32.const 3052) "\1c")
 (data $48.1 (i32.const 3064) "\1b\00\00\00\08\00\00\00\1a")
 (data $49 (i32.const 3084) "\1c")
 (data $49.1 (i32.const 3096) "\1b\00\00\00\08\00\00\00\1b")
 (data $50 (i32.const 3116) "\1c")
 (data $50.1 (i32.const 3128) "\1d\00\00\00\08\00\00\00\1c")
 (data $51 (i32.const 3148) "\1c")
 (data $51.1 (i32.const 3160) "\06\00\00\00\08\00\00\00\1d")
 (data $52 (i32.const 3180) "\1c")
 (data $52.1 (i32.const 3192) "\1e\00\00\00\08\00\00\00\1e")
 (data $53 (i32.const 3212) "\1c")
 (data $53.1 (i32.const 3224) "\1e\00\00\00\08\00\00\00\1f")
 (data $54 (i32.const 3244) "\1c")
 (data $54.1 (i32.const 3256) "\1e\00\00\00\08\00\00\00 ")
 (data $55 (i32.const 3276) "\1c")
 (data $55.1 (i32.const 3288) "\1f\00\00\00\08\00\00\00!")
 (data $56 (i32.const 3308) "\1c")
 (data $56.1 (i32.const 3320) " \00\00\00\08\00\00\00\"")
 (data $57 (i32.const 3340) "\1c")
 (data $57.1 (i32.const 3352) "\"\00\00\00\08\00\00\00#")
 (data $58 (i32.const 3372) "\1c")
 (data $58.1 (i32.const 3384) "\"\00\00\00\08\00\00\00$")
 (data $59 (i32.const 3404) "\1c")
 (data $59.1 (i32.const 3416) "$\00\00\00\08\00\00\00%")
 (data $60 (i32.const 3436) "\1c")
 (data $60.1 (i32.const 3448) "\08\00\00\00\08\00\00\00&")
 (data $61 (i32.const 3468) "\1c")
 (data $61.1 (i32.const 3480) "\08\00\00\00\08\00\00\00\'")
 (data $62 (i32.const 3500) "\1c")
 (data $62.1 (i32.const 3512) "\08\00\00\00\08\00\00\00(")
 (data $63 (i32.const 3532) "\1c")
 (data $63.1 (i32.const 3544) "\16\00\00\00\08\00\00\00)")
 (data $64 (i32.const 3564) "\1c")
 (data $64.1 (i32.const 3576) "\16\00\00\00\08\00\00\00*")
 (data $65 (i32.const 3596) "\1c")
 (data $65.1 (i32.const 3608) "&\00\00\00\08\00\00\00+")
 (data $66 (i32.const 3628) "\1c")
 (data $66.1 (i32.const 3640) "\06\00\00\00\08\00\00\00,")
 (data $67 (i32.const 3660) "\1c")
 (data $67.1 (i32.const 3672) "\06\00\00\00\08\00\00\00-")
 (data $68 (i32.const 3692) "\1c")
 (data $68.1 (i32.const 3704) "\06\00\00\00\08\00\00\00.")
 (data $69 (i32.const 3724) "\1c")
 (data $69.1 (i32.const 3736) "\06\00\00\00\08\00\00\00/")
 (data $70 (i32.const 3756) "\1c")
 (data $70.1 (i32.const 3768) "\06\00\00\00\08\00\00\000")
 (data $71 (i32.const 3788) "\1c")
 (data $71.1 (i32.const 3800) "\06\00\00\00\08\00\00\001")
 (data $72 (i32.const 3820) "\1c")
 (data $72.1 (i32.const 3832) "\06\00\00\00\08\00\00\002")
 (data $73 (i32.const 3852) "\1c")
 (data $73.1 (i32.const 3864) "\16\00\00\00\08\00\00\003")
 (data $74 (i32.const 3884) "\1c")
 (data $74.1 (i32.const 3896) "\06\00\00\00\08\00\00\004")
 (data $75 (i32.const 3920) "*\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00 ")
 (data $75.1 (i32.const 3952) " ")
 (data $75.2 (i32.const 3964) " \00\00\00\00\00\00\00 ")
 (data $75.3 (i32.const 3992) "\02A\00\00 ")
 (data $75.4 (i32.const 4008) " ")
 (data $75.5 (i32.const 4020) "\02A\00\00\00\00\00\00 \00\00\00\00\00\00\00 ")
 (data $75.6 (i32.const 4056) " ")
 (data $75.7 (i32.const 4072) " ")
 (data $75.8 (i32.const 4084) "\02A\00\00 ")
 (table $0 53 53 funcref)
 (elem $0 (i32.const 1) $closure-class/Counter#getIncrementClosure~anonymous|0 $closure-class/Counter#getCountClosure~anonymous|0 $closure-class/BankAccount#getDepositClosure~anonymous|0 $closure-class/BankAccount#getWithdrawClosure~anonymous|0 $closure-class/Counter#getCountClosure~anonymous|0 $closure-class/BankAccount#getTransactionCountClosure~anonymous|0 $closure-class/Calculator#getOperationClosure~anonymous|0 $closure-class/Outer#getComputeClosure~anonymous|0 $closure-class/Outer#getInnerSetterClosure~anonymous|0 $closure-class/BankAccount#getTransactionCountClosure~anonymous|0 $closure-class/Animal#getAgeIncrementClosure~anonymous|0 $closure-class/Dog#getBreedClosure~anonymous|0 $closure-class/DataProcessor#getProcessorClosure~anonymous|0 $closure-class/QueryBuilder#getSelectClosure~anonymous|0 $closure-class/QueryBuilder#getFromClosure~anonymous|0 $closure-class/QueryBuilder#getWhereClosure~anonymous|0 $closure-class/QueryBuilder#getBuildClosure~anonymous|0 $closure-class/StateMachine#getStartClosure~anonymous|0 $closure-class/StateMachine#getPauseClosure~anonymous|0 $closure-class/StateMachine#getStopClosure~anonymous|0 $closure-class/StateMachine#getResetClosure~anonymous|0 $closure-class/Counter#getCountClosure~anonymous|0 $closure-class/Observable#getSubscribeClosure~anonymous|0 $closure-class/Observable#getSetClosure~anonymous|0 $closure-class/Counter#getCountClosure~anonymous|0 $closure-class/ObserverState#getCountObserver~anonymous|0 $closure-class/ObserverState#getDiffObserver~anonymous|0 $closure-class/Box#getMapClosure~anonymous|0 $closure-class/Counter#getCountClosure~anonymous|0 $closure-class/testBoxMap~anonymous|0 $closure-class/testBoxMap~anonymous|1 $closure-class/testBoxMap~anonymous|2 $closure-class/Box#getFlatMapClosure~anonymous|0 $closure-class/testBoxFlatMap~anonymous|0 $closure-class/ChainableCounter#getAddClosure~anonymous|0 $closure-class/ChainableCounter#getMultiplyClosure~anonymous|0 $closure-class/Task#getThenClosure~anonymous|0 $closure-class/Task#getCompleteClosure~anonymous|0 $closure-class/testTaskCallbacks~anonymous|0 $closure-class/testTaskCallbackAfterComplete~anonymous|0 $closure-class/Resource#getAcquireClosure~anonymous|0 $closure-class/Resource#getReleaseClosure~anonymous|0 $closure-class/Resource#getUseClosure~anonymous|0 $closure-class/testResourceManagement~anonymous|0 $closure-class/testResourceManagement~anonymous|1 $closure-class/testResourceManagement~anonymous|2 $closure-class/testResourceManagement~anonymous|3 $closure-class/testResourceManagement~anonymous|0 $closure-class/TreeNode#getSumClosure~anonymous|0 $closure-class/TreeNode#getDepthClosure~anonymous|0 $closure-class/Range#getHasNextClosure~anonymous|0 $closure-class/Range#getNextClosure~anonymous|0)
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  i32.const 1248
  call $~lib/rt/itcms/__visit
  i32.const 2000
  call $~lib/rt/itcms/__visit
  i32.const 2128
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink$523
   local.get $0
   i32.load offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load offset=8
    i32.eqz
    local.get $0
    i32.const 36860
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1120
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink$523
   end
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 132
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load offset=12
  local.tee $1
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 3920
   i32.load
   i32.gt_u
   if
    i32.const 1248
    i32.const 1312
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 3924
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $2
  i32.or
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $2
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 36864
  i32.const 0
  i32.store
  i32.const 38432
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 36864
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 36864
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 36864
  i32.const 38436
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 36864
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 36860
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 36860
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 36860
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=4
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1392
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $1
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size
   local.tee $1
   local.get $3
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $3
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 1
     i32.const 27
     local.get $3
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $3
    end
   else
    local.get $3
   end
   i32.const 4
   local.get $0
   i32.load offset=1568
   local.get $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load
  local.set $4
  local.get $3
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $2
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $3
   local.get $4
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $3
   i32.add
   local.tee $3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $4
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $1
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$69
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$69
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $closure-class/Counter#getIncrementClosure (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 5
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-class/Counter#getCountClosure (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 2
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-class/Calculator#getOperationClosure (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 16
  call $~lib/rt/tlsf/allocateBlock
  local.tee $4
  i32.const 4
  i32.add
  local.tee $3
  i32.const 0
  i32.store
  local.get $4
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $4
  local.get $1
  i32.store offset=16
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 7
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $closure-class/DataProcessor#getProcessorClosure (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 8
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 13
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-class/testBoxMap~anonymous|0 (param $0 i32) (result i32)
  local.get $0
  i32.const 1
  i32.shl
 )
 (func $closure-class/testBoxMap~anonymous|1 (param $0 i32) (result i32)
  local.get $0
  i32.const 3
  i32.add
 )
 (func $closure-class/testBoxMap~anonymous|2 (param $0 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $closure-class/testBoxFlatMap~anonymous|0 (param $0 i32) (result i32)
  local.get $0
  i32.const 10
  i32.mul
  call $closure-class/Box#constructor
 )
 (func $closure-class/ChainableCounter#getAddClosure (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 12
  call $~lib/rt/tlsf/allocateBlock
  local.tee $3
  i32.const 4
  i32.add
  local.tee $2
  i32.const 0
  i32.store
  local.get $3
  local.get $0
  i32.store offset=8
  local.get $3
  local.get $1
  i32.store offset=12
  i32.const 8
  i32.const 34
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 35
  i32.store
  local.get $0
  local.get $2
  i32.store offset=4
  local.get $0
 )
 (func $closure-class/Task#getThenClosure (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 36
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 37
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-class/Task#getCompleteClosure (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 8
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 38
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-class/testTaskCallbacks~anonymous|0 (param $0 i32)
  global.get $~lib/__closure_env
  local.get $0
  i32.const 1
  i32.shl
  i32.store offset=4
 )
 (func $closure-class/testTaskCallbackAfterComplete~anonymous|0 (param $0 i32)
  global.get $~lib/__closure_env
  local.get $0
  i32.store offset=4
 )
 (func $closure-class/testResourceManagement~anonymous|0 (result i32)
  i32.const 42
 )
 (func $closure-class/testResourceManagement~anonymous|1 (result i32)
  i32.const 10
 )
 (func $closure-class/testResourceManagement~anonymous|2 (result i32)
  i32.const 20
 )
 (func $closure-class/testResourceManagement~anonymous|3 (result i32)
  i32.const 30
 )
 (func $closure-class/TreeNode#getSumClosure (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 49
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-class/TreeNode#getDepthClosure (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 50
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-class/Range#getHasNextClosure (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 22
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 51
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $closure-class/Range#getNextClosure (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.const 8
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  i32.const 4
  i32.add
  local.tee $1
  i32.const 0
  i32.store
  local.get $2
  local.get $0
  i32.store offset=8
  i32.const 8
  i32.const 6
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.const 52
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $start:closure-class
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  memory.size
  i32.const 16
  i32.shl
  i32.const 36860
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 1172
  i32.const 1168
  i32.store
  i32.const 1176
  i32.const 1168
  i32.store
  i32.const 1168
  global.set $~lib/rt/itcms/pinSpace
  i32.const 1204
  i32.const 1200
  i32.store
  i32.const 1208
  i32.const 1200
  i32.store
  i32.const 1200
  global.set $~lib/rt/itcms/toSpace
  i32.const 1348
  i32.const 1344
  i32.store
  i32.const 1352
  i32.const 1344
  i32.store
  i32.const 1344
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 32
   memory.fill
   global.get $~lib/memory/__stack_pointer
   call $closure-class/Counter#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $closure-class/Counter#getIncrementClosure
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $closure-class/Counter#getCountClosure
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=16
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=20
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 43
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 56
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 56
   memory.fill
   global.get $~lib/memory/__stack_pointer
   call $closure-class/Counter#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   call $closure-class/Counter#constructor
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $closure-class/Counter#getIncrementClosure
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $closure-class/Counter#getIncrementClosure
   local.tee $3
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $closure-class/Counter#getCountClosure
   local.tee $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $closure-class/Counter#getCountClosure
   local.tee $1
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=32
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=36
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=40
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=44
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=48
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 10
   i32.mul
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=52
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   local.get $0
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const 56
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 32
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 60
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $closure-class/testBankAccount
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 125
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 36
   memory.fill
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/object/Object#constructor
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 5
   i32.const 0
   call $closure-class/Calculator#getOperationClosure
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 2
   i32.const 1
   call $closure-class/Calculator#getOperationClosure
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 3
   i32.const 2
   call $closure-class/Calculator#getOperationClosure
   local.tee $3
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=32
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.load
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 24
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 168
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 32
   memory.fill
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 10
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $1
   local.get $2
   i32.store
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=8
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 8
   i32.store
   local.get $3
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=8
   i32.const 8
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 9
   i32.store
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=16
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   i32.const 30
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 219
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=20
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 20
   local.get $1
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=24
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   i32.const 60
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 222
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=28
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 60
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 226
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 40
   memory.fill
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1808
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 14
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1808
   i32.store offset=8
   local.get $0
   i32.const 1808
   i32.store
   local.get $0
   i32.const 1808
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1840
   i32.store offset=8
   local.get $0
   i32.const 1840
   i32.store offset=8
   local.get $0
   i32.const 1840
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 10
   i32.store
   local.get $3
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 11
   i32.store
   local.get $4
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $4
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 12
   i32.store
   local.get $0
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=20
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 277
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 1840
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 278
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=32
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=36
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 5
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 285
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $closure-class/testEventEmitterPattern
   i32.const 120
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 345
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 44
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 44
   memory.fill
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/object/Object#constructor
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 2256
   i32.store
   local.get $1
   i32.const 2256
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 2288
   i32.store offset=4
   local.get $1
   i32.const 2288
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 2288
   i32.store offset=8
   local.get $1
   i32.const 2288
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=8
   i32.const 8
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 14
   i32.store
   local.get $3
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=8
   i32.const 8
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 15
   i32.store
   local.get $4
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $4
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=8
   i32.const 8
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 16
   i32.store
   local.get $5
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $5
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $1
   i32.store offset=8
   i32.const 8
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 17
   i32.store
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $1
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=24
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 2576
   local.get $3
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 2624
   local.get $4
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=32
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 2656
   local.get $5
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=36
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load
   call_indirect (type $0)
   local.tee $0
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 2704
   call $~lib/string/String.__eq
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 399
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 44
   i32.add
   global.set $~lib/memory/__stack_pointer
   call $closure-class/testStateMachine
   if
    i32.const 0
    i32.const 1520
    i32.const 486
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $closure-class/testObservable
   i32.const 43
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 562
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 32
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   call $closure-class/Box#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 29
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 28
   i32.store
   local.get $3
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 29
   i32.store
   local.get $0
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 3200
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=16
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3200
   local.get $3
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   i32.const 3232
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=20
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3232
   local.get $3
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   i32.const 3264
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=24
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3264
   local.get $3
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=28
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 169
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 604
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   call $closure-class/Box#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 0
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 31
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 33
   i32.store
   local.get $0
   local.get $2
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 3328
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   global.get $~lib/memory/__stack_pointer
   i32.const 3328
   local.get $0
   i32.load
   call_indirect (type $2)
   local.tee $0
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.load
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 615
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 36
   memory.fill
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 33
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/object/Object#constructor
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 5
   call $closure-class/ChainableCounter#getAddClosure
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 10
   call $closure-class/ChainableCounter#getAddClosure
   local.tee $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 12
   call $~lib/rt/tlsf/allocateBlock
   local.tee $4
   i32.const 0
   i32.store offset=4
   local.get $4
   local.get $1
   i32.store offset=8
   local.get $4
   i32.const 2
   i32.store offset=12
   i32.const 8
   i32.const 34
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.const 36
   i32.store
   local.get $5
   local.get $4
   i32.const 4
   i32.add
   i32.store offset=4
   local.get $5
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=24
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   local.get $5
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $5
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.load
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 35
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 662
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   call $closure-class/Task#constructor
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $closure-class/Task#getThenClosure
   local.tee $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $closure-class/Task#getCompleteClosure
   local.tee $3
   i32.store offset=12
   local.get $0
   i32.const 0
   i32.store offset=8
   i32.const 8
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 39
   i32.store
   local.get $4
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=16
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   local.get $2
   i32.load
   call_indirect (type $1)
   local.get $0
   i32.load offset=8
   if
    i32.const 0
    i32.const 1520
    i32.const 711
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=20
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 21
   local.get $3
   i32.load
   call_indirect (type $1)
   local.get $0
   i32.load offset=8
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 715
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load8_u
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 716
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 42
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 720
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   call $closure-class/Task#constructor
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $closure-class/Task#getThenClosure
   local.tee $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $closure-class/Task#getCompleteClosure
   local.tee $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=16
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 50
   local.get $1
   i32.load
   call_indirect (type $1)
   local.get $0
   i32.const 0
   i32.store offset=8
   i32.const 8
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 40
   i32.store
   local.get $1
   local.get $0
   i32.const 4
   i32.add
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=20
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   local.get $2
   i32.load
   call_indirect (type $1)
   local.get $0
   i32.load offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 50
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 738
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   call $closure-class/testResourceManagement
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 814
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 56
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 56
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   call $closure-class/TreeNode#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 2
   call $closure-class/TreeNode#constructor
   local.tee $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 3
   call $closure-class/TreeNode#constructor
   local.tee $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   call $closure-class/TreeNode#constructor
   local.tee $3
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   call $closure-class/TreeNode#constructor
   local.tee $4
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 6
   call $closure-class/TreeNode#constructor
   local.tee $5
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   local.get $0
   local.get $1
   call $closure-class/TreeNode#addChild
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   local.get $0
   local.get $2
   call $closure-class/TreeNode#addChild
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=28
   local.get $1
   local.get $3
   call $closure-class/TreeNode#addChild
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   local.get $1
   local.get $4
   call $closure-class/TreeNode#addChild
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   local.get $2
   local.get $5
   call $closure-class/TreeNode#addChild
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $closure-class/TreeNode#getSumClosure
   local.tee $1
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $closure-class/TreeNode#getDepthClosure
   local.tee $0
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=40
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   i32.const 21
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 884
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=44
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 885
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=48
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   i32.const 100
   i32.mul
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=52
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   local.get $1
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const 56
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 2103
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 889
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 5
   i32.const 1
   call $closure-class/Range#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $closure-class/Range#getHasNextClosure
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $closure-class/Range#getNextClosure
   local.tee $2
   i32.store offset=12
   i32.const 0
   local.set $0
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=16
    local.get $1
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $1
    i32.load
    call_indirect (type $0)
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=20
     local.get $2
     i32.load offset=4
     global.set $~lib/__closure_env
     local.get $2
     i32.load
     call_indirect (type $0)
     local.get $0
     i32.add
     local.set $0
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 944
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 10
   i32.const 0
   i32.const -2
   call $closure-class/Range#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $closure-class/Range#getHasNextClosure
   local.tee $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $closure-class/Range#getNextClosure
   local.tee $2
   i32.store offset=12
   i32.const 0
   local.set $0
   loop $while-continue|01
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store offset=16
    local.get $1
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $1
    i32.load
    call_indirect (type $0)
    if
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store offset=20
     local.get $2
     i32.load offset=4
     global.set $~lib/__closure_env
     local.get $2
     i32.load
     call_indirect (type $0)
     local.get $0
     i32.add
     local.set $0
     br $while-continue|01
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 30
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 959
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  i32.const 36880
  i32.const 36928
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner4
   block $folding-inner3
    block $folding-inner2
     block $folding-inner1
      block $folding-inner0
       block $invalid
        block $closure-class/Range
         block $closure-class/TreeNode
          block $closure-class/Resource
           block $closure-class/ChainableCounter
            block $closure-class/Box
             block $closure-class/ObserverState
              block $closure-class/Observable
               block $closure-class/StateMachine
                block $closure-class/QueryBuilder
                 block $closure-class/DataProcessor
                  block $closure-class/Dog
                   block $closure-class/Inner
                    block $closure-class/Calculator
                     block $closure-class/BankAccount
                      block $closure-class/Counter
                       block $~lib/string/String
                        block $~lib/arraybuffer/ArrayBuffer
                         block $~lib/object/Object
                          local.get $0
                          i32.const 8
                          i32.sub
                          i32.load
                          br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner2 $closure-class/Counter $folding-inner0 $folding-inner0 $closure-class/BankAccount $folding-inner0 $folding-inner0 $closure-class/Calculator $folding-inner2 $closure-class/Inner $closure-class/Dog $folding-inner2 $folding-inner0 $folding-inner2 $folding-inner1 $closure-class/DataProcessor $closure-class/QueryBuilder $folding-inner0 $closure-class/StateMachine $folding-inner0 $closure-class/Observable $folding-inner1 $folding-inner0 $closure-class/ObserverState $folding-inner0 $closure-class/Box $folding-inner0 $folding-inner0 $folding-inner0 $folding-inner0 $closure-class/ChainableCounter $folding-inner0 $folding-inner3 $folding-inner0 $closure-class/Resource $folding-inner0 $closure-class/TreeNode $folding-inner1 $closure-class/Range $invalid
                         end
                         return
                        end
                        return
                       end
                       return
                      end
                      return
                     end
                     return
                    end
                    return
                   end
                   return
                  end
                  local.get $0
                  i32.load
                  call $~lib/rt/itcms/__visit
                  br $folding-inner3
                 end
                 return
                end
                local.get $0
                i32.load
                call $~lib/rt/itcms/__visit
                local.get $0
                i32.load offset=4
                call $~lib/rt/itcms/__visit
                br $folding-inner3
               end
               return
              end
              local.get $0
              i32.load offset=4
              call $~lib/rt/itcms/__visit
              return
             end
             return
            end
            return
           end
           return
          end
          return
         end
         local.get $0
         i32.load offset=4
         call $~lib/rt/itcms/__visit
         return
        end
        return
       end
       unreachable
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 4092
      i32.lt_s
      br_if $folding-inner4
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store
      local.get $0
      i32.load offset=4
      call $~lib/rt/itcms/__visit
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      return
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4092
     i32.lt_s
     br_if $folding-inner4
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.load offset=4
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $1
     local.get $0
     i32.load offset=12
     i32.const 2
     i32.shl
     i32.add
     local.set $2
     loop $while-continue|0
      local.get $1
      local.get $2
      i32.lt_u
      if
       local.get $1
       i32.load
       local.tee $3
       if
        local.get $3
        call $~lib/rt/itcms/__visit
       end
       local.get $1
       i32.const 4
       i32.add
       local.set $1
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.load
     call $~lib/rt/itcms/__visit
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    local.get $0
    i32.load
    call $~lib/rt/itcms/__visit
    return
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/itcms/__visit
   return
  end
  i32.const 36880
  i32.const 36928
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~start
  call $start:closure-class
 )
 (func $closure-class/Counter#constructor (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 4
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-class/Counter#getIncrementClosure~anonymous|0
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.load
  i32.const 1
  i32.add
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Counter#getCountClosure~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.load
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/BankAccount#getDepositClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $2
  i32.load offset=4
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  local.get $3
  local.get $0
  local.get $1
  i32.load
  i32.add
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/BankAccount#getWithdrawClosure~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $0
  local.get $2
  i32.load
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   local.get $2
   local.get $3
   i32.load
   local.get $0
   i32.sub
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $1
   i32.store offset=4
   local.get $0
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $closure-class/BankAccount#getTransactionCountClosure~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.load offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/testBankAccount (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 68
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 68
   memory.fill
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 100
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 3
   i32.store
   local.get $4
   local.get $3
   i32.store offset=4
   local.get $4
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $1
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 4
   i32.store
   local.get $1
   local.get $3
   i32.store offset=4
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.tee $5
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 5
   i32.store
   local.get $2
   local.get $5
   i32.store offset=4
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $5
   i32.const 4
   i32.add
   local.tee $6
   i32.const 0
   i32.store
   local.get $5
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 6
   i32.store
   local.get $0
   local.get $6
   i32.store offset=4
   local.get $0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=24
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 50
   local.get $4
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=28
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   i32.const 150
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 111
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 30
   local.get $1
   i32.load
   call_indirect (type $2)
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 113
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=36
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   i32.const 120
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 114
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=40
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 200
   local.get $1
   i32.load
   call_indirect (type $2)
   if
    i32.const 0
    i32.const 1520
    i32.const 116
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   i32.const 120
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 117
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=48
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 118
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=52
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 100
   local.get $4
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=56
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 220
   local.get $1
   i32.load
   call_indirect (type $2)
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 121
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=60
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   i32.const 1000
   i32.mul
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=64
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   local.get $1
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const 68
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 36880
  i32.const 36928
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-class/Calculator#getOperationClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.tee $1
  if
   local.get $1
   i32.const 1
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $1
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=8
    local.tee $2
    i32.store offset=4
    local.get $1
    local.get $2
    i32.load
    local.get $0
    i32.load offset=12
    i32.sub
    i32.store
   else
    local.get $0
    i32.load offset=4
    i32.const 2
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.load offset=8
     local.tee $2
     i32.store offset=4
     local.get $1
     local.get $2
     i32.load
     local.get $0
     i32.load offset=12
     i32.mul
     i32.store
    end
   end
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $2
   i32.store offset=4
   local.get $1
   local.get $2
   i32.load
   local.get $0
   i32.load offset=12
   i32.add
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.store
  local.get $0
  i32.load
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Outer#getComputeClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $1
  i32.store
  local.get $1
  i32.load
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.load offset=4
  i32.mul
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Outer#getInnerSetterClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Animal#getAgeIncrementClosure~anonymous|0
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.load offset=4
  i32.const 1
  i32.add
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Dog#getBreedClosure~anonymous|0 (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.load offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $3
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $3
   local.tee $0
   i32.const 4
   i32.ge_u
   if (result i32)
    local.get $2
    i32.const 7
    i32.and
    local.get $1
    i32.const 7
    i32.and
    i32.or
   else
    i32.const 1
   end
   i32.eqz
   if
    loop $do-loop|0
     local.get $2
     i64.load
     local.get $1
     i64.load
     i64.eq
     if
      local.get $2
      i32.const 8
      i32.add
      local.set $2
      local.get $1
      i32.const 8
      i32.add
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.tee $0
      i32.const 4
      i32.ge_u
      br_if $do-loop|0
     end
    end
   end
   block $__inlined_func$~lib/util/string/compareImpl$205
    loop $while-continue|1
     local.get $0
     local.tee $3
     i32.const 1
     i32.sub
     local.set $0
     local.get $3
     if
      local.get $2
      i32.load16_u
      local.tee $5
      local.get $1
      i32.load16_u
      local.tee $4
      i32.sub
      local.set $3
      local.get $4
      local.get $5
      i32.ne
      br_if $__inlined_func$~lib/util/string/compareImpl$205
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      br $while-continue|1
     end
    end
    i32.const 0
    local.set $3
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   i32.eqz
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/array/Array<%28i32%29=>void>#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.const 17
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 32
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-class/DataProcessor#constructor (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 18
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-class/DataProcessor#getProcessorClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $2
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $3
  i32.store offset=4
  local.get $1
  local.get $3
  i32.load
  i32.const 1
  i32.add
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $2
  i32.load offset=8
  i32.add
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28i32%29=>void>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=12
   local.tee $6
   i32.const 1
   i32.add
   local.tee $5
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.const 2
   i32.shr_u
   i32.gt_u
   if
    local.get $2
    i32.const 268435455
    i32.gt_u
    if
     i32.const 2000
     i32.const 2048
     i32.const 19
     i32.const 48
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    block $__inlined_func$~lib/rt/itcms/__renew$501
     i32.const 1073741820
     local.get $3
     i32.const 1
     i32.shl
     local.tee $3
     local.get $3
     i32.const 1073741820
     i32.ge_u
     select
     local.tee $3
     i32.const 8
     local.get $2
     local.get $2
     i32.const 8
     i32.le_u
     select
     i32.const 2
     i32.shl
     local.tee $2
     local.get $2
     local.get $3
     i32.lt_u
     select
     local.tee $4
     local.get $0
     i32.load
     local.tee $3
     i32.const 20
     i32.sub
     local.tee $7
     i32.load
     i32.const -4
     i32.and
     i32.const 16
     i32.sub
     i32.le_u
     if
      local.get $7
      local.get $4
      i32.store offset=16
      local.get $3
      local.set $2
      br $__inlined_func$~lib/rt/itcms/__renew$501
     end
     local.get $4
     local.get $7
     i32.load offset=12
     call $~lib/rt/itcms/__new
     local.tee $2
     local.get $3
     local.get $4
     local.get $7
     i32.load offset=16
     local.tee $7
     local.get $4
     local.get $7
     i32.lt_u
     select
     memory.copy
    end
    local.get $2
    local.get $3
    i32.ne
    if
     local.get $0
     local.get $2
     i32.store
     local.get $0
     local.get $2
     i32.store offset=4
     local.get $0
     local.get $2
     i32.const 0
     call $~lib/rt/itcms/__link
    end
    local.get $0
    local.get $4
    i32.store offset=8
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   local.get $1
   i32.store
   local.get $0
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $5
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 36880
  i32.const 36928
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-class/EventEmitter#addListener (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/array/Array<%28i32%29=>void>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28i32%29=>void>#get:length (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<%28i32%29=>void>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 2048
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 2128
   i32.const 2048
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-class/EventEmitter#emit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $3
   i32.store
   local.get $3
   call $~lib/array/Array<%28i32%29=>void>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load
    local.tee $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    local.get $2
    call $~lib/array/Array<%28i32%29=>void>#__get
    local.tee $3
    i32.store offset=8
    local.get $3
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $1
    local.get $3
    i32.load
    call_indirect (type $1)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/testEventEmitterPattern (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 24
   memory.fill
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/object/Object#constructor
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   call $~lib/array/Array<%28i32%29=>void>#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $1
   local.get $2
   i32.store
   local.get $1
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   call $closure-class/DataProcessor#constructor
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   call $closure-class/DataProcessor#constructor
   local.tee $2
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=20
   local.get $0
   call $closure-class/DataProcessor#getProcessorClosure
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=16
   local.get $1
   local.get $3
   call $closure-class/EventEmitter#addListener
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=20
   local.get $2
   call $closure-class/DataProcessor#getProcessorClosure
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=16
   local.get $1
   local.get $3
   call $closure-class/EventEmitter#addListener
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $1
   i32.const 10
   call $closure-class/EventEmitter#emit
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $1
   i32.const 20
   call $closure-class/EventEmitter#emit
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   local.get $1
   i32.const 30
   call $closure-class/EventEmitter#emit
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   i32.load
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 336
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   local.get $2
   i32.load
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 337
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   i32.load offset=8
   i32.const 60
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 338
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   local.get $2
   i32.load offset=8
   i32.const 60
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 339
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   i32.load offset=4
   i32.const 30
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 340
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   local.get $2
   i32.load offset=4
   i32.const 30
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 341
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   local.get $0
   i32.load offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=12
   local.get $2
   i32.load offset=8
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 36880
  i32.const 36928
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-class/QueryBuilder#getSelectClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/QueryBuilder#getFromClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/QueryBuilder#getWhereClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $1
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.tee $2
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   block $__inlined_func$~lib/string/String#concat$530
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const -2
    i32.and
    local.tee $4
    local.get $3
    i32.add
    local.tee $0
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 2288
     local.set $0
     br $__inlined_func$~lib/string/String#concat$530
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store offset=4
    local.get $0
    local.get $2
    local.get $3
    memory.copy
    local.get $0
    local.get $3
    i32.add
    local.get $1
    local.get $4
    memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 36880
  i32.const 36928
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-class/QueryBuilder#getBuildClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $2
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load
  local.tee $2
  i32.store offset=12
  i32.const 2416
  local.get $2
  call $~lib/string/String.__concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 2464
  call $~lib/string/String.__concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $3
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $3
  i32.store offset=4
  local.get $2
  local.get $3
  call $~lib/string/String.__concat
  local.tee $0
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=8
  local.tee $2
  i32.store
  local.get $2
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $1
   i32.store offset=8
   i32.const 2496
   local.get $1
   call $~lib/string/String.__concat
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   local.get $1
   call $~lib/string/String.__concat
   local.tee $0
   i32.store offset=20
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-class/StateMachine#getStartClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  i32.load
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   i32.load
   i32.const 2
   i32.eq
  else
   i32.const 1
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   i32.const 1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $closure-class/StateMachine#getPauseClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  i32.load
  i32.const 1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   i32.const 2
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $closure-class/StateMachine#getStopClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   i32.const 1
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   i32.load
   i32.const 2
   i32.eq
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   i32.const 3
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $closure-class/StateMachine#getResetClosure~anonymous|0
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/testStateMachine (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 84
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 84
   memory.fill
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 21
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   call $~lib/object/Object#constructor
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.tee $2
   i32.const 0
   i32.store
   local.get $0
   local.get $4
   i32.store offset=8
   i32.const 8
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 18
   i32.store
   local.get $0
   local.get $2
   i32.store offset=4
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $1
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $1
   local.get $4
   i32.store offset=8
   i32.const 8
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 19
   i32.store
   local.get $1
   local.get $3
   i32.store offset=4
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.tee $5
   i32.const 0
   i32.store
   local.get $2
   local.get $4
   i32.store offset=8
   i32.const 8
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 20
   i32.store
   local.get $2
   local.get $5
   i32.store offset=4
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $3
   i32.const 4
   i32.add
   local.tee $6
   i32.const 0
   i32.store
   local.get $3
   local.get $4
   i32.store offset=8
   i32.const 8
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 21
   i32.store
   local.get $3
   local.get $6
   i32.store offset=4
   local.get $3
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $6
   i32.const 4
   i32.add
   local.tee $7
   i32.const 0
   i32.store
   local.get $6
   local.get $4
   i32.store offset=8
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 22
   i32.store
   local.get $4
   local.get $7
   i32.store offset=4
   local.get $4
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   if
    i32.const 0
    i32.const 1520
    i32.const 463
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 465
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=36
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 466
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=40
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   if
    i32.const 0
    i32.const 1520
    i32.const 468
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=44
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 470
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=48
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 471
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=52
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 473
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=56
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 474
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=60
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 476
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=64
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 477
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=68
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   if
    i32.const 0
    i32.const 1520
    i32.const 479
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=72
   local.get $3
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   i32.load
   call_indirect (type $3)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=76
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   if
    i32.const 0
    i32.const 1520
    i32.const 482
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=80
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $4
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 84
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 36880
  i32.const 36928
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-class/Observable#getSubscribeClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $1
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $1
  local.get $0
  call $~lib/array/Array<%28i32%29=>void>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Observable#getSetClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $3
  i32.store
  local.get $3
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $4
  i32.store
  local.get $4
  local.get $0
  i32.store
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.load offset=4
   local.tee $4
   i32.store
   local.get $4
   call $~lib/array/Array<%28i32%29=>void>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=4
    local.tee $4
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $4
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $4
    local.get $2
    call $~lib/array/Array<%28i32%29=>void>#__get
    local.tee $4
    i32.store offset=8
    local.get $4
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $3
    local.get $0
    local.get $4
    i32.load
    call_indirect (type $4)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/ObserverState#getCountObserver~anonymous|0 (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.load
  i32.const 1
  i32.add
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/ObserverState#getDiffObserver~anonymous|0 (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $3
  i32.load offset=4
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.load offset=4
  local.tee $3
  i32.store offset=4
  local.get $2
  local.get $3
  i32.load offset=4
  local.get $1
  local.get $0
  i32.sub
  i32.add
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/testObservable (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 56
   memory.fill
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 23
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 24
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $1
   local.get $3
   i32.store
   local.get $1
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 32
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $0
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $0
   local.get $2
   i32.store offset=8
   i32.const 8
   i32.const 25
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.const 23
   i32.store
   local.get $0
   local.get $3
   i32.store offset=4
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $1
   i32.const 4
   i32.add
   local.tee $4
   i32.const 0
   i32.store
   local.get $1
   local.get $2
   i32.store offset=8
   i32.const 8
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 24
   i32.store
   local.get $1
   local.get $4
   i32.store offset=4
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $4
   i32.const 4
   i32.add
   local.tee $5
   i32.const 0
   i32.store
   local.get $4
   local.get $2
   i32.store offset=8
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 25
   i32.store
   local.get $2
   local.get $5
   i32.store offset=4
   local.get $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 26
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   call $~lib/object/Object#constructor
   local.tee $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $3
   i32.const 4
   i32.add
   local.tee $5
   i32.const 0
   i32.store
   local.get $3
   local.get $4
   i32.store offset=8
   i32.const 8
   i32.const 27
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 26
   i32.store
   local.get $3
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=24
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   local.get $0
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $3
   i32.const 4
   i32.add
   local.tee $5
   i32.const 0
   i32.store
   local.get $3
   local.get $4
   i32.store offset=8
   i32.const 8
   i32.const 27
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.const 27
   i32.store
   local.get $3
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=32
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $3
   local.get $0
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=36
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 10
   local.get $1
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=40
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 25
   local.get $1
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=44
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 20
   local.get $1
   i32.load
   call_indirect (type $1)
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   i32.const 20
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 556
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.load
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 557
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.load offset=4
   i32.const 20
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 558
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=52
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.load
   i32.add
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.load offset=4
   i32.add
   global.get $~lib/memory/__stack_pointer
   i32.const 56
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 36880
  i32.const 36928
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-class/Box#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.const 28
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $closure-class/Box#getMapClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $2
  i32.load offset=4
  local.tee $1
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load offset=4
  local.tee $2
  i32.store offset=8
  local.get $2
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $1
  local.get $2
  local.get $0
  i32.load
  call_indirect (type $2)
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Box#getFlatMapClosure~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  local.get $1
  i32.load
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  global.set $~lib/__closure_env
  local.get $0
  i32.load
  call_indirect (type $2)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/ChainableCounter#getAddClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $0
  i32.store offset=4
  local.get $2
  local.get $0
  i32.load
  local.get $1
  i32.load offset=8
  i32.add
  i32.store
  local.get $1
  i32.load offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/ChainableCounter#getMultiplyClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $0
  i32.store offset=4
  local.get $2
  local.get $0
  i32.load
  local.get $1
  i32.load offset=8
  i32.mul
  i32.store
  local.get $1
  i32.load offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Task#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 35
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  call $~lib/array/Array<%28i32%29=>void>#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-class/Task#getThenClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $2
  i32.load8_u
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   i32.load offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $1)
  else
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=8
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $1
   local.get $0
   call $~lib/array/Array<%28i32%29=>void>#push
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Task#getCompleteClosure~anonymous|0 (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $3
  i32.store
  local.get $3
  i32.const 1
  i32.store8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $3
  i32.store
  local.get $3
  local.get $0
  i32.store offset=4
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=8
   local.tee $3
   i32.store
   local.get $3
   call $~lib/array/Array<%28i32%29=>void>#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load offset=4
    local.tee $3
    i32.store offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=8
    local.tee $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $3
    local.get $2
    call $~lib/array/Array<%28i32%29=>void>#__get
    local.tee $3
    i32.store offset=8
    local.get $3
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $0
    local.get $3
    i32.load
    call_indirect (type $1)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Resource#getAcquireClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  i32.load8_u
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   i32.const 1
   i32.store8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $closure-class/Resource#getReleaseClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  i32.load8_u
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   i32.const 0
   i32.store8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $closure-class/Resource#getUseClosure~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $2
  i32.store
  local.get $2
  i32.load8_u
  if
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load offset=4
   local.tee $1
   i32.store offset=4
   local.get $2
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.add
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $0
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $0
   i32.load
   call_indirect (type $0)
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const -1
 )
 (func $closure-class/Resource#getUseCount (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/testResourceManagement (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 56
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 56
   memory.fill
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 37
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   call $~lib/object/Object#constructor
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $1
   i32.const 4
   i32.add
   local.tee $3
   i32.const 0
   i32.store
   local.get $1
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.const 41
   i32.store
   local.get $1
   local.get $3
   i32.store offset=4
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $2
   i32.const 4
   i32.add
   local.tee $4
   i32.const 0
   i32.store
   local.get $2
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.const 42
   i32.store
   local.get $2
   local.get $4
   i32.store offset=4
   local.get $2
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   i32.const 8
   call $~lib/rt/tlsf/allocateBlock
   local.tee $4
   i32.const 4
   i32.add
   local.tee $5
   i32.const 0
   i32.store
   local.get $4
   local.get $0
   i32.store offset=8
   i32.const 8
   i32.const 38
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.const 43
   i32.store
   local.get $4
   local.get $5
   i32.store offset=4
   local.get $4
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 3648
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=20
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3648
   local.get $4
   i32.load
   call_indirect (type $2)
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 792
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=24
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 795
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=28
   local.get $1
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $1
   i32.load
   call_indirect (type $0)
   if
    i32.const 0
    i32.const 1520
    i32.const 796
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 3680
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=32
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3680
   local.get $4
   i32.load
   call_indirect (type $2)
   i32.const 10
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 799
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 3712
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=36
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3712
   local.get $4
   i32.load
   call_indirect (type $2)
   i32.const 20
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 800
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 3744
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=40
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3744
   local.get $4
   i32.load
   call_indirect (type $2)
   i32.const 30
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 801
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $closure-class/Resource#getUseCount
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 803
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=44
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   i32.eqz
   if
    i32.const 0
    i32.const 1520
    i32.const 806
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=48
   local.get $2
   i32.load offset=4
   global.set $~lib/__closure_env
   local.get $2
   i32.load
   call_indirect (type $0)
   if
    i32.const 0
    i32.const 1520
    i32.const 807
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 3776
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=52
   local.get $4
   i32.load offset=4
   global.set $~lib/__closure_env
   i32.const 3776
   local.get $4
   i32.load
   call_indirect (type $2)
   i32.const -1
   i32.ne
   if
    i32.const 0
    i32.const 1520
    i32.const 810
    i32.const 3
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   call $closure-class/Resource#getUseCount
   global.get $~lib/memory/__stack_pointer
   i32.const 56
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 36880
  i32.const 36928
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-class/TreeNode#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 39
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4092
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 40
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=12
   local.get $1
   local.get $3
   i32.store
   local.get $1
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 32
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $1
   i32.const 0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $2
   local.get $1
   i32.store offset=4
   local.get $2
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 36880
  i32.const 36928
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $closure-class/TreeNode#addChild (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/array/Array<%28i32%29=>void>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/TreeNode#getSumClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $2
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.load
  local.set $0
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load offset=4
   local.tee $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=4
   local.tee $3
   i32.store
   local.get $3
   call $~lib/array/Array<%28i32%29=>void>#get:length
   local.get $1
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.load offset=4
    local.tee $4
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.load offset=4
    local.tee $4
    i32.store offset=4
    local.get $4
    local.get $1
    call $~lib/array/Array<%28i32%29=>void>#__get
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store
    local.get $4
    call $closure-class/TreeNode#getSumClosure
    local.tee $3
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store offset=16
    local.get $3
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $3
    i32.load
    call_indirect (type $0)
    local.get $0
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $closure-class/TreeNode#getDepthClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $3
  i32.load offset=4
  local.tee $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  call $~lib/array/Array<%28i32%29=>void>#get:length
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=4
   local.tee $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   call $~lib/array/Array<%28i32%29=>void>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.load offset=4
    local.tee $0
    i32.store offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.load offset=4
    local.tee $0
    i32.store offset=4
    local.get $0
    local.get $4
    call $~lib/array/Array<%28i32%29=>void>#__get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    call $closure-class/TreeNode#getDepthClosure
    local.tee $0
    i32.store offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=16
    local.get $0
    i32.load offset=4
    global.set $~lib/__closure_env
    local.get $1
    local.get $0
    i32.load
    call_indirect (type $0)
    local.tee $0
    i32.lt_s
    if
     local.get $0
     local.set $1
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  i32.const 1
  i32.add
 )
 (func $closure-class/Range#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.const 41
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $closure-class/Range#getHasNextClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  i32.load offset=8
  i32.const 0
  i32.gt_s
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.lt_s
  else
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $1
   i32.store
   local.get $1
   i32.load
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.gt_s
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $closure-class/Range#getNextClosure~anonymous|0 (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/__closure_env
  local.tee $1
  i32.load offset=4
  local.tee $0
  i32.store
  local.get $0
  i32.load
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $3
  i32.store offset=4
  local.get $3
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  local.get $0
  local.get $3
  local.get $1
  i32.load offset=8
  i32.add
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4092
  i32.lt_s
  if
   i32.const 36880
   i32.const 36928
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
)
