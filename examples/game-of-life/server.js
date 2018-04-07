var open = require('opn');
var http = require('http');
var fs = require('fs');

const PORT = 9080; 

fs.readFile('./game-of-life.html', function (err, html) {

    if (err) throw err;    

    http.createServer(function(request, response) {  
        response.writeHeader(200, {"Content-Type": "text/html"});  
        response.write(html);  
        response.end();  
    }).listen(PORT);
});

open('http://localhost:9080/game-of-life.html');