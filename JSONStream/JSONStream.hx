typedef Options = {
	var recurse : Bool;
};
extern class JSONStreamTopLevel {
	static function parse(pattern:Dynamic):NodeJS.ReadWriteStream;
	static function parse(patterns:Array<Dynamic>):NodeJS.ReadWriteStream;
	static function stringify():NodeJS.ReadWriteStream;
	static function stringify(open:String, sep:String, close:String):NodeJS.ReadWriteStream;
	static function stringifyObject():NodeJS.ReadWriteStream;
	static function stringifyObject(open:String, sep:String, close:String):NodeJS.ReadWriteStream;
}
extern class JSONStreamTopLevel {
	static function parse(pattern:Dynamic):NodeJS.ReadWriteStream;
	static function parse(patterns:Array<Dynamic>):NodeJS.ReadWriteStream;
	static function stringify():NodeJS.ReadWriteStream;
	static function stringify(open:String, sep:String, close:String):NodeJS.ReadWriteStream;
	static function stringifyObject():NodeJS.ReadWriteStream;
	static function stringifyObject(open:String, sep:String, close:String):NodeJS.ReadWriteStream;
}
