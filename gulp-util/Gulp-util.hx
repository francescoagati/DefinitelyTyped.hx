extern class File extends Vinyl {

}
extern class PluginError {
	@:overload(function(pluginName:String, ?options:PluginErrorOptions):Void { })
	@:overload(function(pluginName:String, message:String, ?options:PluginErrorOptions):Void { })
	@:overload(function(pluginName:String, message:Error, ?options:PluginErrorOptions):Void { })
	function new(?options:PluginErrorOptions):Void;
	var name : String;
	var message : Dynamic;
	var fileName : String;
	var lineNumber : Float;
	var stack : String;
	var showStack : Bool;
	var showProperties : Bool;
	var plugin : String;
	var error : Error;
}
extern class Gulp-utilTopLevel {
	static function replaceExtension(npath:String, ext:String):String;
	static var colors : Dynamic;
	static var date : { var masks : Dynamic; };
	static function log(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	static function template(tmpl:String):{ var file : { var path : String; }; } -> String;
	static function template(tmpl:String, opt:{ var file : { var path : String; }; }):String;
	static var env : Dynamic;
	static function beep():Void;
	static var noop : Dynamic;
	static function isStream(obj:Dynamic):Bool;
	static function isBuffer(obj:Dynamic):Bool;
	static function isNull(obj:Dynamic):Bool;
	static var linefeed : String;
	static function combine(streams:Array<NodeJS.ReadWriteStream>):Void -> NodeJS.ReadWriteStream;
	static function combine(streams:haxe.extern.Rest<NodeJS.ReadWriteStream>):Void -> NodeJS.ReadWriteStream;
	static function buffer(?cb:Error -> Array<Dynamic> -> Void):NodeJS.ReadWriteStream;
}
typedef PluginErrorOptions = {
	@:optional
	var name : String;
	@:optional
	var message : Dynamic;
	@:optional
	var fileName : String;
	@:optional
	var lineNumber : Float;
	@:optional
	var stack : String;
	@:optional
	var showStack : Bool;
	@:optional
	var showProperties : Bool;
	@:optional
	var plugin : String;
	@:optional
	var error : Error;
};
extern class Gulp-utilTopLevel {
	static function replaceExtension(npath:String, ext:String):String;
	static var colors : Dynamic;
	static var date : { var masks : Dynamic; };
	static function log(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	static function template(tmpl:String):{ var file : { var path : String; }; } -> String;
	static function template(tmpl:String, opt:{ var file : { var path : String; }; }):String;
	static var env : Dynamic;
	static function beep():Void;
	static var noop : Dynamic;
	static function isStream(obj:Dynamic):Bool;
	static function isBuffer(obj:Dynamic):Bool;
	static function isNull(obj:Dynamic):Bool;
	static var linefeed : String;
	static function combine(streams:Array<NodeJS.ReadWriteStream>):Void -> NodeJS.ReadWriteStream;
	static function combine(streams:haxe.extern.Rest<NodeJS.ReadWriteStream>):Void -> NodeJS.ReadWriteStream;
	static function buffer(?cb:Error -> Array<Dynamic> -> Void):NodeJS.ReadWriteStream;
}
