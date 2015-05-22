typedef DDPStatic = {
	function subscribe(name:String, rest:haxe.extern.Rest<Dynamic>):Void;
	function call(method:String, parameters:haxe.extern.Rest<Dynamic>):Void;
	function apply(method:String, parameters:haxe.extern.Rest<Dynamic>):Void;
	function methods(IMeteorMethodsDictionary:Dynamic):Dynamic;
	function status():DDPStatus;
	function reconnect():Void;
	function disconnect():Void;
	function onReconnect():Void;
};
typedef DDPStatus = {
	var connected : Bool;
	var status : Meteor.StatusEnum;
	var retryCount : Float;
	@:optional
	var retryTime : Float;
	@:optional
	var reason : String;
};
extern class DDPTopLevel {
	static function connect(url:String):DDP.DDPStatic;
}
