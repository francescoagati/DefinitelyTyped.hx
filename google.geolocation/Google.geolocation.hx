typedef GeolocationStatic = {
	function init():Bool;
	function getCurrentPosition(success:Position -> Void, ?error:PositionError -> Void, ?opts:PositionOptions):Void;
	function showMap(latitude:Float, longitude:Float):Void;
};
extern class Google.geolocationTopLevel {
	static var geo_position_js : GeolocationStatic;
}
