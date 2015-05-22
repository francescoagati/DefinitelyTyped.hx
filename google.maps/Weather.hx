extern class CloudLayer extends MVCObject {
	function new():Void;
	function getMap():Map;
	function setMap(map:Map):Void;
}
extern class WeatherLayer extends MVCObject {
	function new(?opts:WeatherLayerOptions):Void;
	function getMap():Map;
	function setMap(map:Map):Void;
	function setOptions(options:WeatherLayerOptions):Void;
}
typedef WeatherLayerOptions = {
	var clickable : Bool;
	var labelColor : LabelColor;
	var map : Map;
	var suppressInfoWindows : Bool;
	var temperatureUnits : TemperatureUnit;
	var windSpeedUnits : WindSpeedUnit;
};
@:enum abstract TemperatureUnit(Int) {
	var CELSIUS = 0;
	var FAHRENHEIT = 1;
}
@:enum abstract WindSpeedUnit(Int) {
	var KILOMETERS_PER_HOUR = 0;
	var METERS_PER_SECOND = 1;
	var MILES_PER_HOUR = 2;
}
@:enum abstract LabelColor(Int) {
	var BLACK = 0;
	var WHITE = 1;
}
typedef WeatherMouseEvent = {
	var featureDetails : WeatherFeature;
	var infoWindowHtml : String;
	var latLng : LatLng;
	var pixelOffset : Size;
};
typedef WeatherFeature = {
	var current : WeatherConditions;
	var forecast : Array<WeatherForecast>;
	var location : String;
	var temperatureUnit : TemperatureUnit;
	var windSpeedUnit : WindSpeedUnit;
};
typedef WeatherConditions = {
	var day : String;
	var description : String;
	var high : Float;
	var humidity : Float;
	var low : Float;
	var shortDay : String;
	var temperature : Float;
	var windDirection : String;
	var windSpeed : Float;
};
typedef WeatherForecast = {
	var day : String;
	var description : String;
	var high : Float;
	var low : Float;
	var shortDay : String;
};
