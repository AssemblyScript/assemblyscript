import { shift, mask, bias } from "../math/constants";
/**
 * Created by Nidin Vinayakan on 10-01-2016.
 */
export class MathUtils {
    static radians(degrees: float): float {
        return (degrees * Math.PI) / 180;
    }

    static degrees(radians: float): float {
        return (radians * 180) / Math.PI;
    }

    static median(items: float[]): float {
        var n = items.length;
        if (n == 0) {
            return 0;
        } else if (n % 2 == 1) {
            return items[n / 2];
        } else {
            let a = items[n / 2 - 1];
            let b = items[n / 2];
            return (a + b) / 2;
        }
    }

    static fract(x: float): float {
        var n = MathUtils.Modf(x);
        return n.frac;
    }

    static Modf(f: float): { int: float; frac: float } {
        /*if (f < 1) {
            if (f < 0) {
                let n = MathUtils.Modf(-f);
                return {int: -n.int, frac: -n.frac};
            }
            return {int: 0, frac: f};
        }

        var x:float = f;
        var e:float = (x >> shift) & mask - bias;

        // Keep the top 12+e bits, the integer part; clear the rest.
        if (e < 64 - 12) {
            x &= 1 << (64 - 12 - e) - 1;
            x ^= x;
        }
        var int = x;
        var frac = f - int;*/
        // return {int: int, frac: frac};
        var int = Math.floor(f);
        var frac = f - int;
        return { int: int, frac: frac };
    }

    static clampInt(x: float, lo: float, hi: float): float {
        if (x < lo) {
            return lo;
        }
        if (x > hi) {
            return hi;
        }
        return x;
    }
}
