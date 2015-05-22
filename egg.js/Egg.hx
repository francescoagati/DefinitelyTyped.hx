extern class Egg {
	@:overload(function(keySequence:String, fn:Void -> Dynamic):Void { })
	@:overload(function(keySequence:String, fn:Void -> Dynamic, metadata:Dynamic):Void { })
	function new():Void;
	@:overload(function(keySequence:String, fn:Void -> Dynamic, metadata:Dynamic):Egg { })
	function AddCode(keySequence:String, fn:Void -> Dynamic):Egg;
	function AddHook(fn:Void -> Dynamic):Egg;
	function Listen():Egg;
	@:overload(function(keySequence:String, fn:Void -> Dynamic, metadata:Dynamic):Egg { })
	function addCode(keySequence:String, fn:Void -> Dynamic):Egg;
	function addHook(fn:Void -> Dynamic):Egg;
	function listen():Egg;
}
