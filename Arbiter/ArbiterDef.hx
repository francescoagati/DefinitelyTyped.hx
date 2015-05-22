typedef SubscribeHandler = { };
typedef SubscribeOptions = {
	@:optional
	var priority : Float;
	@:optional
	var async : Bool;
	@:optional
	var persist : Bool;
};
typedef PublishOptions = {
	@:optional
	var cancelable : Bool;
	@:optional
	var persist : Bool;
	@:optional
	var async : Bool;
};
typedef ArbiterStatic = {
	var version : String;
	var updated_on : String;
	function create():ArbiterStatic;
	function publish(msg:String, ?data:Dynamic, ?options:PublishOptions):Bool;
	@:overload(function(msg:String, options:SubscribeOptions, func:SubscribeHandler):Dynamic { })
	@:overload(function(msg:String, options:SubscribeOptions, context:Dynamic, func:SubscribeHandler):Dynamic { })
	@:overload(function(msg:Array<String>, func:SubscribeHandler):Dynamic { })
	@:overload(function(msg:Array<String>, options:SubscribeOptions, func:SubscribeHandler):Dynamic { })
	@:overload(function(msg:Array<String>, options:SubscribeOptions, context:Dynamic, func:SubscribeHandler):Dynamic { })
	function subscribe(msg:String, func:SubscribeHandler):Dynamic;
	function unsubscribe(subscription_id:Float):Bool;
	function resubscribe(subscription_id:Float):Bool;
};
