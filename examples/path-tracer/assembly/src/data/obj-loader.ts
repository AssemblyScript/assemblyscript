import {Mesh} from "../scene/shapes/mesh";
import {Material} from "../scene/materials/material";
import {Vector3} from "../math/vector3";
import {Triangle} from "../scene/shapes/triangle";
import {append} from "../utils/MapUtils";
import {Color} from "../math/color";
import {Texture} from "../scene/materials/texture";
/**
 * Created by Nidin Vinayakan on 11-01-2016.
 */
export class OBJLoader {

    parentMaterial:Material;
    lastMesh:Mesh;
    materials:Map<string, Material>;
    private hasMaterials:boolean = false;
    private materialsLoaded:boolean = false;
    private materialsLoading:boolean = false;
    private pendingCallback:Function = null;
    private basePath:string;

    constructor() {

    }

    load(url:string, onLoad:Function):Mesh {
        console.log("Loading OBJ:" + url);
        this.basePath = url.substring(0, url.lastIndexOf("/"));
        var self = this;
        var xhr:XMLHttpRequest = new XMLHttpRequest();
        xhr.open('GET', url, true);
        xhr.onload = function () {
            self.lastMesh = self.loadOBJ(xhr.response);
            if (onLoad) {
                if (self.hasMaterials && self.materialsLoaded) {
                    onLoad(self.lastMesh);
                } else if (!self.hasMaterials) {
                    onLoad(self.lastMesh);
                } else {
                    self.pendingCallback = onLoad;
                }
            }
        };
        xhr.send(null);
        return null;
    }

    static parseIndex(value:string, length:number):number {
        var n = parseInt(value);
        if (n < 0) {
            n += length;
        }
        return n;
    }

    static parseLine(line:string):{keyword:string, value:string[]} {
        try {
            var result = line.match(/^(\S+)\s(.*)/)
            if (result) {
                var _str = result.slice(1);
            } else {
                return null;
            }
        } catch (e) {
            console.log("Error in line:", line, e);
            return null;
        }
        if (!_str) {
            return null;
        } else {
            return {
                keyword: _str[0],
                value: _str[1].split(/ {1,}/)
            };
        }
    }

    static parseFloats(fs:string[]):number[] {
        var floats:number[] = [];
        fs.forEach(function (f:string) {
            floats.push(parseFloat(f));
        });
        return floats;
    }

    loadOBJ(data:string):Mesh {

        this.hasMaterials = false;
        this.materialsLoaded = false;
        this.materialsLoading = false;

        var vs:Vector3[] = [null]; //1024 // 1-based indexing
        var vts:Vector3[] = [null]; // 1-based indexing
        var vns:Vector3[] = [null]; // 1-based indexing
        var triangles:Triangle[];
        this.materials = new Map<string, Material>();//make(map[string]*Material)
        var material:Material = this.parentMaterial;
        var lines = data.split("\n");

        for (var i = 0; i < lines.length; i++) {
            let line:string = lines[i].trim();
            if (line.length == 0) {
                continue;
            }
            let item = OBJLoader.parseLine(line);
            if (item) {
                let f:number[];
                let v:Vector3;

                switch (item.keyword) {
                    case "mtllib":
                        this.hasMaterials = true;
                        this.materialsLoaded = false;
                        this.loadMTL(item.value[0]);
                        break;

                    case "usemtl":
                        material = this.getMaterial(item.value[0]);
                        break;

                    case "v":
                        f = OBJLoader.parseFloats(item.value);
                        v = new Vector3(f[0], f[1], f[2]);
                        vs = append(vs, v);
                        break;

                    case "vt":
                        f = OBJLoader.parseFloats(item.value);
                        v = new Vector3(f[0], f[1], 0);
                        vts = append(vts, v);
                        break;

                    case "vn":
                        f = OBJLoader.parseFloats(item.value);
                        v = new Vector3(f[0], f[1], f[2]);
                        vns = append(vns, v);
                        break;

                    case "f":
                        var fvs:number[] = [];
                        var fvts:number[] = [];
                        var fvns:number[] = [];

                        item.value.forEach(function (str:string, i) {
                            let vertex:string[] = str.split(/\/\/{1,}/);
                            fvs[i] = OBJLoader.parseIndex(vertex[0], vs.length);
                            fvts[i] = OBJLoader.parseIndex(vertex[1], vts.length);
                            fvns[i] = OBJLoader.parseIndex(vertex[2], vns.length);
                        });

                        for (let i:number = 1; i < fvs.length - 1; i++) {
                            let i1 = 0;
                            let i2 = i;
                            let i3 = i + 1;
                            let t:Triangle = new Triangle();
                            t.material = material;
                            t.v1 = vs[fvs[i1]];
                            t.v2 = vs[fvs[i2]];
                            t.v3 = vs[fvs[i3]];
                            t.t1 = vts[fvts[i1]];
                            t.t2 = vts[fvts[i2]];
                            t.t3 = vts[fvts[i3]];
                            t.n1 = vns[fvns[i1]];
                            t.n2 = vns[fvns[i2]];
                            t.n3 = vns[fvns[i3]];
                            t.updateBox();
                            t.fixNormals();
                            triangles = append(triangles, t);
                        }
                        break;
                }
            }
        }
        return Mesh.newMesh(triangles);
    }

    getMaterial(index:string):Material {
        if (this.materials[index] == undefined) {
            var material:Material = this.parentMaterial.clone();
            this.materials[index] = material;
            return material;
        } else {
            return this.materials[index];
        }
    }

    loadMTL(url:string) {
        if (this.materialsLoaded || this.materialsLoading) {
            return;
        }
        this.materialsLoading = true;
        url = this.basePath == "" ? url : this.basePath + "/" + url;
        console.log("Loading MTL:" + url);
        var self = this;
        var xhr:XMLHttpRequest = new XMLHttpRequest();
        xhr.open('GET', url, true);
        xhr.onload = function () {
            var lines = xhr.response.split("\n");

            for (var i = 0; i < lines.length; i++) {
                let line:string = lines[i].trim();
                if (line.length == 0) {
                    continue;
                }
                let item = OBJLoader.parseLine(line);
                if (item) {
                    var material:Material;
                    switch (item.keyword) {
                        case "newmtl":
                            material = self.materials[item.value[0]];
                            material = material ? material : self.parentMaterial.clone();
                            self.materials[item.value[0]] = material;
                            break;
                        case "Kd":
                            var c:number[] = OBJLoader.parseFloats(item.value);
                            material.color = new Color(c[0], c[1], c[2]);
                            break;
                        case "map_Kd":
                            //material.texture = Texture.getTexture(item.value[0]);
                            break;
                    }
                }
            }
            self.materialsLoaded = true;
            if (self.pendingCallback) {
                self.pendingCallback(self.lastMesh);
                self.pendingCallback = null;
            }
        };
        xhr.send(null);

        return null;
    }
}
