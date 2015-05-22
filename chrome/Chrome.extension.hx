typedef FetchProperties = {
	@:optional
	var windowId : Float;
	@:optional
	var type : String;
};
typedef LastError = {
	@:optional
	var message : String;
};
extern class Chrome.extensionTopLevel {
	static var inIncognitoContext : Bool;
	static var lastError : LastError;
	static function getBackgroundPage():Window;
	static function getURL(path:String):String;
	static function setUpdateUrlData(data:String):Void;
	static function getViews(?fetchProperties:FetchProperties):Array<Window>;
	static function isAllowedFileSchemeAccess(callback:Bool -> Void):Void;
	static function isAllowedIncognitoAccess(callback:Bool -> Void):Void;
}
