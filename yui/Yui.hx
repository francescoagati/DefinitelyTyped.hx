typedef YUI = {
	var Test : YUITest.YUITestStatic;
	var Assert : YUITest.IAssert;
	function add(name:String, fn:YUI -> String -> Dynamic, version:String, ?details:Y.IConfig):YUI;
	@:overload(function(receiver:Dynamic, supplier:haxe.Constraints.Function, ?overwrite:Bool, ?whitelist:Array<String>, ?mode:Float, ?merge:Bool):Dynamic { })
	@:overload(function(receiver:haxe.Constraints.Function, supplier:Dynamic, ?overwrite:Bool, ?whitelist:Array<String>, ?mode:Float, ?merge:Bool):Dynamic { })
	@:overload(function(receiver:Dynamic, supplier:Dynamic, ?overwrite:Bool, ?whitelist:Array<String>, ?mode:Float, ?merge:Bool):Dynamic { })
	function mix(receiver:haxe.Constraints.Function, supplier:haxe.Constraints.Function, ?overwrite:Bool, ?whitelist:Array<String>, ?mode:Float, ?merge:Bool):Dynamic;
};
