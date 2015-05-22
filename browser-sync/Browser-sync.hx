typedef Options = {
	@:optional
	var files : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var watchOptions : GazeOptions;
	@:optional
	var server : ServerOptions;
	@:optional
	var proxy : haxe.extern.EitherType<String, Bool>;
	@:optional
	var port : Float;
	@:optional
	var https : Bool;
	@:optional
	var ghostMode : haxe.extern.EitherType<GhostOptions, Bool>;
	@:optional
	var logLevel : String;
	@:optional
	var logPrefix : String;
	@:optional
	var logConnections : Bool;
	@:optional
	var logFileChanges : Bool;
	@:optional
	var logSnippet : Bool;
	@:optional
	var snippetOptions : SnippetOptions;
	@:optional
	var rewriteRules : haxe.extern.EitherType<Bool, Array<RewriteRules>>;
	@:optional
	var tunnel : haxe.extern.EitherType<String, Bool>;
	@:optional
	var online : Bool;
	@:optional
	var open : haxe.extern.EitherType<String, Bool>;
	@:optional
	var browser : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var xip : Bool;
	@:optional
	var notify : Bool;
	@:optional
	var scrollProportionally : Bool;
	@:optional
	var scrollThrottle : Float;
	@:optional
	var reloadDelay : Float;
	@:optional
	var reloadDebounce : Float;
	@:optional
	var plugins : Array<Dynamic>;
	@:optional
	var injectChanges : Bool;
	@:optional
	var startPath : String;
	@:optional
	var minify : Bool;
	@:optional
	var host : String;
	@:optional
	var codeSync : Bool;
	@:optional
	var timestamps : Bool;
	@:optional
	var scriptPath : String -> String;
	@:optional
	var socket : SocketOptions;
};
typedef GazeOptions = {
	@:optional
	var interval : Float;
	@:optional
	var debounceDelay : Float;
	@:optional
	var mode : String;
	@:optional
	var cwd : String;
};
typedef ServerOptions = {
	@:optional
	var baseDir : haxe.extern.EitherType<String, Array<String>>;
	@:optional
	var directory : Bool;
	@:optional
	var index : String;
	@:optional
	var routes : { };
	@:optional
	var middleware : Array<MiddlewareHandler>;
};
typedef MiddlewareHandler = { };
typedef GhostOptions = {
	@:optional
	var clicks : Bool;
	@:optional
	var scroll : Bool;
	@:optional
	var forms : Bool;
};
typedef SnippetOptions = {
	@:optional
	var ignorePaths : String;
	@:optional
	var rule : { @:optional
	var match : js.RegExp; @:optional
	var fn : String -> String -> Dynamic; };
};
typedef SocketOptions = {
	@:optional
	var path : String;
	@:optional
	var clientPath : String;
	@:optional
	var namespace : String;
};
typedef RewriteRules = {
	var match : js.RegExp;
	var fn : String -> String;
};
typedef BrowserSync = {
	function init(?config:Options, ?callback:Error -> Dynamic -> Dynamic):Void;
	@:overload(function(file:String):Void { })
	@:overload(function(files:Array<String>):Void { })
	@:overload(function(options:{ var stream : Bool; }):NodeJS.ReadWriteStream { })
	function reload():Void;
	function notify(message:String, ?timeout:Float):Void;
	function exit():Void;
	function watch(patterns:String, ?opts:chokidar.WatchOptions, ?fn:String -> fs.Stats -> Dynamic):NodeJS.EventEmitter;
	function pause():Void;
	function resume():Void;
	var emitter : NodeJS.EventEmitter;
	var active : Bool;
	var paused : Bool;
};
typedef Exports = {
	>BrowserSync,
	function create():BrowserSync;
};
extern class Browser-syncTopLevel {
	static var browserSync : Exports;
}
extern class Browser-syncTopLevel {
	static var browserSync : Exports;
}
