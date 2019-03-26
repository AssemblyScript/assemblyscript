// TBD: managed reference handling makes this cumbersome, and there is a binaryen pass that can
// help propagating constant offsets. ideally, using operator overloads would be enough because
// it's the most flexible way to do this.

// import { Compiler, ConversionKind, WrapMode } from "../compiler";
// import { Class, ElementKind, Field, Local } from "../program";
// import { Expression } from "../ast";
// import { Type, TypeFlags } from "../types";
// import { ExpressionRef, getExpressionId, getBinaryOp, getBinaryLeft, getBinaryRight, getConstValueI32, ExpressionId, BinaryOp, NativeType, UnaryOp } from "../module";
// import { BuiltinSymbols } from "../builtins";

// export function makeArrayGet(
//   compiler: Compiler,
//   target: Class,
//   thisExpression: Expression,
//   elementExpression: Expression,
//   contextualType: Type
// ): ExpressionRef {
//   var type = assert(compiler.program.determineBuiltinArrayType(target));
//   var module = compiler.module;
//   var outType = (
//     type.is(TypeFlags.INTEGER) &&
//     contextualType.is(TypeFlags.INTEGER) &&
//     contextualType.size > type.size
//   ) ? contextualType : type;

//   var dataStart = assert(target.lookupInSelf("dataStart"));
//   assert(dataStart.kind == ElementKind.FIELD);
//   var dataLength = assert(target.lookupInSelf("dataLength"));
//   assert(dataLength.kind == ElementKind.FIELD);

//   // compile the index expression and shift it to become the actual byteOffset
//   var dynamicOffset = compiler.compileExpression(
//     elementExpression,
//     Type.i32,
//     ConversionKind.IMPLICIT,
//     WrapMode.NONE
//   );
//   var alignLog2 = type.alignLog2;
//   if (alignLog2) {
//     dynamicOffset = module.createBinary(BinaryOp.ShlI32,
//       dynamicOffset,
//       module.createI32(alignLog2)
//     );
//   }

//   var usizeType = compiler.options.usizeType;
//   var nativeSizeType = compiler.options.nativeSizeType;
//   var ptrExpr: ExpressionRef;
//   var constantOffset: i32 = 0;

//   // precompute byteOffset into a constant and a dynamic part
//   dynamicOffset = module.precomputeExpression(dynamicOffset);
//   if (getExpressionId(dynamicOffset) == ExpressionId.Const) {
//     constantOffset = getConstValueI32(dynamicOffset);
//     dynamicOffset = 0;
//   } else if (getExpressionId(dynamicOffset) == ExpressionId.Binary) {
//     if (getBinaryOp(dynamicOffset) == BinaryOp.AddI32) {
//       let left = getBinaryLeft(dynamicOffset);
//       let right = getBinaryRight(dynamicOffset);
//       if (getExpressionId(left) == ExpressionId.Const) {
//         constantOffset = getConstValueI32(left);
//         dynamicOffset = right;
//       } else if (getExpressionId(right) == ExpressionId.Const) {
//         constantOffset = getConstValueI32(right);
//         dynamicOffset = left;
//       }
//     }
//   }
//   // ptr = this.dataStart
//   ptrExpr = module.createLoad(usizeType.byteSize, true,
//     compiler.compileExpression(
//       thisExpression,
//       target.type,
//       ConversionKind.IMPLICIT,
//       WrapMode.NONE
//     ),
//     nativeSizeType, (<Field>dataStart).memoryOffset
//   );
//   // ptr = ptr + <usize>dynamicOffset
//   if (dynamicOffset) {
//     if (nativeSizeType == NativeType.I64) {
//       ptrExpr = module.createBinary(BinaryOp.AddI64,
//         ptrExpr,
//         module.createUnary(UnaryOp.ExtendU32, dynamicOffset)
//       );
//     } else {
//       ptrExpr = module.createBinary(BinaryOp.AddI32,
//         ptrExpr,
//         dynamicOffset
//       );
//     }
//   }

//   compiler.currentType = outType;
//   return module.createLoad(
//     type.byteSize,
//     type.is(TypeFlags.SIGNED),
//     ptrExpr,
//     outType.toNativeType(),
//     constantOffset
//   );
// }

// export function makeArraySet(
//   compiler: Compiler,
//   target: Class,
//   thisExpression: Expression,
//   elementExpression: Expression,
//   valueExpression: Expression,
//   contextualType: Type
// ): ExpressionRef {
//   var type = assert(compiler.program.determineBuiltinArrayType(target));
//   return makeArraySetWithValue(
//     compiler,
//     target,
//     thisExpression,
//     elementExpression,
//     compiler.compileExpression(
//       valueExpression,
//       type.is(TypeFlags.INTEGER | TypeFlags.VALUE)
//         ? type.is(TypeFlags.LONG)
//           ? type.is(TypeFlags.SIGNED)
//             ? Type.i64
//             : Type.u64
//           : type.is(TypeFlags.SIGNED)
//             ? Type.i32
//             : Type.u32
//         : type,
//       ConversionKind.IMPLICIT,
//       WrapMode.NONE
//     ),
//     contextualType != Type.void
//   );
// }

// export function makeArraySetWithValue(
//   compiler: Compiler,
//   target: Class,
//   thisExpression: Expression,
//   elementExpression: Expression,
//   valueExpr: ExpressionRef,
//   tee: bool
// ): ExpressionRef {
//   var type = assert(compiler.program.determineBuiltinArrayType(target));
//   var module = compiler.module;

//   var dataStart = assert(target.lookupInSelf("dataStart"));
//   assert(dataStart.kind == ElementKind.FIELD);
//   var dataLength = assert(target.lookupInSelf("dataLength"));
//   assert(dataLength.kind == ElementKind.FIELD);

//   var constantOffset: i32 = 0;
//   var dynamicOffset = module.precomputeExpression(
//     compiler.compileExpression(
//       elementExpression,
//       Type.i32,
//       ConversionKind.IMPLICIT,
//       WrapMode.NONE
//     )
//   );
//   if (getExpressionId(dynamicOffset) == ExpressionId.Const) {
//     constantOffset = getConstValueI32(dynamicOffset);
//     dynamicOffset = 0;
//   } else if (getExpressionId(dynamicOffset) == ExpressionId.Binary) {
//     if (getBinaryOp(dynamicOffset) == BinaryOp.AddI32) {
//       let left = getBinaryLeft(dynamicOffset);
//       let right = getBinaryRight(dynamicOffset);
//       if (getExpressionId(left) == ExpressionId.Const) {
//         constantOffset = getConstValueI32(left);
//         dynamicOffset = right;
//       } else if (getExpressionId(right) == ExpressionId.Const) {
//         constantOffset = getConstValueI32(right);
//         dynamicOffset = left;
//       }
//     }
//   }

//   var program = compiler.program;
//   var isManaged = type.isManaged(program) && target.type.isManaged(program);
//   var usizeType = compiler.options.usizeType;
//   var nativeSizeType = compiler.options.nativeSizeType;
//   var thisExpr = compiler.compileExpression(
//     thisExpression,
//     target.type,
//     ConversionKind.IMPLICIT,
//     WrapMode.NONE
//   );
//   var tempThis: Local | null = null;
//   if (isManaged) {
//     tempThis = compiler.currentFlow.getTempLocal(target.type, false);
//     thisExpr = module.createTeeLocal(tempThis.index, thisExpr);
//   }
//   var dataStartExpr = module.createLoad(usizeType.byteSize, true,
//     thisExpr, nativeSizeType, (<Field>dataStart).memoryOffset
//   );

//   var typeAlignLog2 = type.alignLog2;
//   constantOffset <<= typeAlignLog2;
//   if (dynamicOffset) {
//     if (typeAlignLog2) {
//       dynamicOffset = module.createBinary(BinaryOp.ShlI32,
//         dynamicOffset,
//         module.createI32(typeAlignLog2)
//       );
//     }
//     if (nativeSizeType == NativeType.I64) {
//       dataStartExpr = module.createBinary(BinaryOp.AddI64,
//         dataStartExpr,
//         module.createUnary(UnaryOp.ExtendU32, dynamicOffset)
//       );
//     } else {
//       dataStartExpr = module.createBinary(BinaryOp.AddI32,
//         dataStartExpr,
//         dynamicOffset
//       );
//     }
//   }

//   // handle Array<Ref>: value = RETAIN<T, TArray>(value, this)
//   if (isManaged) {
//     let program = compiler.program;
//     let retainInstance = compiler.resolver.resolveFunction(assert(program.retainPrototype), [ type, target.type ]);
//     if (!retainInstance) return module.createUnreachable();
//     valueExpr = compiler.makeCallInlinePrechecked(retainInstance, [
//       valueExpr,
//       module.createGetLocal(assert(tempThis).index, nativeSizeType)
//     ], 0, true);

//   // handle Uint8ClampedArray: value = ~(value >> 31) & (((255 - value) >> 31) | value)
//   } else if (target.internalName == BuiltinSymbols.Uint8ClampedArray) {
//     let tempLocal = compiler.currentFlow.getAndFreeTempLocal(Type.i32, true);
//     valueExpr = module.createBinary(BinaryOp.AndI32,
//       module.createBinary(BinaryOp.XorI32,
//         module.createBinary(BinaryOp.ShrI32,
//           module.createTeeLocal(tempLocal.index, valueExpr),
//           module.createI32(31)
//         ),
//         module.createI32(-1)
//       ),
//       module.createBinary(BinaryOp.OrI32,
//         module.createBinary(BinaryOp.ShrI32,
//           module.createBinary(BinaryOp.SubI32,
//             module.createI32(255),
//             module.createGetLocal(tempLocal.index, NativeType.I32)
//           ),
//           module.createI32(31)
//         ),
//         module.createGetLocal(tempLocal.index, NativeType.I32)
//       )
//     );
//   }
//   assert(!tempThis);

//   var nativeType = type.toNativeType();

//   if (!tee) {
//     compiler.currentType = Type.void;
//     return module.createStore(
//       type.byteSize,
//       dataStartExpr,
//       valueExpr,
//       nativeType,
//       constantOffset
//     );
//   } else {
//     let flow = compiler.currentFlow;
//     let tempLocal = flow.getAndFreeTempLocal(type, false);
//     compiler.currentType = type;
//     return module.createBlock(null, [
//       module.createStore(
//         type.byteSize,
//         dataStartExpr,
//         module.createTeeLocal(tempLocal.index, valueExpr),
//         nativeType,
//         constantOffset
//       ),
//       module.createGetLocal(tempLocal.index, nativeType)
//     ], nativeType);
//   }
// }
