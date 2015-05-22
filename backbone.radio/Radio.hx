extern class Commands {
	function command(commandName:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(commands:{ }, ?context:Dynamic):Commands { })
	function comply(commandName:String, callback:haxe.extern.Rest<Dynamic> -> Void, ?context:Dynamic):Commands;
	@:overload(function(commandName:String, callback:haxe.extern.Rest<Dynamic> -> Void, ?context:Dynamic):Commands { })
	function complyOnce(commands:{ }, ?context:Dynamic):Commands;
	function stopComplying(?commandName:String, ?callback:haxe.extern.Rest<Dynamic> -> Void, ?context:Dynamic):Commands;
}
extern class Requests {
	function request(requestName:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function(commands:{ }, ?context:Dynamic):Requests { })
	function reply(requestName:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic, ?context:Dynamic):Requests;
	@:overload(function(commands:{ }, ?context:Dynamic):Requests { })
	function replyOnce(requestName:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic, ?context:Dynamic):Requests;
	function stopReplying(?commandName:String, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic, ?context:Dynamic):Requests;
}
extern class Channel extends Backbone.Events {
	var channelName : String;
	function reset():Channel;
	function command(commandName:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(commands:{ }, ?context:Dynamic):Commands { })
	function comply(commandName:String, callback:haxe.extern.Rest<Dynamic> -> Void, ?context:Dynamic):Commands;
	@:overload(function(commands:{ }, ?context:Dynamic):Commands { })
	function complyOnce(commandName:String, callback:haxe.extern.Rest<Dynamic> -> Void, ?context:Dynamic):Commands;
	function stopComplying(?commandName:String, ?callback:haxe.extern.Rest<Dynamic> -> Void, ?context:Dynamic):Commands;
	function request(requestName:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function(commands:{ }, ?context:Dynamic):Requests { })
	function reply(requestName:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic, ?context:Dynamic):Requests;
	@:overload(function(commands:{ }, ?context:Dynamic):Requests { })
	function replyOnce(requestName:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic, ?context:Dynamic):Requests;
	function stopReplying(?commandName:String, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic, ?context:Dynamic):Requests;
}
extern class RadioTopLevel {
	static var VERSION : String;
	static var DEBUG : Bool;
	static function log(channelName:String, eventName:String, args:haxe.extern.Rest<Dynamic>):Void;
	static function tuneIn(channelName:String):Radio;
	static function tuneOut(channelName:String):Radio;
	static function channel(channelName:String):Channel;
	static function command(channelName:String, commandName:String, args:haxe.extern.Rest<Dynamic>):Void;
	static function comply(channelName:String, commandName:String, callback:haxe.extern.Rest<Dynamic> -> Void, ?context:Dynamic):Commands;
	static function comply(channelName:String, commands:{ }, ?context:Dynamic):Commands;
	static function complyOnce(channelName:String, commandName:String, callback:haxe.extern.Rest<Dynamic> -> Void, ?context:Dynamic):Commands;
	static function complyOnce(channelName:String, commands:{ }, ?context:Dynamic):Commands;
	static function stopComplying(channelName:String, ?commandName:String, ?callback:haxe.extern.Rest<Dynamic> -> Void, ?context:Dynamic):Commands;
	static function request(channelName:String, requestName:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function reply(channelName:String, requestName:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic, ?context:Dynamic):Requests;
	static function reply(channelName:String, commands:{ }, ?context:Dynamic):Requests;
	static function replyOnce(channelName:String, requestName:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic, ?context:Dynamic):Requests;
	static function replyOnce(channelName:String, commands:{ }, ?context:Dynamic):Requests;
	static function stopReplying(channelName:String, ?commandName:String, ?callback:haxe.extern.Rest<Dynamic> -> Dynamic, ?context:Dynamic):Requests;
	static function on(channelName:String, eventName:String, ?callback:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	static function off(channelName:String, ?eventName:String, ?callback:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	static function trigger(channelName:String, eventName:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function bind(channelName:String, eventName:String, callback:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	static function unbind(channelName:String, ?eventName:String, ?callback:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	static function once(channelName:String, events:String, callback:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	static function listenTo(channelName:String, object:Dynamic, events:String, callback:haxe.Constraints.Function):Dynamic;
	static function listenToOnce(channelName:String, object:Dynamic, events:String, callback:haxe.Constraints.Function):Dynamic;
	static function stopListening(channelName:String, ?object:Dynamic, ?events:String, ?callback:haxe.Constraints.Function):Dynamic;
}
