extern class DefineTopLevel {
	static function loadScript(url:String, successCallback:Void -> Void, errCallback:Void -> Void):Dynamic;
	static function require(req:String, callback:haxe.Constraints.Function):Void;
	static function require(req:Array<String>, callback:haxe.Constraints.Function):Void;
	static function define(name:String, deps:Array<String>, def:haxe.Constraints.Function):Void;
}
