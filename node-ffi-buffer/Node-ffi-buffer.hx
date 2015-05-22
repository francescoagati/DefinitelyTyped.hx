typedef Buffer = {
	function address():Float;
	function deref():Dynamic;
	function isNull():Bool;
	function readCString(?offset:Float):String;
	function readInt64BE(?offset:Float):String;
	function readInt64LE(?offset:Float):String;
	function readObject(?offset:Float):String;
	function readPointer(?offset:Float):String;
	function readUInt64BE(?offset:Float):String;
	function readUInt64LE(?offset:Float):String;
	function ref():Buffer;
	function reinterpret(size:Float, ?offset:Float):Buffer;
	function reinterpretUntilZeros(size:Float, ?offset:Float):Buffer;
	function writeCString(offset:Float, string:String, ?encoding:String):Void;
	@:overload(function(offset:Float, input:String):Dynamic { })
	function writeInt64BE(offset:Float, input:Float):Dynamic;
	@:overload(function(offset:Float, input:String):Dynamic { })
	function writeInt64LE(offset:Float, input:Float):Dynamic;
	function writeObject(offset:Float, object:Dynamic):Void;
	function writePointer(offset:Float, pointer:Buffer):Void;
	@:overload(function(offset:Float, input:String):Dynamic { })
	function writeUInt64BE(offset:Float, input:Float):Dynamic;
	@:overload(function(offset:Float, input:String):Dynamic { })
	function writeUInt64LE(offset:Float, input:Float):Dynamic;
	function inspect():String;
};
