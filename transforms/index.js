const jsonEncoding = require('./json_encoding');

exports.afterParse = function(parser) {
    jsonEncoding.applyTransform(parser);
}
