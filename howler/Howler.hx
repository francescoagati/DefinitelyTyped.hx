extern class HowlerGlobal {
	function mute():HowlerGlobal;
	function unmute():HowlerGlobal;
	@:overload(function(volume:Float):HowlerGlobal { })
	function volume():Float;
	function codecs(extension:String):Bool;
	var iOSAutoEnable : Bool;
}
typedef IHowlCallback = { };
typedef IHowlSoundSpriteDefinition = { };
typedef IHowlProperties = {
	@:optional
	var autoplay : Bool;
	@:optional
	var buffer : Bool;
	@:optional
	var format : String;
	@:optional
	var loop : Bool;
	@:optional
	var sprite : IHowlSoundSpriteDefinition;
	@:optional
	var volume : Float;
	@:optional
	var urls : Array<String>;
	@:optional
	var onend : IHowlCallback;
	@:optional
	var onload : IHowlCallback;
	@:optional
	var onloaderror : IHowlCallback;
	@:optional
	var onpause : IHowlCallback;
	@:optional
	var onplay : IHowlCallback;
};
extern class Howl {
	var autoplay : Boolean;
	var buffer : Boolean;
	var format : String;
	var rate : Float;
	var model : String;
	var onend : IHowlCallback;
	var onload : IHowlCallback;
	var onloaderror : IHowlCallback;
	var onpause : IHowlCallback;
	var onplay : IHowlCallback;
	function new(properties:IHowlProperties):Void;
	function play(?sprite:String, ?callback:Float -> Void):Howl;
	function pause(?soundId:Float):Howl;
	function stop(?soundId:Float):Howl;
	function mute(?soundId:Float):Howl;
	function unmute(?soundId:Float):Howl;
	function fade(from:Float, to:Float, duration:Float, ?callback:IHowlCallback, ?soundId:Float):Howl;
	@:overload(function(loop:Bool):Howl { })
	function loop():Bool;
	function pos(?position:Float, ?soundId:Float):Float;
	function pos3d(x:Float, y:Float, z:Float, ?soundId:Float):Dynamic;
	function sprite(?definition:IHowlSoundSpriteDefinition):IHowlSoundSpriteDefinition;
	@:overload(function(?volume:Float, ?soundId:Float):Howl { })
	function volume():Float;
	@:overload(function(urls:Array<String>):Howl { })
	function urls():Array<String>;
	function on(event:String, ?listener:Void -> Void):Howl;
	function off(event:String, ?listener:Void -> Void):Howl;
	function unload():Void;
}
extern class HowlerTopLevel {
	static var Howler : HowlerGlobal;
}
