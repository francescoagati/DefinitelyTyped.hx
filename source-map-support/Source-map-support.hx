typedef UrlAndMap = {
	var url : String;
	var map : haxe.extern.EitherType<String, Buffer>;
};
typedef Options = {
	@:optional
	var handleUncaughtExceptions : Bool;
	@:optional
	var emptyCacheBetweenOperations : Bool;
	@:optional
	var retrieveFile : String -> String;
	@:optional
	var retrieveSourceMap : String -> UrlAndMap;
};
typedef Position = {
	var source : String;
	var line : Float;
	var column : Float;
};
extern class Source-map-supportTopLevel {
	static function wrapCallSite(frame:Dynamic):Dynamic;
	static function getErrorSource(error:Error):String;
	static function mapSourcePosition(position:Position):Position;
	static function retrieveSourceMap(source:String):UrlAndMap;
	static function install(?options:Options):Void;
}
extern class Source-map-supportTopLevel {
	static function wrapCallSite(frame:Dynamic):Dynamic;
	static function getErrorSource(error:Error):String;
	static function mapSourcePosition(position:Position):Position;
	static function retrieveSourceMap(source:String):UrlAndMap;
	static function install(?options:Options):Void;
}
