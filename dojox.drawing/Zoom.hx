extern class Zoom100 extends dojox.drawing.plugins._Plugin {
	function new(options:Dynamic):Void;
	var anchors : Dynamic;
	var button : Dynamic;
	var canvas : Dynamic;
	var drawing : Dynamic;
	var keys : Dynamic;
	var mouse : Dynamic;
	var node : Dynamic;
	var setup : Dynamic;
	var stencils : Dynamic;
	var type : String;
	var util : Dynamic;
	function connect():Void;
	@:overload(function(handles:Array<Dynamic>):Void { })
	function disconnect(handles:Dynamic):Void;
	function onClick():Void;
	function onZoom100():Void;
}
extern class ZoomIn extends dojox.drawing.plugins._Plugin {
	function new(options:Dynamic):Void;
	var anchors : Dynamic;
	var button : Dynamic;
	var canvas : Dynamic;
	var drawing : Dynamic;
	var keys : Dynamic;
	var mouse : Dynamic;
	var node : Dynamic;
	var setup : Dynamic;
	var stencils : Dynamic;
	var type : String;
	var util : Dynamic;
	function connect():Void;
	@:overload(function(handles:Array<Dynamic>):Void { })
	function disconnect(handles:Dynamic):Void;
	function onClick():Void;
	function onZoomIn():Void;
}
extern class ZoomOut extends dojox.drawing.plugins._Plugin {
	function new(options:Dynamic):Void;
	var anchors : Dynamic;
	var button : Dynamic;
	var canvas : Dynamic;
	var drawing : Dynamic;
	var keys : Dynamic;
	var mouse : Dynamic;
	var node : Dynamic;
	var setup : Dynamic;
	var stencils : Dynamic;
	var type : String;
	var util : Dynamic;
	function connect():Void;
	@:overload(function(handles:Array<Dynamic>):Void { })
	function disconnect(handles:Dynamic):Void;
	function onClick():Void;
	function onZoomOut():Void;
}
