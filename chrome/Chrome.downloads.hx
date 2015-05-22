typedef HeaderNameValuePair = {
	var name : String;
	var value : String;
};
typedef DownloadOptions = {
	@:optional
	var body : String;
	@:optional
	var saveAs : Bool;
	var url : String;
	@:optional
	var filename : String;
	@:optional
	var headers : Array<HeaderNameValuePair>;
	@:optional
	var method : String;
};
typedef DownloadDelta = {
	@:optional
	var danger : DownloadStringDiff;
	@:optional
	var url : DownloadStringDiff;
	@:optional
	var totalBytes : DownloadStringDiff;
	@:optional
	var dangerAccepted : DownloadBooleanDiff;
	@:optional
	var filename : DownloadStringDiff;
	@:optional
	var paused : DownloadBooleanDiff;
	@:optional
	var state : DownloadStringDiff;
	@:optional
	var mime : DownloadStringDiff;
	@:optional
	var fileSize : DownloadLongDiff;
	@:optional
	var startTime : DownloadLongDiff;
	@:optional
	var error : DownloadLongDiff;
	@:optional
	var endTime : DownloadLongDiff;
	var id : Float;
};
typedef DownloadBooleanDiff = {
	@:optional
	var current : Bool;
	@:optional
	var previous : Bool;
};
typedef DownloadLongDiff = {
	@:optional
	var current : Float;
	@:optional
	var previous : Float;
};
typedef DownloadStringDiff = {
	@:optional
	var current : String;
	@:optional
	var previous : String;
};
typedef DownloadItem = {
	var bytesReceived : Float;
	var danger : String;
	var url : String;
	var totalBytes : Float;
	@:optional
	var dangerAccepted : Bool;
	var filename : String;
	var paused : Bool;
	var state : String;
	var mime : String;
	var fileSize : Float;
	var startTime : Float;
	@:optional
	var error : Float;
	@:optional
	var endTime : Float;
	var id : Float;
	var incognito : Bool;
};
typedef GetFileIconOptions = {
	@:optional
	var size : Float;
};
typedef DownloadQuery = {
	@:optional
	var orderBy : String;
	@:optional
	var urlRegex : String;
	@:optional
	var endedBefore : Float;
	@:optional
	var totalBytesGreater : Float;
	@:optional
	var danger : String;
	@:optional
	var totalBytes : Float;
	@:optional
	var paused : Bool;
	@:optional
	var filenameRegex : String;
	@:optional
	var query : String;
	@:optional
	var totalBytesLess : Float;
	@:optional
	var id : Float;
	@:optional
	var bytesReceived : Float;
	@:optional
	var endedAfter : Float;
	@:optional
	var filename : String;
	@:optional
	var state : String;
	@:optional
	var startedAfter : Float;
	@:optional
	var dangerAccepted : Bool;
	@:optional
	var mime : String;
	@:optional
	var fileSize : Float;
	@:optional
	var startTime : Float;
	@:optional
	var url : String;
	@:optional
	var startedBefore : Float;
	@:optional
	var limit : Float;
	@:optional
	var error : Float;
	@:optional
	var endTime : Float;
};
typedef DownloadChangedEvent = {
	>chrome.events.Event,
	function addListener(callback:DownloadDelta -> Void):Void;
};
typedef DownloadCreatedEvent = {
	>chrome.events.Event,
	function addListener(callback:DownloadItem -> Void):Void;
};
typedef DownloadErasedEvent = {
	>chrome.events.Event,
	function addListener(callback:Float -> Void):Void;
};
extern class Chrome.downloadsTopLevel {
	static function search(query:DownloadQuery, callback:Array<DownloadItem> -> Void):Void;
	static function pause(downloadId:Float, ?callback:haxe.Constraints.Function):Void;
	static function getFileIcon(downloadId:Float, callback:String -> Void):Void;
	static function getFileIcon(downloadId:Float, options:GetFileIconOptions, callback:String -> Void):Void;
	static function resume(downloadId:Float, ?callback:haxe.Constraints.Function):Void;
	static function cancel(downloadId:Float, ?callback:haxe.Constraints.Function):Void;
	static function download(options:DownloadOptions, ?callback:Float -> Void):Void;
	static function open(downloadId:Float):Void;
	static function show(downloadId:Float):Void;
	static function showDefaultFolder():Void;
	static function erase(query:DownloadQuery, callback:Array<DownloadItem> -> Void):Void;
	static function removeFile(downloadId:Float, callback:Void -> Void):Void;
	static function acceptDanger(downloadId:Float, callback:Void -> Void):Void;
	static function drag(downloadId:Float):Void;
	static function setShelfEnabled(enabled:Bool):Void;
	static var onChanged : DownloadChangedEvent;
	static var onCreated : DownloadCreatedEvent;
	static var onErased : DownloadErasedEvent;
}
