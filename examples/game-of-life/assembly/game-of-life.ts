// The Game of Life, also known simply as Life, is a cellular automaton devised by the British
// mathematician John Horton Conway in 1970.
// see: https://en.wikipedia.org/wiki/Conway's_Game_of_Life

var w: i32, h: i32, s: i32;

/** Initializes width and height. Called once from JS. */
export function init(width: i32, height: i32): void {
  w = width;
  h = height;
  s = width * height;
}

/** Performs one step. Called about 30 times a second from JS. */
export function step(): void {
  var hm1 = h - 1, // h - 1
      wm1 = w - 1; // w - 1

  // The universe of the Game of Life is an infinite two-dimensional orthogonal grid of square
  // "cells", each of which is in one of two possible states, alive or dead.
  for (let y = 0; y < h; ++y) {

    let ym1 = y == 0 ? hm1 : y - 1, // y - 1
        yp1 = y == hm1 ? 0 : y + 1; // y + 1
    for (let x = 0; x < w; ++x) {
      let xm1 = x == 0 ? wm1 : x - 1, // x - 1
          xp1 = x == wm1 ? 0 : x + 1; // x + 1

      // Every cell interacts with its eight neighbours, which are the cells that are horizontally,
      // vertically, or diagonally adjacent:
      let aliveNeighbors = (
        load<u8>(ym1 * w + xm1) + load<u8>(ym1 * w + x) + load<u8>(ym1 * w + xp1) +
        load<u8>(y   * w + xm1)                         + load<u8>(y   * w + xp1) +
        load<u8>(yp1 * w + xm1) + load<u8>(yp1 * w + x) + load<u8>(yp1 * w + xp1)
      );

      let alive = load<u8>(y * w + x);
      if (alive) {
        switch (aliveNeighbors) {
          // A live cell with fewer than 2 live neighbors dies, as if caused by underpopulation.
          // A live cell with more than 3 live neighbors dies, as if by overpopulation.
          default: { store<u8>(s + y * w + x, 0); break; }
          // A live cell with 2 or 3 live neighbors lives on to the next generation.
          case 2: case 3:
        }
      } else {
        switch (aliveNeighbors) {
          // A dead cell with exactly 3 live neighbors becomes a live cell, as if by reproduction.
          case 3: { store<u8>(s + y * w + x, 1); break;  }
          default:
        }
      }
    }
  }
}

// Performing a step uses bytes [0, s-1] as the input and writes the output to [s, 2*s-1].
// Note that the code above wastes a lot of space by using one byte per cell.
