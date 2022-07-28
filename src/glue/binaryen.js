/**
 * @fileoverview Binaryen glue code for JavaScript.
 * @license Apache-2.0
 */

import binaryen from "../../lib/binaryen.js";

export const {
  _BinaryenTypeCreate,
  _BinaryenTypeArity,
  _BinaryenTypeExpand,

  _BinaryenTypeFuncref,
  _BinaryenTypeExternref,
  _BinaryenTypeAnyref,
  _BinaryenTypeEqref,
  _BinaryenTypeI31ref,
  _BinaryenTypeDataref,
  _BinaryenTypeStringref,
  _BinaryenTypeStringviewWTF8,
  _BinaryenTypeStringviewWTF16,
  _BinaryenTypeStringviewIter,

  _BinaryenModuleCreate,
  _BinaryenModuleDispose,

  _BinaryenSizeofLiteral,
  _BinaryenLiteralInt32,
  _BinaryenLiteralInt64,
  _BinaryenLiteralFloat32,
  _BinaryenLiteralFloat64,
  _BinaryenLiteralVec128,
  _BinaryenLiteralFloat32Bits,
  _BinaryenLiteralFloat64Bits,

  _BinaryenExpressionGetId,
  _BinaryenExpressionGetType,
  _BinaryenExpressionSetType,
  _BinaryenExpressionPrint,
  _BinaryenExpressionCopy,
  _BinaryenExpressionFinalize,

  _BinaryenBlock,
  _BinaryenBlockGetName,
  _BinaryenBlockSetName,
  _BinaryenBlockGetNumChildren,
  _BinaryenBlockGetChildAt,
  _BinaryenBlockSetChildAt,
  _BinaryenBlockAppendChild,
  _BinaryenBlockInsertChildAt,
  _BinaryenBlockRemoveChildAt,

  _BinaryenIf,
  _BinaryenIfGetCondition,
  _BinaryenIfSetCondition,
  _BinaryenIfGetIfTrue,
  _BinaryenIfSetIfTrue,
  _BinaryenIfGetIfFalse,
  _BinaryenIfSetIfFalse,

  _BinaryenLoop,
  _BinaryenLoopGetName,
  _BinaryenLoopSetName,
  _BinaryenLoopGetBody,
  _BinaryenLoopSetBody,

  _BinaryenBreak,
  _BinaryenBreakGetName,
  _BinaryenBreakSetName,
  _BinaryenBreakGetCondition,
  _BinaryenBreakSetCondition,
  _BinaryenBreakGetValue,
  _BinaryenBreakSetValue,

  _BinaryenSwitch,
  _BinaryenSwitchGetNumNames,
  _BinaryenSwitchGetNameAt,
  _BinaryenSwitchSetNameAt,
  _BinaryenSwitchAppendName,
  _BinaryenSwitchInsertNameAt,
  _BinaryenSwitchRemoveNameAt,
  _BinaryenSwitchGetDefaultName,
  _BinaryenSwitchSetDefaultName,
  _BinaryenSwitchGetCondition,
  _BinaryenSwitchSetCondition,
  _BinaryenSwitchGetValue,
  _BinaryenSwitchSetValue,

  _BinaryenCall,
  _BinaryenCallGetTarget,
  _BinaryenCallSetTarget,
  _BinaryenCallGetNumOperands,
  _BinaryenCallGetOperandAt,
  _BinaryenCallSetOperandAt,
  _BinaryenCallAppendOperand,
  _BinaryenCallInsertOperandAt,
  _BinaryenCallRemoveOperandAt,
  _BinaryenCallIsReturn,
  _BinaryenCallSetReturn,
  _BinaryenReturnCall,

  _BinaryenCallIndirect,
  _BinaryenCallIndirectGetTable,
  _BinaryenCallIndirectSetTable,
  _BinaryenCallIndirectGetTarget,
  _BinaryenCallIndirectSetTarget,
  _BinaryenCallIndirectGetNumOperands,
  _BinaryenCallIndirectGetOperandAt,
  _BinaryenCallIndirectSetOperandAt,
  _BinaryenCallIndirectAppendOperand,
  _BinaryenCallIndirectInsertOperandAt,
  _BinaryenCallIndirectRemoveOperandAt,
  _BinaryenCallIndirectIsReturn,
  _BinaryenCallIndirectSetReturn,
  _BinaryenReturnCallIndirect,

  _BinaryenLocalGet,
  _BinaryenLocalGetGetIndex,
  _BinaryenLocalGetSetIndex,

  _BinaryenLocalSet,
  _BinaryenLocalSetIsTee,
  _BinaryenLocalSetGetIndex,
  _BinaryenLocalSetSetIndex,
  _BinaryenLocalSetGetValue,
  _BinaryenLocalSetSetValue,
  _BinaryenLocalTee,

  _BinaryenGlobalGet,
  _BinaryenGlobalGetGetName,
  _BinaryenGlobalGetSetName,

  _BinaryenGlobalSet,
  _BinaryenGlobalSetGetName,
  _BinaryenGlobalSetSetName,
  _BinaryenGlobalSetGetValue,
  _BinaryenGlobalSetSetValue,

  _BinaryenMemorySize,

  _BinaryenMemoryGrow,
  _BinaryenMemoryGrowGetDelta,
  _BinaryenMemoryGrowSetDelta,

  _BinaryenLoad,
  _BinaryenLoadIsAtomic,
  _BinaryenLoadSetAtomic,
  _BinaryenLoadIsSigned,
  _BinaryenLoadSetSigned,
  _BinaryenLoadGetOffset,
  _BinaryenLoadSetOffset,
  _BinaryenLoadGetBytes,
  _BinaryenLoadSetBytes,
  _BinaryenLoadGetAlign,
  _BinaryenLoadSetAlign,
  _BinaryenLoadGetPtr,
  _BinaryenLoadSetPtr,
  _BinaryenAtomicLoad,

  _BinaryenStore,
  _BinaryenStoreIsAtomic,
  _BinaryenStoreSetAtomic,
  _BinaryenStoreGetBytes,
  _BinaryenStoreSetBytes,
  _BinaryenStoreGetOffset,
  _BinaryenStoreSetOffset,
  _BinaryenStoreGetAlign,
  _BinaryenStoreSetAlign,
  _BinaryenStoreGetPtr,
  _BinaryenStoreSetPtr,
  _BinaryenStoreGetValue,
  _BinaryenStoreSetValue,
  _BinaryenStoreGetValueType,
  _BinaryenStoreSetValueType,
  _BinaryenAtomicStore,

  _BinaryenConst,
  _BinaryenConstGetValueI32,
  _BinaryenConstSetValueI32,
  _BinaryenConstGetValueI64Low,
  _BinaryenConstSetValueI64Low,
  _BinaryenConstGetValueI64High,
  _BinaryenConstSetValueI64High,
  _BinaryenConstGetValueF32,
  _BinaryenConstSetValueF32,
  _BinaryenConstGetValueF64,
  _BinaryenConstSetValueF64,
  _BinaryenConstGetValueV128,
  _BinaryenConstSetValueV128,

  _BinaryenUnary,
  _BinaryenUnaryGetOp,
  _BinaryenUnarySetOp,
  _BinaryenUnaryGetValue,
  _BinaryenUnarySetValue,

  _BinaryenBinary,
  _BinaryenBinaryGetOp,
  _BinaryenBinarySetOp,
  _BinaryenBinaryGetLeft,
  _BinaryenBinarySetLeft,
  _BinaryenBinaryGetRight,
  _BinaryenBinarySetRight,

  _BinaryenSelect,
  _BinaryenSelectGetIfTrue,
  _BinaryenSelectSetIfTrue,
  _BinaryenSelectGetIfFalse,
  _BinaryenSelectSetIfFalse,
  _BinaryenSelectGetCondition,
  _BinaryenSelectSetCondition,

  _BinaryenDrop,
  _BinaryenDropGetValue,
  _BinaryenDropSetValue,

  _BinaryenReturn,
  _BinaryenReturnGetValue,
  _BinaryenReturnSetValue,

  _BinaryenNop,

  _BinaryenUnreachable,

  _BinaryenAtomicRMW,
  _BinaryenAtomicRMWGetOp,
  _BinaryenAtomicRMWSetOp,
  _BinaryenAtomicRMWGetBytes,
  _BinaryenAtomicRMWSetBytes,
  _BinaryenAtomicRMWGetOffset,
  _BinaryenAtomicRMWSetOffset,
  _BinaryenAtomicRMWGetPtr,
  _BinaryenAtomicRMWSetPtr,
  _BinaryenAtomicRMWGetValue,
  _BinaryenAtomicRMWSetValue,

  _BinaryenAtomicCmpxchg,
  _BinaryenAtomicCmpxchgGetBytes,
  _BinaryenAtomicCmpxchgSetBytes,
  _BinaryenAtomicCmpxchgGetOffset,
  _BinaryenAtomicCmpxchgSetOffset,
  _BinaryenAtomicCmpxchgGetPtr,
  _BinaryenAtomicCmpxchgSetPtr,
  _BinaryenAtomicCmpxchgGetExpected,
  _BinaryenAtomicCmpxchgSetExpected,
  _BinaryenAtomicCmpxchgGetReplacement,
  _BinaryenAtomicCmpxchgSetReplacement,

  _BinaryenAtomicWait,
  _BinaryenAtomicWaitGetPtr,
  _BinaryenAtomicWaitSetPtr,
  _BinaryenAtomicWaitGetExpected,
  _BinaryenAtomicWaitSetExpected,
  _BinaryenAtomicWaitGetTimeout,
  _BinaryenAtomicWaitSetTimeout,
  _BinaryenAtomicWaitGetExpectedType,
  _BinaryenAtomicWaitSetExpectedType,

  _BinaryenAtomicNotify,
  _BinaryenAtomicNotifyGetPtr,
  _BinaryenAtomicNotifySetPtr,
  _BinaryenAtomicNotifyGetNotifyCount,
  _BinaryenAtomicNotifySetNotifyCount,

  _BinaryenAtomicFence,
  _BinaryenAtomicFenceGetOrder,
  _BinaryenAtomicFenceSetOrder,

  _BinaryenSIMDExtract,
  _BinaryenSIMDExtractGetOp,
  _BinaryenSIMDExtractSetOp,
  _BinaryenSIMDExtractGetVec,
  _BinaryenSIMDExtractSetVec,
  _BinaryenSIMDExtractGetIndex,
  _BinaryenSIMDExtractSetIndex,

  _BinaryenSIMDReplace,
  _BinaryenSIMDReplaceGetOp,
  _BinaryenSIMDReplaceSetOp,
  _BinaryenSIMDReplaceGetVec,
  _BinaryenSIMDReplaceSetVec,
  _BinaryenSIMDReplaceGetIndex,
  _BinaryenSIMDReplaceSetIndex,
  _BinaryenSIMDReplaceGetValue,
  _BinaryenSIMDReplaceSetValue,

  _BinaryenSIMDShuffle,
  _BinaryenSIMDShuffleGetLeft,
  _BinaryenSIMDShuffleSetLeft,
  _BinaryenSIMDShuffleGetRight,
  _BinaryenSIMDShuffleSetRight,
  _BinaryenSIMDShuffleGetMask,
  _BinaryenSIMDShuffleSetMask,

  _BinaryenSIMDTernary,
  _BinaryenSIMDTernaryGetOp,
  _BinaryenSIMDTernarySetOp,
  _BinaryenSIMDTernaryGetA,
  _BinaryenSIMDTernarySetA,
  _BinaryenSIMDTernaryGetB,
  _BinaryenSIMDTernarySetB,
  _BinaryenSIMDTernaryGetC,
  _BinaryenSIMDTernarySetC,

  _BinaryenSIMDShift,
  _BinaryenSIMDShiftGetOp,
  _BinaryenSIMDShiftSetOp,
  _BinaryenSIMDShiftGetVec,
  _BinaryenSIMDShiftSetVec,
  _BinaryenSIMDShiftGetShift,
  _BinaryenSIMDShiftSetShift,

  _BinaryenSIMDLoad,
  _BinaryenSIMDLoadGetOp,
  _BinaryenSIMDLoadSetOp,
  _BinaryenSIMDLoadGetOffset,
  _BinaryenSIMDLoadSetOffset,
  _BinaryenSIMDLoadGetAlign,
  _BinaryenSIMDLoadSetAlign,
  _BinaryenSIMDLoadGetPtr,
  _BinaryenSIMDLoadSetPtr,

  _BinaryenSIMDLoadStoreLane,
  _BinaryenSIMDLoadStoreLaneGetOp,
  _BinaryenSIMDLoadStoreLaneSetOp,
  _BinaryenSIMDLoadStoreLaneGetOffset,
  _BinaryenSIMDLoadStoreLaneSetOffset,
  _BinaryenSIMDLoadStoreLaneGetAlign,
  _BinaryenSIMDLoadStoreLaneSetAlign,
  _BinaryenSIMDLoadStoreLaneGetIndex,
  _BinaryenSIMDLoadStoreLaneSetIndex,
  _BinaryenSIMDLoadStoreLaneGetPtr,
  _BinaryenSIMDLoadStoreLaneSetPtr,
  _BinaryenSIMDLoadStoreLaneGetVec,
  _BinaryenSIMDLoadStoreLaneSetVec,
  _BinaryenSIMDLoadStoreLaneIsStore,

  _BinaryenMemoryInit,
  _BinaryenMemoryInitGetSegment,
  _BinaryenMemoryInitSetSegment,
  _BinaryenMemoryInitGetDest,
  _BinaryenMemoryInitSetDest,
  _BinaryenMemoryInitGetOffset,
  _BinaryenMemoryInitSetOffset,
  _BinaryenMemoryInitGetSize,
  _BinaryenMemoryInitSetSize,

  _BinaryenDataDrop,
  _BinaryenDataDropGetSegment,
  _BinaryenDataDropSetSegment,

  _BinaryenMemoryCopy,
  _BinaryenMemoryCopyGetDest,
  _BinaryenMemoryCopySetDest,
  _BinaryenMemoryCopyGetSource,
  _BinaryenMemoryCopySetSource,
  _BinaryenMemoryCopyGetSize,
  _BinaryenMemoryCopySetSize,

  _BinaryenMemoryFill,
  _BinaryenMemoryFillGetDest,
  _BinaryenMemoryFillSetDest,
  _BinaryenMemoryFillGetValue,
  _BinaryenMemoryFillSetValue,
  _BinaryenMemoryFillGetSize,
  _BinaryenMemoryFillSetSize,

  _BinaryenRefNull,

  _BinaryenRefIs,
  _BinaryenRefIsGetOp,
  _BinaryenRefIsSetOp,
  _BinaryenRefIsGetValue,
  _BinaryenRefIsSetValue,

  _BinaryenRefAs,
  _BinaryenRefAsGetOp,
  _BinaryenRefAsSetOp,
  _BinaryenRefAsGetValue,
  _BinaryenRefAsSetValue,

  _BinaryenRefFunc,
  _BinaryenRefFuncGetFunc,
  _BinaryenRefFuncSetFunc,

  _BinaryenRefEq,
  _BinaryenRefEqGetLeft,
  _BinaryenRefEqSetLeft,
  _BinaryenRefEqGetRight,
  _BinaryenRefEqSetRight,

  _BinaryenTableGet,
  _BinaryenTableGetGetTable,
  _BinaryenTableGetSetTable,
  _BinaryenTableGetGetIndex,
  _BinaryenTableGetSetIndex,

  _BinaryenTableSet,
  _BinaryenTableSetGetTable,
  _BinaryenTableSetSetTable,
  _BinaryenTableSetGetIndex,
  _BinaryenTableSetSetIndex,
  _BinaryenTableSetGetValue,
  _BinaryenTableSetSetValue,

  _BinaryenTableSize,
  _BinaryenTableSizeGetTable,
  _BinaryenTableSizeSetTable,

  _BinaryenTableGrow,
  _BinaryenTableGrowGetTable,
  _BinaryenTableGrowSetTable,
  _BinaryenTableGrowGetValue,
  _BinaryenTableGrowSetValue,
  _BinaryenTableGrowGetDelta,
  _BinaryenTableGrowSetDelta,

  _BinaryenTry,
  _BinaryenTryGetName,
  _BinaryenTrySetName,
  _BinaryenTryGetBody,
  _BinaryenTrySetBody,
  _BinaryenTryGetNumCatchTags,
  _BinaryenTryGetNumCatchBodies,
  _BinaryenTryGetCatchTagAt,
  _BinaryenTrySetCatchTagAt,
  _BinaryenTryAppendCatchTag,
  _BinaryenTryInsertCatchTagAt,
  _BinaryenTryRemoveCatchTagAt,
  _BinaryenTryGetCatchBodyAt,
  _BinaryenTrySetCatchBodyAt,
  _BinaryenTryAppendCatchBody,
  _BinaryenTryInsertCatchBodyAt,
  _BinaryenTryRemoveCatchBodyAt,
  _BinaryenTryHasCatchAll,
  _BinaryenTryGetDelegateTarget,
  _BinaryenTrySetDelegateTarget,
  _BinaryenTryIsDelegate,

  _BinaryenThrow,
  _BinaryenThrowGetTag,
  _BinaryenThrowSetTag,
  _BinaryenThrowGetNumOperands,
  _BinaryenThrowGetOperandAt,
  _BinaryenThrowSetOperandAt,
  _BinaryenThrowAppendOperand,
  _BinaryenThrowInsertOperandAt,
  _BinaryenThrowRemoveOperandAt,

  _BinaryenRethrow,
  _BinaryenRethrowGetTarget,
  _BinaryenRethrowSetDepth,

  _BinaryenTupleMake,
  _BinaryenTupleMakeGetNumOperands,
  _BinaryenTupleMakeGetOperandAt,
  _BinaryenTupleMakeSetOperandAt,
  _BinaryenTupleMakeAppendOperand,
  _BinaryenTupleMakeInsertOperandAt,
  _BinaryenTupleMakeRemoveOperandAt,

  _BinaryenTupleExtract,
  _BinaryenTupleExtractGetTuple,
  _BinaryenTupleExtractSetTuple,
  _BinaryenTupleExtractGetIndex,
  _BinaryenTupleExtractSetIndex,

  _BinaryenPop,

  _BinaryenI31New,
  _BinaryenI31NewGetValue,
  _BinaryenI31NewSetValue,

  _BinaryenI31Get,
  _BinaryenI31GetGetI31,
  _BinaryenI31GetSetI31,
  _BinaryenI31GetIsSigned,
  _BinaryenI31GetSetSigned,

  _BinaryenAddFunction,
  _BinaryenGetFunction,
  _BinaryenRemoveFunction,
  _BinaryenGetNumFunctions,
  _BinaryenGetFunctionByIndex,

  _BinaryenFunctionGetName,
  _BinaryenFunctionGetParams,
  _BinaryenFunctionGetResults,
  _BinaryenFunctionGetNumVars,
  _BinaryenFunctionGetVar,
  _BinaryenFunctionGetNumLocals,
  _BinaryenFunctionHasLocalName,
  _BinaryenFunctionGetLocalName,
  _BinaryenFunctionSetLocalName,
  _BinaryenFunctionGetBody,
  _BinaryenFunctionSetBody,
  _BinaryenFunctionOptimize,
  _BinaryenFunctionRunPasses,
  _BinaryenFunctionSetDebugLocation,

  _BinaryenAddFunctionImport,
  _BinaryenAddTableImport,
  _BinaryenAddMemoryImport,
  _BinaryenAddGlobalImport,
  _BinaryenAddTagImport,

  _BinaryenAddFunctionExport,
  _BinaryenAddTableExport,
  _BinaryenAddMemoryExport,
  _BinaryenAddGlobalExport,
  _BinaryenAddTagExport,
  _BinaryenGetExport,
  _BinaryenRemoveExport,
  _BinaryenGetNumExports,
  _BinaryenGetExportByIndex,
  _BinaryenExportGetKind,
  _BinaryenExportGetName,
  _BinaryenExportGetValue,

  _BinaryenAddGlobal,
  _BinaryenGetGlobal,
  _BinaryenRemoveGlobal,
  _BinaryenGetNumGlobals,
  _BinaryenGetGlobalByIndex,

  _BinaryenGlobalGetName,
  _BinaryenGlobalGetType,
  _BinaryenGlobalIsMutable,
  _BinaryenGlobalGetInitExpr,

  _BinaryenAddTag,
  _BinaryenGetTag,
  _BinaryenRemoveTag,

  _BinaryenTagGetName,
  _BinaryenTagGetParams,
  _BinaryenTagGetResults,

  _BinaryenAddTable,
  _BinaryenRemoveTable,
  _BinaryenGetNumTables,
  _BinaryenGetTable,
  _BinaryenGetTableByIndex,

  _BinaryenTableGetName,
  _BinaryenTableSetName,
  _BinaryenTableGetInitial,
  _BinaryenTableSetInitial,
  _BinaryenTableHasMax,
  _BinaryenTableGetMax,
  _BinaryenTableSetMax,

  _BinaryenAddActiveElementSegment,
  _BinaryenAddPassiveElementSegment,
  _BinaryenRemoveElementSegment,
  _BinaryenGetNumElementSegments,
  _BinaryenGetElementSegment,
  _BinaryenGetElementSegmentByIndex,

  _BinaryenSetMemory,
  _BinaryenGetNumMemorySegments,
  _BinaryenGetMemorySegmentByteOffset,
  _BinaryenGetMemorySegmentByteLength,
  _BinaryenCopyMemorySegmentData,

  _BinaryenSetStart,

  _BinaryenModuleParse,
  _BinaryenModulePrint,
  _BinaryenModulePrintAsmjs,
  _BinaryenModuleValidate,
  _BinaryenModuleOptimize,
  _BinaryenModuleRunPasses,
  _BinaryenModuleAutoDrop,
  _BinaryenModuleAllocateAndWrite,
  _BinaryenModuleAllocateAndWriteText,
  _BinaryenModuleAllocateAndWriteStackIR,
  _BinaryenModuleRead,
  _BinaryenModuleInterpret,
  _BinaryenModuleAddDebugInfoFileName,
  _BinaryenModuleGetDebugInfoFileName,
  _BinaryenModuleGetFeatures,
  _BinaryenModuleSetFeatures,

  _BinaryenAddCustomSection,

  _BinaryenExpressionGetSideEffects,

  _RelooperCreate,
  _RelooperAddBlock,
  _RelooperAddBranch,
  _RelooperAddBlockWithSwitch,
  _RelooperAddBranchForSwitch,
  _RelooperRenderAndDispose,

  _ExpressionRunnerCreate,
  _ExpressionRunnerSetLocalValue,
  _ExpressionRunnerSetGlobalValue,
  _ExpressionRunnerRunAndDispose,

  _BinaryenGetOptimizeLevel,
  _BinaryenSetOptimizeLevel,
  _BinaryenGetShrinkLevel,
  _BinaryenSetShrinkLevel,
  _BinaryenGetDebugInfo,
  _BinaryenSetDebugInfo,
  _BinaryenGetLowMemoryUnused,
  _BinaryenSetLowMemoryUnused,
  _BinaryenGetZeroFilledMemory,
  _BinaryenSetZeroFilledMemory,
  _BinaryenGetFastMath,
  _BinaryenSetFastMath,
  _BinaryenGetPassArgument,
  _BinaryenSetPassArgument,
  _BinaryenClearPassArguments,
  _BinaryenGetAlwaysInlineMaxSize,
  _BinaryenSetAlwaysInlineMaxSize,
  _BinaryenGetFlexibleInlineMaxSize,
  _BinaryenSetFlexibleInlineMaxSize,
  _BinaryenGetOneCallerInlineMaxSize,
  _BinaryenSetOneCallerInlineMaxSize,
  _BinaryenGetAllowInliningFunctionsWithLoops,
  _BinaryenSetAllowInliningFunctionsWithLoops,

  // Helpers

  _malloc,
  _free,
  __i32_store8,
  __i32_store16,
  __i32_store,
  __f32_store,
  __f64_store,
  __i32_load8_s,
  __i32_load8_u,
  __i32_load16_s,
  __i32_load16_u,
  __i32_load,
  __f32_load,
  __f64_load

} = binaryen;

export default binaryen;
