extern class LocationProviderBase {
	var geometryType : String;
	var loaded : Bool;
	function locate(features:Array<Graphic>, ?options:Dynamic):Dynamic;
	@:overload(function(type:Load, listener:{ var target : LocationProviderBase; } -> Void):esri.Handle { })
	@:overload(function(type:Locate-complete, listener:{ var failed : Array<Graphic>; var features : Array<Graphic>; var target : LocationProviderBase; } -> Void):esri.Handle { })
	@:overload(function(type:Locate-progress, listener:{ var features : Array<Graphic>; var target : LocationProviderBase; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Error, listener:{ var error : Error; var target : LocationProviderBase; } -> Void):esri.Handle;
}
