labelA:
{
  a;
  b;
}
labelB:
for (let i = 0; i < 3; i++) {}
labelC:
for (const x of y) {}
labelD:
do {} while (0);
labelE:
while (0) {}
labelF:
try {
} catch (e) {
}
labelG:
  if (0) {} else {}
let x = 123;
// ERROR 1344: "A label is not allowed here." in labels.ts(25,1+6)
