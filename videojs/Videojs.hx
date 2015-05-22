typedef VideoJSOptions = {
	@:optional
	var techOrder : Array<String>;
	@:optional
	var html5 : Dynamic;
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var defaultVolume : Float;
	@:optional
	var children : Dynamic;
};
typedef VideoJSSource = {
	var type : String;
	var src : String;
};
typedef VideoJSPlayer = {
	function play():VideoJSPlayer;
	function pause():VideoJSPlayer;
	function paused():Bool;
	@:overload(function(newSource:VideoJSSource):VideoJSPlayer { })
	@:overload(function(newSource:Array<VideoJSSource>):VideoJSPlayer { })
	function src(newSource:String):VideoJSPlayer;
	@:overload(function():Float { })
	function currentTime(seconds:Float):VideoJSPlayer;
	function duration():Float;
	function buffered():TimeRanges;
	function bufferedPercent():Float;
	@:overload(function():Float { })
	function volume(percentAsDecimal:Float):TimeRanges;
	@:overload(function(pixels:Float):VideoJSPlayer { })
	function width():Float;
	@:overload(function(pixels:Float):VideoJSPlayer { })
	function height():Float;
	function size(width:Float, height:Float):VideoJSPlayer;
	function requestFullScreen():VideoJSPlayer;
	function cancelFullScreen():VideoJSPlayer;
	function ready(callback:Void -> Void):Void;
	function on(eventName:String, callback:Void -> Void):Void;
	function off(eventName:String, callback:Void -> Void):Void;
	function dispose():Void;
};
typedef VideoJSStatic = { };
extern class VideojsTopLevel {
	static var videojs : VideoJSStatic;
}
