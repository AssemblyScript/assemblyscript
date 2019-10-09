

let asc = require("../../../cli/asc");

async function compile(file, transformer) {
    
    return new Promise( (resolve, reject) => {
      const stdout =  asc.createMemoryStream();
      const data = {};
      const writeFile = (name,contents) => data[name] = contents;
      asc.main([file, "--runtime", "none", "--transform",`../dist/${transformer}.js`, '--textFile', "out.wat"],{stdout, writeFile}, error => {
        if (error != null) {
          reject(error);
        }
        resolve({stdout, data})
      })
    });
}

function compileString(str, transformer) {
  return asc.compileString({"assembly/index.ts": str}, {"runtime": "none", "transform": `../dist/${transformer}.js`});
}

function trim(line){
    return line.trim();
}

(async function() {
    
    var result = (await compile("./assembly/index.ts", "ASTPrinter"));
    const source = result.stdout.toString();
    const sourceStripped = source.substring(source.indexOf("\n"));
    // console.log(result)
    debugger;
    var actual = compileString(sourceStripped, "ASTPrinter")
    const ActualWat = actual.text.substring();
    const ExpectedWat = result.data["out.wat"];

    var expectedLines = ExpectedWat.split("\n").map(trim);
    var actualLines = ActualWat.split("\n").map(trim);

    for (let i = 0; i < actualLines.length; i++){
        if (!expectedLines.includes(actualLines[i])){
            throw new Error("actual line " + i + ": " + actualLines[i] + " is not found in the expected");
        }
    }

})().catch(e => {
    console.error('Error during test execution:', e);
    process.exit(1);
});
