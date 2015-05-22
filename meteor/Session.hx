extern class SessionTopLevel {
	static function equals(key:String, value:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, haxe.extern.EitherType<Bool, haxe.extern.EitherType<Dynamic, Dynamic>>>>):Bool;
	static function get(key:String):Dynamic;
	static function set(key:String, value:haxe.extern.EitherType<EJSONable, Dynamic>):Void;
	static function setDefault(key:String, value:haxe.extern.EitherType<EJSONable, Dynamic>):Void;
}
