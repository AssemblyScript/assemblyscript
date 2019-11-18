// Reconfigures the repository after publishing

const fs = require("fs");
const path = require("path");
const devFiles = require("./postpublish-files.json");

console.log("Restoring development files ...");

devFiles.forEach(originalName => {
  const backupName = originalName + ".backup";
  const backupPath = path.join(__dirname, "..", backupName);
  if (!fs.existsSync(backupPath)) {
    console.log("- " + backupName + " does not exist");
  } else {
    console.log("- " + backupName + " -> " + originalName);
    fs.copyFileSync(
      backupPath,
      path.join(__dirname, "..", originalName)
    );
    fs.unlinkSync(backupPath);
  }
});
