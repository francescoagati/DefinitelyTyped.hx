extern class _Marker {
	function new(markerData:Dynamic, map:Dynamic):Void;
	function hide():Void;
	function show(featureId:Dynamic, evt:Dynamic):Void;
}
extern class Feature {
	function new(parent:Dynamic, name:Dynamic, shapeData:Dynamic):Void;
	var isSelected : Bool;
	var markerText : Dynamic;
	function init():Void;
	function select(selected:Bool):Void;
	function setValue(value:Float):Void;
	function unsetColor():Void;
	function unsetValue():Void;
}
extern class KeyboardInteractionSupport {
	function new(map:dojox.geo.charting.Map, ?options:Dynamic):Void;
	function connect():Void;
	function disconnect():Void;
	function keydownHandler(e:KeyboardEvent):Void;
	function onBlur():Void;
	function onFocus(e:Event):Void;
}
extern class TouchInteractionSupport {
	function new(map:dojox.geo.charting.Map):Void;
	function connect():Void;
	function disconnect():Void;
}
extern class MouseInteractionSupport {
	function new(map:dojox.geo.charting.Map, ?options:Dynamic):Void;
	var mouseClickThreshold : Float;
	function connect():Void;
	function disconnect():Void;
	function setEnablePan(enable:Bool):Void;
	function setEnableZoom(enable:Bool):Void;
}
extern class Map {
	function new(container:HTMLElement, shapeData:String):Void;
	var colorAnimationDuration : Float;
	var dataBindingAttribute : Dynamic;
	var dataBindingValueFunction : Dynamic;
	var dataStore : Dynamic;
	var defaultColor : String;
	var enableFeatureZoom : Bool;
	var highlightColor : String;
	var series : Array<Dynamic>;
	var showTooltips : Bool;
	@:overload(function(series:Array<Dynamic>):Void { })
	function addSeries(series:URL):Void;
	function deselectAll():Void;
	function fitToMapArea(mapArea:Dynamic, pixelMargin:Float, animate:Bool, onAnimationEnd:haxe.Constraints.Function):Void;
	function fitToMapContents(pixelMargin:Float, animate:Bool, onAnimationEnd:haxe.Constraints.Function):Void;
	function getMapCenter():Dynamic;
	function getMapScale():Dynamic;
	function mapCoordsToScreenCoords(mapX:Float, mapY:Float):Dynamic;
	function resize(adjustMapCenter:Bool, adjustMapScale:Bool, animate:Bool):Void;
	function screenCoordsToMapCoords(screenX:Float, screenY:Float):Dynamic;
	function setDataBindingAttribute(prop:String):Void;
	function setDataBindingValueFunction(valueFunction:haxe.Constraints.Function):Void;
	function setDataStore(dataStore:dojo.data.ItemFileReadStore, dataBindingProp:String):Void;
	function setMapCenter(centerX:Float, centerY:Float, animate:Bool, onAnimationEnd:haxe.Constraints.Function):Void;
	function setMapCenterAndScale(centerX:Float, centerY:Float, scale:Float, animate:Bool, onAnimationEnd:haxe.Constraints.Function):Void;
	function setMapScale(scale:Float, animate:Bool, onAnimationEnd:haxe.Constraints.Function):Void;
	function setMapScaleAt(scale:Float, fixedMapX:Float, fixedMapY:Float, animate:Bool, onAnimationEnd:haxe.Constraints.Function):Void;
	function setMarkerData(markerFile:String):Void;
	function onFeatureClick(feature:dojox.geo.charting.Feature):Void;
	function onFeatureOver(feature:dojox.geo.charting.Feature):Void;
	function onZoomEnd(feature:dojox.geo.charting.Feature):Void;
}
