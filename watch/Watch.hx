typedef Monitor = {
	>events.EventEmitter,
};
typedef Options = {
	@:optional
	var persistent : Bool;
	@:optional
	var ignoreDotFiles : Bool;
	@:optional
	var filter : Dynamic;
	@:optional
	var interval : Float;
};
extern class WatchTopLevel {
	static function watchTree(root:String, callback:Dynamic -> fs.Stats -> fs.Stats -> Void):Void;
	static function watchTree(root:String, options:Options, callback:Dynamic -> fs.Stats -> fs.Stats -> Void):Void;
	static function unwatchTree(root:String):Void;
	static function createMonitor(root:String, callback:Monitor -> Void):Void;
	static function createMonitor(root:String, options:Options, callback:Monitor -> Void):Void;
}
extern class WatchTopLevel {
	static function watchTree(root:String, callback:Dynamic -> fs.Stats -> fs.Stats -> Void):Void;
	static function watchTree(root:String, options:Options, callback:Dynamic -> fs.Stats -> fs.Stats -> Void):Void;
	static function unwatchTree(root:String):Void;
	static function createMonitor(root:String, callback:Monitor -> Void):Void;
	static function createMonitor(root:String, options:Options, callback:Monitor -> Void):Void;
}
