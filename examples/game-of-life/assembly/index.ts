// see: https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life

const RGB_ALIVE = 0xE692D3;
const RGB_DEAD  = 0x851BA6;

var w: i32, h: i32, s: i32;

/** Gets an input pixel in the range [0, s]. */
@inline
function get(x: u32, y: u32): u32 {
  return load<u32>((y * w + x) << 2);
}

/** Sets an output pixel in the range [s, 2*s]. */
@inline
function set(x: u32, y: u32, v: u32): void {
  store<u32>((s + y * w + x) << 2, v);
}

/** Sets an output pixel in the range [s, 2*s] while fading it out. */
@inline
function set_fade(x: u32, y: u32, v: u32): void {
  var a = max<i32>((v >>> 24) - 7, 0);
  set(x, y, (a << 24) | (v & 0x00ffffff));
}

/** Initializes width and height. Called once from JS. */
export function init(width: i32, height: i32, seed: f64): void {
  w = width;
  h = height;
  s = width * height;

  // Start by filling output with random live cells.
  for (let y = 0; y < h; ++y) {
    for (let x = 0; x < w; ++x) {
      set(x, y, JSMath.random() > 0.15 ? RGB_DEAD & 0x00ffffff : RGB_ALIVE | 0xff000000);
    }
  }
}

/** Performs one step. Called about 30 times a second from JS. */
export function step(): void {
  var hm1 = h - 1, // h - 1
      wm1 = w - 1; // w - 1

  // The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square
  // "cells", each of which is in one of two possible states, alive or dead.
  for (let y = 0; y < h; ++y) {

    let ym1 = y == 0 ? hm1 : y - 1,
        yp1 = y == hm1 ? 0 : y + 1;
    for (let x = 0; x < w; ++x) {
      let xm1 = x == 0 ? wm1 : x - 1,
          xp1 = x == wm1 ? 0 : x + 1;

      // Every cell interacts with its eight neighbours, which are the cells that are horizontally,
      // vertically, or diagonally adjacent:
      let tl = get(xm1, ym1);
      let tm = get(x  , ym1);
      let tr = get(xp1, ym1);
      let ml = get(xm1, y  );
      let mm = get(x  , y  );
      let mr = get(xp1, y  );
      let bl = get(xm1, yp1);
      let bm = get(x  , yp1);
      let br = get(xp1, yp1);

      // Least significant bit indicates alive or dead, others are ARGB.
      let aliveNeighbors = (
        (tl & 1) + (tm & 1) + (tr & 1) +
        (ml & 1)            + (mr & 1) +
        (bl & 1) + (bm & 1) + (br & 1)
      );

      let alive = mm & 1;
      if (alive) {
        // A live cell with fewer than 2 live neighbors dies, as if caused by underpopulation.
        // A live cell with more than 3 live neighbors dies, as if by overpopulation.
        if (aliveNeighbors < 2 || aliveNeighbors > 3) set(x, y, RGB_DEAD | 0xff000000);
        // A live cell with 2 or 3 live neighbors lives on to the next generation.
        else set_fade(x, y, mm);
      } else {
        // A dead cell with exactly 3 live neighbors becomes a live cell, as if by reproduction.
        if (aliveNeighbors == 3) set(x, y, RGB_ALIVE | 0xff000000);
        // Otherwise the dead cell remains dead.
        else set_fade(x, y, mm);
      }
    }
  }
}
