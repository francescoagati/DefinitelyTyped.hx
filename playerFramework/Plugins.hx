extern class TrackingPluginBase extends PluginBase {
	var trackingEvents : Array<Dynamic>;
}
extern class BufferingPlugin extends PluginBase {
	function hide():Void;
	function show():Void;
}
extern class ControlPlugin extends PluginBase {
	function compactThresholdInInches():Float;
	function hide():Void;
	function isCompact():Bool;
	function orientation():String;
	function show():Void;
}
extern class ErrorPlugin extends PluginBase {
	function hide():Void;
	function show():Void;
}
extern class LoaderPlugin extends PluginBase {
	function hide():Void;
	function show():Void;
}
extern class PlaylistPlugin extends PluginBase {
	var autoAdvance : Bool;
	var currentPlaylistItem : PlaylistItem;
	var currentPlaylistItemIndex : Float;
	var playlist : Array<PlaylistItem>;
	var startupPlaylistItemIndex : Float;
	var skipBackThreshold : Float;
	function goToPreviousPlaylistItem():Void;
	function goToNextPlaylistItem():Void;
	function canGoToPreviousPlaylistItem():Bool;
	function canGoToNextPlaylistItem():Bool;
}
extern class PlayTimeTrackingPlugin extends PluginBase {
	var playTime : Float;
	var playTimePercentage : Float;
}
extern class PositionTrackingPlugin extends PluginBase {
	var evaluateOnForwardOnly : Bool;
	var position : Float;
	var positionPercentage : Float;
}
extern class SystemTransportControlsPlugin extends PluginBase {
	var isPreviousTrackEnabled : Bool;
	var isNextTrackEnabled : Bool;
	var nextTrackExists : Bool;
	var previousTrackExists : Bool;
}
extern class ChaptersPlugin extends PluginBase {
	var defaultChapterCount : Float;
	var autoCreateDefaultChapters : Bool;
	var autoCreateChaptersFromTextTracks : Bool;
	var visualMarkerClass : String;
}
extern class DisplayRequestPlugin extends PluginBase {
	var isRequestActive : Bool;
}
extern class CaptionSelectorPlugin extends PluginBase {
	function hide():Void;
	function show():Void;
	var alignment : String;
	var anchor : HTMLElement;
	var placement : String;
}
extern class AudioSelectorPlugin extends PluginBase {
	function hide():Void;
	function show():Void;
	var alignment : String;
	var anchor : HTMLElement;
	var placement : String;
}
extern class InteractiveViewModel {
	var state : ViewModelState;
	var startTime : Float;
	var maxTime : Float;
	var endTime : Float;
	var currentItem : Float;
	var bufferedPercentage : Float;
	var playPouseIcon : String;
	var playPauseLabel : String;
	var playPauseTooltip : String;
	var isPlayPauseDisabled : Bool;
	var isPlayPauseHidden : Bool;
	var playResumeIcon : String;
	var playResumeLabel : String;
	var playResumeTooltip : String;
	var isPlayResumeDisabled : Bool;
	var isPlayResumeHidden : Bool;
	var pauseIcon : String;
	var pauseLabel : String;
	var pauseTooltip : String;
	var isPauseDisabled : Bool;
	var isPauseHidden : Bool;
	var replayIcon : String;
	var replayLabel : String;
	var replayTooltip : String;
	var isReplayDisabled : Bool;
	var isReplayHidden : Bool;
	var rewindIcon : String;
	var rewindLabel : String;
	var rewindTooltip : String;
	var isRewindDisabled : Bool;
	var isRewindHidden : Bool;
	var fastForwardIcon : String;
	var fastForwardLabel : String;
	var fastForwardTooltip : String;
	var isFastForwardDisabled : Bool;
	var isFastForwardHidden : Bool;
	var slowMotionIcon : String;
	var slowMotionLabel : String;
	var slowMotionTooltip : String;
	var isSlowMotionDisabled : Bool;
	var isSlowMotionHidden : Bool;
	var skipPreviousIcon : String;
	var skipPreviousLabel : String;
	var skipPreviousTooltip : String;
	var isSkipPreviousDisabled : Bool;
	var isSkipPreviousHidden : Bool;
	var skipNextIcon : String;
	var skipNextLabel : String;
	var skipNextTooltip : String;
	var isSkipNextDisabled : Bool;
	var isSkipNextHidden : Bool;
	var skipBackIcon : String;
	var skipBackLabel : String;
	var skipBackTooltip : String;
	var isSkipBackDisabled : Bool;
	var isSkipBackHidden : Bool;
	var skipAheadIcon : String;
	var skipAheadLabel : String;
	var skipAheadTooltip : String;
	var isSkipAheadDisabled : Bool;
	var isSkipAheadHidden : Bool;
	var elapsedTime : Float;
	var elapsedTimeText : String;
	var elapsedTimeLabel : String;
	var elapsedTimeTooltip : String;
	var isElapsedTimeDisabled : Bool;
	var isElapsedTimeHidden : Bool;
	var remainingTime : Float;
	var remainingTimeText : String;
	var remainingTimeLabel : String;
	var remainingTimeTooltip : String;
	var isRemainingTimeDisabled : Bool;
	var isRemainingTimeHidden : Bool;
	var totalTime : Float;
	var totalTimeText : String;
	var totalTimeLabel : String;
	var totalTimeTooltip : String;
	var isTotalTimeDisabled : Bool;
	var isTotalTimeHidden : Bool;
	var timelineLabel : String;
	var timelineTooltip : String;
	var isTimelineDisabled : Bool;
	var isTimelineHidden : Bool;
	var goLiveText : String;
	var goLiveLabel : String;
	var goLiveTooltip : String;
	var isGoLiveDisabled : Bool;
	var isGoLiveHidden : Bool;
	var captionsIcon : String;
	var captionsLabel : String;
	var captionsTooltip : String;
	var isCaptionsDisabled : Bool;
	var audioIcon : String;
	var audioLabel : String;
	var audioTooltip : String;
	var isAudioDisabled : Bool;
	var isAudioHidden : Bool;
	var volume : Float;
	var volumeMuteIcon : String;
	var volumeMuteLabel : String;
	var volumeMuteTooltip : String;
	var isVolumeMuteDisabled : Bool;
	var isVolumeMuteHidden : Bool;
	var volumeIcon : String;
	var volumeLabel : String;
	var volumeTooltip : String;
	var isVolumeDisabled : Bool;
	var isVolumeHidden : Bool;
	var muteIcon : String;
	var muteLabel : String;
	var muteTooltip : String;
	var isMuteDisabled : Bool;
	var isMuteHidden : Bool;
	var fullScreenIcon : String;
	var fullScreenLabel : String;
	var fullScreenTooltip : String;
	var isFullScreenDisabled : Bool;
	var isFullScreenHidden : Bool;
	var stopIcon : String;
	var stopLabel : String;
	var stopTooltip : String;
	var isStopDisabled : Bool;
	var isStopHidden : Bool;
	var infoIcon : String;
	var infoLabel : String;
	var infoTooltip : String;
	var isInfoDisabled : Bool;
	var isInfoHidden : Bool;
	var moreIcon : String;
	var moreLabel : String;
	var moreTooltip : String;
	var isMoreDisabled : Bool;
	var isMoreHidden : Bool;
	var zoomIcon : String;
	var zoomLabel : String;
	var zoomTooltip : String;
	var isZoomDisabled : Bool;
	var isZoomHidden : Bool;
	var signalStrength : Float;
	var signalStrengthLabel : String;
	var signalStrengthTooltip : String;
	var isSignalStrengthDisabled : Bool;
	var isSignalStrengthHidden : Bool;
	var mediaQuality : MediaQuality;
	var mediaQualityLabel : String;
	var mediaQualityTooltip : String;
	var isMediaQualityDisabled : Bool;
	var isMediaQualityHidden : Bool;
	var visualMarkers : Array<Dynamic>;
	var thumbnailImageSrc : String;
	var isThumbnailVisible : Bool;
	var mediaMetadata : Dynamic;
	function uninitialize():Void;
	function playPause(?e:Dynamic):Void;
	function playResume():Void;
	function pause():Void;
	function replay():Void;
	function rewind():Void;
	function fastForward():Void;
	function slowMotion():Void;
	function skipPrevious():Void;
	function skipNext():Void;
	function skipBack():Void;
	function skipAhead():Void;
	function startScrub(time:Float):Void;
	function updateScrub(time:Float):Void;
	function completeScrub(time:Float):Void;
	function goLive():Void;
	function setVolume(volume:Float):Void;
	function toggleMutted():Void;
	function toggleFullScreen():Void;
	function stop():Void;
	function info():Void;
	function more():Void;
	function toggleZoom():Void;
	function captions():Void;
	function audio():Void;
	function onTimelineSliderStart(e:Dynamic):Void;
	function onTimelineSliderUpdate(e:Dynamic):Void;
	function onTimelineSliderComplete(e:Dynamic):Void;
	function onTimelineSliderSkipToMarker(e:Dynamic):Void;
	function onVolumeSliderUpdate(e:Dynamic):Void;
	function onVolumeMuteClick(e:Dynamic):Void;
	function onVolumeMuteFocus(e:Dynamic):Void;
	function onVolumeMuteSliderUpdate(e:Dynamic):Void;
	function onVolumeMuteSliderFocusIn(e:Dynamic):Void;
	function onVolumeMuteSliderFocusOut(e:Dynamic):Void;
	function onVolumeMuteSliderMSPointerOver(e:Dynamic):Void;
	function onVolumeMuteSliderMSPointerOut(e:Dynamic):Void;
	function onVolumeMuteSliderTransitionEnd(e:Dynamic):Void;
}
extern class MediaPlayer {
	function new(element:HTMLElement, ?options:Dynamic):Void;
	var advertisingState : AdvertisingState;
	var audioTracks : Array<Dynamic>;
	var autobuffer : Bool;
	var autohide : Bool;
	var autohideBehavior : AutohideBehavior;
	var autohideTime : Float;
	var autoload : Bool;
	var autoplay : Bool;
	var buffered : Array<Dynamic>;
	var captionTracks : Array<Dynamic>;
	var controls : Bool;
	var currentAudioTrack : Dynamic;
	var currentCaptionTrack : Dynamic;
	var currentSrc : String;
	var currentTime : Float;
	var defaultInteractiveViewModel : InteractiveViewModel;
	var defaultPlaybackRate : Float;
	var duration : Float;
	var element : HTMLElement;
	var ended : Bool;
	var endTime : Float;
	var error : MediaError;
	var height : String;
	var initialTime : Float;
	var interactiveActivationMode : InteractionType;
	var interactiveDeactivationMode : InteractionType;
	var interactiveViewModel : InteractiveViewModel;
	var isAudioAllowed : Bool;
	var isAudioEnabled : Bool;
	var isAudioVisible : Bool;
	var isCaptionsAllowed : Bool;
	var isCaptionsEnabled : Bool;
	var isCaptionsVisible : Bool;
	var isCurrentTimeLive : Bool;
	var isElapsedTimeAllowed : Bool;
	var isElapsedTimeEnabled : Bool;
	var isElapsedTimeVisible : Bool;
	var isFastForwardAllowed : Bool;
	var isFastForwardEnabled : Bool;
	var isFastForwardVisible : Bool;
	var isFullScreen : Bool;
	var isFullScreenAllowed : Bool;
	var isFullScreenEnabled : Bool;
	var isFullScreenVisible : Bool;
	var isGoLiveAllowed : Bool;
	var isGoLiveEnabled : Bool;
	var isGoLiveVisible : Bool;
	var isInteractive : Bool;
	var isLive : Bool;
	var isMediaQualityAllowed : Bool;
	var isMediaQualityEnabled : Bool;
	var isMediaQualityVisible : Bool;
	var isMuteAllowed : Bool;
	var isMuteEnabled : Bool;
	var isMuteVisible : Bool;
	var isPauseAllowed : Bool;
	var isPauseEnabled : Bool;
	var isPauseVisible : Bool;
	var isPlayPauseAllowed : Bool;
	var isPlayPauseEnabled : Bool;
	var isPlayPauseVisible : Bool;
	var isPlayResumeAllowed : Bool;
	var isPlayResumeEnabled : Bool;
	var isPlayResumeVisible : Bool;
	var isRemainingTimeAllowed : Bool;
	var isRemainingTimeEnabled : Bool;
	var isRemainingTimeVisible : Bool;
	var isReplayAllowed : Bool;
	var isReplayEnabled : Bool;
	var isReplayVisible : Bool;
	var isRewindAllowed : Bool;
	var isRewindEnabled : Bool;
	var isRewindVisible : Bool;
	var isSignalStrengthAllowed : Bool;
	var isSignalStrengthEnabled : Bool;
	var isSignalStrengthVisible : Bool;
	var isSkipAheadAllowed : Bool;
	var isSkipAheadEnabled : Bool;
	var isSkipAheadVisible : Bool;
	var isSkipBackAllowed : Bool;
	var isSkipBackEnabled : Bool;
	var isSkipBackVisible : Bool;
	var isSkipNextAllowed : Bool;
	var isSkipNextEnabled : Bool;
	var isSkipNextVisible : Bool;
	var isSkipPreviousAllowed : Bool;
	var isSkipPreviousEnabled : Bool;
	var isSkipPreviousVisible : Bool;
	var isSlowMotion : Bool;
	var isSlowMotionAllowed : Bool;
	var isSlowMotionEnabled : Bool;
	var isSlowMotionVisible : Bool;
	var isStartTimeOffset : Bool;
	var isTimelineAllowed : Bool;
	var isTimelineEnabled : Bool;
	var isTimelineVisible : Bool;
	var isVolumeAllowed : Bool;
	var isVolumeEnabled : Bool;
	var isVolumeMuteAllowed : Bool;
	var isVolumeMuteEnabled : Bool;
	var isVolumeMuteVisible : Bool;
	var isVolumeVisible : Bool;
	var liveTime : Float;
	var liveTimeBuffer : Float;
	var loop : Bool;
	var mediaElement : HTMLMediaElement;
	var mediaExtensionManager : Windows.Media.MediaExtensionManager;
	var mediaQuality : MediaQuality;
	var msAudioCategory : String;
	var msAudioDeviceType : String;
	var msHorizontalMirror : Bool;
	var msIsLayoutOptimalForPlayback : Bool;
	var msIsStereo3D : Bool;
	var msPlayToDisabled : Bool;
	var msPlayToPrimary : Bool;
	var msPlayToSource : Dynamic;
	var msRealTime : Bool;
	var msStereo3DPackingMode : String;
	var msStereo3DRenderMode : String;
	var msZoom : Bool;
	var muted : Bool;
	var networkState : NetworkState;
	var paused : Bool;
	var playbackRate : Float;
	var played : Array<Dynamic>;
	var playlistPlugin : Plugins.PlaylistPlugin;
	var playerState : PlayerState;
	var plugins : Array<Dynamic>;
	var poster : String;
	var preload : String;
	var readyState : ReadyState;
	var replayOffset : Float;
	var scrubbing : Bool;
	var seekable : Dynamic;
	var seeking : Bool;
	var seekWhileScrubbing : Bool;
	var signalStrength : Float;
	var skipAheadInterval : Float;
	var skipBackInterval : Float;
	var slowMotionPlaybackRate : Float;
	var sources : Array<Dynamic>;
	var src : String;
	var startTime : Float;
	var startupTime : Float;
	var testForMediaPack : Bool;
	var textTracks : Dynamic;
	var tracks : Array<Dynamic>;
	var videoHeight : Float;
	var videoWidth : Float;
	var volume : Float;
	var width : String;
	function addClass(name:String):Void;
	function addEventListener(type:String, listener:haxe.Constraints.Function, ?capture:Bool):Void;
	function addTextTrack(kind:String, ?label:String, ?language:String):Void;
	function audio():Void;
	function canPlayType(type:String):String;
	function captions():Void;
	function decreasePlaybackRate():Void;
	function dispose():Void;
	function focus():Void;
	function increasePlaybackRate():Void;
	function info():Void;
	function load():Void;
	function more():Void;
	function msClearEffects():Void;
	function msFrameStep(forward:Bool):Void;
	function msInsertAudioEffect(activatableClassId:String, effectRequired:Bool, config:Dynamic):Void;
	function msInsertVideoEffect(activatableClassId:String, effectRequired:Bool, config:Dynamic):Void;
	function msSetMediaKeys(mediaKeys:MSMediaKeys):Void;
	function msSetMediaProtectionManager(mediaProtectionManager:Windows.Media.Protection.MediaProtectionManager):Void;
	function msSetVideoRectangle(left:Float, top:Float, right:Float, bottom:Float):Void;
	function pause():Void;
	function play():Void;
	function playResume():Void;
	function removeClass(name:String):Void;
	function removeEventListener(eventName:String, eventHandler:haxe.Constraints.Function):Void;
	function replay():Void;
	function retry():Void;
	function stop():Void;
	function update(mediaSource:Dynamic):Void;
}
extern class DynamicTextTrack {
	var stream : Dynamic;
	var label : String;
	var language : String;
	function augmentPayload(payload:Dynamic, startTime:Float, endTime:Float):Void;
}
