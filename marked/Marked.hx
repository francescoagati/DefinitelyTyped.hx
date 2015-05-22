typedef MarkedStatic = {
	function lexer(src:String, ?options:MarkedOptions):Array<Dynamic>;
	@:overload(function(src:String, ?options:MarkedOptions, ?callback:haxe.Constraints.Function):String { })
	function parse(src:String, callback:haxe.Constraints.Function):String;
	function parser(src:Array<Dynamic>, ?options:MarkedOptions):String;
	function setOptions(options:MarkedOptions):Void;
};
typedef MarkedOptions = {
	@:optional
	var gfm : Bool;
	@:optional
	var tables : Bool;
	@:optional
	var breaks : Bool;
	@:optional
	var pedantic : Bool;
	@:optional
	var sanitize : Bool;
	@:optional
	var smartLists : Bool;
	@:optional
	var silent : Bool;
	@:optional
	function highlight(code:String, lang:String, ?callback:haxe.Constraints.Function):String;
	@:optional
	var langPrefix : String;
	@:optional
	var smartypants : Bool;
};
extern class MarkedTopLevel {
	static var marked : MarkedStatic;
}
