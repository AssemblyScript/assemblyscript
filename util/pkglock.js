import fs from "fs";

export const pkglock = JSON.parse(
  (await fs.promises.readFile("../package-lock.json")).toString()
);
