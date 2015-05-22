typedef IParsed = { };
extern class Mu2TopLevel {
	static var root : String;
	static function compileAndRender(templateName:String, view:Dynamic):NodeJS.ReadableStream;
	static function compile(filename:String, callback:Error -> IParsed -> Void):Void;
	static function compileText(name:String, template:String, callback:Error -> IParsed -> Void):Void;
	static function compileText(name:String, template:String):IParsed;
	static function compileText(template:String):IParsed;
	static function render(filenameOrParsed:String, view:Dynamic):NodeJS.ReadableStream;
	static function render(filenameOrParsed:IParsed, view:Dynamic):NodeJS.ReadableStream;
	static function renderText(template:String, view:Dynamic, ?partials:Dynamic):NodeJS.ReadableStream;
	static function clearCache(?templateName:String):Void;
}
extern class Mu2TopLevel {
	static var root : String;
	static function compileAndRender(templateName:String, view:Dynamic):NodeJS.ReadableStream;
	static function compile(filename:String, callback:Error -> IParsed -> Void):Void;
	static function compileText(name:String, template:String, callback:Error -> IParsed -> Void):Void;
	static function compileText(name:String, template:String):IParsed;
	static function compileText(template:String):IParsed;
	static function render(filenameOrParsed:String, view:Dynamic):NodeJS.ReadableStream;
	static function render(filenameOrParsed:IParsed, view:Dynamic):NodeJS.ReadableStream;
	static function renderText(template:String, view:Dynamic, ?partials:Dynamic):NodeJS.ReadableStream;
	static function clearCache(?templateName:String):Void;
}
