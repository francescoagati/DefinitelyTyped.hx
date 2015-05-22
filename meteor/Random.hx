extern class RandomTopLevel {
	static function id(?numberOfChars:Float):String;
	static function secret(?numberOfChars:Float):String;
	static function fraction():Float;
	static function hexString(numberOfDigits:Float):String;
	static function choice(array:Array<Dynamic>):String;
	static function choice(str:String):String;
}
