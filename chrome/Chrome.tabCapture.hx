typedef CaptureInfo = {
	var tabId : Float;
	var status : String;
	var fullscreen : Bool;
};
typedef CaptureOptions = {
	@:optional
	var audio : Bool;
	@:optional
	var video : Bool;
	@:optional
	var audioConstraints : MediaTrackConstraints;
	@:optional
	var videoConstraints : MediaTrackConstraints;
};
extern class Chrome.tabCaptureTopLevel {
	static function capture(options:CaptureOptions, callback:LocalMediaStream -> Void):Void;
	static function getCapturedTabs(callback:Array<CaptureInfo> -> Void):Void;
}
