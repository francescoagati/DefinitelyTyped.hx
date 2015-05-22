typedef Oboe = {
	function done(callback:Dynamic -> Void):Oboe;
	function fail(callback:FailReason -> Void):Oboe;
	function node(pattern:String, callback:CallbackSignature):Oboe;
	@:overload(function(eventPattern:String, callback:CallbackSignature):Oboe { })
	function on(event:String, pattern:String, callback:CallbackSignature):Oboe;
	@:overload(function(listeners:Dynamic):Oboe { })
	function path(pattern:String, callback:CallbackSignature):Oboe;
	@:overload(function(event:String, pattern:String, callback:CallbackSignature):Oboe { })
	function removeListener(eventPattern:String, callback:CallbackSignature):Oboe;
	function start(callback:Float -> Dynamic -> Void):Oboe;
	var source : String;
};
typedef CallbackSignature = { };
typedef Options = {
	var url : String;
	@:optional
	var method : String;
	@:optional
	var headers : Dynamic;
	@:optional
	var body : Dynamic;
	@:optional
	var cached : Bool;
	@:optional
	var withCredentials : Bool;
};
typedef FailReason = {
	@:optional
	var thrown : Error;
	@:optional
	var statusCode : Float;
	@:optional
	var body : String;
	@:optional
	var jsonBody : Dynamic;
};
extern class OboeTopLevel {
	static function oboe(url:String):oboe.Oboe;
	static function oboe(options:oboe.Options):oboe.Oboe;
	static function oboe(stream:stream.Readable):oboe.Oboe;
	static var drop : { };
}
extern class OboeTopLevel {
	static function oboe(url:String):oboe.Oboe;
	static function oboe(options:oboe.Options):oboe.Oboe;
	static function oboe(stream:stream.Readable):oboe.Oboe;
	static var drop : { };
}
extern class OboeTopLevel {
	static function oboe(url:String):oboe.Oboe;
	static function oboe(options:oboe.Options):oboe.Oboe;
	static function oboe(stream:stream.Readable):oboe.Oboe;
	static var drop : { };
}
