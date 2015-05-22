extern class Less-middlewareTopLevel {
	static function lessMiddleware(source:String, ?options:{ @:optional
	var debug : Bool; @:optional
	var dest : String; @:optional
	var force : Bool; @:optional
	var once : Bool; @:optional
	var pathRoot : String; @:optional
	var postprocess : { @:optional
	function css(css:String, req:express.Request):String; }; @:optional
	var preprocess : { @:optional
	function less(css:String, req:express.Request):String; @:optional
	function path(pathname:String, req:express.Request):String; @:optional
	function importPaths(paths:Array<String>, req:express.Request):Array<String>; }; @:optional
	var render : { @:optional
	var compress : String; @:optional
	var yuicompress : Bool; @:optional
	var paths : Array<String>; }; @:optional
	function storeCss(pathname:String, css:String, req:express.Request, next:haxe.Constraints.Function):Void; @:optional
	var cacheFile : String; }):express.RequestHandler;
}
extern class Less-middlewareTopLevel {
	static function lessMiddleware(source:String, ?options:{ @:optional
	var debug : Bool; @:optional
	var dest : String; @:optional
	var force : Bool; @:optional
	var once : Bool; @:optional
	var pathRoot : String; @:optional
	var postprocess : { @:optional
	function css(css:String, req:express.Request):String; }; @:optional
	var preprocess : { @:optional
	function less(css:String, req:express.Request):String; @:optional
	function path(pathname:String, req:express.Request):String; @:optional
	function importPaths(paths:Array<String>, req:express.Request):Array<String>; }; @:optional
	var render : { @:optional
	var compress : String; @:optional
	var yuicompress : Bool; @:optional
	var paths : Array<String>; }; @:optional
	function storeCss(pathname:String, css:String, req:express.Request, next:haxe.Constraints.Function):Void; @:optional
	var cacheFile : String; }):express.RequestHandler;
}
