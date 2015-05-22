extern class BcryptTopLevel {
	static function genSaltSync(?rounds:Float):String;
	static function genSalt(rounds:Float, callback:Error -> String -> Void):Void;
	static function genSalt(callback:Error -> String -> Void):Void;
	static function hashSync(data:Dynamic, salt:String):String;
	static function hashSync(data:Dynamic, rounds:Float):String;
	static function hash(data:Dynamic, salt:String, callback:Error -> String -> Void):Void;
	static function hash(data:Dynamic, rounds:Float, callback:Error -> String -> Void):Void;
	static function compareSync(data:Dynamic, encrypted:String):Bool;
	static function compare(data:Dynamic, encrypted:String, callback:Error -> Bool -> Void):Void;
	static function getRounds(encrypted:String):Float;
}
extern class BcryptTopLevel {
	static function genSaltSync(?rounds:Float):String;
	static function genSalt(rounds:Float, callback:Error -> String -> Void):Void;
	static function genSalt(callback:Error -> String -> Void):Void;
	static function hashSync(data:Dynamic, salt:String):String;
	static function hashSync(data:Dynamic, rounds:Float):String;
	static function hash(data:Dynamic, salt:String, callback:Error -> String -> Void):Void;
	static function hash(data:Dynamic, rounds:Float, callback:Error -> String -> Void):Void;
	static function compareSync(data:Dynamic, encrypted:String):Bool;
	static function compare(data:Dynamic, encrypted:String, callback:Error -> Bool -> Void):Void;
	static function getRounds(encrypted:String):Float;
}
