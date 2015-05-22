typedef Window = {
	var plugins : Plugins;
};
typedef Plugins = {
	var pushNotification : PushNotification;
};
typedef PushNotification = {
	function register(successCallback:String -> Void, errorCallback:Dynamic -> Void, registrationOptions:RegistrationOptions):Void;
	function unregister(successCallback:Dynamic -> Void, errorCallback:Dynamic -> Void):Void;
	function setApplicationIconBadgeNumber(successCallback:Dynamic -> Void, errorCallback:Dynamic -> Void, badgeCount:Float):Void;
};
typedef RegistrationOptions = {
	@:optional
	var senderID : String;
	@:optional
	var channelName : String;
	@:optional
	var ecb : String;
	@:optional
	var badge : Bool;
	@:optional
	var sound : Bool;
	@:optional
	var alert : Bool;
};
