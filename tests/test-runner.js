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

        testWorkers.forEach((worker) => {        
            const id = worker.id;
            chunks[id] = testsChunks.shift();
  
            testPromises.push(new Promise((resolve) => {
                worker.on('message', (result) => {
                    resolve(result);
                });
                worker.send({chunks: chunks[id], workerSuiteName: suiteName });
            }));
        });

        return Promise.all(testPromises).then((results) => {
            postTests(results);
            return results;
        });

    } else {

        cluster.worker.on('message', ({ chunks, workerSuiteName }) => {

            if (workerSuiteName === suiteName) {
                const basedir = path.join(__dirname, suiteName);
                const results = {
                    failedTests: [],
                    failedMessages: {},
                    skippedTests: [],
                    skippedMessages: {}
                }
                const resultPromises = [];
                chunks.forEach(arg => {
                    resultPromises.push(
                        performTest({ basedir, arg }).then((result) => {
                            if (result.failed) {
                                results.failedTests.push(arg);
                                if (results.message) {
                                    results.failedMessages[arg] = results.message;
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
    const promises = [];

    const workersToAllocate = suites.map((s) => s.workers).reduce((a, b) => a + b, 0) ;
    const allocate = workersToAllocate <= numCPUs;

    suites.forEach((suite) => {
        if (cluster.isMaster) {
            promises.push(testParallel(suite.suiteName, suite.tests, suite.performTest, suite.postTest, allocate ? suite.workers : 1));
        } else {
            testParallel(suite.suiteName, suite.tests, suite.performTest, suite.postTest);
        }
    });
    Promise.all(promises).then((results) => {
        console.log("\n -------- TEST RESULTS -------- ");

        let failed = false;

        if (cluster.isMaster) {
            results.forEach((suite, i) => {

                console.log("\n" + suites[i].suiteName + "\n");
                const failures = suite.map((test) =>{
                    return test.failedTests
                });
                // console.log("failures", failures);
                const failedTests = [].concat.apply([], failures);
                if (failedTests.length) {
                    failed = true;
                    console.log("\x1b[31m" + failedTests.join("\t\n") + "\x1b[0m");
                } else {
                    console.log("\x1b[32mAll tests passed ^^ \x1b[0m");
                }
            })
            // console.log("\n\n\n", results)
            process.exit(failed ? 1 : 0);
        }
    })
}

runTestSuites([
    parserSuite,
    compilerSuite,
    packageSuite
]);
