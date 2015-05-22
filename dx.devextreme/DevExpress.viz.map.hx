typedef Area = {
	var type : String;
	function attribute(name:String):Dynamic;
	@:overload(function(state:Bool):Void { })
	function selected():Bool;
};
typedef Marker = {
	var text : String;
	var type : String;
	var url : String;
	var value : Float;
	var values : Array<Float>;
	function attribute(name:String):Dynamic;
	function coordinates():Array<Float>;
	@:overload(function(state:Bool):Void { })
	function selected():Bool;
};
typedef AreaSettings = {
	@:optional
	var borderWidth : Float;
	@:optional
	var borderColor : String;
	@:optional
	var click : Dynamic;
	@:optional
	var color : String;
	@:optional
	var customize : Area -> AreaSettings;
	@:optional
	var hoveredBorderColor : String;
	@:optional
	var hoveredBorderWidth : Float;
	@:optional
	var hoveredColor : String;
	@:optional
	var hoverEnabled : Bool;
	@:optional
	var label : { @:optional
	var dataField : String; @:optional
	var enabled : Bool; @:optional
	var font : viz.core.Font; };
	@:optional
	var palette : Dynamic;
	@:optional
	var paletteSize : Float;
	@:optional
	var colorGroups : Array<Float>;
	@:optional
	var colorGroupingField : String;
	@:optional
	var selectedBorderColor : String;
	@:optional
	var selectedColor : String;
	@:optional
	var selectedBorderWidth : Float;
	@:optional
	var selectionChanged : Area -> Void;
	@:optional
	var selectionMode : String;
};
typedef MarkerSettings = {
	@:optional
	var borderColor : String;
	@:optional
	var borderWidth : Float;
	@:optional
	var click : Dynamic;
	@:optional
	var color : String;
	@:optional
	var customize : Marker -> MarkerSettings;
	@:optional
	var font : Dynamic;
	@:optional
	var hoveredBorderWidth : Float;
	@:optional
	var hoveredBorderColor : String;
	@:optional
	var hoveredColor : String;
	@:optional
	var hoverEnabled : Bool;
	@:optional
	var label : { @:optional
	var enabled : Bool; @:optional
	var font : viz.core.Font; };
	@:optional
	var maxSize : Float;
	@:optional
	var minSize : Float;
	@:optional
	var opacity : Float;
	@:optional
	var selectedBorderWidth : Float;
	@:optional
	var selectedBorderColor : String;
	@:optional
	var selectedColor : String;
	@:optional
	var selectionChanged : Marker -> Void;
	@:optional
	var selectionMode : String;
	@:optional
	var size : Float;
	@:optional
	var type : String;
	@:optional
	var palette : Dynamic;
	@:optional
	var colorGroups : Array<Float>;
	@:optional
	var colorGroupingField : String;
	@:optional
	var sizeGroups : Array<Float>;
	@:optional
	var sizeGroupingField : String;
};
typedef DxVectorMapOptions = {
	>viz.core.BaseWidgetOptions,
	@:optional
	var areaSettings : AreaSettings;
	@:optional
	var background : { @:optional
	var borderColor : String; @:optional
	var color : String; };
	@:optional
	var bounds : Array<Float>;
	@:optional
	var controlBar : { @:optional
	var borderColor : String; @:optional
	var color : String; @:optional
	var enabled : Bool; @:optional
	var margin : Float; @:optional
	var horizontalAlignment : String; @:optional
	var verticalAlignment : String; };
	@:optional
	var loadingIndicator : viz.core.LoadingIndicator;
	@:optional
	var mapData : Dynamic;
	@:optional
	var markers : Dynamic;
	@:optional
	var markerSettings : MarkerSettings;
	@:optional
	var size : viz.core.Size;
	@:optional
	var theme : Dynamic;
	@:optional
	var tooltip : viz.core.Tooltip;
	@:optional
	var legends : Array<Legend>;
	@:optional
	var wheelEnabled : Bool;
	@:optional
	var touchEnabled : Bool;
	@:optional
	var zoomingEnabled : Bool;
	@:optional
	var center : Array<Float>;
	@:optional
	var centerChanged : Array<Float> -> Void;
	@:optional
	var onCenterChanged : { var center : Array<Float>; var component : DxVectorMap; var element : Element; } -> Void;
	@:optional
	var zoomFactor : Float;
	@:optional
	var zoomFactorChanged : Float -> Void;
	@:optional
	var onZoomFactorChanged : { var zoomFactor : Float; var component : DxVectorMap; var element : Element; } -> Void;
	@:optional
	var click : Dynamic;
	@:optional
	var onClick : Dynamic;
	@:optional
	var onAreaClick : Dynamic;
	@:optional
	var onAreaSelectionChanged : { var target : Area; var component : DxVectorMap; var element : Element; } -> Void;
	@:optional
	var onMarkerClick : Dynamic;
	@:optional
	var onMarkerSelectionChanged : { var target : Marker; var component : DxVectorMap; var element : Element; } -> Void;
	@:optional
	var panningEnabled : Bool;
};
typedef Legend = {
	>viz.core.BaseLegend,
	@:optional
	var customizeText : { var start : Float; var end : Float; var index : Float; var color : String; var size : Float; } -> String;
	@:optional
	var customizeHint : { var start : Float; var end : Float; var index : Float; var color : String; var size : Float; } -> String;
	@:optional
	var source : String;
};
extern class DxVectorMap extends viz.core.BaseWidget {
	@:overload(function(element:Element, ?options:DxVectorMapOptions):Void { })
	function new(element:JQuery, ?options:DxVectorMapOptions):Void;
	function showLoadingIndicator():Void;
	function hideLoadingIndicator():Void;
	function render():Void;
	@:overload(function(centerCoordinates:Array<Float>):Void { })
	function center():Array<Float>;
	function clearAreaSelection():Void;
	function clearMarkerSelection():Void;
	function clearSelection():Void;
	function convertCoordinates(x:Float, y:Float):Array<Float>;
	function getAreas():Array<Area>;
	function getMarkers():Array<Marker>;
	@:overload(function(viewportCoordinates:Array<Float>):Void { })
	function viewport():Array<Dynamic>;
	@:overload(function(zoomFactor:Float):Void { })
	function zoomFactor():Float;
}
