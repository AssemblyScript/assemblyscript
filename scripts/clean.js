import fs from "fs";
import path from "path";
import glob from "glob";
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

glob("*", { cwd: __dirname + "/../dist" }, (err, matches) => {
  if (err)
    console.log("Failed to list files in 'dist/': " + err.message);
  else
    matches.forEach(match => {
      fs.unlink(__dirname + "/../dist/" + match, err => {
        if (err)
          console.log("Failed to delete 'dist/" + match + "': " + err.message);
        else
          console.log("Deleted 'dist/" + match + "'");
      });
    });
});
