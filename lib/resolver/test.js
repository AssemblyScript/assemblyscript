#!/usr/bin/env node
const { resolve, SourceType } = require("./index");
const { deepEqual } = require("assert");
const snapshots = [
  {
    name: "name",
    tests: [
      ["from", "to"] // add from and to sources here
    ]
  }
];

for (const snapshot of snapshots)  {
  const creating = process.argv.includes("--create");
  const path = "./snapshots/" + snapshot + ".json";

  for (let i = 0; i < snapshot.tests.length; i++) {
    if (creating) {
      // create the snapshots
    } else {
      const compare = require(path)[i];
      deepEqual(resolve(), compare, "Don't match.");
    }
  }
}
