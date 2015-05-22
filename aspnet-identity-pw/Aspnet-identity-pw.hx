extern class Aspnet-identity-pwTopLevel {
	static function hashPassword(password:String):String;
	static function hashPassword(password:String, callback:Dynamic -> String -> Void):Void;
	static function validatePassword(password:String, hashedPass:String):Bool;
	static function validatePassword(password:String, hashedPass:String, callback:Dynamic -> Bool -> Void):Void;
}
extern class Aspnet-identity-pwTopLevel {
	static function hashPassword(password:String):String;
	static function hashPassword(password:String, callback:Dynamic -> String -> Void):Void;
	static function validatePassword(password:String, hashedPass:String):Bool;
	static function validatePassword(password:String, hashedPass:String, callback:Dynamic -> Bool -> Void):Void;
}
