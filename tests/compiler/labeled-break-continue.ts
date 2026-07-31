function tests(): string[] {
  const results: string[] = [];

  label:
  for (let i = 0; i < 6; i++) {
    if (i == 2) {
      results.push("continue!");
      continue label;
    }

    if (i == 4) {
      results.push("break!");
      break label;
    }

    results.push(`first loop ${i}`);
  }

  sweetch:
  switch (1) {
    case 1:
      for (let i = 0; i < 6; i++) {
        results.push(`second ${i}`);
        if (i == 3) break sweetch;
      }
      results.push("skipped");
  }

  escape:
  {
    results.push("hi");
    break escape;
    results.push("skipped");
  }

  outer:
  for (let i = 0; i < 5; i++) {
    exit:
    if (i % 2 == 0) {
      for (let j = 0; j < 4; j++) {
        if (i == j) continue outer;
        else if (j > i) break exit;

        results.push(`did ${i} ${j}`);
      }
    }

    results.push(`reached end of ${i}`);
  }

  return results;
}

const results = tests();
const expected = [
  "first loop 0",
  "first loop 1",
  "continue!",
  "first loop 3",
  "break!",
  "second 0",
  "second 1",
  "second 2",
  "second 3",
  "hi",
  "reached end of 1",
  "did 2 0",
  "did 2 1",
  "reached end of 3",
  "did 4 0",
  "did 4 1",
  "did 4 2",
  "did 4 3",
  "reached end of 4"
];

assert(results.length == expected.length);
for (let i = 0; i < expected.length; i++) assert(results[i] == expected[i]);