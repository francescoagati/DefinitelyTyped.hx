typedef PopcornStatic = {
	var plugin : { var debug : Bool; var errors : Array<Dynamic>; };
	var util : { function toSeconds(smpte:String, ?fps:Float):Float; };
	function destroy(insntace:PopcornImpl):Dynamic;
	function extend(target:String, source:Dynamic, rest:haxe.extern.Rest<Dynamic>):Dynamic;
	function forEach(object:Dynamic, callback:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	function getJSONP(url:String, successCallback:haxe.Constraints.Function):Dynamic;
	function getScript(url:String, successCallback:haxe.Constraints.Function):Dynamic;
	function guid(prefix:String):Dynamic;
	var locale : PopcornLocale;
	function parser(parserName:Dynamic, fn:Dynamic, data:Dynamic):Dynamic;
};
typedef PopcornLocale = {
	function get():String;
	function set(langRegion:String):Dynamic;
};
typedef PopcornImpl = {
	var media : HTMLMediaElement;
	function footnote(data:Footnote):Dynamic;
	function autoplay(flag:Bool):Dynamic;
	function buffered():TimeRanges;
	function compose(name:String, definitionObject:Dynamic, ?manifest:Dynamic):Dynamic;
	function controls(flag:Bool):Dynamic;
	@:overload(function(time:Float, callback:haxe.Constraints.Function):Dynamic { })
	function cue(time:String, callback:haxe.Constraints.Function):Dynamic;
	@:overload(function(?time:Float):Float { })
	function currentTime(?time:String):Float;
	function defaults(pluginName:String, options:Dynamic):Dynamic;
	function destroy():Dynamic;
	function disable(pluginName:String):Dynamic;
	function duration():Float;
	function emit(eventName:String, ?dataObject:Dynamic):Dynamic;
	function enable(pluginName:String):PopcornImpl;
	@:overload(function(time:Float, callback:haxe.Constraints.Function):Dynamic { })
	function exec(time:String, callback:haxe.Constraints.Function):Dynamic;
	function listen(eventName:String, callback:haxe.Constraints.Function):Dynamic;
	function load():Dynamic;
	function loop(flag:Bool):Dynamic;
	function mute():Dynamic;
	function muted(flag:Bool):Dynamic;
	function off(eventName:String, callback:haxe.Constraints.Function):Dynamic;
	function on(eventName:String, callback:haxe.Constraints.Function):Dynamic;
	@:overload(function(?time:String):Dynamic { })
	function pause(?time:Float):Dynamic;
	function paused():Bool;
	@:overload(function(?time:String):Dynamic { })
	function play(?time:Float):Dynamic;
	function playbackRate(?rate:Float):Dynamic;
	function played():TimeRanges;
	function position():ClientRect;
	function preload(state:String):Dynamic;
	function readyState():Float;
	function roundTime():Float;
	function seekable():Dynamic;
	function seeking():Bool;
	function toggle(pluginName:String):Dynamic;
	function trigger(eventName:String, ?dataObject:Dynamic):Dynamic;
	function unlisten(eventName:String, callback:haxe.Constraints.Function):Dynamic;
	function unmute():Dynamic;
	function volume(?value:Float):Float;
	function getLastTrackEventId():String;
	function removeTrackEvent(id:String):Dynamic;
};
typedef PopcornPlugin = {
	@:optional
	function _setup(?track:TrackEvent):Dynamic;
	@:optional
	function _update(?track:TrackEvent):Dynamic;
	@:optional
	function _teardown(?track:TrackEvent):Dynamic;
	@:optional
	function start(event:Dynamic, ?track:TrackEvent):Dynamic;
	@:optional
	function end(event:Dynamic, ?track:TrackEvent):Dynamic;
	@:optional
	function frame(event:Dynamic, ?track:TrackEvent):Dynamic;
	@:optional
	function toString():String;
	@:optional
	var manifest : PopcornManifest;
};
typedef PopcornManifest = {
	var about : PopcornManifestAbout;
	var options : PopcornManifestOptions;
};
typedef PopcornManifestAbout = {
	var name : String;
	var version : String;
	var author : String;
	var website : String;
};
typedef PopcornManifestOptions = {
	var start : PopcornManifestOption;
	var end : PopcornManifestOption;
	var target : String;
	var text : PopcornManifestOption;
};
typedef PopcornManifestOption = {
	var elem : String;
	var type : String;
	var label : String;
};
typedef Footnote = {
	var start : Float;
	var end : Float;
	var target : String;
	var text : String;
};
extern class PopcornTopLevel {
	static var Popcorn : PopcornStatic;
}
