typedef HubMethod = { };
typedef SignalREvents = {
	var onStart : String;
	var onStarting : String;
	var onReceived : String;
	var onError : String;
	var onConnectionSlow : String;
	var onReconnect : String;
	var onStateChanged : String;
	var onDisconnect : String;
};
typedef SignalRStateChange = {
	var oldState : Float;
	var newState : Float;
};
typedef SignalR = {
	var events : SignalREvents;
	var connectionState : Dynamic;
	var transports : Dynamic;
	var hub : HubConnection;
	var id : String;
	var logging : Bool;
	var messageId : String;
	var url : String;
	var qs : Dynamic;
	var state : Float;
	function hubConnection(?url:String):SignalR;
	function log(msg:String, logging:Bool):Void;
	function isCrossDomain(url:String):Bool;
	function changeState(connection:SignalR, expectedState:Float, newState:Float):Bool;
	function isDisconnecting(connection:SignalR):Bool;
	@:overload(function(callback:Void -> Void):JQueryPromise<Dynamic> { })
	@:overload(function(settings:ConnectionSettings):JQueryPromise<Dynamic> { })
	@:overload(function(settings:ConnectionSettings, callback:Void -> Void):JQueryPromise<Dynamic> { })
	function start():JQueryPromise<Dynamic>;
	function send(data:String):Void;
	function stop(?async:Bool, ?notifyServer:Bool):Void;
	function starting(handler:Void -> Void):SignalR;
	function received(handler:Dynamic -> Void):SignalR;
	function error(handler:String -> Void):SignalR;
	function stateChanged(handler:SignalRStateChange -> Void):SignalR;
	function disconnected(handler:Void -> Void):SignalR;
	function connectionSlow(handler:Void -> Void):SignalR;
	function sending(handler:Void -> Void):SignalR;
	function reconnecting(handler:Void -> Void):SignalR;
	function reconnected(handler:Void -> Void):SignalR;
};
typedef HubProxy = {
	var state : Dynamic;
	var connection : HubConnection;
	var hubName : String;
	function init(connection:HubConnection, hubName:String):Void;
	function hasSubscriptions():Bool;
	function on(eventName:String, callback:haxe.extern.Rest<Dynamic> -> Void):HubProxy;
	function off(eventName:String, callback:Dynamic -> Void):HubProxy;
	function invoke(methodName:String, args:haxe.extern.Rest<Dynamic>):JQueryDeferred<Dynamic>;
};
typedef HubConnectionSettings = {
	@:optional
	var queryString : String;
	@:optional
	var logging : Bool;
	@:optional
	var useDefaultPath : Bool;
};
typedef HubConnection = {
	>SignalR,
	var proxies : Dynamic;
	function received(callback:{ var Id : Dynamic; var Method : Dynamic; var Hub : Dynamic; var State : Dynamic; var Args : Dynamic; } -> Void):HubConnection;
	function createHubProxy(hubName:String):HubProxy;
};
typedef SignalRfn = {
	function init(url:Dynamic, qs:Dynamic, logging:Dynamic):Dynamic;
};
typedef ConnectionSettings = {
	@:optional
	var transport : Dynamic;
	@:optional
	var callback : Dynamic;
	@:optional
	var waitForPageLoad : Bool;
	@:optional
	var jsonp : Bool;
};
typedef JQueryStatic = {
	var signalR : SignalR;
	var connection : SignalR;
	function hubConnection(?url:String, ?options:HubConnectionSettings):HubConnection;
};
