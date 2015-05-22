extern class _Plugin {
	function new(options:Dynamic):Void;
	var anchors : Dynamic;
	var button : Dynamic;
	var canvas : Dynamic;
	var drawing : Dynamic;
	var keys : Dynamic;
	var mouse : Dynamic;
	var node : Dynamic;
	var stencils : Dynamic;
	var type : String;
	var util : Dynamic;
	function connect():Void;
	@:overload(function(handles:Array<Dynamic>):Void { })
	function disconnect(handles:Dynamic):Void;
}
