typedef MockeryEnableArgs = {
	@:optional
	var useCleanCache : Bool;
	@:optional
	var warnOnReplace : Bool;
	@:optional
	var warnOnUnregistered : Bool;
};
extern class MockeryTopLevel {
	static function enable(?args:MockeryEnableArgs):Void;
	static function disable():Void;
	static function registerMock(name:String, mock:Dynamic):Void;
	static function deregisterMock(name:String):Void;
	static function registerSubstitute(name:String, substitute:String):Void;
	static function deregisterSubstitute(name:String):Void;
	static function registerAllowable(name:String, ?unhook:Bool):Void;
	static function deregisterAllowable(name:String):Void;
	static function registerAllowables(names:Array<String>):Void;
	static function deregisterAllowables(names:Array<String>):Void;
	static function deregisterAll():Void;
	static function resetCache():Void;
	static function warnOnUnregistered(value:Bool):Void;
	static function warnOnReplace(value:Bool):Void;
}
extern class MockeryTopLevel {
	static function enable(?args:MockeryEnableArgs):Void;
	static function disable():Void;
	static function registerMock(name:String, mock:Dynamic):Void;
	static function deregisterMock(name:String):Void;
	static function registerSubstitute(name:String, substitute:String):Void;
	static function deregisterSubstitute(name:String):Void;
	static function registerAllowable(name:String, ?unhook:Bool):Void;
	static function deregisterAllowable(name:String):Void;
	static function registerAllowables(names:Array<String>):Void;
	static function deregisterAllowables(names:Array<String>):Void;
	static function deregisterAll():Void;
	static function resetCache():Void;
	static function warnOnUnregistered(value:Bool):Void;
	static function warnOnReplace(value:Bool):Void;
}
