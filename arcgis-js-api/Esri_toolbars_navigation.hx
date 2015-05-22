extern class Navigation {
	static var PAN : Dynamic;
	static var ZOOM_IN : Dynamic;
	static var ZOOM_OUT : Dynamic;
	function new(map:Map):Void;
	function activate(navType:String):Void;
	function deactivate():Void;
	function isFirstExtent():Bool;
	function isLastExtent():Bool;
	function setZoomSymbol(symbol:Symbol):Void;
	function zoomToFullExtent():Void;
	function zoomToNextExtent():Void;
	function zoomToPrevExtent():Void;
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Extent-history-change, listener:{ var target : Navigation; } -> Void):esri.Handle;
}
