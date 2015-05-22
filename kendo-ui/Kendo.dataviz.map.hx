extern class Marker {

}
extern class Extent extends kendo.Class {
	var options : ExtentOptions;
	function contains(location:kendo.dataviz.map.Location):Bool;
	function containsAny(locations:Dynamic):Bool;
	function center():kendo.dataviz.map.Location;
	function include(location:kendo.dataviz.map.Location):Void;
	function includeAll(locations:Dynamic):Void;
	function edges():Dynamic;
	function toArray():Dynamic;
	function overlaps(extent:kendo.dataviz.map.Extent):Bool;
	@:overload(function(a:kendo.dataviz.map.Location, ?b:Dynamic):kendo.dataviz.map.Extent { })
	@:overload(function(a:Dynamic, ?b:kendo.dataviz.map.Location):kendo.dataviz.map.Extent { })
	@:overload(function(a:Dynamic, ?b:Dynamic):kendo.dataviz.map.Extent { })
	static function create(a:kendo.dataviz.map.Location, ?b:kendo.dataviz.map.Location):kendo.dataviz.map.Extent;
	var nw : kendo.dataviz.map.Location;
	var se : kendo.dataviz.map.Location;
}
typedef ExtentOptions = {
	@:optional
	var name : String;
};
typedef ExtentEvent = {
	var sender : Extent;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Layer extends kendo.Class {
	var options : LayerOptions;
	function show():Void;
	function hide():Void;
	var map : kendo.dataviz.ui.Map;
}
typedef LayerOptions = {
	@:optional
	var name : String;
};
typedef LayerEvent = {
	var sender : Layer;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
extern class Location extends kendo.Class {
	var options : LocationOptions;
	function clone():kendo.dataviz.map.Location;
	function destination(destination:kendo.dataviz.map.Location):Float;
	function distanceTo(distance:Float, bearing:Float):kendo.dataviz.map.Location;
	function equals(location:kendo.dataviz.map.Location):Bool;
	function round(digits:Float):kendo.dataviz.map.Location;
	function toArray():Dynamic;
	function toString():String;
	function wrap():kendo.dataviz.map.Location;
	@:overload(function(lat:Dynamic, ?lng:Float):kendo.dataviz.map.Location { })
	@:overload(function(lat:kendo.dataviz.map.Location, ?lng:Float):kendo.dataviz.map.Location { })
	static function create(lat:Float, ?lng:Float):kendo.dataviz.map.Location;
	static function fromLngLat(lnglat:Dynamic):kendo.dataviz.map.Location;
	static function fromLatLng(lnglat:Dynamic):kendo.dataviz.map.Location;
	var lat : Float;
	var lng : Float;
}
typedef LocationOptions = {
	@:optional
	var name : String;
};
typedef LocationEvent = {
	var sender : Location;
	function isDefaultPrevented():Bool;
	var preventDefault : haxe.Constraints.Function;
};
