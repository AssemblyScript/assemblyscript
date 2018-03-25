/*
 MIT License

 Copyright (c) 2017 Mauro Bringolf

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
*/
// see: https://github.com/maurobringolf/webassembly-floating-point-hex-parser
function parse(input) {
	input = input.toUpperCase();
	const splitIndex = input.indexOf('P');
	let mantissa, exponent;

	if (splitIndex !== -1) {
		mantissa = input.substring(0, splitIndex);
		exponent = parseInt(input.substring(splitIndex + 1));
	} else {
		mantissa = input;
		exponent = 0;
	}

	const dotIndex = mantissa.indexOf('.');

	if (dotIndex !== -1) {
		let integerPart = parseInt(mantissa.substring(0,dotIndex), 16);
		let sign = Math.sign(integerPart);
		integerPart = sign * integerPart;
		const fractionLength = mantissa.length - dotIndex - 1;
		const fractionalPart = parseInt(mantissa.substring(dotIndex + 1), 16);
		const fraction = fractionLength > 0 ? fractionalPart / Math.pow(16, fractionLength) : 0;
		if (sign === 0) {
			if (fraction === 0) {
				mantissa = sign;
			} else {
				if (Object.is(sign, -0)) {
					mantissa = - fraction;
				} else {
					mantissa = fraction;
				}
			}
		} else {
			mantissa = sign * (integerPart + fraction);
		}
	} else {
		mantissa = parseInt(mantissa, 16);
	}

	return mantissa * (splitIndex !== -1 ? Math.pow(2, exponent) : 1);
}

if (typeof process !== "undefined") {
	if (process.argv.length < 3) {
		console.error("Usage: hexfloat 0x1p1023");
		process.exit(1);
	}

	var output = parse(process.argv[2]);
	var double = output.toPrecision(18); // 17
	var single = output.toPrecision(10); // 9

	console.log("<f64>" + double);
	console.log("<f32>" + single);

	if (!(parseFloat(double) === output)) throw Error("double precision error");
	if (!(Math.fround(parseFloat(single)) === Math.fround(output))) throw Error("single precision error");
}
