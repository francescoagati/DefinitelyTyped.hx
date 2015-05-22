typedef IconOptions = {
	@:optional
	var labelAnchor : Point;
};
typedef CircleMarkerOptions = {
	@:optional
	var labelAnchor : Point;
};
typedef Marker = {
	function showLabel():Marker;
	function hideLabel():Marker;
	function setLabelNoHide(noHide:Bool):Void;
	function bindLabel(content:String, ?options:LabelOptions):Marker;
	function unbindLabel():Marker;
	function updateLabelContent(content:String):Void;
	function getLabel():Label;
	function setOpacity(opacity:Float, labelHasSemiTransparency:Bool):Void;
};
typedef CircleMarker = {
	function showLabel():CircleMarker;
	function hideLabel():CircleMarker;
	function setLabelNoHide(noHide:Bool):Void;
	function bindLabel(content:String, ?options:LabelOptions):CircleMarker;
	function unbindLabel():CircleMarker;
	function updateLabelContent(content:String):Void;
	function getLabel():Label;
};
typedef FeatureGroup<T:(ILayer)> = {
	function clearLayers():FeatureGroup<T>;
	function bindLabel(content:String, ?options:LabelOptions):FeatureGroup<T>;
	function unbindLabel():FeatureGroup<T>;
	function updateLabelContent(content:String):FeatureGroup<T>;
};
typedef Path = {
	function bindLabel(content:String, ?options:LabelOptions):Path;
	function unbindLabel():Path;
	function updateLabelContent(content:String):Void;
};
typedef LabelOptions = {
	@:optional
	var className : String;
	@:optional
	var clickable : Bool;
	@:optional
	var direction : String;
	@:optional
	var noHide : Bool;
	@:optional
	var offset : Point;
	@:optional
	var opacity : Float;
	@:optional
	var zoomAnimation : Bool;
};
typedef LabelStatic = {
	>ClassStatic,
	function new(?options:LabelOptions):Label;
};
typedef Label = {
	>IEventPowered<Label>,
	function onAdd(map:Map):Void;
	function onRemove(map:Map):Void;
	function setLatLng(latlng:LatLng):Label;
	function setContent(content:String):Label;
	function close():Void;
	function updateZIndex(zIndex:Float):Void;
	function setOpacity(opacity:Float):Void;
};
extern class LTopLevel {
	static var Label : LabelStatic;
}
