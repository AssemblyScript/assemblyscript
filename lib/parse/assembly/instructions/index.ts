
import {
  Type,
  Opcode
} from "../../src/common";

import {readVaruint, readUint} from "..";


// export function parseExpr(): Instruction[] {
//   let inst = Instruction.parse();
//   let instructions: Instruction[] = [];
//   while (inst.opcode != Opcode.end && inst.opcode != Opcode.else_){
//     instructions.push(inst);
//     // inst = Instruction.parse();
//   }
//   instructions.push(inst)
//   return instructions
//
// }

export class Instruction {
  constructor(public opcode: Opcode){
  }

  static parse(): Instruction {
    let byte: u8 = changetype<u8>(readUint<u8>());
    switch(byte){
      case Opcode.unreachable:
      case Opcode.nop:
      case Opcode.block:
      case Opcode.loop:
      case Opcode.if_:
      case Opcode.else_:
      case Opcode.end:
      case Opcode.br:
      case Opcode.br_if:
      case Opcode.br_table:
      case Opcode.return_:
      case Opcode.call:
      case Opcode.call_indirect: {
        return new ControlInstruction(byte);
      }
      case Opcode.drop:
      case Opcode.select:
        return new ParametricInstruction(byte);
      case Opcode.get_local:
      case Opcode.set_local:
      case Opcode.tee_local:
      case Opcode.get_global:
      case Opcode.set_global:
        return new VariableInstruction(byte);
      case Opcode.i32_load:
      case Opcode.i64_load:
      case Opcode.f32_load:
      case Opcode.f64_load:
      case Opcode.i32_load8_s:
      case Opcode.i32_load8_u:
      case Opcode.i32_load16_s:
      case Opcode.i32_load16_u:
      case Opcode.i64_load8_s:
      case Opcode.i64_load8_u:
      case Opcode.i64_load16_s:
      case Opcode.i64_load16_u:
      case Opcode.i64_load32_s:
      case Opcode.i64_load32_u:
      case Opcode.i32_store:
      case Opcode.i64_store:
      case Opcode.f32_store:
      case Opcode.f64_store:
      case Opcode.i32_store8:
      case Opcode.i32_store16:
      case Opcode.i64_store8:
      case Opcode.i64_store16:
      case Opcode.i64_store32:
      case Opcode.current_memory:
      case Opcode.grow_memory:
        return new MemoryInstruction(byte);
      case Opcode.i32_const:
        return new I32_Const(byte);
      case Opcode.i64_const:
        return new I64_Const(byte);
      case Opcode.f32_const:
        return new F32_Const(byte);
      case Opcode.f64_const:
        return new F64_Const(byte);
      case Opcode.i32_eqz:
      case Opcode.i32_eq:
      case Opcode.i32_ne:
      case Opcode.i32_lt_s:
      case Opcode.i32_lt_u:
      case Opcode.i32_gt_s:
      case Opcode.i32_gt_u:
      case Opcode.i32_le_s:
      case Opcode.i32_le_u:
      case Opcode.i32_ge_s:
      case Opcode.i32_ge_u:
      case Opcode.i64_eqz:
      case Opcode.i64_eq:
      case Opcode.i64_ne:
      case Opcode.i64_lt_s:
      case Opcode.i64_lt_u:
      case Opcode.i64_gt_s:
      case Opcode.i64_gt_u:
      case Opcode.i64_le_s:
      case Opcode.i64_le_u:
      case Opcode.i64_ge_s:
      case Opcode.i64_ge_u:
      case Opcode.f32_eq:
      case Opcode.f32_ne:
      case Opcode.f32_lt:
      case Opcode.f32_gt:
      case Opcode.f32_le:
      case Opcode.f32_ge:
      case Opcode.f64_eq:
      case Opcode.f64_ne:
      case Opcode.f64_lt:
      case Opcode.f64_gt:
      case Opcode.f64_le:
      case Opcode.f64_ge:
      case Opcode.i32_clz:
      case Opcode.i32_ctz:
      case Opcode.i32_popcnt:
      case Opcode.i32_add:
      case Opcode.i32_sub:
      case Opcode.i32_mul:
      case Opcode.i32_div_s:
      case Opcode.i32_div_u:
      case Opcode.i32_rem_s:
      case Opcode.i32_rem_u:
      case Opcode.i32_and:
      case Opcode.i32_or:
      case Opcode.i32_xor:
      case Opcode.i32_shl:
      case Opcode.i32_shr_s:
      case Opcode.i32_shr_u:
      case Opcode.i32_rotl:
      case Opcode.i32_rotr:
      case Opcode.i64_clz:
      case Opcode.i64_ctz:
      case Opcode.i64_popcnt:
      case Opcode.i64_add:
      case Opcode.i64_sub:
      case Opcode.i64_mul:
      case Opcode.i64_div_s:
      case Opcode.i64_div_u:
      case Opcode.i64_rem_s:
      case Opcode.i64_rem_u:
      case Opcode.i64_and:
      case Opcode.i64_or:
      case Opcode.i64_xor:
      case Opcode.i64_shl:
      case Opcode.i64_shr_s:
      case Opcode.i64_shr_u:
      case Opcode.i64_rotl:
      case Opcode.i64_rotr:
      case Opcode.f32_abs:
      case Opcode.f32_neg:
      case Opcode.f32_ceil:
      case Opcode.f32_floor:
      case Opcode.f32_trunc:
      case Opcode.f32_nearest:
      case Opcode.f32_sqrt:
      case Opcode.f32_add:
      case Opcode.f32_sub:
      case Opcode.f32_mul:
      case Opcode.f32_div:
      case Opcode.f32_min:
      case Opcode.f32_max:
      case Opcode.f32_copysign:
      case Opcode.f64_abs:
      case Opcode.f64_neg:
      case Opcode.f64_ceil:
      case Opcode.f64_floor:
      case Opcode.f64_trunc:
      case Opcode.f64_nearest:
      case Opcode.f64_sqrt:
      case Opcode.f64_add:
      case Opcode.f64_sub:
      case Opcode.f64_mul:
      case Opcode.f64_div:
      case Opcode.f64_min:
      case Opcode.f64_max:
      case Opcode.f64_copysign:
      case Opcode.i32_wrap_i64:
      case Opcode.i32_trunc_s_f32:
      case Opcode.i32_trunc_u_f32:
      case Opcode.i32_trunc_s_f64:
      case Opcode.i32_trunc_u_f64:
      case Opcode.i64_extend_s_i32:
      case Opcode.i64_extend_u_i32:
      case Opcode.i64_trunc_s_f32:
      case Opcode.i64_trunc_u_f32:
      case Opcode.i64_trunc_s_f64:
      case Opcode.i64_trunc_u_f64:
      case Opcode.f32_convert_s_i32:
      case Opcode.f32_convert_u_i32:
      case Opcode.f32_convert_s_i64:
      case Opcode.f32_convert_u_i64:
      case Opcode.f32_demote_f64:
      case Opcode.f64_convert_s_i32:
      case Opcode.f64_convert_u_i32:
      case Opcode.f64_convert_s_i64:
      case Opcode.f64_convert_u_i64:
      case Opcode.f64_promote_f32:
      case Opcode.i32_reinterpret_f32:
      case Opcode.i64_reinterpret_f64:
      case Opcode.f32_reinterpret_i32:
      case Opcode.f64_reinterpret_i64:
        return new NumericInstruction(byte);
      default:
        return new Instruction(byte);

    }

  }
}

class ControlInstruction extends Instruction{
  internalInstructions:Instruction[] = [];
  elseInstructions: Instruction[] = [];
  blockType: Type;
  isNested: bool = false;
  label: u32;
  labels: u32[] = [];
  constructor(opcode: u8){
    super(opcode);
    switch (this.opcode){
      case Opcode.unreachable:
      case Opcode.nop:
      case Opcode.return_:
        break;
      case Opcode.block:
      case Opcode.loop:{
        this.isNested = true;
        this.blockType = readUint<u8>();
        // this.internalInstructions = parseExpr();
        break;
      }
      case Opcode.if_:
      case Opcode.else_:{
        this.isNested = true;
        this.blockType = readUint<u8>();
        // this.internalInstructions = parseExpr();
        // if (this.peak().opcode == Opcode.else_){
          // this.elseInstructions = parseExpr();
        // }
        break;
      }
      case Opcode.br_table:
        let length = readVaruint(32);
        for (let i:u32 = 0; i < length; i++){
          this.labels.push(readVaruint(32));
        }
        this.label = readVaruint(32);
        break;
      case Opcode.call:
      case Opcode.call_indirect:
      case Opcode.br:
      case Opcode.br_if:
              this.label = readVaruint(32);
              break;

    }
  }

  peak(): Instruction {
    return this.internalInstructions[this.internalInstructions.length-1];
  }
}
//
class ParametricInstruction extends Instruction{

}

class VariableInstruction extends Instruction{
  index: u32;
  constructor(opcode: u8){
    super(opcode);
    this.index = readVaruint(32);
  }
}

class MemoryInstruction extends Instruction{
  align: u32;
  offset: u32;

  constructor(opcode: u8){
    super(opcode);
    switch (opcode){
      case Opcode.i32_load:
      case Opcode.i64_load:
      case Opcode.f32_load:
      case Opcode.f64_load:
      case Opcode.i32_load8_s:
      case Opcode.i32_load8_u:
      case Opcode.i32_load16_s:
      case Opcode.i32_load16_u:
      case Opcode.i64_load8_s:
      case Opcode.i64_load8_u:
      case Opcode.i64_load16_s:
      case Opcode.i64_load16_u:
      case Opcode.i64_load32_s:
      case Opcode.i64_load32_u:
      case Opcode.i32_store:
      case Opcode.i64_store:
      case Opcode.f32_store:
      case Opcode.f64_store:
      case Opcode.i32_store8:
      case Opcode.i32_store16:
      case Opcode.i64_store8:
      case Opcode.i64_store16:
      case Opcode.i64_store32:{
        this.align  = readVaruint(32);
        this.offset = readVaruint(32);
        break;
      }
      case Opcode.current_memory:
      case Opcode.grow_memory:
        let end = readUint<u8>();
        break;
      default:
        break;
    }
  }
}

class ConstInstruction extends Instruction{}

export class I32_Const extends ConstInstruction {
  value: u32;
  constructor(opcode: Opcode){
    super(opcode);
    this.value = readVaruint(32);
  }
}
class F32_Const extends ConstInstruction {
  value: u32;
  constructor(opcode: u8){
    super(opcode);
    this.value = readVaruint(32);
  }
}

class I64_Const extends ConstInstruction {
  value: u64;
  constructor(opcode: u8){
    super(opcode);
    this.value = readVaruint(64);
  }
}
class F64_Const extends Instruction {
  value: u64;
  constructor(opcode: u8){
    super(opcode);
    this.value = readVaruint(64);
  }
}

class NumericInstruction extends Instruction{}
