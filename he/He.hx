typedef EncodeOptions = {
	@:optional
	var useNamedReferences : Bool;
	@:optional
	var encodeEverything : Bool;
	@:optional
	var strict : Bool;
	@:optional
	var allowUnsafeSymbols : Bool;
};
typedef Encode = {
	var options : EncodeOptions;
};
typedef DecodeOptions = {
	@:optional
	var isAttributeValue : Bool;
	@:optional
	var strict : Bool;
};
typedef Decode = {
	var options : DecodeOptions;
};
extern class HeTopLevel {
	static var version : String;
	static var encode : Encode;
	static var decode : Decode;
	static function escape(text:String):String;
	static var unescape : Decode;
}
extern class HeTopLevel {
	static var version : String;
	static var encode : Encode;
	static var decode : Decode;
	static function escape(text:String):String;
	static var unescape : Decode;
}
