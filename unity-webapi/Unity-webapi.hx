typedef External = {
	function getUnityObject(version:Float):Unity;
};
extern class UnitySettings {
	var name : String;
	var iconUrl : String;
	var onInit : haxe.Constraints.Function;
}
@:enum abstract UnityPlaybackState(Int) {
	var Playing = 0;
	var Paused = 1;
}
extern class UnityTrackMetadata {
	var title : String;
	var album : String;
	var artist : String;
	var artLocation : String;
}
typedef UnityMediaPlayer = {
	function setTrack(trackMetadata:UnityTrackMetadata):Dynamic;
	function onPrevious(onPreviousCallback:haxe.Constraints.Function):Dynamic;
	function onNext(onNextCallback:haxe.Constraints.Function):Dynamic;
	function onPlayPause(onPlayPauseCallback:haxe.Constraints.Function):Dynamic;
	function getPlaybackstate(response:haxe.Constraints.Function):Dynamic;
	function setPlaybackstate(state:UnityPlaybackState):Dynamic;
	function setCanGoNext(cangonext:Boolean):Dynamic;
	function setCanGoPrev(cangoprev:Boolean):Dynamic;
	function setCanPlay(canplay:Boolean):Dynamic;
	function setCanPause(canpause:Boolean):Dynamic;
};
typedef UnityNotification = {
	function showNotification(summary:String, body:String, ?iconUrl:String):Dynamic;
};
extern class UnityIndicatorProperties {
	var count : Number;
	var time : Date;
	var iconURI : String;
	var onIndicatorActivated : haxe.Constraints.Function;
}
typedef UnityMessagingIndicator = {
	function showIndicator(name:String, indicatorProperties:UnityIndicatorProperties):Dynamic;
	function clearIndicator(name:String):Dynamic;
	function clearIndicators():Dynamic;
	function addAction(name:String, onActionInvoked:haxe.Constraints.Function):Dynamic;
	function removeAction(name:String):Dynamic;
	function removeActions():Dynamic;
	function onPresenceChanged(onPresenceChanged:haxe.Constraints.Function):Dynamic;
	var presence : String;
};
typedef UnityLauncher = {
	function setCount(count:Float):Dynamic;
	function clearCount():Dynamic;
	function setProgress(progress:Float):Dynamic;
	function clearProgress():Dynamic;
	function setUrgent(urgent:Boolean):Dynamic;
	function addAction(name:String, onActionInvoked:haxe.Constraints.Function):Dynamic;
	function removeAction(name:String):Dynamic;
	function removeActions():Dynamic;
};
typedef Unity = {
	function init(settings:UnitySettings):Dynamic;
	function addAction(name:String, callback:haxe.Constraints.Function):Dynamic;
	function removeAction(actionName:String):Dynamic;
	function removeActions():Dynamic;
	var Notification : UnityNotification;
	var MediaPlayer : UnityMediaPlayer;
	var MessagingIndicator : UnityMessagingIndicator;
	var Launcher : UnityLauncher;
};
typedef BrowserPublic = {
	function getUnityObject(version:Float):Unity;
};
