# install https://github.com/AssemblyScript/assemblyscript if not present
asc -v || npm install --save-dev AssemblyScript/assemblyscript

echo compile Typescript to native WebAssembly :
echo asc hello-world.ts -b hello-world.wasm -t hello-world.wast
asc hello-world.ts -b hello-world.wasm -t hello-world.wast

echo load and run the binary in node.js
node -i -e "
	binary = require('fs').readFileSync('hello-world.wasm');
	module = new WebAssembly.Module(binary);
	imports = {console :{log_int : i => console.log(i) }}
  instance= new WebAssembly.Instance(module,imports);
  "

echo load and run the binary in firefox:
echo open "hello-world.html"
# open "hello-world.html"

echo chrome needs (local) server for example:
echo sudo python -m SimpleHTTPServer 80
echo then
echo open "http://localhost/hello-world.html"
