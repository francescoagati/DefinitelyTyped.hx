typedef IMessenger = {
	var options : MessengerOptions;
};
typedef Messenger = {
	function post(options:MessageOptions):Message;
	function hideAll():Void;
};
typedef Message = {
	function show():Void;
	function hide():Void;
	function cancel():Void;
	function update(options:MessageOptions):Void;
};
typedef MessageOptions = {
	var message : String;
	@:optional
	var hideAfter : Float;
	@:optional
	var hideOnNavigate : Bool;
	@:optional
	var id : String;
	@:optional
	var showCloseButton : Bool;
	@:optional
	var singleton : Bool;
	@:optional
	var theme : String;
	@:optional
	var type : String;
};
typedef MessengerOptions = {
	@:optional
	var extraClasses : String;
	@:optional
	var maxMessages : Float;
	@:optional
	var messageDefaults : MessageOptions;
	@:optional
	var parentLocations : Array<String>;
	@:optional
	var theme : String;
};
extern class MessengerTopLevel {
	static var Messenger : IMessenger;
}
