extern class EventsTopLevel {
	static function addListener(visualization:Dynamic, eventName:String, callback:haxe.Constraints.Function):Dynamic;
	static function addListener(visualization:Dynamic, eventName:String, callback:haxe.extern.Rest<Dynamic> -> Void):Dynamic;
	static function removeListener(listener:Dynamic):Void;
	static function removeAllListeners(visualization:Dynamic):Void;
	static function trigger(visualization:Dynamic, eventName:String, ?args:Dynamic):Void;
}
