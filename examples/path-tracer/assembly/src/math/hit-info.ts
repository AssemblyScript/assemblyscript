import { Ray } from "./ray";
import { Shape } from "../shapes/shape";
import { Vector3 } from "./vector3";
import { Color } from "./color";
import { Material } from "../materials/material";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class HitInfo {
    /**
     *
     * @param shape
     * @param position
     * @param normal
     * @param ray
     * @param color
     * @param material
     * @param inside
     */
    constructor(
        public shape: Shape = null,
        public position: Vector3 = null,
        public normal: Vector3 = null,
        public ray: Ray = null,
        public color: Color = null,
        public material: Material = null,
        public inside: boolean = false,
    ) {}
}
