import { Axis } from "../objects/axis";
import { Shape } from "../shapes/shape";
import { Ray } from "../math/ray";
import { Hit, NoHit } from "../math/hit";
import { append, sortAscending } from "../utils/MapUtils";
import { Box } from "../shapes/box";
import { List } from "../utils/list";
import { MathUtils } from "../utils/MathUtils";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class Node {
    // static map: List<Node> = new List();

    index: float;

    constructor(public axis: Axis, public point: float, public shapes: Shape[], public left: Node, public right: Node) {
        // this.index = Node.map.push(this) - 1;
    }

    static newNode(shapes: Shape[]): Node {
        return new Node(Axis.AxisNone, 0, shapes, null, null);
    }

    intersect(r: Ray, tmin: float, tmax: float): Hit {
        var node: Node = this;
        var tsplit: float = 0;
        var leftFirst: boolean = false;

        switch (node.axis) {
            case Axis.AxisNone: {
                return node.intersectShapes(r);
            }
            case Axis.AxisX: {
                tsplit = (node.point - r.origin.x) / r.direction.x;
                leftFirst = r.origin.x < node.point || (r.origin.x == node.point && r.direction.x <= 0);
                break;
            }
            case Axis.AxisY: {
                tsplit = (node.point - r.origin.y) / r.direction.y;
                leftFirst = r.origin.y < node.point || (r.origin.y == node.point && r.direction.y <= 0);
                break;
            }
            case Axis.AxisZ: {
                tsplit = (node.point - r.origin.z) / r.direction.z;
                leftFirst = r.origin.z < node.point || (r.origin.z == node.point && r.direction.z <= 0);
                break;
            }
        }
        var first: Node;
        var second: Node;
        if (leftFirst) {
            first = node.left;
            second = node.right;
        } else {
            first = node.right;
            second = node.left;
        }
        if (tsplit > tmax || tsplit <= 0) {
            return first.intersect(r, tmin, tmax);
        } else if (tsplit < tmin) {
            return second.intersect(r, tmin, tmax);
        } else {
            let h1 = first.intersect(r, tmin, tsplit);
            if (h1.T <= tsplit) {
                return h1;
            }
            let h2 = second.intersect(r, tsplit, Math.min(tmax, h1.T));
            if (h1.T <= h2.T) {
                return h1;
            } else {
                return h2;
            }
        }
    }

    intersectShapes(r: Ray): Hit {
        var node = this;
        var hit = NoHit;
        for (let i: i32 = 0; i < node.shapes.length; i++) {
            let shape = node.shapes[i];
            let h = shape.intersect(r);
            if (h.T < hit.T) {
                hit = h;
            }
        }
        return hit;
    }

    partitionScore(axis: Axis, point: float): float {
        var node: Node = this;
        var left = 0;
        var right = 0;
        for (let i: i32 = 0; i < node.shapes.length; i++) {
            const shape: Shape = node.shapes[i];
            let box = shape.bbox;
            let p = box.partition(axis, point);
            if (p.left) {
                left++;
            }
            if (p.right) {
                right++;
            }
        }
        if (left >= right) {
            return left;
        } else {
            return right;
        }
    }

    partition(size: float, axis: Axis, point: float): { left: Shape[]; right: Shape[] } {
        var node: Node = this;
        var left: Shape[] = [];
        var right: Shape[] = [];
        for (let i: i32 = 0; i < node.shapes.length; i++) {
            let shape = node.shapes[i];
            let box = shape.bbox;
            let p = box.partition(axis, point);
            if (p.left) {
                left = append(left, shape);
            }
            if (p.right) {
                right = append(right, shape);
            }
        }
        return { left: left, right: right };
    }

    split(depth: float): void {
        var node = this;
        if (node.shapes.length < 8) {
            return;
        }
        var xs: float[] = [];
        var ys: float[] = [];
        var zs: float[] = [];
        for (let i: i32 = 0; i < node.shapes.length; i++) {
            let shape = node.shapes[i];
            let box = shape.bbox;
            xs = append(xs, box.min.x);
            xs = append(xs, box.max.x);
            ys = append(ys, box.min.y);
            ys = append(ys, box.max.y);
            zs = append(zs, box.min.z);
            zs = append(zs, box.max.z);
        }

        sortAscending(xs);
        sortAscending(ys);
        sortAscending(zs);

        var mx = MathUtils.median(xs);
        var my = MathUtils.median(ys);
        var mz = MathUtils.median(zs);
        var best: float = Math.round(node.shapes.length * 0.85);
        var bestAxis: Axis = Axis.AxisNone;
        var bestPoint: float = 0.0;
        var sx: float = node.partitionScore(Axis.AxisX, mx);
        if (sx < best) {
            best = sx;
            bestAxis = Axis.AxisX;
            bestPoint = mx;
        }
        var sy: float = node.partitionScore(Axis.AxisY, my);
        if (sy < best) {
            best = sy;
            bestAxis = Axis.AxisY;
            bestPoint = my;
        }
        var sz: float = node.partitionScore(Axis.AxisZ, mz);
        if (sz < best) {
            best = sz;
            bestAxis = Axis.AxisZ;
            bestPoint = mz;
        }
        if (bestAxis == Axis.AxisNone) {
            return;
        }
        var p = node.partition(best, bestAxis, bestPoint);
        node.axis = bestAxis;
        node.point = bestPoint;
        node.left = Node.newNode(p.left);
        node.right = Node.newNode(p.right);
        node.left.split(depth + 1);
        node.right.split(depth + 1);
        node.shapes = null; // only needed at leaf nodes
    }
}
