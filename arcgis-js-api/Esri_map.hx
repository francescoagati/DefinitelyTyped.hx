extern class Map {
	var attribution : Attribution;
	var autoResize : Bool;
	var basemapLayerIds : Array<String>;
	var extent : Extent;
	var fadeOnZoom : Bool;
	var force3DTransforms : Bool;
	var geographicExtent : Extent;
	var graphics : GraphicsLayer;
	var graphicsLayerIds : Array<String>;
	var height : Float;
	var id : String;
	var infoWindow : InfoWindowBase;
	var isClickRecenter : Bool;
	var isDoubleClickZoom : Bool;
	var isKeyboardNavigation : Bool;
	var isPan : Bool;
	var isPanArrows : Bool;
	var isRubberBandZoom : Bool;
	var isScrollWheelZoom : Bool;
	var isShiftDoubleClickZoom : Bool;
	var isZoomSlider : Bool;
	var layerIds : Array<String>;
	var loaded : Bool;
	var navigationMode : String;
	var position : Point;
	var root : Node;
	var showAttribution : Bool;
	var snappingManager : SnappingManager;
	var spatialReference : SpatialReference;
	var timeExtent : TimeExtent;
	var visible : Bool;
	var width : Float;
	function new(divId:String, ?options:esri.MapOptions):Void;
	function addLayer(layer:Layer, ?index:Float):Layer;
	function addLayers(layers:Array<Layer>):Void;
	function attr(name:String, value:String):Map;
	function centerAndZoom(mapPoint:Point, levelOrFactor:Float):Dynamic;
	function centerAt(mapPoint:Point):Dynamic;
	function destroy():Void;
	function disableClickRecenter():Void;
	function disableDoubleClickZoom():Void;
	function disableKeyboardNavigation():Void;
	function disableMapNavigation():Void;
	function disablePan():Void;
	function disableRubberBandZoom():Void;
	function disableScrollWheelZoom():Void;
	function disableShiftDoubleClickZoom():Void;
	function disableSnapping():Void;
	function enableClickRecenter():Void;
	function enableDoubleClickZoom():Void;
	function enableKeyboardNavigation():Void;
	function enableMapNavigation():Void;
	function enablePan():Void;
	function enableRubberBandZoom():Void;
	function enableScrollWheelZoom():Void;
	function enableShiftDoubleClickZoom():Void;
	function enableSnapping(?snapOptions:Dynamic):SnappingManager;
	function getBasemap():String;
	function getInfoWindowAnchor(screenCoords:ScreenPoint):String;
	function getLayer(id:String):Layer;
	function getLayersVisibleAtScale():Array<Layer>;
	function getLevel():Float;
	function getMaxScale():Float;
	function getMaxZoom():Float;
	function getMinScale():Float;
	function getMinZoom():Float;
	function getScale():Float;
	function getZoom():Float;
	function hidePanArrows():Void;
	function hideZoomSlider():Void;
	function panDown():Dynamic;
	function panLeft():Dynamic;
	function panLowerLeft():Dynamic;
	function panLowerRight():Dynamic;
	function panRight():Dynamic;
	function panUp():Dynamic;
	function panUpperLeft():Dynamic;
	function panUpperRight():Dynamic;
	function removeAllLayers():Void;
	function removeLayer(layer:Layer):Void;
	function reorderLayer(layer:Layer, index:Float):Void;
	function reposition():Void;
	function resize(?immediate:Bool):Void;
	function setBasemap(basemap:String):Void;
	function setExtent(extent:Extent, ?fit:Bool):Dynamic;
	function setInfoWindowOnClick(enabled:Bool):Void;
	function setLevel(level:Float):Dynamic;
	function setMapCursor(cursor:String):Void;
	function setScale(scale:Float):Dynamic;
	function setTimeExtent(timeExtent:TimeExtent):Void;
	function setTimeSlider(timeSlider:TimeSlider):Void;
	function setVisibility(visible:Bool):Map;
	function setZoom(zoom:Float):Dynamic;
	function showPanArrows():Void;
	function showZoomSlider():Void;
	function toMap(screenPoint:ScreenPoint):Point;
	function toScreen(mapPoint:Point):ScreenPoint;
	@:overload(function(type:Before-unload, listener:{ var map : Map; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Click, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Dbl-click, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Extent-change, listener:{ var delta : Point; var extent : Extent; var levelChange : Bool; var lod : LOD; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Key-down, listener:KeyboardEvent -> Void):esri.Handle { })
	@:overload(function(type:Key-up, listener:KeyboardEvent -> Void):esri.Handle { })
	@:overload(function(type:Layer-add, listener:{ var layer : Layer; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Layer-add-result, listener:{ var error : Error; var layer : Layer; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Layer-remove, listener:{ var layer : Layer; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Layer-reorder, listener:{ var index : Float; var layer : Layer; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Layer-resume, listener:{ var layer : Layer; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Layers-add-result, listener:{ var layers : Array<Layer>; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Layers-removed, listener:{ var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Layers-reordered, listener:{ var layerIds : Array<String>; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Layer-suspend, listener:{ var layer : Layer; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Load, listener:{ var map : Map; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Mouse-down, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-drag, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-drag-end, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-drag-start, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-move, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-out, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-over, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-up, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Mouse-wheel, listener:esri.AGSMouseEvent -> Void):esri.Handle { })
	@:overload(function(type:Pan, listener:{ var delta : Point; var extent : Extent; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Pan-end, listener:{ var delta : Point; var extent : Extent; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Pan-start, listener:{ var extent : Extent; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Reposition, listener:{ var x : Float; var y : Float; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Resize, listener:{ var extent : Extent; var height : Float; var width : Float; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Time-extent-change, listener:{ var timeExtent : TimeExtent; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Unload, listener:{ var map : Map; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Update-end, listener:{ var error : Error; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Update-start, listener:{ var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Zoom, listener:{ var anchor : Point; var extent : Extent; var zoomFactor : Float; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Zoom-end, listener:{ var anchor : Point; var extent : Extent; var level : Float; var zoomFactor : Float; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:Zoom-start, listener:{ var anchor : Point; var extent : Extent; var level : Float; var zoomFactor : Float; var target : Map; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Basemap-change, listener:{ var current : Dynamic; var previous : Dynamic; var target : Map; } -> Void):esri.Handle;
}
