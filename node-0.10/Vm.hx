typedef Context = { };
typedef Script = {
	function runInThisContext():Void;
	function runInNewContext(?sandbox:Context):Void;
};
extern class VmTopLevel {
	static function runInThisContext(code:String, ?filename:String):Void;
	static function runInNewContext(code:String, ?sandbox:Context, ?filename:String):Void;
	static function runInContext(code:String, context:Context, ?filename:String):Void;
	static function createContext(?initSandbox:Context):Context;
	static function createScript(code:String, ?filename:String):Script;
}
