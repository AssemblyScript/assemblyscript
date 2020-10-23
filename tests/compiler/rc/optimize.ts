// see: Binaryen/src/passses/PostAssemblyscript.cpp

export function eliminated_v(): void {}
export function eliminated_vi(a: i32): void {}
export function eliminated_vii(a: i32, b: i32): void {}
export function eliminated_viii(a: i32, b: i32, c: i32): void {}
export function eliminated_rr(a: Ref): Ref { return getRef(); }

class Ref {}

export function getRef(): Ref { // don't inline
  return new Ref();
}

export namespace OptimizeARC {

  // Patterns the OptimizeARC pass eliminates
  export namespace eliminates {

    export function linearArgument(a: usize): void {
      a = __retain(a);
      __release(a);
    }

    export function linearLocal(a: usize): void {
      var b = __retain(a);
      __release(b);
    }

    export function linearChain(a: usize): void {
      var b = __retain(a);
      var c = __retain(b);
      var d = __retain(c);
      __release(d);
      __release(c);
      __release(b);
    }

    export function balancedReleases(a: usize, cond: bool): void {
      var b = __retain(a);
      if (cond) {
        __release(b);
      } else {
        __release(b);
      }
    }

    export function partialReleases(a: usize, cond: bool): void {
      // technically invalid and assumed to be never emitted
      var b = __retain(a);
      if (cond) {
        __release(b);
      }
    }

    export function balancedRetains(a: usize, cond1: bool, cond2: bool): void {
      var b: usize;
      if (cond1) {
        if (cond2) {
          b = __retain(a);
        } else {
          b = __retain(a);
        }
      } else {
        b = __retain(a);
      }
      __release(b);
    }

    export function balancedInsideLoop(a: usize, cond: bool): void {
      while (cond) {
        a = __retain(a);
        __release(a);
      }
    }

    export function balancedOutsideLoop(a: usize, cond: bool): void {
      a = __retain(a);
      while (cond) {
      }
      __release(a);
    }

    export function balancedInsideOutsideLoop(a: usize, cond: bool): void {
      a = __retain(a);
      while (cond) {
        __release(a);
        a = __retain(a);
      }
      __release(a);
    }

    export function balancedInsideOutsideLoopWithBranch(a: usize, cond1: bool, cond2: bool): void {
      a = __retain(a);
      while (cond1) {
        if (cond2) {
          __release(a);
          return;
        }
        __release(a);
        a = __retain(a);
      }
      __release(a);
    }

    export function replace(a: Ref, b: Ref): void {
      a = b;
    }

    export function replaceAlreadyRetained(a: Ref): Ref {
      a = getRef();
      return a;
    }
  }

  // Patterns the OptimizeARC pass keeps
  export namespace keeps {

    export function partialRetains(a: usize, cond: bool): void {
      // unbalanced
      if (cond) {
        a = __retain(a);
      }
      __release(a); // reaches retain and argument
    }

    export function reachesReturn(a: usize, cond: bool): usize {
      // reaches return
      a = __retain(a);
      if (cond) {
        return a;
      }
      __release(a);
      return 0;
    }

  }
}

export namespace FinalizeARC {

  // Patterns the FinalizeARC pass eliminates
  export namespace eliminates {

    export function unnecessaryAllocation(): void {
      __release(__retain(__new(1, 0)));
    }

    export function unnecessaryPair(a: usize): void {
      __release(__retain(a));
    }

    export function unnecessaryStaticPair(): void {
      __release(__retain(changetype<usize>("a")));
    }

    export function unnecessaryStaticRetain(): void {
      __retain(changetype<usize>("a"));
    }

    export function unnecessaryStaticRelease(): void {
      __release(changetype<usize>("a"));
    }
  }

  // Patterns the FinalizeARC pass keeps
  export namespace keeps {

    export function dynamicRetain(a: usize): void {
      a = __retain(a);
    }

    export function dynamicRelease(a: usize): void {
      __release(a);
    }
  }
}
