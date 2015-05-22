typedef Sound = {
	>Ti.Proxy,
	var STATE_BUFFERING : Float;
	var STATE_INITIALIZED : Float;
	var STATE_PAUSED : Float;
	var STATE_PLAYING : Float;
	var STATE_STARTING : Float;
	var STATE_STOPPED : Float;
	var STATE_STOPPING : Float;
	var STATE_WAITING_FOR_DATA : Float;
	var STATE_WAITING_FOR_QUEUE : Float;
	var allowBackground : Bool;
	var duration : Float;
	var looping : Bool;
	var paused : Bool;
	var playing : Bool;
	var time : Float;
	var url : String;
	var volume : Float;
	function getDuration():Float;
	function getTime():Float;
	function getUrl():String;
	function getVolume():Float;
	function isLooping():Bool;
	function isPaused():Bool;
	function isPlaying():Bool;
	function pause():Void;
	function play():Void;
	function release():Void;
	function reset():Void;
	function setLooping(looping:Bool):Void;
	function setPaused(paused:Bool):Void;
	function setTime(time:Float):Void;
	function setUrl(url:String):Void;
	function setVolume(volume:Float):Void;
	function stop():Void;
};
typedef VideoPlayer = {
	>Ti.UI.View,
	var allowsAirPlay : Bool;
	var autoplay : Bool;
	var contentURL : String;
	var currentPlaybackTime : Float;
	var duration : Float;
	var endPlaybackTime : Float;
	var fullscreen : Bool;
	var initialPlaybackTime : Float;
	var loadState : Float;
	var media : Dynamic;
	var mediaControlStyle : Float;
	var mediaTypes : Float;
	var movieControlMode : Float;
	var naturalSize : MovieSize;
	var playableDuration : Float;
	var playbackState : Float;
	var playing : Bool;
	var repeatMode : Float;
	var scalingMode : Float;
	var sourceType : Float;
	var url : Dynamic;
	var useApplicationAudioSession : Bool;
	var volume : Float;
	function cancelAllThumbnailImageRequests():Void;
	function getAllowsAirPlay():Bool;
	function getAutoplay():Bool;
	function getContentURL():String;
	function getCurrentPlaybackTime():Float;
	function getDuration():Float;
	function getEndPlaybackTime():Float;
	function getFullscreen():Bool;
	function getInitialPlaybackTime():Float;
	function getLoadState():Float;
	function getMediaControlStyle():Float;
	function getMediaTypes():Float;
	function getMovieControlMode():Float;
	function getNaturalSize():MovieSize;
	function getPlayableDuration():Float;
	function getPlaybackState():Float;
	function getPlaying():Bool;
	function getRepeatMode():Float;
	function getScalingMode():Float;
	function getSourceType():Float;
	function getUrl():Dynamic;
	function getUseApplicationAudioSession():Bool;
	function getVolume():Float;
	function pause():Void;
	function play():Void;
	function release():Void;
	function requestThumbnailImagesAtTimes(times:Array<Number>, option:Float, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setAllowsAirPlay(allowsAirPlay:Bool):Void;
	function setAutoplay(autoplay:Bool):Void;
	function setBackgroundView(view:Ti.UI.View):Void;
	function setContentURL(contentURL:String):Void;
	function setCurrentPlaybackTime(currentPlaybackTime:Float):Void;
	function setDuration(duration:Float):Void;
	function setEndPlaybackTime(endPlaybackTime:Float):Void;
	function setFullscreen(fullscreen:Bool):Void;
	function setInitialPlaybackTime(initialPlaybackTime:Float):Void;
	@:overload(function(media:Ti.Filesystem.File):Void { })
	@:overload(function(media:String):Void { })
	function setMedia(media:Ti.Blob):Void;
	function setMediaControlStyle(mediaControlStyle:Float):Void;
	function setMediaTypes(mediaTypes:Float):Void;
	function setMovieControlMode(movieControlMode:Float):Void;
	function setNaturalSize(naturalSize:MovieSize):Void;
	function setRepeatMode(repeatMode:Float):Void;
	function setScalingMode(scalingMode:Float):Void;
	function setSourceType(sourceType:Float):Void;
	@:overload(function(url:Array<String>):Void { })
	function setUrl(url:String):Void;
	function setUseApplicationAudioSession(useApplicationAudioSession:Bool):Void;
	function setVolume(volume:Float):Void;
	function stop():Void;
	function thumbnailImageAtTime(time:Float, option:Float):Ti.Blob;
};
typedef AudioRecorder = {
	>Ti.Proxy,
	var compression : Float;
	var format : Float;
	var paused : Bool;
	var recording : Bool;
	var stopped : Bool;
	function getCompression():Float;
	function getFormat():Float;
	function getPaused():Bool;
	function getRecording():Bool;
	function getStopped():Bool;
	function pause():Void;
	function resume():Void;
	function setCompression(compression:Float):Void;
	function setFormat(format:Float):Void;
	function start():Void;
	function stop():Ti.Filesystem.File;
};
typedef Item = {
	>Ti.Proxy,
	var albumArtist : String;
	var albumTitle : String;
	var albumTrackCount : Float;
	var albumTrackNumber : Float;
	var artist : String;
	var artwork : Ti.Blob;
	var composer : String;
	var discCount : Float;
	var discNumber : Float;
	var genre : String;
	var isCompilation : Bool;
	var lyrics : String;
	var mediaType : Float;
	var playCount : Float;
	var playbackDuration : Float;
	var podcastTitle : String;
	var rating : Float;
	var skipCount : Float;
	var title : String;
	function getAlbumArtist():String;
	function getAlbumTitle():String;
	function getAlbumTrackCount():Float;
	function getAlbumTrackNumber():Float;
	function getArtist():String;
	function getArtwork():Ti.Blob;
	function getComposer():String;
	function getDiscCount():Float;
	function getDiscNumber():Float;
	function getGenre():String;
	function getIsCompilation():Bool;
	function getLyrics():String;
	function getMediaType():Float;
	function getPlayCount():Float;
	function getPlaybackDuration():Float;
	function getPodcastTitle():String;
	function getRating():Float;
	function getSkipCount():Float;
	function getTitle():String;
};
typedef MusicPlayer = {
	>Ti.Proxy,
	var currentPlaybackTime : Float;
	var nowPlaying : Ti.Media.Item;
	var playbackState : Float;
	var repeatMode : Float;
	var shuffleMode : Float;
	var volume : Float;
	function getCurrentPlaybackTime():Float;
	function getNowPlaying():Ti.Media.Item;
	function getPlaybackState():Float;
	function getRepeatMode():Float;
	function getShuffleMode():Float;
	function getVolume():Float;
	function pause():Void;
	function play():Void;
	function seekBackward():Void;
	function seekForward():Void;
	function setCurrentPlaybackTime(currentPlaybackTime:Float):Void;
	@:overload(function(queue:Array<Ti.Media.Item>):Void { })
	@:overload(function(queue:PlayerQueue):Void { })
	function setQueue(queue:Ti.Media.Item):Void;
	function setRepeatMode(repeatMode:Float):Void;
	function setShuffleMode(shuffleMode:Float):Void;
	function setVolume(volume:Float):Void;
	function skipToBeginning():Void;
	function skipToNext():Void;
	function skipToPrevious():Void;
	function stop():Void;
	function stopSeeking():Void;
};
typedef AudioPlayer = {
	>Ti.Proxy,
	var STATE_BUFFERING : Float;
	var STATE_INITIALIZED : Float;
	var STATE_PAUSED : Float;
	var STATE_PLAYING : Float;
	var STATE_STARTING : Float;
	var STATE_STOPPED : Float;
	var STATE_STOPPING : Float;
	var STATE_WAITING_FOR_DATA : Float;
	var STATE_WAITING_FOR_QUEUE : Float;
	var allowBackground : Bool;
	var autoplay : Bool;
	var bitRate : Float;
	var bufferSize : Float;
	var duration : Float;
	var idle : Bool;
	var paused : Bool;
	var playing : Bool;
	var progress : Float;
	var state : Float;
	var time : Float;
	var url : String;
	var volume : Float;
	var waiting : Bool;
	function getAllowBackground():Bool;
	function getAutoplay():Bool;
	function getBitRate():Float;
	function getBufferSize():Float;
	function getDuration():Float;
	function getIdle():Bool;
	function getPaused():Bool;
	function getPlaying():Bool;
	function getProgress():Float;
	function getState():Float;
	function getTime():Float;
	function getUrl():String;
	function getVolume():Float;
	function getWaiting():Bool;
	function isPaused():Bool;
	function isPlaying():Bool;
	function pause():Void;
	function play():Void;
	function release():Void;
	function setBitRate(bitRate:Float):Void;
	function setBufferSize(bufferSize:Float):Void;
	function setPaused(paused:Bool):Void;
	function setTime(time:Float):Void;
	function setUrl(url:String):Void;
	function setVolume(volume:Float):Void;
	function start():Void;
	function stateDescription(state:Float):String;
	function stop():Void;
};
typedef Android = {
	function scanMediaFiles(paths:Array<String>, mimeTypes:Array<String>, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function setSystemWallpaper(image:Ti.Blob, scale:Bool):Void;
};
extern class MediaTopLevel {
	static var AUDIO_FILEFORMAT_3GP2 : Float;
	static var AUDIO_FILEFORMAT_3GPP : Float;
	static var AUDIO_FILEFORMAT_AIFF : Float;
	static var AUDIO_FILEFORMAT_AMR : Float;
	static var AUDIO_FILEFORMAT_CAF : Float;
	static var AUDIO_FILEFORMAT_MP3 : Float;
	static var AUDIO_FILEFORMAT_MP4 : Float;
	static var AUDIO_FILEFORMAT_MP4A : Float;
	static var AUDIO_FILEFORMAT_WAVE : Float;
	static var AUDIO_FORMAT_AAC : Float;
	static var AUDIO_FORMAT_ALAW : Float;
	static var AUDIO_FORMAT_APPLE_LOSSLESS : Float;
	static var AUDIO_FORMAT_ILBC : Float;
	static var AUDIO_FORMAT_IMA4 : Float;
	static var AUDIO_FORMAT_LINEAR_PCM : Float;
	static var AUDIO_FORMAT_ULAW : Float;
	static var AUDIO_HEADPHONES : Float;
	static var AUDIO_HEADPHONES_AND_MIC : Float;
	static var AUDIO_HEADSET_INOUT : Float;
	static var AUDIO_LINEOUT : Float;
	static var AUDIO_MICROPHONE : Float;
	static var AUDIO_MUTED : Float;
	static var AUDIO_RECEIVER_AND_MIC : Float;
	static var AUDIO_SESSION_CATEGORY_AMBIENT : String;
	static var AUDIO_SESSION_CATEGORY_PLAYBACK : String;
	static var AUDIO_SESSION_CATEGORY_PLAY_AND_RECORD : String;
	static var AUDIO_SESSION_CATEGORY_RECORD : String;
	static var AUDIO_SESSION_CATEGORY_SOLO_AMBIENT : String;
	static var AUDIO_SESSION_MODE_AMBIENT : Float;
	static var AUDIO_SESSION_MODE_PLAYBACK : Float;
	static var AUDIO_SESSION_MODE_PLAY_AND_RECORD : Float;
	static var AUDIO_SESSION_MODE_RECORD : Float;
	static var AUDIO_SESSION_MODE_SOLO_AMBIENT : Float;
	static var AUDIO_SESSION_OVERRIDE_ROUTE_NONE : Float;
	static var AUDIO_SESSION_OVERRIDE_ROUTE_SPEAKER : Float;
	static var AUDIO_SESSION_PORT_AIRPLAY : String;
	static var AUDIO_SESSION_PORT_BLUETOOTHA2DP : String;
	static var AUDIO_SESSION_PORT_BLUETOOTHHFP : String;
	static var AUDIO_SESSION_PORT_BLUETOOTHLE : String;
	static var AUDIO_SESSION_PORT_BUILTINMIC : String;
	static var AUDIO_SESSION_PORT_BUILTINRECEIVER : String;
	static var AUDIO_SESSION_PORT_BUILTINSPEAKER : String;
	static var AUDIO_SESSION_PORT_CARAUDIO : String;
	static var AUDIO_SESSION_PORT_HDMI : String;
	static var AUDIO_SESSION_PORT_HEADPHONES : String;
	static var AUDIO_SESSION_PORT_HEADSETMIC : String;
	static var AUDIO_SESSION_PORT_LINEIN : String;
	static var AUDIO_SESSION_PORT_LINEOUT : String;
	static var AUDIO_SESSION_PORT_USBAUDIO : String;
	static var AUDIO_SPEAKER : Float;
	static var AUDIO_UNAVAILABLE : Float;
	static var AUDIO_UNKNOWN : Float;
	static var CAMERA_FLASH_AUTO : Float;
	static var CAMERA_FLASH_OFF : Float;
	static var CAMERA_FLASH_ON : Float;
	static var CAMERA_FRONT : Float;
	static var CAMERA_REAR : Float;
	static var DEVICE_BUSY : Float;
	static var MEDIA_TYPE_PHOTO : String;
	static var MEDIA_TYPE_VIDEO : String;
	static var MUSIC_MEDIA_GROUP_ALBUM : Float;
	static var MUSIC_MEDIA_GROUP_ALBUM_ARTIST : Float;
	static var MUSIC_MEDIA_GROUP_ARTIST : Float;
	static var MUSIC_MEDIA_GROUP_COMPOSER : Float;
	static var MUSIC_MEDIA_GROUP_GENRE : Float;
	static var MUSIC_MEDIA_GROUP_PLAYLIST : Float;
	static var MUSIC_MEDIA_GROUP_PODCAST_TITLE : Float;
	static var MUSIC_MEDIA_GROUP_TITLE : Float;
	static var MUSIC_MEDIA_TYPE_ALL : Float;
	static var MUSIC_MEDIA_TYPE_ANY_AUDIO : Float;
	static var MUSIC_MEDIA_TYPE_AUDIOBOOK : Float;
	static var MUSIC_MEDIA_TYPE_MUSIC : Float;
	static var MUSIC_MEDIA_TYPE_PODCAST : Float;
	static var MUSIC_PLAYER_REPEAT_ALL : Float;
	static var MUSIC_PLAYER_REPEAT_DEFAULT : Float;
	static var MUSIC_PLAYER_REPEAT_NONE : Float;
	static var MUSIC_PLAYER_REPEAT_ONE : Float;
	static var MUSIC_PLAYER_SHUFFLE_ALBUMS : Float;
	static var MUSIC_PLAYER_SHUFFLE_DEFAULT : Float;
	static var MUSIC_PLAYER_SHUFFLE_NONE : Float;
	static var MUSIC_PLAYER_SHUFFLE_SONGS : Float;
	static var MUSIC_PLAYER_STATE_INTERRUPTED : Float;
	static var MUSIC_PLAYER_STATE_PAUSED : Float;
	static var MUSIC_PLAYER_STATE_PLAYING : Float;
	static var MUSIC_PLAYER_STATE_SEEK_BACKWARD : Float;
	static var MUSIC_PLAYER_STATE_SEEK_FORWARD : Float;
	static var MUSIC_PLAYER_STATE_STOPPED : Float;
	static var NO_CAMERA : Float;
	static var NO_VIDEO : Float;
	static var QUALITY_HIGH : Float;
	static var QUALITY_LOW : Float;
	static var QUALITY_MEDIUM : Float;
	static var UNKNOWN_ERROR : Float;
	static var VIDEO_CONTROL_DEFAULT : Float;
	static var VIDEO_CONTROL_EMBEDDED : Float;
	static var VIDEO_CONTROL_FULLSCREEN : Float;
	static var VIDEO_CONTROL_HIDDEN : Float;
	static var VIDEO_CONTROL_NONE : Float;
	static var VIDEO_CONTROL_VOLUME_ONLY : Float;
	static var VIDEO_FINISH_REASON_PLAYBACK_ENDED : Float;
	static var VIDEO_FINISH_REASON_PLAYBACK_ERROR : Float;
	static var VIDEO_FINISH_REASON_USER_EXITED : Float;
	static var VIDEO_LOAD_STATE_PLAYABLE : Float;
	static var VIDEO_LOAD_STATE_PLAYTHROUGH_OK : Float;
	static var VIDEO_LOAD_STATE_STALLED : Float;
	static var VIDEO_LOAD_STATE_UNKNOWN : Float;
	static var VIDEO_MEDIA_TYPE_AUDIO : Float;
	static var VIDEO_MEDIA_TYPE_NONE : Float;
	static var VIDEO_MEDIA_TYPE_VIDEO : Float;
	static var VIDEO_PLAYBACK_STATE_INTERRUPTED : Float;
	static var VIDEO_PLAYBACK_STATE_PAUSED : Float;
	static var VIDEO_PLAYBACK_STATE_PLAYING : Float;
	static var VIDEO_PLAYBACK_STATE_SEEKING_BACKWARD : Float;
	static var VIDEO_PLAYBACK_STATE_SEEKING_FORWARD : Float;
	static var VIDEO_PLAYBACK_STATE_STOPPED : Float;
	static var VIDEO_REPEAT_MODE_NONE : Float;
	static var VIDEO_REPEAT_MODE_ONE : Float;
	static var VIDEO_SCALING_ASPECT_FILL : Float;
	static var VIDEO_SCALING_ASPECT_FIT : Float;
	static var VIDEO_SCALING_MODE_FILL : Float;
	static var VIDEO_SCALING_NONE : Float;
	static var VIDEO_SOURCE_TYPE_FILE : Float;
	static var VIDEO_SOURCE_TYPE_STREAMING : Float;
	static var VIDEO_SOURCE_TYPE_UNKNOWN : Float;
	static var VIDEO_TIME_OPTION_EXACT : Float;
	static var VIDEO_TIME_OPTION_NEAREST_KEYFRAME : Float;
	static var apiName : String;
	static var appMusicPlayer : Ti.Media.MusicPlayer;
	static var audioLineType : Float;
	static var audioPlaying : Bool;
	static var audioSessionCategory : Float;
	static var audioSessionMode : Float;
	static var availableCameraMediaTypes : Array<Dynamic>;
	static var availableCameras : Array<Number>;
	static var availablePhotoGalleryMediaTypes : Array<Dynamic>;
	static var availablePhotoMediaTypes : Array<Dynamic>;
	static var averageMicrophonePower : Float;
	static var bubbleParent : Bool;
	static var cameraFlashMode : Float;
	static var canRecord : Bool;
	static var currentRoute : RouteDescription;
	static var isCameraSupported : Bool;
	static var peakMicrophonePower : Float;
	static var systemMusicPlayer : Ti.Media.MusicPlayer;
	static var volume : Float;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function beep():Void;
	static function createAudioPlayer(?parameters:Dictionary<Ti.Media.AudioPlayer>):Ti.Media.AudioPlayer;
	static function createAudioRecorder(?parameters:Dictionary<Ti.Media.AudioRecorder>):Ti.Media.AudioRecorder;
	static function createItem(?parameters:Dictionary<Ti.Media.Item>):Ti.Media.Item;
	static function createMusicPlayer(?parameters:Dictionary<Ti.Media.MusicPlayer>):Ti.Media.MusicPlayer;
	static function createSound(?parameters:Dictionary<Ti.Media.Sound>):Ti.Media.Sound;
	static function createVideoPlayer(?parameters:Dictionary<Ti.Media.VideoPlayer>):Ti.Media.VideoPlayer;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getApiName():String;
	static function getAppMusicPlayer():Ti.Media.MusicPlayer;
	static function getAudioLineType():Float;
	static function getAudioPlaying():Bool;
	static function getAudioSessionCategory():Float;
	static function getAudioSessionMode():Float;
	static function getAvailableCameraMediaTypes():Array<Dynamic>;
	static function getAvailableCameras():Array<Number>;
	static function getAvailablePhotoGalleryMediaTypes():Array<Dynamic>;
	static function getAvailablePhotoMediaTypes():Array<Dynamic>;
	static function getAverageMicrophonePower():Float;
	static function getBubbleParent():Bool;
	static function getCameraFlashMode():Float;
	static function getCanRecord():Bool;
	static function getCurrentRoute():RouteDescription;
	static function getIsCameraSupported():Bool;
	static function getPeakMicrophonePower():Float;
	static function getSystemMusicPlayer():Ti.Media.MusicPlayer;
	static function getVolume():Float;
	static function hideCamera():Void;
	static function hideMusicLibrary():Void;
	static function isMediaTypeSupported(source:String, type:String):Bool;
	static function openMusicLibrary(options:MusicLibraryOptionsType):Void;
	static function openPhotoGallery(options:PhotoGalleryOptionsType):Void;
	static function previewImage(options:Dictionary<PreviewImageOptions>):Void;
	static function queryMusicLibrary(query:MediaQueryType):Array<Ti.Media.Item>;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function requestAuthorization(callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function saveToPhotoGallery(media:Ti.Blob, callbacks:Dynamic):Void;
	static function saveToPhotoGallery(media:Ti.Filesystem.File, callbacks:Dynamic):Void;
	static function setAudioSessionCategory(audioSessionCategory:Float):Void;
	static function setAudioSessionMode(audioSessionMode:Float):Void;
	static function setAvailableCameraMediaTypes(availableCameraMediaTypes:Array<Dynamic>):Void;
	static function setAvailablePhotoGalleryMediaTypes(availablePhotoGalleryMediaTypes:Array<Dynamic>):Void;
	static function setAvailablePhotoMediaTypes(availablePhotoMediaTypes:Array<Dynamic>):Void;
	static function setAverageMicrophonePower(averageMicrophonePower:Float):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
	static function setCameraFlashMode(cameraFlashMode:Float):Void;
	static function setOverrideAudioRoute(route:Float):Void;
	static function showCamera(options:CameraOptionsType):Void;
	static function startMicrophoneMonitor():Void;
	static function stopMicrophoneMonitor():Void;
	static function switchCamera(camera:Float):Void;
	static function takePicture():Void;
	static function takeScreenshot(callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function vibrate(?pattern:Array<Number>):Void;
}