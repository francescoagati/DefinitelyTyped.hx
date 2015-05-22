typedef InitOptions = {
	@:optional
	var dir : String;
	@:optional
	var stringify : Dynamic -> String;
	@:optional
	var parse : String -> Dynamic;
	@:optional
	var encoding : String;
	@:optional
	var logging : haxe.extern.EitherType<Bool, haxe.Constraints.Function>;
	@:optional
	var continuous : Bool;
	@:optional
	var interval : haxe.extern.EitherType<Milliseconds, Bool>;
	@:optional
	var ttl : haxe.extern.EitherType<Milliseconds, Bool>;
};
extern class NodePersistTopLevel {
	static function init(?options:InitOptions, ?callback:haxe.Constraints.Function):Q.Promise<Dynamic>;
	static function initSync(?options:InitOptions):Void;
	static function getItem(key:String, ?callback:Dynamic -> Dynamic -> Dynamic):Q.Promise<Dynamic>;
	static function getItemSync(key:String):Dynamic;
	static function setItem(key:String, value:Dynamic, ?callback:Dynamic -> Dynamic):Q.Promise<Dynamic>;
	static function setItemSync(key:String, value:Dynamic):Void;
	static function removeItem(key:String, ?callback:Dynamic -> Dynamic):Q.Promise<Dynamic>;
	static function removeItemSync(key:String):Void;
	static function clear(?callback:Dynamic -> Dynamic):Q.Promise<Dynamic>;
	static function clearSync():Void;
	static function values():Array<Dynamic>;
	static function valuesWithKeyMatch(match:String):Array<Dynamic>;
	static function keys():Array<String>;
	static function length():Float;
	static function forEach(callback:String -> Dynamic -> Void):Void;
	static function persist(?callback:Dynamic -> Dynamic):Q.Promise<Dynamic>;
	static function persistSync():Void;
	static function persistKey(key:String, ?callback:Dynamic -> Dynamic):Q.Promise<Dynamic>;
	static function persistKeySync(key:String):Void;
}
