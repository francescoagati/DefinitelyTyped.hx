typedef Debugger = {
	var enabled : Bool;
	var log : haxe.Constraints.Function;
	var namespace : String;
};
extern class DTopLevel {
	static var log : haxe.Constraints.Function;
	static function enable(namespaces:String):Void;
	static function disable():Void;
	static function enabled(namespace:String):Bool;
}
