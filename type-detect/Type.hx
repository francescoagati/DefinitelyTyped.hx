extern class Library {
	function of(val:Dynamic):String;
	@:overload(function(type:String, test:Dynamic -> Bool):Void { })
	function define(type:String, test:js.RegExp):Void;
	function test(val:Dynamic, type:String):Bool;
}
