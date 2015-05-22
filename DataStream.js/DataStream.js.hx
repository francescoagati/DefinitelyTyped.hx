extern class DataStream {
	static var BIG_ENDIAN : Bool;
	static var LITTLE_ENDIAN : Bool;
	@:overload(function(arrayBuffer:ArrayBuffer, byteOffset:Float):Void { })
	@:overload(function(arrayBuffer:ArrayBuffer, byteOffset:Float, endianness:Bool):Void { })
	function new(arrayBuffer:ArrayBuffer):Void;
	function save(filename:String):Void;
	var dynamicSize : Bool;
	var byteLength : Float;
	var buffer : ArrayBuffer;
	var byteOffset : Float;
	var dataView : Dynamic;
	function seek(pos:Float):Void;
	function isEof():Bool;
	@:overload(function(length:Float, e:Bool):Int32Array { })
	function mapInt32Array(length:Float):Int32Array;
	@:overload(function(length:Float, e:Bool):Int16Array { })
	function mapInt16Array(length:Float):Int16Array;
	function mapInt8Array(length:Float):Int8Array;
	@:overload(function(length:Float, e:Bool):Uint32Array { })
	function mapUint32Array(length:Float):Uint32Array;
	@:overload(function(length:Float, e:Bool):Uint16Array { })
	function mapUint16Array(length:Float):Uint16Array;
	function mapUint8Array(length:Float):Uint8Array;
	@:overload(function(length:Float, e:Bool):Float64Array { })
	function mapFloat64Array(length:Float):Float64Array;
	@:overload(function(length:Float, e:Bool):Float32Array { })
	function mapFloat32Array(length:Float):Float32Array;
	@:overload(function(length:Float, e:Bool):Int32Array { })
	function readInt32Array(length:Float):Int32Array;
	@:overload(function(length:Float, e:Bool):Int16Array { })
	function readInt16Array(length:Float):Int16Array;
	function readInt8Array(length:Float):Int8Array;
	@:overload(function(length:Float, e:Bool):Uint32Array { })
	function readUint32Array(length:Float):Uint32Array;
	@:overload(function(length:Float, e:Bool):Uint16Array { })
	function readUint16Array(length:Float):Uint16Array;
	function readUint8Array(length:Float):Uint8Array;
	@:overload(function(length:Float):Float64Array { })
	function readFloat64Array(length:Float, e:Bool):Float64Array;
	@:overload(function(length:Float):Float32Array { })
	function readFloat32Array(length:Float, e:Bool):Float32Array;
	@:overload(function(arr:Int32Array):Void { })
	function writeInt32Array(arr:Int32Array, e:Bool):Void;
	@:overload(function(arr:Int16Array):Void { })
	function writeInt16Array(arr:Int16Array, e:Bool):Void;
	function writeInt8Array(arr:Int8Array):Void;
	@:overload(function(arr:Uint32Array):Void { })
	function writeUint32Array(arr:Uint32Array, e:Bool):Void;
	@:overload(function(arr:Uint16Array):Void { })
	function writeUint16Array(arr:Uint16Array, e:Bool):Void;
	function writeUint8Array(arr:Uint8Array):Void;
	@:overload(function(arr:Float64Array, e:Bool):Void { })
	function writeFloat64Array(arr:Float64Array):Void;
	@:overload(function(arr:Float32Array, e:Bool):Void { })
	function writeFloat32Array(arr:Float32Array):Void;
	@:overload(function(e:Bool):Float { })
	function readInt32():Float;
	@:overload(function(e:Bool):Float { })
	function readInt16():Float;
	function readInt8():Float;
	@:overload(function(e:Bool):Float { })
	function readUint32():Float;
	@:overload(function(e:Bool):Float { })
	function readUint16():Float;
	function readUint8():Float;
	@:overload(function(e:Bool):Float { })
	function readFloat32():Float;
	@:overload(function(e:Bool):Float { })
	function readFloat64():Float;
	@:overload(function(v:Float, e:Bool):Void { })
	function writeInt32(v:Float):Void;
	@:overload(function(v:Float, e:Bool):Void { })
	function writeInt16(v:Float):Void;
	function writeInt8(v:Float):Void;
	@:overload(function(v:Float, e:Bool):Void { })
	function writeUint32(v:Float):Void;
	@:overload(function(v:Float, e:Bool):Void { })
	function writeUint16(v:Float):Void;
	function writeUint8(v:Float):Void;
	@:overload(function(v:Float, e:Bool):Void { })
	function writeFloat32(v:Float):Void;
	@:overload(function(v:Float, e:Bool):Void { })
	function writeFloat64(v:Float):Void;
	function readStruct(structDefinition:Array<Dynamic>):Dynamic;
	function writeStruct(structDefinition:Dynamic, struct:Dynamic):Void;
	@:overload(function(length:Float, endianness:Bool):String { })
	function readUCS2String(length:Float):String;
	@:overload(function(str:String, endianness:Bool):Void { })
	@:overload(function(str:String, endianness:Bool, lengthOverride:Float):Void { })
	function writeUCS2String(str:String):Void;
	@:overload(function(length:Float, encoding:String):String { })
	function readString(length:Float):String;
	@:overload(function(s:String, encoding:String):Void { })
	@:overload(function(s:String, encoding:String, length:Float):Void { })
	function writeString(s:String):Void;
	@:overload(function(length:Float):String { })
	function readCString():String;
	@:overload(function(s:String, length:Float):Void { })
	function writeCString(s:String):Void;
	@:overload(function(t:Dynamic, struct:Dynamic):Dynamic { })
	function readType(t:Dynamic):Dynamic;
	function writeType(t:Dynamic, v:Dynamic, struct:Dynamic):Void;
}
