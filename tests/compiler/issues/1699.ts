class MultiAssignmentTest {
    test: i32 = 2;
}

function test(): void {
  const testinstances = new Array<MultiAssignmentTest>(3);
  testinstances[0] = testinstances[1] = new MultiAssignmentTest();

  for (let n = 0; n < testinstances.length; n++) {
    const testinstance = new MultiAssignmentTest();
    if (n > 1) {
      testinstances[n] = testinstance;
    }
  }
  assert(testinstances[0] === testinstances[1]);
  assert(testinstances[2] !== testinstances[1]);
}

test();
