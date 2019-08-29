#!/usr/bin/env node
"use strict";
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (Object.hasOwnProperty.call(mod, k)) result[k] = mod[k];
    result["default"] = mod;
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
var __1 = require("..");
var assert_1 = require("assert");
var fs = __importStar(require("fs"));
var snapshots = [
    {
        name: "local-relative",
        tests: [
            {
                input: ["/", "./hello"],
                output: __1.resolveRelative("/", "hello"),
                args: {}
            }
        ]
    }
];
var failed = false;
for (var _i = 0, snapshots_1 = snapshots; _i < snapshots_1.length; _i++) {
    var snapshot = snapshots_1[_i];
    var creating = process.argv.includes("--create");
    var path = __dirname + "/../../snapshots/" + snapshot.name + ".json";
    if (creating) {
        fs.writeFileSync(path, JSON.stringify(snapshot));
        continue;
    }
    var tests = require(path).tests;
    var test = tests[0];
    var result = [];
    try {
        for (var i = 0; i < snapshot.tests.length; i++) {
            test = tests[i];
            result = __1.resolve(test.input[0], test.input[1], test.args);
            assert_1.deepEqual(result, test.output, "Don't match.");
        }
    }
    catch (e) {
        console.error("Snapshot: " + snapshot.name + " failed.\n    expected: " + JSON.stringify(test.output) + "\n    actual: " + JSON.stringify(result));
    }
}
//# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJmaWxlIjoiaW5kZXguanMiLCJzb3VyY2VSb290IjoiIiwic291cmNlcyI6WyIuLi8uLi9zcmMvX190ZXN0X18vaW5kZXgudHMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7OztBQUNBLHdCQUFtRjtBQUNuRixpQ0FBb0M7QUFDcEMscUNBQXlCO0FBUXpCLElBQU0sU0FBUyxHQUFHO0lBQ2hCO1FBQ0UsSUFBSSxFQUFFLGdCQUFnQjtRQUN0QixLQUFLLEVBQUU7WUFDTDtnQkFDRSxLQUFLLEVBQUUsQ0FBQyxHQUFHLEVBQUUsU0FBUyxDQUFDO2dCQUN2QixNQUFNLEVBQUUsbUJBQWUsQ0FBQyxHQUFHLEVBQUUsT0FBTyxDQUFDO2dCQUNyQyxJQUFJLEVBQUUsRUFBRTthQUNUO1NBQ0Y7S0FDRjtDQUNGLENBQUM7QUFFRixJQUFJLE1BQU0sR0FBRyxLQUFLLENBQUM7QUFDbkIsS0FBdUIsVUFBUyxFQUFULHVCQUFTLEVBQVQsdUJBQVMsRUFBVCxJQUFTLEVBQUc7SUFBOUIsSUFBTSxRQUFRLGtCQUFBO0lBQ2pCLElBQU0sUUFBUSxHQUFHLE9BQU8sQ0FBQyxJQUFJLENBQUMsUUFBUSxDQUFDLFVBQVUsQ0FBQyxDQUFDO0lBQ25ELElBQU0sSUFBSSxHQUFHLFNBQVMsR0FBRSxtQkFBbUIsR0FBRyxRQUFRLENBQUMsSUFBSSxHQUFHLE9BQU8sQ0FBQztJQUN0RSxJQUFJLFFBQVEsRUFBRTtRQUNaLEVBQUUsQ0FBQyxhQUFhLENBQUMsSUFBSSxFQUFFLElBQUksQ0FBQyxTQUFTLENBQUMsUUFBUSxDQUFDLENBQUMsQ0FBQztRQUNqRCxTQUFTO0tBQ1Y7SUFDRCxJQUFJLEtBQUssR0FBVyxPQUFPLENBQUMsSUFBSSxDQUFDLENBQUMsS0FBSyxDQUFDO0lBQ3hDLElBQUksSUFBSSxHQUFHLEtBQUssQ0FBQyxDQUFDLENBQUMsQ0FBQTtJQUNuQixJQUFJLE1BQU0sR0FBYyxFQUFFLENBQUM7SUFDM0IsSUFBSTtRQUNGLEtBQUssSUFBSSxDQUFDLEdBQUcsQ0FBQyxFQUFFLENBQUMsR0FBRyxRQUFRLENBQUMsS0FBSyxDQUFDLE1BQU0sRUFBRSxDQUFDLEVBQUUsRUFBRTtZQUM1QyxJQUFJLEdBQUcsS0FBSyxDQUFDLENBQUMsQ0FBQyxDQUFDO1lBQ2hCLE1BQU0sR0FBRyxXQUFPLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxDQUFDLENBQUMsRUFBRSxJQUFJLENBQUMsS0FBSyxDQUFDLENBQUMsQ0FBQyxFQUFFLElBQUksQ0FBQyxJQUFJLENBQUMsQ0FBQztZQUMxRCxrQkFBUyxDQUFDLE1BQU0sRUFBRSxJQUFJLENBQUMsTUFBTSxFQUFFLGNBQWMsQ0FBQyxDQUFDO1NBQ2xEO0tBQ0Y7SUFBQyxPQUFPLENBQUMsRUFBRTtRQUNWLE9BQU8sQ0FBQyxLQUFLLENBQUMsZUFBYSxRQUFRLENBQUMsSUFBSSxnQ0FDNUIsSUFBSSxDQUFDLFNBQVMsQ0FBQyxJQUFJLENBQUMsTUFBTSxDQUFDLHNCQUM3QixJQUFJLENBQUMsU0FBUyxDQUFDLE1BQU0sQ0FBRyxDQUFDLENBQUM7S0FDckM7Q0FDRiJ9