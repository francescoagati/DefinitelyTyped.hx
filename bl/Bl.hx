extern class BufferList extends stream.Duplex {
	function new(?callback:Error -> Buffer -> Void):Void;
	function append(buffer:Buffer):Void;
	function get(index:Float):Float;
	function slice(?start:Float, ?end:Float):Buffer;
	function copy(dest:Buffer, ?destStart:Float, ?srcStart:Float, ?srcEnd:Float):Void;
	function duplicate():BufferList;
	function consume(?bytes:Float):Void;
	function toString(?encoding:String, ?start:Float, ?end:Float):String;
	var length : Float;
	function readDoubleBE(offset:Float, ?noAssert:Bool):Float;
	function readDoubleLE(offset:Float, ?noAssert:Bool):Float;
	function readFloatBE(offset:Float, ?noAssert:Bool):Float;
	function readFloatLE(offset:Float, ?noAssert:Bool):Float;
	function readInt32BE(offset:Float, ?noAssert:Bool):Float;
	function readInt32LE(offset:Float, ?noAssert:Bool):Float;
	function readUInt32BE(offset:Float, ?noAssert:Bool):Float;
	function readUInt32LE(offset:Float, ?noAssert:Bool):Float;
	function readInt16BE(offset:Float, ?noAssert:Bool):Float;
	function readInt16LE(offset:Float, ?noAssert:Bool):Float;
	function readUInt16BE(offset:Float, ?noAssert:Bool):Float;
	function readUInt16LE(offset:Float, ?noAssert:Bool):Float;
	function readInt8(offset:Float, ?noAssert:Bool):Float;
	function readUInt8(offset:Float, ?noAssert:Bool):Float;
}
