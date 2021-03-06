typedef JWPlayer = {
	function addButton(icon:String, label:String, handler:Void -> Void, id:String):Void;
	function getBuffer():Float;
	function getCaptionsList():Array<Dynamic>;
	function getControls():Bool;
	function getCurrentCaptions():Float;
	function getCurrentQuality():Float;
	function getDuration():Float;
	function getHeight():Float;
	function getFullscreen():Bool;
	function getMute():Bool;
	function getPlaylist():Array<Dynamic>;
	function getPlaylistIndex():Float;
	function getPlaylistItem(index:Float):Dynamic;
	function getPosition():Float;
	function getQualityLevels():Array<Dynamic>;
	function getRenderingMode():String;
	function getSafeRegion():Array<Dynamic>;
	function getState():String;
	function getVolume():Float;
	function getWidth():Float;
	@:overload(function(playlist:String):Void { })
	function load(playlist:Dynamic):Void;
	function onBeforePlay(callback:Void -> Void):Void;
	function onBuffer(callback:Void -> Void):Void;
	function onBufferChange(callback:Void -> Void):Void;
	function onCaptionsChange(callback:Void -> Void):Void;
	function onCaptionsList(callback:Void -> Void):Void;
	function onComplete(callback:Void -> Void):Void;
	function onControls(callback:Void -> Void):Void;
	function onDisplayClick(callback:Void -> Void):Void;
	function onError(callback:Void -> Void):Void;
	function onFullscreen(callback:Void -> Void):Void;
	function onIdle(callback:Void -> Void):Void;
	function onMeta(callback:Void -> Void):Void;
	function onMute(callback:Void -> Void):Void;
	function onPlay(callback:Void -> Void):Void;
	function onPlaylist(callback:Void -> Void):Void;
	function onPlaylistItem(callback:Void -> Void):Void;
	function onPlaylistComplete(callback:Void -> Void):Void;
	function onReady(callback:Void -> Void):Void;
	function onResize(callback:Void -> Void):Void;
	function onQualityChange(callback:Void -> Void):Void;
	function onQualityLevels(callback:Void -> Void):Void;
	function onSeek(callback:Void -> Void):Void;
	function onTime(callback:Void -> Void):Void;
	function onVolume(callback:Void -> Void):Void;
	function pause():Void;
	function play():Void;
	function playlistItem(index:Float):Void;
	function registerPlugin(id:String, target:String, jsPlugin:Void -> Void, ?swfURL:String):Void;
	function remove():Void;
	function removeButton(id:String):Void;
	function resize(width:Float, height:Float):Void;
	function seek(position:Float):Void;
	function setControls(controls:Bool):Void;
	function setCurrentCaptions(index:Float):Void;
	function setCurrentQuality(index:Float):Void;
	function setMute(state:Bool):Void;
	function setup(options:Dynamic):JWPlayer;
	function setVolume(volume:Float):Void;
	function stop():Void;
};
typedef JWPlayerStatic = { };
extern class JwplayerTopLevel {
	static var jwplayer : JWPlayerStatic;
}
