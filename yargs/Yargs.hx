typedef Argv = {
	var argv : Dynamic;
	function parse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function(aliases:{ }):Argv { })
	@:overload(function(aliases:{ }):Argv { })
	function alias(shortName:String, longName:String):Argv;
	@:overload(function(defaults:{ }):Argv { })
	function default(key:String, value:Dynamic):Argv;
	@:overload(function(key:String, ?required:Bool):Argv { })
	@:overload(function(keys:Array<String>, msg:String):Argv { })
	@:overload(function(keys:Array<String>, ?required:Bool):Argv { })
	@:overload(function(positionals:Float, ?required:Bool):Argv { })
	@:overload(function(positionals:Float, msg:String):Argv { })
	function demand(key:String, msg:String):Argv;
	@:overload(function(key:String, required:Bool):Argv { })
	@:overload(function(keys:Array<Float>, msg:String):Argv { })
	@:overload(function(keys:Array<Float>, required:Bool):Argv { })
	@:overload(function(positionals:Float, required:Bool):Argv { })
	@:overload(function(positionals:Float, msg:String):Argv { })
	function require(key:String, msg:String):Argv;
	@:overload(function(key:String, required:Bool):Argv { })
	@:overload(function(keys:Array<Float>, msg:String):Argv { })
	@:overload(function(keys:Array<Float>, required:Bool):Argv { })
	@:overload(function(positionals:Float, required:Bool):Argv { })
	@:overload(function(positionals:Float, msg:String):Argv { })
	function required(key:String, msg:String):Argv;
	@:overload(function(keys:Array<String>):Argv { })
	function requiresArg(key:String):Argv;
	@:overload(function(descriptions:{ }):Argv { })
	function describe(key:String, description:String):Argv;
	@:overload(function(options:{ }):Argv { })
	function option(key:String, options:Options):Argv;
	@:overload(function(options:{ }):Argv { })
	function options(key:String, options:Options):Argv;
	@:overload(function(?options:{ }):Argv { })
	function usage(message:String, ?options:{ }):Argv;
	function command(command:String, description:String):Argv;
	function example(command:String, description:String):Argv;
	@:overload(function(func:{ } -> { } -> String):Argv { })
	function check(func:{ } -> { } -> Bool):Argv;
	@:overload(function(keys:Array<String>):Argv { })
	function boolean(key:String):Argv;
	@:overload(function(keys:Array<String>):Argv { })
	function string(key:String):Argv;
	@:overload(function(keys:Array<String>):Argv { })
	function config(key:String):Argv;
	function wrap(columns:Float):Argv;
	function strict():Argv;
	@:overload(function(option:String, ?description:String):Argv { })
	function help():String;
	function version(version:String, ?option:String, ?description:String):Argv;
	function showHelpOnFail(enable:Bool, ?message:String):Argv;
	function showHelp(?func:String -> Dynamic):Argv;
	@:overload(function(keys:Array<String>):Argv { })
	function normalize(key:String):Argv;
	@:overload(function(implies:{ }):Argv { })
	function implies(key:String, value:String):Argv;
	@:overload(function(keys:Array<String>):Argv { })
	function count(key:String):Argv;
	function fail(func:String -> Dynamic):Void;
};
typedef Options = {
	@:optional
	var type : String;
	@:optional
	var alias : Dynamic;
	@:optional
	var demand : Dynamic;
	@:optional
	var required : Dynamic;
	@:optional
	var require : Dynamic;
	@:optional
	var default : Dynamic;
	@:optional
	var boolean : Dynamic;
	@:optional
	var string : Dynamic;
	@:optional
	var count : Dynamic;
	@:optional
	var describe : Dynamic;
	@:optional
	var description : Dynamic;
	@:optional
	var desc : Dynamic;
	@:optional
	var requiresArg : Dynamic;
};
extern class YargsTopLevel {
	static var yargs : yargs.Argv;
}
extern class YargsTopLevel {
	static var yargs : yargs.Argv;
}
