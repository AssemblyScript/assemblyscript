import "allocator/arena";

let bids = new Array<i32>(1);
let highest = 0;


export function foo(bid: i32): i32 {
  bids.push(bid);
  if (bid > highest){
    highest = bid;
    if (highest >= bid){
      if(bid == highest){
        return bid
      }
    }
  }
  return highest;
}

export function highestBid(): i32 {
  return highest;
}

foo(10);
foo(11);
