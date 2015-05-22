extern class JDataView {
	@:overload(function(buffer:String, ?offset:Float, ?length:Float, ?littleEndian:Bool):Void { })
	@:overload(function(buffer:jDataView.Bytes, ?offset:Float, ?length:Float, ?littleEndian:Bool):Void { })
	function new(byteCount:Float, ?offset:Float, ?length:Float, ?littleEndian:Bool):Void;
	var buffer : Dynamic;
	var byteOffset : Float;
	var byteLength : Float;
	function getInt64(?byteOffset:Float, ?littleEndian:Bool):jDataView.Int64;
	function setInt64(byteOffset:Float, value:jDataView.Int64, ?littleEndian:Bool):Void;
	function writeInt64(value:jDataView.Int64, ?littleEndian:Bool):Void;
	function getUint64(?byteOffset:Float, ?littleEndian:Bool):jDataView.Uint64;
	function setUint64(byteOffset:Float, value:jDataView.Uint64, ?littleEndian:Bool):Void;
	function writeUint64(value:jDataView.Uint64, ?littleEndian:Bool):Void;
	function getSigned(bitLength:Float, ?byteOffset:Float):Float;
	function setSigned(byteOffset:Float, value:Float, bitLength:Float):Void;
	function writeSigned(value:Float, bitLength:Float):Void;
	function getUnsigned(bitLength:Float, ?byteOffset:Float):Float;
	function setUnsigned(byteOffset:Float, value:Float, bitLength:Float):Void;
	function writeUnsigned(value:Float, bitLength:Float):Void;
	@:overload(function(bytes:jDataView.Bytes):jDataView.Buffer { })
	@:overload(function(byteCount:Float):jDataView.Buffer { })
	function wrapBuffer(string:String):jDataView.Buffer;
	function createBuffer(bytes:haxe.extern.Rest<Float>):jDataView.Buffer;
	function seek(byteOffset:Float):Float;
	function tell():Float;
	function skip(byteLength:Float):Float;
	function slice(start:Float, ?end:Float, ?forceCopy:Bool):JDataView;
	function getInt8(?byteOffset:Float):Float;
	function getUint8(?byteOffset:Float):Float;
	function getInt16(?byteOffset:Float, ?littleEndian:Bool):Float;
	function getUint16(?byteOffset:Float, ?littleEndian:Bool):Float;
	function getInt32(?byteOffset:Float, ?littleEndian:Bool):Float;
	function getUint32(?byteOffset:Float, ?littleEndian:Bool):Float;
	function getFloat32(?byteOffset:Float, ?littleEndian:Bool):Float;
	function getFloat64(?byteOffset:Float, ?littleEndian:Bool):Float;
	function setInt8(byteOffset:Float, value:Float):Void;
	function setUint8(byteOffset:Float, value:Float):Void;
	function setInt16(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	function setUint16(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	function setInt32(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	function setUint32(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	function setFloat32(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	function setFloat64(byteOffset:Float, value:Float, ?littleEndian:Bool):Void;
	function getChar(?byteOffset:Float):String;
	function setChar(byteOffset:Float, char:String):Void;
	function writeChar(char:String):Void;
	function getString(byteLength:Float, ?byteOffset:Float, ?encoding:String):String;
	function setString(byteOffset:Float, chars:String, ?encoding:String):Void;
	function writeString(chars:String, ?encoding:String):Void;
	function getBytes(length:Float, ?byteOffset:Float, ?littleEndian:Bool, ?toArray:Bool):Array<Float>;
	function setBytes(byteOffset:Float, bytes:Array<Float>, ?littleEndian:Bool):Void;
	function writeBytes(bytes:Array<Float>, ?littleEndian:Bool):Void;
	function writeInt8(value:Float):Void;
	function writeUint8(value:Float):Void;
	function writeInt16(value:Float, ?littleEndian:Bool):Void;
	function writeUint16(value:Float, ?littleEndian:Bool):Void;
	function writeInt32(value:Float, ?littleEndian:Bool):Void;
	function writeUint32(value:Float, ?littleEndian:Bool):Void;
	function writeFloat32(value:Float, ?littleEndian:Bool):Void;
	function writeFloat64(value:Float, ?littleEndian:Bool):Void;
}
