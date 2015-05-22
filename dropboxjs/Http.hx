extern class AppInfo {
	static var ICON_SMALL : Float;
	static var ICON_LARGE : Float;
	static function parse(appInfo:{ }, ?appKey:String):AppInfo;
	var name : String;
	var key : String;
	var canUseDatastores : Bool;
	var canUseFiles : Bool;
	var hasAppFolder : Bool;
	var canUseFullDropbox : Bool;
	function icon(width:Float, ?height:Float):Void;
}
extern class PollResult {
	static function parse(response:{ }):PollResult;
	var hasChanges : Bool;
	var retryAfter : Float;
}
extern class PulledChanges {
	static function parse(deltaInfo:{ }):PulledChanges;
	var blankSlate : Bool;
	var cursorTag : String;
	var shouldPullAgain : Bool;
	var shouldBackOff : Bool;
	function cursor():String;
}
extern class PulledChange {
	static function parse(entry:{ }):PulledChange;
	var path : String;
	var wasRemoved : Bool;
	var stat : File.Stat;
}
extern class RangeInfo {
	static function parse(headerValue:String):RangeInfo;
	var start : Float;
	var size : Float;
	var end : Float;
}
extern class UploadCursor {
	@:overload(function(cursorData:{ }):UploadCursor { })
	static function parse(cursorData:String):UploadCursor;
	@:overload(function(cursorData:{ }):Void { })
	function new(cursorData:String):Void;
	var tag : String;
	var offset : Float;
	var expiresAt : Date;
	function toJSON():{ };
}
