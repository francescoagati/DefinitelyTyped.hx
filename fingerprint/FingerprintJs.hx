typedef FingerprintStatic = {
	@:overload(function(option:FingerprintOption):Fingerprint { })
	@:overload(function():Fingerprint { })
	function new(hasher:String -> Float -> Float):Fingerprint;
};
typedef Fingerprint = {
	function get():Float;
	function murmurhash3_32_gc(key:String, seed:Float):Float;
	function hasLocalStorage():Bool;
	function hasSessionStorage():Bool;
	function isCanvasSupported():Bool;
	function isIE():Bool;
	function getPluginsString():String;
	function getRegularPluginsString():String;
	function getIEPluginsString():String;
	function getScreenResolution():Array<Float>;
	function getCanvasFingerprint():String;
};
typedef FingerprintOption = {
	@:optional
	var canvas : Bool;
	@:optional
	var screen_resolution : Bool;
	@:optional
	var ie_activex : Bool;
	@:optional
	var hasher : String -> Float -> Float;
};
