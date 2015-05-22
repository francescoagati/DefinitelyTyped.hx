extern class TiTopLevel {
	static var apiName : String;
	static var bubbleParent : Bool;
	static var buildDate : String;
	static var buildHash : String;
	static var userAgent : String;
	static var version : String;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function createBuffer(params:CreateBufferArgs):Ti.Buffer;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getApiName():String;
	static function getBubbleParent():Bool;
	static function getBuildDate():String;
	static function getBuildHash():String;
	static function getUserAgent():String;
	static function getVersion():String;
	static function include(name:String):Void;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
	static function setUserAgent(userAgent:String):Void;
}
