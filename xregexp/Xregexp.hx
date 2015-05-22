typedef TokenOpts = {
	@:optional
	var scope : String;
	@:optional
	var trigger : Void -> Bool;
	@:optional
	var customFlags : String;
};
extern class XregexpTopLevel {
	static function XRegExp(pattern:String, ?flags:String):js.RegExp;
	static function XRegExp(pattern:js.RegExp):js.RegExp;
}
extern class XregexpTopLevel {
	static function XRegExp(pattern:String, ?flags:String):js.RegExp;
	static function XRegExp(pattern:js.RegExp):js.RegExp;
}
