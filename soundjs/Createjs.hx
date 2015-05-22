extern class AbstractPlugin {
	function create(src:String, startTime:Float, duration:Float):AbstractSoundInstance;
	function getVolume():Float;
	function isPreloadComplete(src:String):Bool;
	function isPreloadStarted(src:String):Bool;
	function isSupported():Bool;
	function preload(loader:Dynamic):Void;
	function register(loadItem:String, instances:Float):Dynamic;
	function removeAllSounds(src:String):Void;
	function removeSound(src:String):Void;
	function setMute(value:Bool):Bool;
	function setVolume(value:Float):Bool;
}
extern class AbstractSoundInstance extends EventDispatcher {
	function new(src:String, startTime:Float, duration:Float, playbackResource:Dynamic):Void;
	var duration : Float;
	var loop : Float;
	var muted : Bool;
	var pan : Float;
	var paused : Bool;
	var playbackResource : Dynamic;
	var playState : String;
	var position : Float;
	var src : String;
	var uniqueId : haxe.extern.EitherType<Float, String>;
	var volume : Float;
	function destroy():Void;
	function getDuration():Float;
	function getLoop():Float;
	function getMute():Bool;
	function getPan():Float;
	function getPaused():Bool;
	function getPosition():Float;
	function getVolume():Float;
	function play(?interrupt:haxe.extern.EitherType<String, Dynamic>, ?delay:Float, ?offset:Float, ?loop:Float, ?volume:Float, ?pan:Float):AbstractSoundInstance;
	function setDuration(value:Float):AbstractSoundInstance;
	function setLoop(value:Float):Void;
	function setMute(value:Bool):AbstractSoundInstance;
	function setPan(value:Float):AbstractSoundInstance;
	function setPlayback(value:Dynamic):AbstractSoundInstance;
	function setPosition(value:Float):AbstractSoundInstance;
	function setVolume(value:Float):AbstractSoundInstance;
	function stop():AbstractSoundInstance;
}
extern class FlashAudioLoader extends AbstractLoader {
	var flashId : String;
	function setFlash(flash:Dynamic):Void;
}
extern class FlashAudioPlugin extends AbstractPlugin {
	var flashReady : Bool;
	var showOutput : Bool;
	static var swfPath : String;
	static function isSupported():Bool;
}
extern class FlashAudioSoundInstance extends AbstractSoundInstance {
	function new(src:String, startTime:Float, duration:Float, playbackResource:Dynamic):Void;
}
extern class FlashPlugin {
	function new():Void;
	static var buildDate : String;
	var flashReady : Bool;
	var showOutput : Bool;
	static var swfPath : String;
	static var version : String;
	function create(src:String):AbstractSoundInstance;
	function getVolume():Float;
	function isPreloadStarted(src:String):Bool;
	static function isSupported():Bool;
	function preload(src:String, instance:Dynamic):Void;
	function register(src:String, instances:Float):Dynamic;
	function removeAllSounds():Void;
	function removeSound(src:String):Void;
	function setMute(value:Bool):Bool;
	function setVolume(value:Float):Bool;
}
extern class HTMLAudioPlugin extends AbstractPlugin {
	function new():Void;
	var defaultNumChannels : Float;
	var enableIOS : Bool;
	static var MAX_INSTANCES : Float;
	static function isSupported():Bool;
}
extern class HTMLAudioSoundInstance extends AbstractSoundInstance {
	function new(src:String, startTime:Float, duration:Float, playbackResource:Dynamic):Void;
}
extern class HTMLAudioTagPool {

}
extern class Sound extends EventDispatcher {
	static var activePlugin : Dynamic;
	static var alternateExtensions : Array<Dynamic>;
	static var defaultInterruptBehavior : String;
	static var EXTENSION_MAP : Dynamic;
	static var INTERRUPT_ANY : String;
	static var INTERRUPT_EARLY : String;
	static var INTERRUPT_LATE : String;
	static var INTERRUPT_NONE : String;
	static var PLAY_FAILED : String;
	static var PLAY_FINISHED : String;
	static var PLAY_INITED : String;
	static var PLAY_INTERRUPTED : String;
	static var PLAY_SUCCEEDED : String;
	static var SUPPORTED_EXTENSIONS : Array<String>;
	static function createInstance(src:String):AbstractSoundInstance;
	static function getCapabilities():Dynamic;
	static function getCapability(key:String):haxe.extern.EitherType<Float, Bool>;
	static function getMute():Bool;
	static function getVolume():Float;
	static function initializeDefaultPlugins():Bool;
	static function isReady():Bool;
	static function loadComplete(src:String):Bool;
	static function play(src:String, ?interrupt:Dynamic, ?delay:Float, ?offset:Float, ?loop:Float, ?volume:Float, ?pan:Float):AbstractSoundInstance;
	static function registerManifest(manifest:Array<Dynamic>, basePath:String):Dynamic;
	static function registerPlugins(plugins:Array<Dynamic>):Bool;
	static function registerSound(src:haxe.extern.EitherType<String, Dynamic>, ?id:String, ?data:haxe.extern.EitherType<Float, Dynamic>, ?basePath:String):Dynamic;
	static function registerSounds(sounds:Array<Dynamic>, ?basePath:String):Array<Dynamic>;
	static function removeAllSounds():Void;
	static function removeManifest(manifest:Array<Dynamic>, basePath:String):Dynamic;
	static function removeSound(src:haxe.extern.EitherType<String, Dynamic>, basePath:String):Bool;
	static function setMute(value:Bool):Bool;
	static function setVolume(value:Float):Void;
	static function stop():Void;
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):haxe.Constraints.Function { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Dynamic { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Dynamic { })
	static function addEventListener(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):haxe.Constraints.Function;
	static function dispatchEvent(eventObj:haxe.extern.EitherType<Dynamic, haxe.extern.EitherType<String, Event>>, ?target:Dynamic):Bool;
	static function hasEventListener(type:String):Bool;
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void { })
	static function off(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):Void;
	@:overload(function(type:String, listener:Dynamic -> Void, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):haxe.Constraints.Function { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):Dynamic { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):Dynamic { })
	static function on(type:String, listener:Dynamic -> Bool, ?scope:Dynamic, ?once:Bool, ?data:Dynamic, ?useCapture:Bool):haxe.Constraints.Function;
	static function removeAllEventListeners(?type:String):Void;
	@:overload(function(type:String, listener:Dynamic -> Void, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Bool; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:{ var handleEvent : Dynamic -> Void; }, ?useCapture:Bool):Void { })
	@:overload(function(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void { })
	static function removeEventListener(type:String, listener:Dynamic -> Bool, ?useCapture:Bool):Void;
	static function toString():String;
	static function willTrigger(type:String):Bool;
}
extern class SoundJS {
	static var buildDate : String;
	static var version : String;
}
extern class WebAudioLoader {
	static var context : AudioContext;
}
extern class WebAudioPlugin extends AbstractPlugin {
	function new():Void;
	static var context : AudioContext;
	var dynamicsCompressorNode : DynamicsCompressorNode;
	var gainNode : GainNode;
	static function isSupported():Bool;
	static function playEmptySound():Void;
}
extern class WebAudioSoundInstance extends AbstractSoundInstance {
	function new(src:String, startTime:Float, duration:Float, playbackResource:Dynamic):Void;
	static var context : AudioContext;
	static var destinationNode : AudioNode;
	var gainNode : GainNode;
	var panNode : PannerNode;
	var sourceNode : AudioNode;
}
