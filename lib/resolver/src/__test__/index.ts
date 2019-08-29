#!/usr/bin/env node
import { resolve, Module, Package, URL, resolveRelative, Address, Args } from "..";
import { deepEqual }  from "assert";
import * as fs from "fs";

interface Test {
    input: string[];
    output: Address[];
    args: Args;
}

const snapshots = [
  {
    name: "local-relative",
    tests: [
      {
        input: ["/", "./hello"], // add from and to sources here,
        output: resolveRelative("/", "hello"),
        args: {}
      }
    ]
  }
];

var failed = false;
for (const snapshot of snapshots)  {
  const creating = process.argv.includes("--create");
  const path = __dirname +"/../../snapshots/" + snapshot.name + ".json";
  if (creating) {
    fs.writeFileSync(path, JSON.stringify(snapshot));
    continue;
  } 
  let tests: Test[] = require(path).tests;
  var test = tests[0]
  var result: Address[] = [];
  try {
    for (let i = 0; i < snapshot.tests.length; i++) {
        test = tests[i];
        result = resolve(test.input[0], test.input[1], test.args);
        deepEqual(result, test.output, "Don't match.");
    }
  } catch (e) {
    console.error(`Snapshot: ${snapshot.name} failed.
    expected: ${JSON.stringify(test.output)}
    actual: ${JSON.stringify(result)}`);
  }
}
