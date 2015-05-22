typedef Bytes = {
	var length : Float;
};
typedef Buffer = {
	>Bytes,
	var byteLength : Float;
};
extern class Uint64 {
	var lo : Float;
	var hi : Float;
	function new(lo:Float, hi:Float):Void;
	function valueOf():Float;
	static function fromNumber(number:Float):Uint64;
}
extern class Int64 extends Uint64 {
	static function fromNumber(number:Float):Int64;
}
