extern class RadioTopLevel {
	static function channel(channelName:String):Channel;
}
extern class Channel {
	function new(channelName:String):Void;
	var vent : Backbone.Wreqr.EventAggregator;
	var reqres : Backbone.Wreqr.RequestResponse;
	var commands : Backbone.Wreqr.Commands;
	var channelName : String;
	function reset():Channel;
	function connectEvents(hash:String, context:Dynamic):Channel;
	function connectCommands(hash:String, context:Dynamic):Channel;
	function connectRequests(hash:String, context:Dynamic):Channel;
}
extern class Handlers extends Backbone.Events {
	function new(?options:Dynamic):Void;
	var options : Dynamic;
	function setHandler(name:String, handler:Dynamic, ?context:Dynamic):Void;
	function hasHandler(name:String):Bool;
	function getHandler(name:String):haxe.Constraints.Function;
	function removeHandler(name:String):Void;
	function removeAllHandlers():Void;
}
extern class CommandStorage {
	function new(?options:Dynamic):Void;
	function getCommands(commandName:String):Commands;
	function addCommand(commandName:String, args:Dynamic):Void;
	function clearCommands(commandName:String):Void;
}
extern class Commands extends Handlers {
	function new(?options:Dynamic):Void;
	var storageType : CommandStorage;
	function execute(name:String, args:haxe.extern.Rest<Dynamic>):Void;
}
extern class RequestResponse extends Handlers {
	function new(?options:Dynamic):Void;
	function request(args:haxe.extern.Rest<Dynamic>):Dynamic;
}
extern class EventAggregator extends Backbone.Events {
	function new(?options:Dynamic):Void;
}
