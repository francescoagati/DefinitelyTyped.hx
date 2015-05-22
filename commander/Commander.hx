typedef ICommandStatic = {
	function new(?name:String):ICommand;
};
typedef ICommand = {
	>NodeJS.EventEmitter,
	var args : Array<String>;
	var _args : Array<{ var required : Bool; var name : String; }>;
	function command(name:String, ?desc:String):ICommand;
	function addImplicitHelpCommand():Void;
	function parseExpectedArgs(args:Array<String>):ICommand;
	function action(fn:haxe.extern.Rest<Dynamic> -> Void):ICommand;
	@:overload(function(flags:String, ?description:String, ?defaultValue:Dynamic):ICommand { })
	function option(flags:String, ?description:String, ?fn:Dynamic -> Dynamic -> Void, ?defaultValue:Dynamic):ICommand;
	function parse(argv:Array<String>):ICommand;
	function executeSubCommand(argv:Array<String>, args:Array<String>, unknown:Array<String>):Dynamic;
	function normalize(args:Array<String>):Array<String>;
	function parseArgs(args:Array<String>, unknown:Array<String>):ICommand;
	function optionFor(arg:String):IOption;
	function parseOptions(argv:Array<String>):{ var args : Array<String>; var unknown : Array<String>; };
	function opts():Dynamic;
	function missingArgument(name:String):Void;
	function optionMissingArgument(option:{ var flags : String; }, ?flag:String):Void;
	function unknownOption(flag:String):Void;
	function version(str:String, ?flags:String):ICommand;
	@:overload(function():String { })
	function description(str:String):ICommand;
	@:overload(function():String { })
	function alias(alias:String):ICommand;
	@:overload(function():String { })
	function usage(str:String):ICommand;
	function name():String;
	function largestOptionLength():Float;
	function optionHelp():String;
	function commandHelp():String;
	function helpInformation():String;
	function outputHelp():Void;
	function help():Void;
};
typedef IOptionStatic = {
	function new(flags:String, ?description:String):IOption;
};
typedef IOption = {
	var flags : String;
	var required : Bool;
	var optional : Bool;
	var bool : Bool;
	@:optional
	var short : String;
	var long : String;
	var description : String;
	function name():String;
	function is(arg:String):Bool;
};
typedef IExportedCommand = {
	>ICommand,
	var Command : commander.ICommandStatic;
	var Option : commander.IOptionStatic;
};
extern class CommanderTopLevel {
	static var _tmp : commander.IExportedCommand;
}
extern class CommanderTopLevel {
	static var _tmp : commander.IExportedCommand;
}
