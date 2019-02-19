"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const ASImport_1 = require("./ASImport");
class Host extends ASImport_1.ASImport {
    debug() {
        // tslint:disable-next-line
        debugger;
    }
    _log(start, sizeof) {
        let begin = start >> 2;
        let size = sizeof >> 2;
        let str = [];
        let len = 0;
        for (let i = begin; i < begin + size; i++) {
            let line = `| ${i} | ${this.memory.I32[i] >> 2}`;
            len = Math.max(len, line.length);
            str.push(line);
        }
        let space = " ";
        let output = str.map((v, i, a) => v + space.repeat(len - v.length + 1) + "|");
        let dash = "-";
        let line = dash.repeat(len + 2);
        Host.stdout([line, output.join('\n' + line + '\n'), line].join("\n"));
    }
    _log_str(x) {
        return Host.stdout(x);
    }
    _logi(x) { Host.stdout(x.toString()); }
    _logf(x) { Host.stdout(x.toString()); }
}
Host.stdout = console.log;
exports.Host = Host;
