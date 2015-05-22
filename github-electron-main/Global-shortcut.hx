extern class Global-shortcutTopLevel {
	static function register(accelerator:String, callback:haxe.Constraints.Function):Void;
	static function isRegistered(accelerator:String):Bool;
	static function unregister(accelerator:String):Void;
	static function unregisterAll():Void;
}
