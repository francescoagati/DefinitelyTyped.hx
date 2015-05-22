typedef InterpolationOptions = {
	@:optional
	var smart_count : Float;
	@:optional
	var _ : String;
};
typedef PolyglotOptions = {
	@:optional
	var phrases : Dynamic;
	@:optional
	var locale : String;
};
extern class Polyglot {
	function new(?options:Polyglot.PolyglotOptions):Void;
	function extend(phrases:Dynamic):Void;
	@:overload(function(phrase:String, smartCount:Float):String { })
	@:overload(function(phrase:String, interpolationOptions:Polyglot.InterpolationOptions):String { })
	function t(phrase:String):String;
	function clear():Void;
	function replace(phrases:Dynamic):Void;
	@:overload(function(locale:String):Void { })
	function locale():String;
}
