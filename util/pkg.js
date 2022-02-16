import fs from "fs";

console.log('pkgggggggggggggggg');

export const pkg = JSON.parse(
  (await fs.promises.readFile("package.json")).toString()
);
