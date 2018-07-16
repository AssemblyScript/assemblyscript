0/**
 * JavaScript ByteArray
 * version : 0.2
 * @author Nidin Vinayakan | nidinthb@gmail.com
 *
 * ActionScript3 ByteArray implementation in JavaScript
 * limitation : size of ByteArray cannot be changed
 */

export class ByteArray {
    static BIG_ENDIAN: string = "bigEndian";
    static LITTLE_ENDIAN: string = "littleEndian";

    static SIZE_OF_BOOLEAN: number = 1;
    static SIZE_OF_INT8: number = 1;
    static SIZE_OF_INT16: number = 2;
    static SIZE_OF_INT32: number = 4;
    static SIZE_OF_INT64: number = 8;
    static SIZE_OF_UINT8: number = 1;
    static SIZE_OF_UINT16: number = 2;
    static SIZE_OF_UINT32: number = 4;
    static SIZE_OF_UINT64: number = 8;
    static SIZE_OF_FLOAT32: number = 4;
    static SIZE_OF_FLOAT64: number = 8;

    private BUFFER_EXT_SIZE: number = 1024; //Buffer expansion size

    array: Uint8Array = null;
    data: DataView;
    private _position: number;
    write_position: number;
    endian: string;

    constructor(buffer?: ArrayBufferLike, offset: number = 0, length: number = 0) {
        if (buffer == undefined) {
            buffer = new ArrayBuffer(this.BUFFER_EXT_SIZE);
            this.write_position = 0;
        } else if (buffer == null) {
            this.write_position = 0;
        } else {
            this.write_position = length > 0 ? length : buffer.byteLength;
        }
        if (buffer) {
            this.data = new DataView(buffer, offset, length > 0 ? length : buffer.byteLength);
        }
        this._position = 0;
        this.endian = ByteArray.BIG_ENDIAN;
    }

    // getter setter
    get buffer(): ArrayBuffer {
        return this.data.buffer;
    }

    set buffer(value: ArrayBuffer) {
        this.data = new DataView(value);
    }

    get dataView(): DataView {
        return this.data;
    }

    set dataView(value: DataView) {
        this.data = value;
        this.write_position = value.byteLength;
    }

    get phyPosition(): number {
        return this._position + this.data.byteOffset;
    }

    get bufferOffset(): number {
        return this.data.byteOffset;
    }

    get position(): number {
        return this._position;
    }

    set position(value: number) {
        if (this._position < value) {
            if (!this.validate(this._position - value)) {
                return;
            }
        }
        this._position = value;
        this.write_position = value > this.write_position ? value : this.write_position;
    }

    get length(): number {
        return this.write_position;
    }

    set length(value: number) {
        this.validateBuffer(value);
    }

    get bytesAvailable(): number {
        return this.data.byteLength - this._position;
    }

    //end
    clear(): void {
        this._position = 0;
    }

    getArray(): Uint8Array {
        if (this.array == null) {
            this.array = new Uint8Array(this.data.buffer, this.data.byteOffset, this.data.byteLength);
        }
        return this.array;
    }

    setArray(array: Uint8Array): void {
        this.array = array;
        this.setBuffer(array.buffer, array.byteOffset, array.byteLength);
    }

    setBuffer(buffer: ArrayBufferLike, offset: number = 0, length: number = 0): void {
        if (buffer) {
            this.data = new DataView(buffer, offset, length > 0 ? length : buffer.byteLength);
            this.write_position = length > 0 ? length : buffer.byteLength;
        } else {
            this.write_position = 0;
        }
        this._position = 0;
    }

    /**
     * Reads a Boolean value from the byte stream. A single byte is read,
     * and true is returned if the byte is nonzero,
     * false otherwise.
     * @return    Returns true if the byte is nonzero, false otherwise.
     */
    readBoolean(): boolean {
        if (!this.validate(ByteArray.SIZE_OF_BOOLEAN)) return null;

        return this.data.getUint8(this.position++) != 0;
    }

    /**
     * Reads a signed byte from the byte stream.
     * The returned value is in the range -128 to 127.
     * @return    An integer between -128 and 127.
     */
    readByte(): number {
        if (!this.validate(ByteArray.SIZE_OF_INT8)) return null;

        return this.data.getInt8(this.position++);
    }

    /**
     * Reads the number of data bytes, specified by the length parameter, from the byte stream.
     * The bytes are read into the ByteArray object specified by the bytes parameter,
     * and the bytes are written into the destination ByteArray starting at the _position specified by offset.
     * @param    bytes    The ByteArray object to read data into.
     * @param    offset    The offset (_position) in bytes at which the read data should be written.
     * @param    length    The number of bytes to read.  The default value of 0 causes all available data to be read.
     */
    readBytes(
        _bytes: ByteArray = null,
        offset: number = 0,
        length: number = 0,
        createNewBuffer: boolean = false,
    ): ByteArray {
        if (length == 0) {
            length = this.bytesAvailable;
        } else if (!this.validate(length)) return null;

        if (createNewBuffer) {
            _bytes = _bytes == null ? new ByteArray(new ArrayBuffer(length)) : _bytes;
            //This method is expensive
            for (var i = 0; i < length; i++) {
                _bytes.data.setUint8(i + offset, this.data.getUint8(this.position++));
            }
        } else {
            //Offset argument ignored
            _bytes = _bytes == null ? new ByteArray(null) : _bytes;
            _bytes.dataView = new DataView(this.data.buffer, this.bufferOffset + this.position, length);
            this.position += length;
        }

        return _bytes;
    }

    /**
     * Reads an IEEE 754 double-precision (64-bit) floating-point number from the byte stream.
     * @return    A double-precision (64-bit) floating-point number.
     */
    readDouble(): number {
        if (!this.validate(ByteArray.SIZE_OF_FLOAT64)) return null;

        var value: number = this.data.getFloat64(this.position, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_FLOAT64;
        return value;
    }

    /**
     * Reads an IEEE 754 single-precision (32-bit) floating-point number from the byte stream.
     * @return    A single-precision (32-bit) floating-point number.
     */
    readFloat(): number {
        if (!this.validate(ByteArray.SIZE_OF_FLOAT32)) return null;

        var value: number = this.data.getFloat32(this.position, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_FLOAT32;
        return value;
    }

    /**
     * Reads a signed 32-bit integer from the byte stream.
     *
     *   The returned value is in the range -2147483648 to 2147483647.
     * @return    A 32-bit signed integer between -2147483648 and 2147483647.
     */
    readInt(): number {
        if (!this.validate(ByteArray.SIZE_OF_INT32)) return null;

        var value = this.data.getInt32(this.position, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_INT32;
        return value;
    }

    /**
     * Reads a signed 64-bit integer from the byte stream.
     *
     *   The returned value is in the range −(2^63) to 2^63 − 1
     * @return    A 64-bit signed integer between −(2^63) to 2^63 − 1
     */
    /*readInt64():Int64{
     if (!this.validate(ByteArray.SIZE_OF_UINT32)) return null;

     var low = this.data.getInt32(this.position,this.endian == ByteArray.LITTLE_ENDIAN);
     this.position += ByteArray.SIZE_OF_INT32;
     var high = this.data.getInt32(this.position,this.endian == ByteArray.LITTLE_ENDIAN);
     this.position += ByteArray.SIZE_OF_INT32;
     return new Int64(low,high);
     }*/

    /**
     * Reads a multibyte string of specified length from the byte stream using the
     * specified character set.
     * @param    length    The number of bytes from the byte stream to read.
     * @param    charSet    The string denoting the character set to use to interpret the bytes.
     *   Possible character set strings include "shift-jis", "cn-gb",
     *   "iso-8859-1", and others.
     *   For a complete list, see Supported Character Sets.
     *   Note: If the value for the charSet parameter
     *   is not recognized by the current system, the application uses the system's default
     *   code page as the character set. For example, a value for the charSet parameter,
     *   as in myTest.readMultiByte(22, "iso-8859-01") that uses 01 instead of
     *   1 might work on your development system, but not on another system.
     *   On the other system, the application will use the system's default code page.
     * @return    UTF-8 encoded string.
     */
    readMultiByte(length: number, charSet?: string): string {
        if (!this.validate(length)) return null;

        return "";
    }

    /**
     * Reads a signed 16-bit integer from the byte stream.
     *
     *   The returned value is in the range -32768 to 32767.
     * @return    A 16-bit signed integer between -32768 and 32767.
     */
    readShort(): number {
        if (!this.validate(ByteArray.SIZE_OF_INT16)) return null;

        var value = this.data.getInt16(this.position, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_INT16;
        return value;
    }

    /**
     * Reads an unsigned byte from the byte stream.
     *
     *   The returned value is in the range 0 to 255.
     * @return    A 32-bit unsigned integer between 0 and 255.
     */
    readUnsignedByte(): number {
        if (!this.validate(ByteArray.SIZE_OF_UINT8)) return null;

        return this.data.getUint8(this.position++);
    }

    /**
     * Reads an unsigned 32-bit integer from the byte stream.
     *
     *   The returned value is in the range 0 to 4294967295.
     * @return    A 32-bit unsigned integer between 0 and 4294967295.
     */
    readUnsignedInt(): number {
        if (!this.validate(ByteArray.SIZE_OF_UINT32)) return null;

        var value = this.data.getUint32(this.position, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_UINT32;
        return value;
    }

    /**
     * Reads a variable sized unsigned integer (VX -> 16-bit or 32-bit) from the byte stream.
     *
     *   A VX is written as a variable length 2- or 4-byte element. If the index value is less than 65,280 (0xFF00),
     *   then the index is written as an unsigned two-byte integer. Otherwise the index is written as an unsigned
     *   four byte integer with bits 24-31 set. When reading an index, if the first byte encountered is 255 (0xFF),
     *   then the four-byte form is being used and the first byte should be discarded or masked out.
     *
     *   The returned value is in the range  0 to 65279 or 0 to 2147483647.
     * @return    A VX 16-bit or 32-bit unsigned integer between 0 to 65279 or 0 and 2147483647.
     */
    readVariableSizedUnsignedInt(): number {
        var value: number;
        var c = this.readUnsignedByte();
        if (c != 0xff) {
            value = c << 8;
            c = this.readUnsignedByte();
            value |= c;
        } else {
            c = this.readUnsignedByte();
            value = c << 16;
            c = this.readUnsignedByte();
            value |= c << 8;
            c = this.readUnsignedByte();
            value |= c;
        }
        return value;
    }

    /**
     * Fast read for WebGL since only Uint16 numbers are expected
     */
    readU16VX(): number {
        return (this.readUnsignedByte() << 8) | this.readUnsignedByte();
    }

    /**
     * Reads an unsigned 64-bit integer from the byte stream.
     *
     *   The returned value is in the range 0 to 2^64 − 1.
     * @return    A 64-bit unsigned integer between 0 and 2^64 − 1
     */
    /*readUnsignedInt64():UInt64{
     if (!this.validate(ByteArray.SIZE_OF_UINT32)) return null;

     var low = this.data.getUint32(this.position,this.endian == ByteArray.LITTLE_ENDIAN);
     this.position += ByteArray.SIZE_OF_UINT32;
     var high = this.data.getUint32(this.position,this.endian == ByteArray.LITTLE_ENDIAN);
     this.position += ByteArray.SIZE_OF_UINT32;
     return new UInt64(low,high);
     }*/

    /**
     * Reads an unsigned 16-bit integer from the byte stream.
     *
     *   The returned value is in the range 0 to 65535.
     * @return    A 16-bit unsigned integer between 0 and 65535.
     */
    readUnsignedShort(): number {
        if (!this.validate(ByteArray.SIZE_OF_UINT16)) return null;

        var value = this.data.getUint16(this.position, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_UINT16;
        return value;
    }

    /**
     * Reads a UTF-8 string from the byte stream.  The string
     * is assumed to be prefixed with an unsigned short indicating
     * the length in bytes.
     * @return    UTF-8 encoded  string.
     */
    readUTF(): string {
        if (!this.validate(ByteArray.SIZE_OF_UINT16)) return null;

        var length: number = this.data.getUint16(this.position, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_UINT16;

        if (length > 0) {
            return this.readUTFBytes(length);
        } else {
            return "";
        }
    }

    /**
     * Reads a sequence of UTF-8 bytes specified by the length
     * parameter from the byte stream and returns a string.
     * @param    length    An unsigned short indicating the length of the UTF-8 bytes.
     * @return    A string composed of the UTF-8 bytes of the specified length.
     */
    readUTFBytes(length: number): string {
        if (!this.validate(length)) return null;

        var _bytes: Uint8Array = new Uint8Array(this.buffer, this.bufferOffset + this.position, length);
        this.position += length;
        /*var _bytes: Uint8Array = new Uint8Array(new ArrayBuffer(length));
         for (var i = 0; i < length; i++) {
         _bytes[i] = this.data.getUint8(this.position++);
         }*/
        return this.decodeUTF8(_bytes);
    }

    readStandardString(length: number): string {
        if (!this.validate(length)) return null;

        var str: string = "";

        for (var i = 0; i < length; i++) {
            str += String.fromCharCode(this.data.getUint8(this.position++));
        }
        return str;
    }

    readStringTillNull(keepEvenByte: boolean = true): string {
        var str: string = "";
        var num: number = 0;
        while (this.bytesAvailable > 0) {
            var _byte: number = this.data.getUint8(this.position++);
            num++;
            if (_byte != 0) {
                str += String.fromCharCode(_byte);
            } else {
                if (keepEvenByte && num % 2 != 0) {
                    this.position++;
                }
                break;
            }
        }
        return str;
    }

    /**
     * Writes a Boolean value. A single byte is written according to the value parameter,
     * either 1 if true or 0 if false.
     * @param    value    A Boolean value determining which byte is written. If the parameter is true,
     *   the method writes a 1; if false, the method writes a 0.
     */
    writeBoolean(value: boolean): void {
        this.validateBuffer(ByteArray.SIZE_OF_BOOLEAN);

        this.data.setUint8(this.position++, value ? 1 : 0);
    }

    /**
     * Writes a byte to the byte stream.
     * The low 8 bits of the
     * parameter are used. The high 24 bits are ignored.
     * @param    value    A 32-bit integer. The low 8 bits are written to the byte stream.
     */
    writeByte(value: number): void {
        this.validateBuffer(ByteArray.SIZE_OF_INT8);

        this.data.setInt8(this.position++, value);
    }

    writeUnsignedByte(value: number): void {
        this.validateBuffer(ByteArray.SIZE_OF_UINT8);

        this.data.setUint8(this.position++, value);
    }

    /**
     * Writes a sequence of length bytes from the
     * specified byte array, bytes,
     * starting offset(zero-based index) bytes
     * into the byte stream.
     *
     *   If the length parameter is omitted, the default
     * length of 0 is used; the method writes the entire buffer starting at
     * offset.
     * If the offset parameter is also omitted, the entire buffer is
     * written. If offset or length
     * is out of range, they are clamped to the beginning and end
     * of the bytes array.
     * @param    bytes    The ByteArray object.
     * @param    offset    A zero-based index indicating the _position into the array to begin writing.
     * @param    length    An unsigned integer indicating how far into the buffer to write.
     */
    writeBytes(_bytes: ByteArray, offset: number = 0, length: number = 0): void {
        this.validateBuffer(length);

        var tmp_data = new DataView(_bytes.buffer);
        for (var i = 0; i < _bytes.length; i++) {
            this.data.setUint8(this.position++, tmp_data.getUint8(i));
        }
    }

    /**
     * Writes an IEEE 754 double-precision (64-bit) floating-point number to the byte stream.
     * @param    value    A double-precision (64-bit) floating-point number.
     */
    writeDouble(value: number): void {
        this.validateBuffer(ByteArray.SIZE_OF_FLOAT64);

        this.data.setFloat64(this.position, value, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_FLOAT64;
    }

    /**
     * Writes an IEEE 754 single-precision (32-bit) floating-point number to the byte stream.
     * @param    value    A single-precision (32-bit) floating-point number.
     */
    writeFloat(value: number): void {
        this.validateBuffer(ByteArray.SIZE_OF_FLOAT32);

        this.data.setFloat32(this.position, value, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_FLOAT32;
    }

    /**
     * Writes a 32-bit signed integer to the byte stream.
     * @param    value    An integer to write to the byte stream.
     */
    writeInt(value: number): void {
        this.validateBuffer(ByteArray.SIZE_OF_INT32);

        this.data.setInt32(this.position, value, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_INT32;
    }

    /**
     * Writes a multibyte string to the byte stream using the specified character set.
     * @param    value    The string value to be written.
     * @param    charSet    The string denoting the character set to use. Possible character set strings
     *   include "shift-jis", "cn-gb", "iso-8859-1", and others.
     *   For a complete list, see Supported Character Sets.
     */
    writeMultiByte(value: string, charSet: string): void {}

    /**
     * Writes a 16-bit integer to the byte stream. The low 16 bits of the parameter are used.
     * The high 16 bits are ignored.
     * @param    value    32-bit integer, whose low 16 bits are written to the byte stream.
     */
    writeShort(value: number): void {
        this.validateBuffer(ByteArray.SIZE_OF_INT16);

        this.data.setInt16(this.position, value, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_INT16;
    }

    writeUnsignedShort(value: number): void {
        this.validateBuffer(ByteArray.SIZE_OF_UINT16);

        this.data.setUint16(this.position, value, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_UINT16;
    }

    /**
     * Writes a 32-bit unsigned integer to the byte stream.
     * @param    value    An unsigned integer to write to the byte stream.
     */
    writeUnsignedInt(value: number): void {
        this.validateBuffer(ByteArray.SIZE_OF_UINT32);

        this.data.setUint32(this.position, value, this.endian == ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_UINT32;
    }

    /**
     * Writes a UTF-8 string to the byte stream. The length of the UTF-8 string in bytes
     * is written first, as a 16-bit integer, followed by the bytes representing the
     * characters of the string.
     * @param    value    The string value to be written.
     */
    writeUTF(value: string): void {
        var utf8bytes: Uint8Array = this.encodeUTF8(value);
        var length: number = utf8bytes.length;

        this.validateBuffer(ByteArray.SIZE_OF_UINT16 + length);

        this.data.setUint16(this.position, length, this.endian === ByteArray.LITTLE_ENDIAN);
        this.position += ByteArray.SIZE_OF_UINT16;
        this.writeUint8Array(utf8bytes);
    }

    /**
     * Writes a UTF-8 string to the byte stream. Similar to the writeUTF() method,
     * but writeUTFBytes() does not prefix the string with a 16-bit length word.
     * @param    value    The string value to be written.
     */
    writeUTFBytes(value: string): void {
        this.writeUint8Array(this.encodeUTF8(value));
    }

    toString(): string {
        return "[ByteArray] length:" + this.length + ", bytesAvailable:" + this.bytesAvailable;
    }

    /****************************/
    /* EXTRA JAVASCRIPT APIs    */
    /****************************/

    /**
     * Writes a Uint8Array to the byte stream.
     * @param    value    The Uint8Array to be written.
     */
    writeUint8Array(_bytes: Uint8Array): void {
        this.validateBuffer(this.position + _bytes.length);

        for (var i = 0; i < _bytes.length; i++) {
            this.data.setUint8(this.position++, _bytes[i]);
        }
    }

    /**
     * Writes a Uint16Array to the byte stream.
     * @param    value    The Uint16Array to be written.
     */
    writeUint16Array(_bytes: Uint16Array): void {
        this.validateBuffer(this.position + _bytes.length);

        for (var i = 0; i < _bytes.length; i++) {
            this.data.setUint16(this.position, _bytes[i], this.endian === ByteArray.LITTLE_ENDIAN);
            this.position += ByteArray.SIZE_OF_UINT16;
        }
    }

    /**
     * Writes a Uint32Array to the byte stream.
     * @param    value    The Uint32Array to be written.
     */
    writeUint32Array(_bytes: Uint32Array): void {
        this.validateBuffer(this.position + _bytes.length);

        for (var i = 0; i < _bytes.length; i++) {
            this.data.setUint32(this.position, _bytes[i], this.endian === ByteArray.LITTLE_ENDIAN);
            this.position += ByteArray.SIZE_OF_UINT32;
        }
    }

    /**
     * Writes a Int8Array to the byte stream.
     * @param    value    The Int8Array to be written.
     */
    writeInt8Array(_bytes: Int8Array): void {
        this.validateBuffer(this.position + _bytes.length);

        for (var i = 0; i < _bytes.length; i++) {
            this.data.setInt8(this.position++, _bytes[i]);
        }
    }

    /**
     * Writes a Int16Array to the byte stream.
     * @param    value    The Int16Array to be written.
     */
    writeInt16Array(_bytes: Int16Array): void {
        this.validateBuffer(this.position + _bytes.length);

        for (var i = 0; i < _bytes.length; i++) {
            this.data.setInt16(this.position, _bytes[i], this.endian === ByteArray.LITTLE_ENDIAN);
            this.position += ByteArray.SIZE_OF_INT16;
        }
    }

    /**
     * Writes a Int32Array to the byte stream.
     * @param    value    The Int32Array to be written.
     */
    writeInt32Array(_bytes: Int32Array): void {
        this.validateBuffer(this.position + _bytes.length);

        for (var i = 0; i < _bytes.length; i++) {
            this.data.setInt32(this.position, _bytes[i], this.endian === ByteArray.LITTLE_ENDIAN);
            this.position += ByteArray.SIZE_OF_INT32;
        }
    }

    /**
     * Writes a Float32Array to the byte stream.
     * @param    value    The Float32Array to be written.
     */
    writeFloat32Array(_bytes: Float32Array): void {
        this.validateBuffer(this.position + _bytes.length);

        for (var i = 0; i < _bytes.length; i++) {
            this.data.setFloat32(this.position, _bytes[i], this.endian === ByteArray.LITTLE_ENDIAN);
            this.position += ByteArray.SIZE_OF_FLOAT32;
        }
    }

    /**
     * Writes a Float64Array to the byte stream.
     * @param    value    The Float64Array to be written.
     */
    writeFloat64Array(_bytes: Float64Array): void {
        this.validateBuffer(this.position + _bytes.length);

        for (var i = 0; i < _bytes.length; i++) {
            this.data.setFloat64(this.position, _bytes[i], this.endian === ByteArray.LITTLE_ENDIAN);
            this.position += ByteArray.SIZE_OF_FLOAT64;
        }
    }

    /**
     * Read a Uint8Array from the byte stream.
     * @param    length An unsigned short indicating the length of the Uint8Array.
     */
    readUint8Array(length: number, createNewBuffer: boolean = true): Uint8Array {
        if (!this.validate(length)) return null;
        if (!createNewBuffer) {
            var result: Uint8Array = new Uint8Array(this.buffer, this.bufferOffset + this.position, length);
            this.position += length;
        } else {
            result = new Uint8Array(new ArrayBuffer(length));
            for (var i = 0; i < length; i++) {
                result[i] = this.data.getUint8(this.position);
                this.position += ByteArray.SIZE_OF_UINT8;
            }
        }
        return result;
    }

    /**
     * Read a Uint16Array from the byte stream.
     * @param    length An unsigned short indicating the length of the Uint16Array.
     */
    readUint16Array(length: number, createNewBuffer: boolean = true): Uint16Array {
        var size: number = length * ByteArray.SIZE_OF_UINT16;
        if (!this.validate(size)) return null;
        if (!createNewBuffer) {
            var result: Uint16Array = new Uint16Array(this.buffer, this.bufferOffset + this.position, length);
            this.position += size;
        } else {
            result = new Uint16Array(new ArrayBuffer(size));
            for (var i = 0; i < length; i++) {
                result[i] = this.data.getUint16(this.position, this.endian === ByteArray.LITTLE_ENDIAN);
                this.position += ByteArray.SIZE_OF_UINT16;
            }
        }
        return result;
    }

    /**
     * Read a Uint32Array from the byte stream.
     * @param    length An unsigned short indicating the length of the Uint32Array.
     */
    readUint32Array(length: number, createNewBuffer: boolean = true): Uint32Array {
        var size: number = length * ByteArray.SIZE_OF_UINT32;
        if (!this.validate(size)) return null;
        if (!createNewBuffer) {
            var result: Uint32Array = new Uint32Array(this.buffer, this.bufferOffset + this.position, length);
            this.position += size;
        } else {
            result = new Uint32Array(new ArrayBuffer(size));
            for (var i = 0; i < length; i++) {
                result[i] = this.data.getUint32(this.position, this.endian === ByteArray.LITTLE_ENDIAN);
                this.position += ByteArray.SIZE_OF_UINT32;
            }
        }
        return result;
    }

    /**
     * Read a Int8Array from the byte stream.
     * @param    length An unsigned short indicating the length of the Int8Array.
     */
    readInt8Array(length: number, createNewBuffer: boolean = true): Int8Array {
        if (!this.validate(length)) return null;
        if (!createNewBuffer) {
            var result: Int8Array = new Int8Array(this.buffer, this.bufferOffset + this.position, length);
            this.position += length;
        } else {
            result = new Int8Array(new ArrayBuffer(length));
            for (var i = 0; i < length; i++) {
                result[i] = this.data.getInt8(this.position);
                this.position += ByteArray.SIZE_OF_INT8;
            }
        }
        return result;
    }

    /**
     * Read a Int16Array from the byte stream.
     * @param    length An unsigned short indicating the length of the Int16Array.
     */
    readInt16Array(length: number, createNewBuffer: boolean = true): Int16Array {
        var size: number = length * ByteArray.SIZE_OF_INT16;
        if (!this.validate(size)) return null;
        if (!createNewBuffer) {
            var result: Int16Array = new Int16Array(this.buffer, this.bufferOffset + this.position, length);
            this.position += size;
        } else {
            result = new Int16Array(new ArrayBuffer(size));
            for (var i = 0; i < length; i++) {
                result[i] = this.data.getInt16(this.position, this.endian === ByteArray.LITTLE_ENDIAN);
                this.position += ByteArray.SIZE_OF_INT16;
            }
        }
        return result;
    }

    /**
     * Read a Int32Array from the byte stream.
     * @param    length An unsigned short indicating the length of the Int32Array.
     */
    readInt32Array(length: number, createNewBuffer: boolean = true): Int32Array {
        var size: number = length * ByteArray.SIZE_OF_INT32;
        if (!this.validate(size)) return null;
        if (!createNewBuffer) {
            if ((this.bufferOffset + this.position) % 4 == 0) {
                var result: Int32Array = new Int32Array(this.buffer, this.bufferOffset + this.position, length);
                this.position += size;
            } else {
                var tmp: Uint8Array = new Uint8Array(new ArrayBuffer(size));
                for (var i = 0; i < size; i++) {
                    tmp[i] = this.data.getUint8(this.position);
                    this.position += ByteArray.SIZE_OF_UINT8;
                }
                result = new Int32Array(tmp.buffer);
            }
        } else {
            result = new Int32Array(new ArrayBuffer(size));
            for (var i = 0; i < length; i++) {
                result[i] = this.data.getInt32(this.position, this.endian === ByteArray.LITTLE_ENDIAN);
                this.position += ByteArray.SIZE_OF_INT32;
            }
        }
        return result;
    }

    /**
     * Read a Float32Array from the byte stream.
     * @param    length An unsigned short indicating the length of the Float32Array.
     */
    readFloat32Array(length: number, createNewBuffer: boolean = true): Float32Array {
        var size: number = length * ByteArray.SIZE_OF_FLOAT32;
        if (!this.validate(size)) return null;
        if (!createNewBuffer) {
            if ((this.bufferOffset + this.position) % 4 == 0) {
                var result: Float32Array = new Float32Array(this.buffer, this.bufferOffset + this.position, length);
                this.position += size;
            } else {
                var tmp: Uint8Array = new Uint8Array(new ArrayBuffer(size));
                for (var i = 0; i < size; i++) {
                    tmp[i] = this.data.getUint8(this.position);
                    this.position += ByteArray.SIZE_OF_UINT8;
                }
                result = new Float32Array(tmp.buffer);
            }
        } else {
            result = new Float32Array(new ArrayBuffer(size));

            for (var i = 0; i < length; i++) {
                result[i] = this.data.getFloat32(this.position, this.endian === ByteArray.LITTLE_ENDIAN);
                this.position += ByteArray.SIZE_OF_FLOAT32;
            }
        }
        return result;
    }

    /**
     * Read a Float64Array from the byte stream.
     * @param    length An unsigned short indicating the length of the Float64Array.
     */
    readFloat64Array(length: number, createNewBuffer: boolean = true): Float64Array {
        var size: number = length * ByteArray.SIZE_OF_FLOAT64;
        if (!this.validate(size)) return null;
        if (!createNewBuffer) {
            var result: Float64Array = new Float64Array(this.buffer, this.position, length);
            this.position += size;
        } else {
            result = new Float64Array(new ArrayBuffer(size));
            for (var i = 0; i < length; i++) {
                result[i] = this.data.getFloat64(this.position, this.endian === ByteArray.LITTLE_ENDIAN);
                this.position += ByteArray.SIZE_OF_FLOAT64;
            }
        }
        return result;
    }

    validate(len: number): boolean {
        //len += this.data.byteOffset;
        if (this.data.byteLength > 0 && this._position + len <= this.data.byteLength) {
            return true;
        } else {
            throw "Error #2030: End of file was encountered.";
        }
    }

    /**********************/
    /*  PRIVATE METHODS   */
    /**********************/
    private validateBuffer(len: number): void {
        this.write_position = len > this.write_position ? len : this.write_position;
        if (this.data.byteLength < len) {
            var tmp: Uint8Array = new Uint8Array(new ArrayBuffer(len + this.BUFFER_EXT_SIZE));
            tmp.set(new Uint8Array(this.data.buffer));
            this.data = new DataView(tmp.buffer);
        }
    }

    /**
     * UTF-8 Encoding/Decoding
     */
    private encodeUTF8(str: string): Uint8Array {
        var pos: number = 0;
        var codePoints = this.stringToCodePoints(str);
        var outputBytes = [];

        while (codePoints.length > pos) {
            var code_point: number = codePoints[pos++];

            if (this.inRange(code_point, 0xd800, 0xdfff)) {
                this.encoderError(code_point);
            } else if (this.inRange(code_point, 0x0000, 0x007f)) {
                outputBytes.push(code_point);
            } else {
                var count, offset;
                if (this.inRange(code_point, 0x0080, 0x07ff)) {
                    count = 1;
                    offset = 0xc0;
                } else if (this.inRange(code_point, 0x0800, 0xffff)) {
                    count = 2;
                    offset = 0xe0;
                } else if (this.inRange(code_point, 0x10000, 0x10ffff)) {
                    count = 3;
                    offset = 0xf0;
                }

                outputBytes.push(this.div(code_point, Math.pow(64, count)) + offset);

                while (count > 0) {
                    var temp = this.div(code_point, Math.pow(64, count - 1));
                    outputBytes.push(0x80 + (temp % 64));
                    count -= 1;
                }
            }
        }
        return new Uint8Array(outputBytes);
    }

    private decodeUTF8(data: Uint8Array): string {
        var fatal: boolean = false;
        var pos: number = 0;
        var result: string = "";
        var code_point: number;
        var utf8_code_point = 0;
        var utf8_bytes_needed = 0;
        var utf8_bytes_seen = 0;
        var utf8_lower_boundary = 0;

        while (data.length > pos) {
            var _byte = data[pos++];

            if (_byte === this.EOF_byte) {
                if (utf8_bytes_needed !== 0) {
                    code_point = this.decoderError(fatal);
                } else {
                    code_point = this.EOF_code_point;
                }
            } else {
                if (utf8_bytes_needed === 0) {
                    if (this.inRange(_byte, 0x00, 0x7f)) {
                        code_point = _byte;
                    } else {
                        if (this.inRange(_byte, 0xc2, 0xdf)) {
                            utf8_bytes_needed = 1;
                            utf8_lower_boundary = 0x80;
                            utf8_code_point = _byte - 0xc0;
                        } else if (this.inRange(_byte, 0xe0, 0xef)) {
                            utf8_bytes_needed = 2;
                            utf8_lower_boundary = 0x800;
                            utf8_code_point = _byte - 0xe0;
                        } else if (this.inRange(_byte, 0xf0, 0xf4)) {
                            utf8_bytes_needed = 3;
                            utf8_lower_boundary = 0x10000;
                            utf8_code_point = _byte - 0xf0;
                        } else {
                            this.decoderError(fatal);
                        }
                        utf8_code_point = utf8_code_point * Math.pow(64, utf8_bytes_needed);
                        code_point = null;
                    }
                } else if (!this.inRange(_byte, 0x80, 0xbf)) {
                    utf8_code_point = 0;
                    utf8_bytes_needed = 0;
                    utf8_bytes_seen = 0;
                    utf8_lower_boundary = 0;
                    pos--;
                    code_point = this.decoderError(fatal, _byte);
                } else {
                    utf8_bytes_seen += 1;
                    utf8_code_point =
                        utf8_code_point + (_byte - 0x80) * Math.pow(64, utf8_bytes_needed - utf8_bytes_seen);

                    if (utf8_bytes_seen !== utf8_bytes_needed) {
                        code_point = null;
                    } else {
                        var cp = utf8_code_point;
                        var lower_boundary = utf8_lower_boundary;
                        utf8_code_point = 0;
                        utf8_bytes_needed = 0;
                        utf8_bytes_seen = 0;
                        utf8_lower_boundary = 0;
                        if (this.inRange(cp, lower_boundary, 0x10ffff) && !this.inRange(cp, 0xd800, 0xdfff)) {
                            code_point = cp;
                        } else {
                            code_point = this.decoderError(fatal, _byte);
                        }
                    }
                }
            }
            //Decode string
            if (code_point !== null && code_point !== this.EOF_code_point) {
                if (code_point <= 0xffff) {
                    if (code_point > 0) result += String.fromCharCode(code_point);
                } else {
                    code_point -= 0x10000;
                    result += String.fromCharCode(0xd800 + ((code_point >> 10) & 0x3ff));
                    result += String.fromCharCode(0xdc00 + (code_point & 0x3ff));
                }
            }
        }
        return result;
    }

    private encoderError(code_point) {
        throw "EncodingError! The code point " + code_point + " could not be encoded.";
    }

    private decoderError(fatal, opt_code_point?): number {
        if (fatal) {
            throw "DecodingError";
        }
        return opt_code_point || 0xfffd;
    }

    private EOF_byte: number = -1;
    private EOF_code_point: number = -1;

    private inRange(a, min, max) {
        return min <= a && a <= max;
    }

    private div(n, d) {
        return Math.floor(n / d);
    }

    private stringToCodePoints(string) {
        /** @type {Array.<number>} */
        var cps = [];
        // Based on http://www.w3.org/TR/WebIDL/#idl-DOMString
        var i = 0,
            n = string.length;
        while (i < string.length) {
            var c = string.charCodeAt(i);
            if (!this.inRange(c, 0xd800, 0xdfff)) {
                cps.push(c);
            } else if (this.inRange(c, 0xdc00, 0xdfff)) {
                cps.push(0xfffd);
            } else {
                // (inRange(c, 0xD800, 0xDBFF))
                if (i === n - 1) {
                    cps.push(0xfffd);
                } else {
                    var d = string.charCodeAt(i + 1);
                    if (this.inRange(d, 0xdc00, 0xdfff)) {
                        var a = c & 0x3ff;
                        var b = d & 0x3ff;
                        i += 1;
                        cps.push(0x10000 + (a << 10) + b);
                    } else {
                        cps.push(0xfffd);
                    }
                }
            }
            i += 1;
        }
        return cps;
    }
}
