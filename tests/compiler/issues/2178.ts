@global const ASC_GC_SWEEPCOST: i32 = 1000; // make sweep bigger so the bug will easier to be reproduced

let id = 0;
function randomNew(): void {
  id++;
  `b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b`;
  `b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b`;
  `b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b`;
  `b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b`;
  `b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b`;
  `b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b`;
  `b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b${id.toString()}b`;
}

for (let i = 0; i < 25; i++) randomNew();