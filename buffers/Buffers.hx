typedef BuffersStatics = {
	function new(?bufs:haxe.extern.EitherType<Array<Buffer>, Buffers>):Buffers;
	var prototype : Buffers;
};
typedef Buffers = {
	var buffers : Array<Buffer>;
	var length : Float;
	function push(items:haxe.extern.Rest<Buffer>):Float;
	function unshift(items:haxe.extern.Rest<Buffer>):Float;
	function slice(?i:Float, ?j:Float):Buffer;
	function splice(i:Float, ?howMany:Float, items:haxe.extern.Rest<Buffer>):Buffers;
	function copy(dst:Buffer, ?dstStart:Float, ?start:Float, ?end:Float):Float;
	function get(i:Float):Dynamic;
	function set(i:Float, b:Dynamic):Void;
	function indexOf(needle:haxe.extern.EitherType<String, Buffer>, ?offset:Float):Float;
	function toBuffer():Buffer;
	function toString(?encoding:Dynamic, ?start:Float, ?end:Float):String;
};
extern class BuffersTopLevel {
	static var Buffers : BuffersStatics;
}
extern class BuffersTopLevel {
	static var Buffers : BuffersStatics;
}
