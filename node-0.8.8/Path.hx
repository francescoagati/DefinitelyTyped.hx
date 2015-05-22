extern class PathTopLevel {
	static function normalize(p:String):String;
	static function join(paths:haxe.extern.Rest<Dynamic>):String;
	static function resolve(from:String, to:String):String;
	static function resolve(from:String, from2:String, to:String):String;
	static function resolve(from:String, from2:String, from3:String, to:String):String;
	static function resolve(from:String, from2:String, from3:String, from4:String, to:String):String;
	static function resolve(from:String, from2:String, from3:String, from4:String, from5:String, to:String):String;
	static function relative(from:String, to:String):String;
	static function dirname(p:String):String;
	static function basename(p:String, ?ext:String):String;
	static function extname(p:String):String;
	static var sep : String;
}
