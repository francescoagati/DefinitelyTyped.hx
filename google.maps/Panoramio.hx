extern class PanoramioLayer extends MVCObject {
	function new(?opts:PanoramioLayerOptions):Void;
	function getMap():Map;
	function getTag():String;
	function getUserId():String;
	function setMap(map:Map):Void;
	function setOptions(options:PanoramioLayerOptions):Void;
	function setTag(tag:String):Void;
	function setUserId(userId:String):Void;
}
typedef PanoramioLayerOptions = {
	@:optional
	var map : Map;
	@:optional
	var suppressInfoWindows : Bool;
	@:optional
	var tag : String;
	@:optional
	var userId : String;
};
typedef PanoramioFeature = {
	var author : String;
	var photoId : String;
	var title : String;
	var url : String;
	var userId : String;
};
typedef PanoramioMouseEvent = {
	var featureDetails : PanoramioFeature;
	var infoWindowHtml : String;
	var latLng : LatLng;
	var pixelOffset : Size;
};
