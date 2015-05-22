extern class GoogleTopLevel {
	static function load(visualization:String, version:String, packages:Dynamic):Void;
	static function setOnLoadCallback(handler:haxe.Constraints.Function):Void;
	static function setOnLoadCallback(handler:Void -> Void):Void;
}
