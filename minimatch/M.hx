typedef IOptions = {
	@:optional
	var debug : Bool;
	@:optional
	var nobrace : Bool;
	@:optional
	var noglobstar : Bool;
	@:optional
	var dot : Bool;
	@:optional
	var noext : Bool;
	@:optional
	var nocase : Bool;
	@:optional
	var nonull : Bool;
	@:optional
	var matchBase : Bool;
	@:optional
	var nocomment : Bool;
	@:optional
	var nonegate : Bool;
	@:optional
	var flipNegate : Bool;
};
typedef IMinimatchStatic = {
	function new(pattern:String, ?options:IOptions):IMinimatch;
};
typedef IMinimatch = {
	function debug():Void;
	function make():Void;
	function parseNegate():Void;
	function braceExpand(pattern:String, options:IOptions):Void;
	function parse(pattern:String, ?isSub:Bool):Void;
	function makeRe():js.RegExp;
	function match(file:String):Bool;
	function matchOne(files:Array<String>, pattern:Array<String>, partial:Dynamic):Bool;
};
extern class MTopLevel {
	static function match(filenames:Array<String>, pattern:String, ?options:IOptions):Array<String>;
	static function filter(pattern:String, ?options:IOptions):String -> Bool;
	static var Minimatch : IMinimatchStatic;
}
