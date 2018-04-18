var http = require("http");
var fs = require("fs");
var open = require("opn");

const PORT = 9080;

http.createServer((req, res) => {
  var url = req.url;
  console.log(req.method + " " + url);
  if (/^\/([\w\-_]+(\.\w+)+)?$/i.test(url)) {
    if (url === "/") url = "/game-of-life.html";
    fs.readFile(__dirname + url, function(err, data) {
      if (err) {
        res.writeHeader(404);
      } else {
        res.writeHeader(200, {
          "Content-Type":
            /\.wasm$/.test(url)       ? "application/wasm" :
            /\.(json|map)$/.test(url) ? "application/json"
                                      : "text/html"
        });
        res.write(data);
      }
      res.end();
    });
  } else {
    res.writeHeader(404);
    res.end();
  }
}).listen(PORT, () => {
  open("http://localhost:9080/");
});
