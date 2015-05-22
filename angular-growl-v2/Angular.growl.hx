typedef IGrowlTTLConfig = {
	@:optional
	var success : Float;
	@:optional
	var error : Float;
	@:optional
	var warning : Float;
	@:optional
	var info : Float;
};
typedef IGrowlMessageConfig = {
	@:optional
	var title : String;
	@:optional
	var ttl : Float;
	@:optional
	var disableCountDown : Bool;
	@:optional
	var disableIcons : Bool;
	@:optional
	var disableCloseButton : Bool;
	@:optional
	var referenceId : Float;
	@:optional
	var onclose : haxe.Constraints.Function;
	@:optional
	var onopen : haxe.Constraints.Function;
};
typedef IGrowlMessage = {
	>IGrowlMessageConfig,
	var text : String;
};
typedef IGrowlProvider = {
	>angular.IServiceProvider,
	var serverMessagesInterceptor : Array<haxe.extern.EitherType<String, haxe.Constraints.Function>>;
	@:overload(function(ttl:Float):Void { })
	function globalTimeToLive(ttl:IGrowlTTLConfig):Void;
	function globalDisableCloseButton(disableCloseButton:Bool):Void;
	function globalDisableIcons(disableIcons:Bool):Void;
	function globalReversedOrder(reverseOrder:Bool):Void;
	function globalDisableCountDown(disableCountDown:Bool):Void;
	function globalInlineMessages(inline:Bool):Void;
	function globalPosition(position:String):Void;
	function onlyUniqueMessages(onlyUniqueMessages:Bool):Void;
	function messagesKey(messageKey:String):Void;
	function messageTextKey(messageTextKey:String):Void;
	function messageTitleKey(messageTitleKey:String):Void;
	function messageSeverityKey(messageSeverityKey:String):Void;
	function messageVariableKey(messageVariableKey:String):Void;
};
typedef IGrowlService = {
	@:overload(function(message:String, config:IGrowlMessageConfig):IGrowlMessage { })
	function warning(message:String):IGrowlMessage;
	@:overload(function(message:String, config:IGrowlMessageConfig):IGrowlMessage { })
	function error(message:String):IGrowlMessage;
	@:overload(function(message:String, config:IGrowlMessageConfig):IGrowlMessage { })
	function info(message:String):IGrowlMessage;
	@:overload(function(message:String, config:IGrowlMessageConfig):IGrowlMessage { })
	function success(message:String):IGrowlMessage;
	@:overload(function(message:String, config:IGrowlMessageConfig):IGrowlMessage { })
	@:overload(function(message:String, config:IGrowlMessageConfig, severity:String):IGrowlMessage { })
	function general(message:String):IGrowlMessage;
	function onlyUnique():Bool;
	function reverseOrder():Bool;
	function inlineMessages():Bool;
	function position():String;
};
