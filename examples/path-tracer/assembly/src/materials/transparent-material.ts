import {Material} from "./material";
import {Color} from "../../math/color";
import {NoAttenuation} from "./attenuation";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class TransparentMaterial extends Material{

    constructor(color:Color, index:number=1, gloss:number=1, tint:number=0){
        super(color, null, null, null, 1, 0, NoAttenuation, index, gloss, tint, true);
    }
}
