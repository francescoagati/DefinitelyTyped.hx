extern class Geocoder {
	var activeGeocoder : Dynamic;
	var activeGeocoderIndex : Float;
	var autoComplete : Bool;
	var autoNavigate : Bool;
	var geocoderMenu : Bool;
	var geocoders : Array<Dynamic>;
	var graphicsLayer : GraphicsLayer;
	var highlightLocation : Bool;
	var maxLocations : Float;
	var minCharacters : Float;
	var results : Array<Dynamic>;
	var searchDelay : Float;
	var showResults : Bool;
	var symbol : Symbol;
	var theme : String;
	var value : String;
	var zoomScale : Float;
	@:overload(function(params:esri.GeocoderOptions, srcNodeRef:String):Void { })
	function new(params:esri.GeocoderOptions, srcNodeRef:Node):Void;
	function blur():Void;
	function clear():Void;
	function destroy():Void;
	function find():Dynamic;
	function focus():Void;
	function hide():Void;
	function select(result:Dynamic):Void;
	function show():Void;
	function startup():Void;
	@:overload(function(type:Clear, listener:{ var target : Geocoder; } -> Void):esri.Handle { })
	@:overload(function(type:Find-results, listener:{ var results : Dynamic; var target : Geocoder; } -> Void):esri.Handle { })
	@:overload(function(type:Geocoder-select, listener:{ var geocoder : Dynamic; var target : Geocoder; } -> Void):esri.Handle { })
	@:overload(function(type:Select, listener:{ var results : Dynamic; var target : Geocoder; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Auto-complete, listener:{ var results : Dynamic; var target : Geocoder; } -> Void):esri.Handle;
}
