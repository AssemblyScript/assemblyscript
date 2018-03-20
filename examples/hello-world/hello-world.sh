# install https://github.com/AssemblyScript/assemblyscript if not present
asc -v || npm install --save-dev AssemblyScript/assemblyscript

# compile Typescript to native WebAssembly 
asc hello-world.ts -b hello-world.wasm -t hello-world.wast

# load and run the binary in node.js
node -i -e "\
	binary = require('fs').readFileSync('hello-world.wasm');\
	module = new WebAssembly.Module(binary);\
	imports = {console :{log_int : i => console.log(i) }}
  instance= new WebAssembly.Instance(module,imports);\
  "

# load and run the binary in the browser:
# open "hello-world.html"

# chrome needs 'proper' server for example:
# open "http://localhost/hello-world.html"
# sudo python -m SimpleHTTPServer 80
