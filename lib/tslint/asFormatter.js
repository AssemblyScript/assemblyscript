"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = Object.setPrototypeOf ||
        ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
        function (d, b) { for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p]; };
    return function (d, b) {
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
exports.__esModule = true;
var abstractFormatter_1 = require("tslint/lib/language/formatter/abstractFormatter");
var colorBlue = "\u001b[93m";
var colorYellow = "\u001b[93m";
var colorRed = "\u001b[91m";
var colorReset = "\u001b[0m";
var Formatter = /** @class */ (function (_super) {
    __extends(Formatter, _super);
    function Formatter() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    Formatter.prototype.format = function (failures) {
        return this.mapToMessages(failures).join("\n") + "\n";
    };
    Formatter.prototype.mapToMessages = function (failures) {
        var _this = this;
        return failures.map(function (failure) {
            var fileName = failure.getFileName();
            var failureString = failure.getFailure();
            var ruleName = failure.getRuleName();
            var lineAndCharacter = failure.getStartPosition().getLineAndCharacter();
            var positionTuple = ":" + (lineAndCharacter.line + 1) + ":" + (lineAndCharacter.character + 1);
            if (_this.lastSeverity == failure.getRuleSeverity() && _this.lastFailure == failureString) {
                return "  in " + fileName + positionTuple;
            }
            else {
                var message = _this.lastSeverity ? "\n" : "";
                switch (_this.lastSeverity = failure.getRuleSeverity()) {
                    case "warning":
                        message += colorYellow + "WARNING:" + colorReset;
                        break;
                    case "error":
                        message += colorRed + "ERROR:" + colorReset;
                        break;
                    default:
                        message += failure.getRuleSeverity();
                        break;
                }
                _this.lastFailure = failureString;
                return message + " " + failureString + " [" + ruleName + "]\n  in " + fileName + positionTuple;
            }
        });
    };
    Formatter.metadata = {
        formatterName: "as",
        description: "AssemblyScript's TSLint formatter.",
        sample: "Similar to ASC's output.",
        consumer: "human"
    };
    return Formatter;
}(abstractFormatter_1.AbstractFormatter));
exports.Formatter = Formatter;
