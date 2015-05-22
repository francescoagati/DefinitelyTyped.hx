extern class WebSocket {
	var id : String;
	function new(url:String, ?subprotocol:String, ?settings:Dynamic):Void;
	function on(event:String, handler:Dynamic -> Void, ?confirmation:ConfirmationArgument -> Void):Void;
	function one(event:String, handler:Dynamic -> Void, ?confirmation:ConfirmationArgument -> Void):Void;
	function many(event:String, times:Float, handler:Dynamic -> Void, ?confirmation:ConfirmationArgument -> Void):Void;
	function unbind(event:String):Void;
	function publish(topic:String, data:Dynamic):Void;
}
typedef ConfirmationArgument = {
	var event : String;
};
