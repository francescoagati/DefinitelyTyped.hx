typedef LoginButton = {
	>Ti.UI.View,
	var style : String;
	function getStyle():String;
	function setStyle(style:String):Void;
};
extern class FacebookTopLevel {
	static var BUTTON_STYLE_NORMAL : Float;
	static var BUTTON_STYLE_WIDE : Float;
	static var accessToken : String;
	static var apiName : String;
	static var appid : String;
	static var bubbleParent : Bool;
	static var expirationDate : Date;
	static var forceDialogAuth : Bool;
	static var loggedIn : Bool;
	static var permissions : Array<String>;
	static var uid : String;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function authorize():Void;
	static function createLoginButton(?parameters:Dictionary<Ti.Facebook.LoginButton>):Ti.Facebook.LoginButton;
	static function dialog(action:String, params:Dynamic, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getAccessToken():String;
	static function getApiName():String;
	static function getAppid():String;
	static function getBubbleParent():Bool;
	static function getExpirationDate():Date;
	static function getForceDialogAuth():Bool;
	static function getLoggedIn():Bool;
	static function getPermissions():Array<String>;
	static function getUid():String;
	static function logout():Void;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function request(method:String, params:Dynamic, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function requestWithGraphPath(path:String, params:Dictionary<Dynamic>, httpMethod:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setAccessToken(accessToken:String):Void;
	static function setAppid(appid:String):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
	static function setExpirationDate(expirationDate:Date):Void;
	static function setForceDialogAuth(forceDialogAuth:Bool):Void;
	static function setLoggedIn(loggedIn:Bool):Void;
	static function setPermissions(permissions:Array<String>):Void;
	static function setUid(uid:String):Void;
}
@:enum abstract Accelerometer(Int) {

}
typedef Utils = {
	@:overload(function(obj:Ti.Blob):Ti.Blob { })
	function base64decode(obj:String):Ti.Blob;
	@:overload(function(obj:Ti.Blob):Ti.Blob { })
	@:overload(function(obj:Ti.Filesystem.File):Ti.Blob { })
	function base64encode(obj:String):Ti.Blob;
	@:overload(function(obj:Ti.Blob):String { })
	function md5HexDigest(obj:String):String;
	@:overload(function(obj:Ti.Blob):String { })
	function sha1(obj:String):String;
	@:overload(function(obj:Ti.Blob):String { })
	function sha256(obj:String):String;
};
typedef Event = {
	var bubbles : Bool;
	var cancelBubble : Bool;
	var source : Dynamic;
	var type : String;
};
typedef Stream = {
	var MODE_APPEND : Float;
	var MODE_READ : Float;
	var MODE_WRITE : Float;
	function createStream(params:CreateStreamArgs):Ti.IOStream;
	function pump(inputStream:Ti.IOStream, handler:haxe.extern.Rest<Dynamic> -> Dynamic, maxChunkSize:Float, ?isAsync:Bool):Void;
	function read(sourceStream:Ti.IOStream, buffer:Ti.Buffer, ?offset:Float, ?length:Float, ?resultsCallback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function readAll(sourceStream:Ti.IOStream, ?buffer:Ti.Buffer, ?resultsCallback:haxe.extern.Rest<Dynamic> -> Dynamic):Dynamic;
	function write(outputStream:Ti.IOStream, buffer:Ti.Buffer, ?offset:Float, ?length:Float, ?resultsCallback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function writeStream(inputStream:Ti.IOStream, outputStream:Ti.IOStream, maxChunkSize:Float, ?resultsCallback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
};
extern class Dictionary<Object> {

}
extern class BarItemType {
	var accessibilityLabel : String;
	var enabled : Bool;
	var image : Dynamic;
	var title : String;
	var width : Float;
}
extern class MatrixCreationDict {
	var anchorPoint : Dictionary<Dynamic>;
	var rotate : Float;
	var scale : Float;
}
extern class TableViewIndexEntry {
	var index : Float;
	var title : String;
}
extern class FacebookRESTResponsev1 {
	var error : String;
	var method : String;
	var result : String;
	var success : Bool;
}
extern class TitleAttributesParams {
	var color : String;
	var font : Font;
	var shadow : ShadowDict;
}
extern class MapRegionType {
	var latitude : Float;
	var latitudeDelta : Float;
	var longitude : Float;
	var longitudeDelta : Float;
}
extern class CropRectType {
	var height : Float;
	var width : Float;
	var x : Float;
	var y : Float;
}
extern class LocationResults extends ErrorResponse {
	var coords : LocationCoordinates;
	var provider : LocationProviderDict;
}
extern class ErrorResponse {
	var code : Float;
	var error : String;
	var success : Bool;
}
extern class CloudPushNotificationsQueryResponse extends CloudResponse {
	var subscriptions : Array<Dictionary<Dynamic>>;
}
extern class CloudResponse {
	var code : Float;
	var error : Bool;
	var message : String;
	var meta : Dictionary<Dynamic>;
	var success : Bool;
}
@:enum abstract CloudPushNotificationsResponse(Int) {

}
extern class TextFieldSelectedParams {
	var length : Float;
	var location : Float;
}
extern class RecurrenceEndDictionary {
	var endDate : Date;
	var occurrenceCount : Float;
}
