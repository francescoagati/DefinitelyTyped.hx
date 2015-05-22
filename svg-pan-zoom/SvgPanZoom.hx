typedef OptionConfig = {
	@:optional
	var panEnabled : Bool;
	@:optional
	var controlIconsEnabled : Bool;
	@:optional
	var zoomEnabled : Bool;
	@:optional
	var dblClickZoomEnabled : Bool;
	@:optional
	var zoomScaleSensitivity : Float;
	@:optional
	var minZoom : Float;
	@:optional
	var maxZoom : Float;
	@:optional
	var fit : Bool;
	@:optional
	var center : Bool;
	@:optional
	var beforeZoom : Float -> Void;
	@:optional
	var onZoom : Float -> Void;
	@:optional
	var beforePan : IPoint -> Void;
	@:optional
	var onPan : Float -> Float -> Void;
	@:optional
	var refreshRate : Dynamic;
};
typedef IPoint = {
	var x : Float;
	var y : Float;
};
typedef ISvgPanZoom = {
	function enablePan():Void;
	function disablePan():Void;
	function isPanEnabled():Bool;
	function setBeforePan(fn:IPoint -> Void):Void;
	function setOnPan(fn:Float -> Float -> Void):Void;
	function enableZoom():Void;
	function disableZoom():Void;
	function isZoomEnabled():Bool;
	function enableControlIcons():Void;
	function disableControlIcons():Void;
	function isControlIconsEnabled():Bool;
	function enableDblClickZoom():Void;
	function disableDblClickZoom():Void;
	function setZoomScaleSensitivity(scale:Float):Void;
	function setMinZoom(zoom:Float):Void;
	function setMaxZoom(zoom:Float):Void;
	function setBeforeZoom(fn:Float -> Void):Void;
	function setOnZoom(fn:Float -> Void):Void;
	function zoom(scale:Float):Void;
	function zoomIn():Void;
	function zoomOut():Void;
	function zoomBy(scale:Float):Void;
	function resetZoom():Void;
	function getZoom():Float;
	function fit(?dropCache:Bool):Void;
	function center(?dropCache:Bool):Void;
	function resize():Void;
	function pan(point:IPoint):Void;
	function panBy(point:IPoint):Void;
	function getPan():IPoint;
	function zoomAtPoint(scale:Float, point:IPoint):Bool;
	function zoomAtPointBy(scale:Float, point:IPoint):Bool;
};
