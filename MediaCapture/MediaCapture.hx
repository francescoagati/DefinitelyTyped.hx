typedef Navigator = {
	var device : Device;
};
typedef Device = {
	var capture : Capture;
};
typedef Capture = {
	function captureAudio(onSuccess:Array<MediaFile> -> Void, onError:CaptureError -> Void, ?options:AudioOptions):Void;
	function captureImage(onSuccess:Array<MediaFile> -> Void, onError:CaptureError -> Void, ?options:ImageOptions):Void;
	function captureVideo(onSuccess:Array<MediaFile> -> Void, onError:CaptureError -> Void, ?options:VideoOptions):Void;
	var supportedAudioModes : Array<ConfigurationData>;
	var supportedImageModes : Array<ConfigurationData>;
	var supportedVideoModes : Array<ConfigurationData>;
};
typedef MediaFile = {
	var name : String;
	var fullPath : String;
	var type : String;
	var lastModifiedDate : Date;
	var size : Float;
	function getFormatData(successCallback:MediaFileData -> Void, ?errorCallback:Void -> Void):Void;
};
typedef MediaFileData = {
	var codecs : String;
	var bitrate : Float;
	var height : Float;
	var width : Float;
	var duration : Float;
};
typedef CaptureError = {
	var code : Float;
	var message : String;
};
typedef AudioOptions = {
	@:optional
	var limit : Float;
	@:optional
	var duration : Float;
};
typedef ImageOptions = {
	@:optional
	var limit : Float;
};
typedef VideoOptions = {
	@:optional
	var limit : Float;
	@:optional
	var duration : Float;
};
typedef ConfigurationData = {
	var type : String;
	var height : Float;
	var width : Float;
};
extern class MediaCaptureTopLevel {
	static var CaptureError : { function new(code:Float, message:String):CaptureError; var CAPTURE_INTERNAL_ERR : Float; var CAPTURE_APPLICATION_BUSY : Float; var CAPTURE_INVALID_ARGUMENT : Float; var CAPTURE_NO_MEDIA_FILES : Float; var CAPTURE_NOT_SUPPORTED : Float; };
}
