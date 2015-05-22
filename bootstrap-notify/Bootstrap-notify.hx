typedef NotifyOptions = {
	@:optional
	var type : String;
	@:optional
	var closable : Bool;
	@:optional
	var transition : String;
	@:optional
	var fadeOut : NotifyFadeOutSettings;
	@:optional
	var message : MessageOptions;
	@:optional
	var onClose : Void -> Void;
	@:optional
	var onClosed : Void -> Void;
};
typedef NotifyFadeOutSettings = {
	@:optional
	var enabled : Bool;
	@:optional
	var delay : Float;
};
typedef MessageOptions = {
	@:optional
	var html : String;
	@:optional
	var text : String;
};
typedef Notification = {
	function show():Dynamic;
	function hide():Dynamic;
};
typedef JQuery = {
	function notify(options:NotifyOptions):Notification;
};
