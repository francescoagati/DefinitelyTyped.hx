typedef ButtonOptions = {
	var title : String;
	@:optional
	var iconUrl : String;
};
typedef ItemOptions = {
	var title : String;
	var message : String;
};
typedef NotificationOptions = {
	@:optional
	var type : String;
	@:optional
	var iconUrl : String;
	@:optional
	var title : String;
	@:optional
	var message : String;
	@:optional
	var contextMessage : String;
	@:optional
	var priority : Float;
	@:optional
	var eventTime : Float;
	@:optional
	var buttons : Array<ButtonOptions>;
	@:optional
	var items : Array<ItemOptions>;
	@:optional
	var progress : Float;
	@:optional
	var isClickable : Bool;
};
typedef OnClosed = {
	function addListener(callback:String -> Bool -> Void):Void;
};
typedef OnClicked = {
	function addListener(callback:String -> Void):Void;
};
typedef OnButtonClicked = {
	function addListener(callback:String -> Float -> Void):Void;
};
typedef OnPermissionLevelChanged = {
	function addListener(callback:String -> Void):Void;
};
typedef OnShowSettings = {
	function addListener(callback:haxe.Constraints.Function):Void;
};
extern class Chrome.notificationsTopLevel {
	static var onClosed : OnClosed;
	static var onClicked : OnClicked;
	static var onButtonClicked : OnButtonClicked;
	static var onPermissionLevelChanged : OnPermissionLevelChanged;
	static var onShowSettings : OnShowSettings;
	static function create(notificationId:String, options:NotificationOptions, callback:String -> Void):Void;
	static function update(notificationId:String, options:NotificationOptions, callback:Bool -> Void):Void;
	static function clear(notificationId:String, callback:Bool -> Void):Void;
	static function getAll(callback:Dynamic -> Void):Void;
	static function getPermissionLevel(callback:String -> Void):Void;
}
