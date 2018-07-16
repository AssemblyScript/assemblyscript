import {ByteArrayBase} from "../../../pointer/src/byte-array-base";
import {DirectMemory} from "../../../pointer/src/direct-memory";
/**
 * Created by Nidin Vinayakan on 09-01-2016.
 */
export class Attenuation {

    static SIZE:number = 3;

    constructor(public constant:number=1, public linear:number=0, public quadratic:number=0) {

    }

    static fromJson(attenuation:Attenuation):Attenuation {
        if(!attenuation){
            return NoAttenuation;
        }else {
            return new Attenuation(
                attenuation.constant,
                attenuation.linear,
                attenuation.quadratic
            );
        }
    }

    compute(d:number):number {
        return 1 / (this.constant + this.linear * d + this.quadratic * d * d);
    }

    set(attenation:Attenuation):Attenuation {
        this.constant = attenation.constant;
        this.linear = attenation.linear;
        this.quadratic = attenation.quadratic;
        return this;
    }

    clone():Attenuation {
        return new Attenuation(
            this.constant,
            this.linear,
            this.quadratic
        );
    }

    directWrite(mem:Float32Array, offset:number):number {
        mem[offset++] = this.constant;
        mem[offset++] = this.linear;
        mem[offset++] = this.quadratic;
        return offset;
    }

    directRead(mem:Float32Array, offset:number):number {
        this.constant = mem[offset++];
        this.linear = mem[offset++];
        this.quadratic = mem[offset++];
        return offset;
    }

    read(memory:ByteArrayBase|DirectMemory):number {
        this.constant = memory.readFloat();
        this.linear = memory.readFloat();
        this.quadratic = memory.readFloat();
        return memory.position;
    }

    write(memory:ByteArrayBase|DirectMemory):number {
        memory.writeFloat(this.constant);
        memory.writeFloat(this.linear);
        memory.writeFloat(this.quadratic);
        return memory.position;
    }
}

export const NoAttenuation:Attenuation = new Attenuation(1, 0, 0);

export class LinearAttenuation extends Attenuation {

    constructor(value:number) {
        super(1, value, 0);
    }
}
export class QuadraticAttenuation extends Attenuation {

    constructor(value:number) {
        super(1, 0, value);
    }
}
