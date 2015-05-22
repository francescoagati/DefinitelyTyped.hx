typedef ClusterSettings = {
	var exec : String;
	var args : Array<String>;
	var silent : Bool;
};
typedef Worker = {
	var id : String;
	var process : child_process.ChildProcess;
	var suicide : Bool;
	function send(message:Dynamic, ?sendHandle:Dynamic):Void;
	function destroy():Void;
	function disconnect():Void;
};
extern class ClusterTopLevel {
	static var settings : ClusterSettings;
	static var isMaster : Bool;
	static var isWorker : Bool;
	static function setupMaster(?settings:ClusterSettings):Void;
	static function fork(?env:Dynamic):Worker;
	static function disconnect(?callback:haxe.Constraints.Function):Void;
	static var workers : Dynamic;
	static function addListener(event:String, listener:haxe.Constraints.Function):Void;
	static function on(event:String, listener:haxe.Constraints.Function):Dynamic;
	static function once(event:String, listener:haxe.Constraints.Function):Void;
	static function removeListener(event:String, listener:haxe.Constraints.Function):Void;
	static function removeAllListener(event:String):Void;
	static function setMaxListeners(n:Float):Void;
	static function listeners(event:String):Array<{ var Function : Dynamic; }>;
	static function emit(event:String, ?arg1:Dynamic, ?arg2:Dynamic):Void;
}
