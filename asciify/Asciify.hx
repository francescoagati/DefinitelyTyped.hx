typedef AsciifyOptions = {
	@:optional
	var font : String;
	@:optional
	var maxWidth : Float;
	@:optional
	var color : String;
};
typedef AsciifyCallback = { };
extern class AsciifyTopLevel {
	static function asciify(text:String, callback:AsciifyCallback):Void;
	static function asciify(text:String, options:String, callback:AsciifyCallback):Void;
	static function asciify(text:String, options:AsciifyOptions, callback:AsciifyCallback):Void;
	static function getFonts(callback:Error -> Array<String> -> Void):Void;
}
extern class AsciifyTopLevel {
	static function asciify(text:String, callback:AsciifyCallback):Void;
	static function asciify(text:String, options:String, callback:AsciifyCallback):Void;
	static function asciify(text:String, options:AsciifyOptions, callback:AsciifyCallback):Void;
	static function getFonts(callback:Error -> Array<String> -> Void):Void;
}
extern class AsciifyTopLevel {
	static function asciify(text:String, callback:AsciifyCallback):Void;
	static function asciify(text:String, options:String, callback:AsciifyCallback):Void;
	static function asciify(text:String, options:AsciifyOptions, callback:AsciifyCallback):Void;
	static function getFonts(callback:Error -> Array<String> -> Void):Void;
}
