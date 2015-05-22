typedef EventArgs = {
	var target : Player;
	var data : Dynamic;
};
typedef EventHandler = { };
typedef Events = {
	@:optional
	var onReady : EventHandler;
	@:optional
	var onPlayback : EventHandler;
	@:optional
	var onStateChange : EventHandler;
};
@:enum abstract ListType(Int) {
	var search = 0;
	var user_uploads = 1;
	var playlist = 2;
}
typedef PlayerVars = {
	@:optional
	var autohide : Float;
	@:optional
	var autoplay : Float;
	@:optional
	var cc_load_policy : Dynamic;
	@:optional
	var color : String;
	@:optional
	var controls : Float;
	@:optional
	var disablekb : Float;
	@:optional
	var enablejsapi : Float;
	@:optional
	var end : Float;
	@:optional
	var fs : Float;
	@:optional
	var iv_load_policy : Float;
	@:optional
	var list : String;
	@:optional
	var listType : ListType;
	@:optional
	var loop : Float;
	@:optional
	var modestbranding : Float;
	@:optional
	var origin : String;
	@:optional
	var playerpiid : String;
	@:optional
	var playlist : Array<String>;
	@:optional
	var rel : Float;
	@:optional
	var showinfo : Float;
	@:optional
	var start : Float;
	@:optional
	var theme : String;
};
typedef PlayerOptions = {
	@:optional
	var width : Float;
	@:optional
	var height : Float;
	@:optional
	var videoId : String;
	@:optional
	var playerVars : PlayerVars;
	@:optional
	var events : Events;
};
typedef VideoByIdParams = {
	var videoId : String;
	@:optional
	var startSeconds : Float;
	@:optional
	var endSeconds : Float;
	@:optional
	var suggestedQuality : String;
};
typedef VideoByUrlParams = {
	var mediaContentUrl : String;
	@:optional
	var startSeconds : Float;
	@:optional
	var endSeconds : Float;
	@:optional
	var suggestedQuality : String;
};
typedef VideoData = {
	var video_id : String;
	var author : String;
	var title : String;
};
extern class Player {
	function new(id:String, playerOptions:PlayerOptions):Void;
	@:overload(function(VideoByIdParams:Dynamic):Void { })
	function loadVideoById(videoId:String, ?startSeconds:Float, ?suggestedQuality:String):Void;
	@:overload(function(VideoByIdParams:Dynamic):Void { })
	function cueVideoById(videoId:String, ?startSeconds:Float, ?suggestedQuality:String):Void;
	@:overload(function(VideoByUrlParams:Dynamic):Void { })
	function loadVideoByUrl(mediaContentUrl:String, ?startSeconds:Float, ?suggestedQuality:String):Void;
	@:overload(function(VideoByUrlParams:Dynamic):Void { })
	function cueVideoByUrl(mediaContentUrl:String, ?startSeconds:Float, ?suggestedQuality:String):Void;
	var size : Dynamic;
	function playVideo():Void;
	function pauseVideo():Void;
	function stopVideo():Void;
	function seekTo(seconds:Float, allowSeekAhead:Bool):Void;
	function clearVideo():Void;
	function nextVideo():Void;
	function previousVideo():Void;
	function playVideoAt(index:Float):Void;
	function mute():Void;
	function unMute():Void;
	function isMuted():Bool;
	function setVolume(volume:Float):Void;
	function getVolume():Float;
	function setSize(width:Float, height:Float):Dynamic;
	function getPlaybackRate():Float;
	function setPlaybackRate(suggestedRate:Float):Void;
	function getAvailablePlaybackRates():Array<Float>;
	function setLoop(loopPlaylists:Bool):Void;
	function setShuffle(shufflePlaylist:Bool):Void;
	function getVideoLoadedFraction():Float;
	function getPlayerState():Float;
	function getCurrentTime():Float;
	function getVideoStartBytes():Float;
	function getVideoBytesLoaded():Float;
	function getVideoBytesTotal():Float;
	function getDuration():Float;
	function getVideoUrl():String;
	function getVideoEmbedCode():String;
	function getVideoData():VideoData;
	function getPlaylist():Array<Dynamic>;
	function getPlaylistIndex():Float;
	function addEventListener(event:String, handler:EventHandler):Void;
}
@:enum abstract PlayerState(Int) {
	var BUFFERING = 0;
	var CUED = 1;
	var ENDED = 2;
	var PAUSED = 3;
	var PLAYING = 4;
}
