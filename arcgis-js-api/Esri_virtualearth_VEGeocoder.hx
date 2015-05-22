extern class VEGeocoder {
	var culture : String;
	function new(options:esri.VEGeocoderOptions):Void;
	function addressToLocations(query:String, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function setCulture(culture:String):Void;
	@:overload(function(type:Error, listener:{ var error : Error; var target : VEGeocoder; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Address-to-locations-complete, listener:{ var geocodeResults : Array<VEGeocodeResult>; var target : VEGeocoder; } -> Void):esri.Handle;
}
