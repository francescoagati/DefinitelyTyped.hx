typedef ClusterSettings = {
	@:optional
	var exec : String;
	@:optional
	var args : Array<String>;
	@:optional
	var silent : Bool;
};
extern class Worker extends events.EventEmitter {
	var id : String;
	var process : child.ChildProcess;
	var suicide : Bool;
	function send(message:Dynamic, ?sendHandle:Dynamic):Void;
	function kill(?signal:String):Void;
	function destroy(?signal:String):Void;
	function disconnect():Void;
}
extern class ClusterTopLevel {
	static var settings : ClusterSettings;
	static var isMaster : Bool;
	static var isWorker : Bool;
	static function setupMaster(?settings:ClusterSettings):Void;
	static function fork(?env:Dynamic):Worker;
	static function disconnect(?callback:haxe.Constraints.Function):Void;
	static var worker : Worker;
	static var workers : Array<Worker>;
	static function addListener(event:String, listener:haxe.Constraints.Function):Void;
	static function on(event:String, listener:haxe.Constraints.Function):Dynamic;
	static function once(event:String, listener:haxe.Constraints.Function):Void;
	static function removeListener(event:String, listener:haxe.Constraints.Function):Void;
	static function removeAllListeners(?event:String):Void;
	static function setMaxListeners(n:Float):Void;
	static function listeners(event:String):Array<haxe.Constraints.Function>;
	static function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
}
