typedef Ucs2 = {
	function decode(string:String):String;
	function encode(codePoints:Array<Float>):String;
};
extern class PunycodeTopLevel {
	static function decode(string:String):String;
	static function encode(string:String):String;
	static function toUnicode(domain:String):String;
	static function toASCII(domain:String):String;
	static var ucs2 : Ucs2;
	static var version : Dynamic;
}
