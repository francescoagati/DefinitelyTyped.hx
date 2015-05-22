typedef Setup = {
	var button : Bool;
	var iconClass : String;
	var name : String;
	var tooltip : String;
};
typedef Zoom = {
	function Zoom100():Void;
	function ZoomIn():Void;
	function ZoomOut():Void;
};
typedef Setup = {
	var iconClass : String;
	var name : String;
	var tooltip : String;
};
extern class Zoom extends dojox.drawing.plugins._Plugin {
	function new(options:Dynamic):Void;
	var anchors : Dynamic;
	var baseClass : String;
	var botClass : String;
	var button : Dynamic;
	var canvas : Dynamic;
	var drawing : Dynamic;
	var keys : Dynamic;
	var maxZoom : Float;
	var midClass : String;
	var minZoom : Float;
	var mouse : Dynamic;
	var node : Dynamic;
	var stencils : Dynamic;
	var topClass : String;
	var type : String;
	var util : Dynamic;
	var zoomFactor : Float;
	var zoomInc : Float;
	function connect():Void;
	@:overload(function(handles:Array<Dynamic>):Void { })
	function disconnect(handles:Dynamic):Void;
	function makeButton(name:Dynamic, cls:Dynamic):Void;
	function onZoom100(evt:MouseEvent):Void;
	function onZoomIn(evt:MouseEvent):Void;
	function onZoomOut(evt:MouseEvent):Void;
}
