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
        if (size == 1) {
            console.log(start);
        }
        else {
            let str = [];
            let len = 0;
            for (let i = begin; i < begin + size; i++) {
                let line = `| ${i} | ${this.__memory__.I32[i] >> 2}`;
                len = Math.max(len, line.length);
                str.push(line);
            }
            let space = " ";
            let output = str.map((v, i, a) => v + space.repeat(len - v.length + 1) + "|");
            let dash = "-";
            let line = dash.repeat(len + 2);
            console.log([line, output.join('\n' + line + '\n'), line].join("\n"));
        }
    }
    _log_str(x) {
        return console.log(this.__memory__.getString(x));
    }
    _logi(x) { console.log(x); }
    _logf(x) { console.log(x); }
}
exports.Host = Host;
