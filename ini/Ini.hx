typedef EncodeOptions = {
	var section : String;
	var whitespace : Bool;
};
extern class IniTopLevel {
	static function decode(inistring:String):Dynamic;
	static function parse(initstring:String):Dynamic;
	static function encode(object:Dynamic, ?options:EncodeOptions):String;
	static function stringify(object:Dynamic, ?options:EncodeOptions):String;
	static function safe(val:String):String;
	static function unsafe(val:String):String;
}
extern class IniTopLevel {
	static function decode(inistring:String):Dynamic;
	static function parse(initstring:String):Dynamic;
	static function encode(object:Dynamic, ?options:EncodeOptions):String;
	static function stringify(object:Dynamic, ?options:EncodeOptions):String;
	static function safe(val:String):String;
	static function unsafe(val:String):String;
}
