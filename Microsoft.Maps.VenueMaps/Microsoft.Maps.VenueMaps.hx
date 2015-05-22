typedef MouseResponse = {
	var eventArgs : MouseEventArgs;
};
typedef Directory = {
	function addToDOM(div:HTMLElement, sortOrder:DirectorySortOrder, to_group_or_not:DirectoryGrouping):Void;
	function createUIElements():Void;
	function handleMouseClick(response:MouseResponse):Void;
	function handleMouseOut(response:MouseResponse):Void;
	function handleMouseOver(response:MouseResponse):Void;
	function isInDOM():Bool;
	function removeFromDOM():Void;
	function setHeight(height:Float):Void;
	var click : MouseEventArgs -> Dynamic;
	var mouseOut : MouseEventArgs -> Dynamic;
	var mouseOver : MouseEventArgs -> Dynamic;
};
@:enum abstract DirectoryGrouping(Int) {
	var byCategory = 0;
	var none = 1;
}
@:enum abstract DirectorySortOrder(Int) {
	var alphabetical = 0;
	var byFloor = 1;
}
typedef Floor = {
	var name : String;
	var primitives : Array<Primitive>;
	var zoomRange : Array<Float>;
};
typedef Footprint = {
	var polygons : Array<Polygon>;
	var zoomRange : Array<Float>;
};
typedef Metadata = {
	var CenterLatitude : Float;
	var CenterLongitude : Float;
	var DefaultFloor : String;
	var FloorHeader : String;
	var Floors : Array<Floor>;
	var Footprint : Footprint;
	var MapId : String;
	var MapType : String;
	var Name : String;
	var YpId : String;
};
typedef NearbyVenue = {
	var distance : Float;
	var metadata : Metadata;
};
typedef NearbyVenueOptions = {
	var callback : Array<VenueMap> -> Dynamic;
	var location : Location;
	var map : Map;
	var radius : Float;
};
typedef Polygon = {
	var bounds : LocationRect;
	var center : Location;
	var locations : Array<Location>;
};
typedef Primitive = {
	var bounds : LocationRect;
	var businessId : String;
	var categoryId : String;
	var categoryName : String;
	var center : Location;
	var floor : Floor;
	var id : String;
	var locations : Array<Location>;
	var name : String;
	function highlight():Void;
	function unhighlight():Void;
};
typedef VenueMap = {
	var address : String;
	var bestMapView : ViewOptions;
	var businessId : String;
	var center : Location;
	var defaultFloor : String;
	var directory : Directory;
	var floorHeader : String;
	var floors : Array<Floor>;
	var footprint : Footprint;
	var id : String;
	var name : String;
	var phoneNumber : String;
	var type : String;
	function dispose():Void;
	function getActiveFloor():String;
	function hide():Void;
	function setActiveFloor(floor:String):Void;
	function show():Void;
	var click : Primitive -> Dynamic;
	var close : Void -> Dynamic;
	var footprintclick : Primitive -> Dynamic;
	var mouseout : Primitive -> Dynamic;
	var mouseover : Primitive -> Dynamic;
};
typedef VenueMapCreationOptions = {
	var error : Float -> Dynamic -> Dynamic;
	var success : VenueMap -> Dynamic -> Dynamic;
	var venueMapId : String;
};
extern class VenueMapFactory {
	function new(map:Map):Void;
	function create(options:VenueMapCreationOptions):Void;
	function getNearbyVenues(options:NearbyVenueOptions):Void;
}
