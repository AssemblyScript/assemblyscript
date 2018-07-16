(function webpackUniversalModuleDefinition(root, factory) {
	if(typeof exports === 'object' && typeof module === 'object')
		module.exports = factory();
	else if(typeof define === 'function' && define.amd)
		define([], factory);
	else if(typeof exports === 'object')
		exports["xray"] = factory();
	else
		root["xray"] = factory();
})(window, function() {
return /******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./js-app/src/index.ts");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./js-app/src/index.ts":
/*!*****************************!*\
  !*** ./js-app/src/index.ts ***!
  \*****************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

function __export(m) {
    for (var p in m) if (!exports.hasOwnProperty(p)) exports[p] = m[p];
}
Object.defineProperty(exports, "__esModule", { value: true });
/// <reference path="./index.d.ts" />
__export(__webpack_require__(/*! ./wrapper */ "./js-app/src/wrapper/index.ts"));


/***/ }),

/***/ "./js-app/src/wrapper/index.ts":
/*!*************************************!*\
  !*** ./js-app/src/wrapper/index.ts ***!
  \*************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

function __export(m) {
    for (var p in m) if (!exports.hasOwnProperty(p)) exports[p] = m[p];
}
Object.defineProperty(exports, "__esModule", { value: true });
__export(__webpack_require__(/*! ./math */ "./js-app/src/wrapper/math/index.ts"));


/***/ }),

/***/ "./js-app/src/wrapper/math/color-ref.ts":
/*!**********************************************!*\
  !*** ./js-app/src/wrapper/math/color-ref.ts ***!
  \**********************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

Object.defineProperty(exports, "__esModule", { value: true });
const wrap_1 = __webpack_require__(/*! ../wrap */ "./js-app/src/wrapper/wrap.ts");
exports.ColorRef = wrap_1.wrap(class _ColorRef {
    constructor(ref) {
        this.ref = ref;
    }
    read(memory) {
        return memory.position;
    }
    write(memory) {
        return memory.position;
    }
    directWrite(mem, offset) {
        mem[offset++] = this.internal.r;
        mem[offset++] = this.internal.g;
        mem[offset++] = this.internal.b;
        return offset;
    }
    directRead(mem, offset) {
        this.internal.r = mem[offset++];
        this.internal.g = mem[offset++];
        this.internal.b = mem[offset++];
        return offset;
    }
});


/***/ }),

/***/ "./js-app/src/wrapper/math/index.ts":
/*!******************************************!*\
  !*** ./js-app/src/wrapper/math/index.ts ***!
  \******************************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

"use strict";

function __export(m) {
    for (var p in m) if (!exports.hasOwnProperty(p)) exports[p] = m[p];
}
Object.defineProperty(exports, "__esModule", { value: true });
__export(__webpack_require__(/*! ./color-ref */ "./js-app/src/wrapper/math/color-ref.ts"));
// export * from "./vector3-ref";
// export * from "./matrix4-ref";
// export * from "./ray-ref";
// export * from "./hit-ref";
// export * from "./hit-info-ref";


/***/ }),

/***/ "./js-app/src/wrapper/wrap.ts":
/*!************************************!*\
  !*** ./js-app/src/wrapper/wrap.ts ***!
  \************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from /Users/n.vinayakan/workspace/assemblyscript/node_modules/ts-loader/index.js):\nError: Typescript emitted no output for /Users/n.vinayakan/workspace/assemblyscript/examples/path-tracer/js-app/src/wrapper/wrap.ts.\n    at successLoader (/Users/n.vinayakan/workspace/assemblyscript/node_modules/ts-loader/dist/index.js:41:15)\n    at Object.loader (/Users/n.vinayakan/workspace/assemblyscript/node_modules/ts-loader/dist/index.js:21:12)");

/***/ })

/******/ });
});
//# sourceMappingURL=xray.js.map