typedef Option = {
	@:optional
	var abbr : String;
	@:optional
	var full : String;
	@:optional
	var flag : Bool;
	@:optional
	var metavar : String;
	@:optional
	var string : String;
	@:optional
	var help : String;
	@:optional
	var default : Dynamic;
	@:optional
	var callback : Dynamic -> String;
	@:optional
	var position : Float;
	@:optional
	var list : Bool;
	@:optional
	var required : Bool;
	@:optional
	var choices : Array<String>;
	@:optional
	var type : String;
	@:optional
	var hidden : Bool;
};
typedef Command = {
	var name : String;
	function options(specs:{ }):Command;
	function option(name:String, spec:Option):Command;
	function callback(func:Dynamic -> Void):Command;
	function help(help:String):Command;
	function usage(usage:String):Command;
};
typedef Parser = {
	function command(name:String):Parser.Command;
	function nocommand():Parser.Command;
	function options(specs:{ }):Parser;
	function option(name:String, spec:Parser.Option):Parser;
	function usage(usage:String):Parser;
	function printer(print:String -> ?Float -> Void):Parser;
	function script(script:String):Parser;
	function help(help:String):Parser;
	function nocolors():Parser;
	function nom(?argv:Array<String>):Dynamic;
	function parse(?argv:Array<String>):Dynamic;
};
