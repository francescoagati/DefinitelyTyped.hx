typedef MediaStreamConstraints = {
	var audio : Dynamic;
	var video : Dynamic;
};
typedef MediaTrackConstraints = {
	var mandatory : MediaTrackConstraintSet;
	var optional : Array<MediaTrackConstraint>;
};
typedef MediaTrackConstraintSet = { };
typedef MediaTrackConstraint = { };
typedef Navigator = {
	function getUserMedia(constraints:MediaStreamConstraints, successCallback:Dynamic -> Void, errorCallback:Error -> Void):Void;
	function webkitGetUserMedia(constraints:MediaStreamConstraints, successCallback:Dynamic -> Void, errorCallback:Error -> Void):Void;
	function mozGetUserMedia(constraints:MediaStreamConstraints, successCallback:Dynamic -> Void, errorCallback:Error -> Void):Void;
};
typedef EventHandler = { };
typedef NavigatorUserMediaSuccessCallback = { };
typedef NavigatorUserMediaError = {
	var PERMISSION_DENIED : Float;
	var code : Float;
};
typedef NavigatorUserMediaErrorCallback = { };
typedef MediaStreamTrackList = {
	var length : Float;
	var item : MediaStreamTrack;
	function add(track:MediaStreamTrack):Void;
	function remove(track:MediaStreamTrack):Void;
	var onaddtrack : Event -> Void;
	var onremovetrack : Event -> Void;
};
typedef MediaStream = {
	var label : String;
	var id : String;
	function getAudioTracks():MediaStreamTrackList;
	function getVideoTracks():MediaStreamTrackList;
	var ended : Bool;
	var onended : Event -> Void;
};
typedef SourceInfo = {
	var label : String;
	var id : String;
	var kind : String;
	var facing : String;
};
typedef LocalMediaStream = {
	>MediaStream,
	function stop():Void;
};
typedef MediaStreamTrack = {
	var kind : String;
	var label : String;
	var enabled : Bool;
	var LIVE : Float;
	var MUTED : Float;
	var ENDED : Float;
	var readyState : Float;
	var onmute : Event -> Void;
	var onunmute : Event -> Void;
	var onended : Event -> Void;
};
typedef StreamURL = {
	>URL,
	function createObjectURL(stream:MediaStream):String;
};
typedef WebkitURL = {
	>StreamURL,
};
extern class MediaStreamTopLevel {
	static var MediaStreamConstraints : { var prototype : MediaStreamConstraints; function new():MediaStreamConstraints; };
	static var MediaTrackConstraints : { var prototype : MediaTrackConstraints; function new():MediaTrackConstraints; };
	static var MediaTrackConstraintSet : { var prototype : MediaTrackConstraintSet; function new():MediaTrackConstraintSet; };
	static var MediaTrackConstraint : { var prototype : MediaTrackConstraint; function new():MediaTrackConstraints; };
	static var NavigatorUserMediaError : { var prototype : NavigatorUserMediaError; function new():NavigatorUserMediaError; var PERMISSION_DENIED : Float; };
	static var MediaStreamTrackList : { var prototype : MediaStreamTrackList; function new():MediaStreamTrackList; };
	static var webkitMediaStreamTrackList : { var prototype : MediaStreamTrackList; function new():MediaStreamTrackList; };
	static var MediaStream : { var prototype : MediaStream; @:overload(function(trackContainers:Array<MediaStream>):MediaStream { })
	@:overload(function(trackContainers:Array<MediaStreamTrackList>):MediaStream { })
	@:overload(function(trackContainers:Array<MediaStreamTrack>):MediaStream { })
	function new():MediaStream; };
	static var webkitMediaStream : { var prototype : MediaStream; @:overload(function(trackContainers:Array<MediaStream>):MediaStream { })
	@:overload(function(trackContainers:Array<MediaStreamTrackList>):MediaStream { })
	@:overload(function(trackContainers:Array<MediaStreamTrack>):MediaStream { })
	function new():MediaStream; };
	static var SourceInfo : { var prototype : SourceInfo; };
	static var MediaStreamTrack : { var prototype : MediaStreamTrack; function new():MediaStreamTrack; var LIVE : Float; var MUTED : Float; var ENDED : Float; var getSources : Array<SourceInfo> -> Void -> Void; };
	static var webkitURL : { var prototype : WebkitURL; function new():StreamURL; function createObjectURL(stream:MediaStream):String; };
}
