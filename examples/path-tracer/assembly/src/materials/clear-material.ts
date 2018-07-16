import {Material} from "./material";
import {Color} from "../../math/color";
import {NoAttenuation} from "./attenuation";
import {MaterialType} from "./material";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class ClearMaterial extends Material{

    type:MaterialType = MaterialType.CLEAR;

    constructor(index:number, gloss:number){
        super(new Color(), null, null, null, 1, 0, NoAttenuation, index, gloss, 0, true);
    }
}
