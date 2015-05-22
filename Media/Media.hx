typedef Media = {
	function getCurrentPosition(mediaSuccess:Float -> Void, ?mediaError:MediaError -> Void):Void;
	function getDuration():Float;
	function play():Void;
	function pause():Void;
	function release():Void;
	function seekTo(position:Float):Void;
	function setVolume(volume:Float):Void;
	function startRecord():Void;
	function stopRecord():Void;
	function stop():Void;
	var position : Float;
	var duration : Float;
};
extern class MediaTopLevel {
	static var Media : { function new(src:String, mediaSuccess:Void -> Void, ?mediaError:MediaError -> Dynamic, ?mediaStatus:Float -> Void):Media; var MEDIA_NONE : Float; var MEDIA_STARTING : Float; var MEDIA_RUNNING : Float; var MEDIA_PAUSED : Float; var MEDIA_STOPPED : Float; };
}
