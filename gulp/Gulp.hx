typedef ISrcOptions = {
	@:optional
	var read : Bool;
	@:optional
	var buffer : Bool;
	@:optional
	var cwd : String;
	@:optional
	var root : String;
	@:optional
	var dot : Bool;
	@:optional
	var nomount : Bool;
	@:optional
	var mark : Bool;
	@:optional
	var nosort : Bool;
	@:optional
	var stat : Bool;
	@:optional
	var silent : Bool;
	@:optional
	var strict : Bool;
	@:optional
	var cache : Bool;
	@:optional
	var statCache : Bool;
	@:optional
	var sync : Bool;
	@:optional
	var nounique : Bool;
	@:optional
	var nonull : Bool;
	@:optional
	var nocase : Bool;
	@:optional
	var debug : Bool;
	@:optional
	var globDebug : Bool;
};
typedef IDestOptions = {
	@:optional
	var cwd : String;
	@:optional
	var mode : String;
};
typedef IWatchOptions = {
	@:optional
	var interval : Float;
	@:optional
	var debounceDelay : Float;
	@:optional
	var mode : String;
	@:optional
	var cwd : String;
};
typedef IWatchEvent = {
	var type : String;
	var path : String;
};
typedef IWatchCallback = { };
typedef ITaskCallback = { };
typedef EventEmitter = {
	var any : Dynamic;
};
typedef Gulp = {
	@:overload(function(name:String, dep:Array<String>, ?fn:ITaskCallback):Dynamic { })
	function task(name:String, fn:ITaskCallback):Dynamic;
	@:overload(function(glob:Array<String>, ?opt:ISrcOptions):NodeJS.ReadWriteStream { })
	function src(glob:String, ?opt:ISrcOptions):NodeJS.ReadWriteStream;
	@:overload(function(outFolder:String -> String, ?opt:IDestOptions):NodeJS.ReadWriteStream { })
	function dest(outFolder:String, ?opt:IDestOptions):NodeJS.ReadWriteStream;
	@:overload(function(glob:Array<String>, tasks:Array<String>):EventEmitter { })
	@:overload(function(glob:String, opt:IWatchOptions, tasks:Array<String>):EventEmitter { })
	@:overload(function(glob:Array<String>, opt:IWatchOptions, tasks:Array<String>):EventEmitter { })
	@:overload(function(glob:String, fn:IWatchCallback):EventEmitter { })
	@:overload(function(glob:Array<String>, fn:IWatchCallback):EventEmitter { })
	@:overload(function(glob:String, fn:Array<IWatchCallback>):EventEmitter { })
	@:overload(function(glob:Array<String>, fn:Array<IWatchCallback>):EventEmitter { })
	@:overload(function(glob:String, opt:IWatchOptions, fn:IWatchCallback):EventEmitter { })
	@:overload(function(glob:String, opt:IWatchOptions, fn:Array<IWatchCallback>):EventEmitter { })
	function watch(glob:String, tasks:Array<String>):EventEmitter;
};
extern class GulpTopLevel {
	static var _tmp : gulp.Gulp;
}
typedef IGulpPlugin = { };
extern class GulpTopLevel {
	static var _tmp : gulp.Gulp;
}
