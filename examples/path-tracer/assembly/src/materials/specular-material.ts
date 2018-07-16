import {Material} from "./material";
import {Color} from "../../math/color";
import {NoAttenuation} from "./attenuation";
import {MaterialType} from "./material";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class SpecularMaterial extends Material{

    type:MaterialType = MaterialType.SPECULAR;

    constructor(color:Color, index:number){
        super(color, null, null, null, 1, 0, NoAttenuation, index, 0, 0, false);
    }
}
