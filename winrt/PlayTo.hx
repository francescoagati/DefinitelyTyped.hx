typedef IPlayToSource = {
	var connection : Windows.Media.PlayTo.PlayToConnection;
	var next : Windows.Media.PlayTo.PlayToSource;
	function playNext():Void;
};
extern class PlayToConnection {
	var state : Windows.Media.PlayTo.PlayToConnectionState;
	var onstatechanged : Dynamic;
	var ontransferred : Dynamic;
	var onerror : Dynamic;
}
extern class PlayToSource {
	var connection : Windows.Media.PlayTo.PlayToConnection;
	var next : Windows.Media.PlayTo.PlayToSource;
	function playNext():Void;
}
@:enum abstract PlayToConnectionState(Int) {
	var disconnected = 0;
	var connected = 1;
	var rendering = 2;
}
typedef IPlayToConnectionStateChangedEventArgs = {
	var currentState : Windows.Media.PlayTo.PlayToConnectionState;
	var previousState : Windows.Media.PlayTo.PlayToConnectionState;
};
extern class PlayToConnectionStateChangedEventArgs {
	var currentState : Windows.Media.PlayTo.PlayToConnectionState;
	var previousState : Windows.Media.PlayTo.PlayToConnectionState;
}
typedef IPlayToConnectionTransferredEventArgs = {
	var currentSource : Windows.Media.PlayTo.PlayToSource;
	var previousSource : Windows.Media.PlayTo.PlayToSource;
};
extern class PlayToConnectionTransferredEventArgs {
	var currentSource : Windows.Media.PlayTo.PlayToSource;
	var previousSource : Windows.Media.PlayTo.PlayToSource;
}
@:enum abstract PlayToConnectionError(Int) {
	var none = 0;
	var deviceNotResponding = 1;
	var deviceError = 2;
	var deviceLocked = 3;
}
typedef IPlayToConnectionErrorEventArgs = {
	var code : Windows.Media.PlayTo.PlayToConnectionError;
	var message : String;
};
extern class PlayToConnectionErrorEventArgs {
	var code : Windows.Media.PlayTo.PlayToConnectionError;
	var message : String;
}
typedef IPlayToConnection = {
	var state : Windows.Media.PlayTo.PlayToConnectionState;
	var onstatechanged : Dynamic;
	var ontransferred : Dynamic;
	var onerror : Dynamic;
};
typedef ISourceChangeRequestedEventArgs = {
	var album : String;
	var author : String;
	var date : Date;
	var description : String;
	var genre : String;
	var properties : Windows.Foundation.Collections.IMapView<String, Dynamic>;
	var rating : Float;
	var stream : Windows.Storage.Streams.IRandomAccessStreamWithContentType;
	var thumbnail : Windows.Storage.Streams.IRandomAccessStreamReference;
	var title : String;
};
extern class SourceChangeRequestedEventArgs {
	var album : String;
	var author : String;
	var date : Date;
	var description : String;
	var genre : String;
	var properties : Windows.Foundation.Collections.IMapView<String, Dynamic>;
	var rating : Float;
	var stream : Windows.Storage.Streams.IRandomAccessStreamWithContentType;
	var thumbnail : Windows.Storage.Streams.IRandomAccessStreamReference;
	var title : String;
}
typedef IPlaybackRateChangeRequestedEventArgs = {
	var rate : Float;
};
extern class PlaybackRateChangeRequestedEventArgs {
	var rate : Float;
}
typedef ICurrentTimeChangeRequestedEventArgs = {
	var time : Float;
};
extern class CurrentTimeChangeRequestedEventArgs {
	var time : Float;
}
typedef IMuteChangeRequestedEventArgs = {
	var mute : Bool;
};
extern class MuteChangeRequestedEventArgs {
	var mute : Bool;
}
typedef IVolumeChangeRequestedEventArgs = {
	var volume : Float;
};
extern class VolumeChangeRequestedEventArgs {
	var volume : Float;
}
typedef IPlayToReceiver = {
	var friendlyName : String;
	var properties : Windows.Foundation.Collections.IPropertySet;
	var supportsAudio : Bool;
	var supportsImage : Bool;
	var supportsVideo : Bool;
	var onplayrequested : Dynamic;
	var onpauserequested : Dynamic;
	var onsourcechangerequested : Dynamic;
	var onplaybackratechangerequested : Dynamic;
	var oncurrenttimechangerequested : Dynamic;
	var onmutechangerequested : Dynamic;
	var onvolumechangerequested : Dynamic;
	var ontimeupdaterequested : Dynamic;
	var onstoprequested : Dynamic;
	function notifyVolumeChange(volume:Float, mute:Bool):Void;
	function notifyRateChange(rate:Float):Void;
	function notifyLoadedMetadata():Void;
	function notifyTimeUpdate(currentTime:Float):Void;
	function notifyDurationChange(duration:Float):Void;
	function notifySeeking():Void;
	function notifySeeked():Void;
	function notifyPaused():Void;
	function notifyPlaying():Void;
	function notifyEnded():Void;
	function notifyError():Void;
	function notifyStopped():Void;
	function startAsync():Windows.Foundation.IAsyncAction;
	function stopAsync():Windows.Foundation.IAsyncAction;
};
extern class PlayToReceiver {
	var friendlyName : String;
	var properties : Windows.Foundation.Collections.IPropertySet;
	var supportsAudio : Bool;
	var supportsImage : Bool;
	var supportsVideo : Bool;
	var onplayrequested : Dynamic;
	var onpauserequested : Dynamic;
	var onsourcechangerequested : Dynamic;
	var onplaybackratechangerequested : Dynamic;
	var oncurrenttimechangerequested : Dynamic;
	var onmutechangerequested : Dynamic;
	var onvolumechangerequested : Dynamic;
	var ontimeupdaterequested : Dynamic;
	var onstoprequested : Dynamic;
	function notifyVolumeChange(volume:Float, mute:Bool):Void;
	function notifyRateChange(rate:Float):Void;
	function notifyLoadedMetadata():Void;
	function notifyTimeUpdate(currentTime:Float):Void;
	function notifyDurationChange(duration:Float):Void;
	function notifySeeking():Void;
	function notifySeeked():Void;
	function notifyPaused():Void;
	function notifyPlaying():Void;
	function notifyEnded():Void;
	function notifyError():Void;
	function notifyStopped():Void;
	function startAsync():Windows.Foundation.IAsyncAction;
	function stopAsync():Windows.Foundation.IAsyncAction;
}
typedef IPlayToSourceSelectedEventArgs = {
	var friendlyName : String;
	var icon : Windows.Storage.Streams.IRandomAccessStreamWithContentType;
	var supportsAudio : Bool;
	var supportsImage : Bool;
	var supportsVideo : Bool;
};
extern class PlayToSourceSelectedEventArgs {
	var friendlyName : String;
	var icon : Windows.Storage.Streams.IRandomAccessStreamWithContentType;
	var supportsAudio : Bool;
	var supportsImage : Bool;
	var supportsVideo : Bool;
}
typedef IPlayToSourceDeferral = {
	function complete():Void;
};
extern class PlayToSourceDeferral {
	function complete():Void;
}
typedef IPlayToSourceRequest = {
	var deadline : Date;
	function displayErrorString(errorString:String):Void;
	function getDeferral():Windows.Media.PlayTo.PlayToSourceDeferral;
	function setSource(value:Windows.Media.PlayTo.PlayToSource):Void;
};
extern class PlayToSourceRequest {
	var deadline : Date;
	function displayErrorString(errorString:String):Void;
	function getDeferral():Windows.Media.PlayTo.PlayToSourceDeferral;
	function setSource(value:Windows.Media.PlayTo.PlayToSource):Void;
}
typedef IPlayToSourceRequestedEventArgs = {
	var sourceRequest : Windows.Media.PlayTo.PlayToSourceRequest;
};
extern class PlayToSourceRequestedEventArgs {
	var sourceRequest : Windows.Media.PlayTo.PlayToSourceRequest;
}
typedef IPlayToManager = {
	var defaultSourceSelection : Bool;
	var onsourcerequested : Dynamic;
	var onsourceselected : Dynamic;
};
extern class PlayToManager {
	var defaultSourceSelection : Bool;
	var onsourcerequested : Dynamic;
	var onsourceselected : Dynamic;
	static function getForCurrentView():Windows.Media.PlayTo.PlayToManager;
	static function showPlayToUI():Void;
}
typedef IPlayToManagerStatics = {
	function getForCurrentView():Windows.Media.PlayTo.PlayToManager;
	function showPlayToUI():Void;
};
