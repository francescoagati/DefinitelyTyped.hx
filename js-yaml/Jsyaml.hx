typedef LoadOptions = {
	@:optional
	var filename : String;
	@:optional
	var strict : Bool;
	@:optional
	var schema : Dynamic;
};
typedef DumpOptions = {
	@:optional
	var indent : Float;
	@:optional
	var skipInvalid : Bool;
	@:optional
	var flowLevel : Float;
	@:optional
	var styles : Dynamic;
	@:optional
	var schema : Dynamic;
};
extern class JsyamlTopLevel {
	static function safeLoad(str:String, ?opts:LoadOptions):Dynamic;
	static function load(str:String, ?opts:LoadOptions):Dynamic;
	static function safeLoadAll(str:String, iterator:Dynamic -> Void, ?opts:LoadOptions):Dynamic;
	static function loadAll(str:String, iterator:Dynamic -> Void, ?opts:LoadOptions):Dynamic;
	static function safeDump(obj:Dynamic, ?opts:DumpOptions):String;
	static function dump(obj:Dynamic, ?opts:DumpOptions):String;
	static var FAILSAFE_SCHEMA : Dynamic;
	static var JSON_SCHEMA : Dynamic;
	static var CORE_SCHEMA : Dynamic;
	static var DEFAULT_SAFE_SCHEMA : Dynamic;
	static var DEFAULT_FULL_SCHEMA : Dynamic;
}
