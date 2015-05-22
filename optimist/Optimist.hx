typedef Optimist = {
	@:overload(function(args:Dynamic):Optimist { })
	function default(name:String, value:Dynamic):Optimist;
	@:overload(function(names:Array<String>):Optimist { })
	function boolean(name:String):Optimist;
	@:overload(function(names:Array<String>):Optimist { })
	function string(name:String):Optimist;
	function wrap(columns:Float):Optimist;
	function help():Void;
	function showHelp(?fn:haxe.Constraints.Function):Void;
	function usage(message:String):Optimist;
	@:overload(function(key:Float):Optimist { })
	@:overload(function(key:Array<String>):Optimist { })
	function demand(key:String):Optimist;
	function alias(key:String, alias:String):Optimist;
	function describe(key:String, desc:String):Optimist;
	function options(key:String, opt:Dynamic):Optimist;
	function check(fn:haxe.Constraints.Function):Void;
	function parse(args:Array<String>):Optimist;
	var argv : Argv;
};
typedef Argv = {
	>Dynamic,
	var _ : Array<String>;
};
extern class OptimistTopLevel {
	static function optimist(args:Array<String>):optimist.Optimist;
}
extern class OptimistTopLevel {
	static function optimist(args:Array<String>):optimist.Optimist;
}
extern class OptimistTopLevel {
	static function optimist(args:Array<String>):optimist.Optimist;
}
