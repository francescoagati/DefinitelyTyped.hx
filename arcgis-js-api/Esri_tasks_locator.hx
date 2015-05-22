extern class Locator {
	var categories : Array<String>;
	var countryCode : String;
	var outSpatialReference : SpatialReference;
	var url : String;
	function new(url:String):Void;
	function addressesToLocations(params:Dynamic, callback:haxe.Constraints.Function, errback:haxe.Constraints.Function):Dynamic;
	function addressToLocations(params:Dynamic, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function locationToAddress(location:Point, distance:Float, ?callback:haxe.Constraints.Function, ?errback:haxe.Constraints.Function):Dynamic;
	function setOutSpatialReference(spatialReference:SpatialReference):Void;
	function suggestLocations(params:Dynamic):Dynamic;
	@:overload(function(type:Address-to-locations-complete, listener:{ var addresses : Array<AddressCandidate>; var target : Locator; } -> Void):esri.Handle { })
	@:overload(function(type:Error, listener:{ var error : Error; var target : Locator; } -> Void):esri.Handle { })
	@:overload(function(type:Location-to-address-complete, listener:{ var address : AddressCandidate; var target : Locator; } -> Void):esri.Handle { })
	@:overload(function(type:Suggest-locations-complete, listener:{ var suggestions : Array<Dynamic>; var target : Locator; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Addresses-to-locations-complete, listener:{ var addresses : Array<AddressCandidate>; var target : Locator; } -> Void):esri.Handle;
}
