const compilerSuite = require('./compiler');
const parserSuite = require('./parser');
const packageSuite = require('./packages');

const path = require("path");
const cluster = require("cluster");
const numCPUs = require('os').cpus().length;

function splitToChunks(array, parts) {
  let result = [];
  for (let i = parts; i > 0; i--) {
      result.push(array.splice(0, Math.ceil(array.length / i)));
  }
  return result;
}

function testParallel(suiteName, tests, performTest, postTests, workers) {

    const testsChunks = splitToChunks(tests, workers);

    if (cluster.isMaster) {

        const chunks = {};
        const testPromises = [];
        const testWorkers = [];
        
        for (let i = 0; i < workers; i++) {
            testWorkers.push(cluster.fork());
        }

        console.log(suiteName,  "TEST WORKERS", testWorkers.length)

        testWorkers.forEach((worker) => {
            // console.log("SUITENAME", suiteName, worker.id);
        
            const id = worker.id;
            // console.log("ID", worker);
            chunks[id] = testsChunks.shift();
  
            testPromises.push(new Promise((resolve) => {
                worker.on('message', (result) => {
                    // console.log("\n\n\n\ RESOLVING ", result, "\n\n\n\n\n\n\n\n\n\n");
                    resolve(result);
                });
                // console.log(suiteName, "SENDING", chunks[id]); 
                worker.send({chunks: chunks[id], workerSuiteName: suiteName });
            }));
        });


        console.log("Test processes", testPromises); 
        // process.exit();
        
        return Promise.all(testPromises).then((results) => {
            postTests(results);
            // console.log("main process exit")
            // process.exit();
        });

    } else {

        cluster.worker.on('message', ({ chunks, workerSuiteName }) => {

            if (workerSuiteName === suiteName) {

                const basedir = path.join(__dirname, suiteName);

                // console.log(cluster.worker.id, suiteName, "recieved", chunks)
                const results = {
                    failedTests: new Set(),
                    failedMessages: new Map(),
                    skippedTests: new Set(),
                    skippedMessages: new Map()
                }
                const resultPromises = [];
                chunks.forEach(arg => {
                    resultPromises.push(
                        performTest({ basedir, arg }).then((result) => {
                            if (result.failed) {
                                results.failedTests.add(arg);
                                if (results.message) {
                                    results.failedMessages.set(arg, results.message);
                                }
                            }
                            return result;
                        })
                    )
                });
                Promise.all(resultPromises).then(() => {
                    process.send(results);
                    console.log("worker process exit");
                    process.exit();
                });
            }
        });
    }
}

function runTestSuites(suites) {
    const promises = []
    suites.forEach((suite) => {
        if (cluster.isMaster) {
            promises.push(testParallel(suite.suiteName, suite.tests, suite.performTest, suite.postTest, suite.workers));
        } else {
            testParallel(suite.suiteName, suite.tests, suite.performTest, suite.postTest, suite.workers);
        }
    });
    Promise.all(promises).then(() => {
        if (cluster.isMaster) {
            process.exit();
        }
    })
}

runTestSuites([
    parserSuite,
    compilerSuite,
    packageSuite
]);
