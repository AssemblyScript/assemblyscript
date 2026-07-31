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
do {} while (0)

labelE:
while (0) {}

labelF:
try {} catch (e) {}

labelG:
if (0) {} else {}

labelH: // ERROR 1344: "A label is not allowed here."
let x = 123;