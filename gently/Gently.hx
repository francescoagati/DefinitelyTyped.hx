extern class Gently {
	function new():Void;
	var hijacked : Array<Dynamic>;
	@:overload(function(obj:Dynamic, method:String, count:Float, stubFn:haxe.extern.Rest<Dynamic> -> Dynamic):haxe.extern.Rest<Dynamic> -> Dynamic { })
	function expect(obj:Dynamic, method:String, ?stubFn:haxe.extern.Rest<Dynamic> -> Dynamic):haxe.extern.Rest<Dynamic> -> Dynamic;
	function restore(obj:Dynamic, method:String):Void;
	function hijack(realRequire:String -> Dynamic):String -> Dynamic;
	function stub(location:String, ?exportsName:String):Dynamic;
	function verify(?msg:String):Void;
}
