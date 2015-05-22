typedef Thenable<R> = {
	function then<U>(?onFulfilled:R -> haxe.extern.EitherType<U, Thenable<U>>, ?onRejected:Dynamic -> haxe.extern.EitherType<U, Thenable<U>>):Thenable<U>;
};
extern class Promise<R> {
	function new(callback:?haxe.extern.EitherType<R, Thenable<R>> -> Void -> ?Dynamic -> Void -> Void):Void;
	function then<U>(?onFulfilled:R -> haxe.extern.EitherType<U, Thenable<U>>, ?onRejected:Dynamic -> haxe.extern.EitherType<U, Thenable<U>>):Promise<U>;
	function catch<U>(?onRejected:Dynamic -> haxe.extern.EitherType<U, Thenable<U>>):Promise<U>;
	function finally<U>(finallyCallback:Void -> Dynamic):Promise<U>;
}
typedef RootFileInfo = {
	var filename : String;
	var relativeUrls : Bool;
	var rootpath : String;
	var currentDirectory : String;
	var entryPath : String;
	var rootFilename : String;
};
extern class PluginManager {
	function new(less:LessStatic):Void;
}
typedef Plugin = {
	var install : LessStatic -> PluginManager -> Void;
};
typedef SourceMapOption = {
	var sourceMapURL : String;
	var sourceMapBasepath : String;
	var sourceMapRootpath : String;
	var outputSourceFiles : Bool;
	var sourceMapFileInline : Bool;
};
typedef Options = {
	@:optional
	var sourceMap : SourceMapOption;
	@:optional
	var filename : String;
	var plugins : Array<Plugin>;
	@:optional
	var rootFileInfo : RootFileInfo;
};
typedef RenderError = {
	var column : Float;
	var extract : Array<String>;
	var filename : String;
	var index : Float;
	var line : Float;
	var message : String;
	var type : String;
};
typedef RenderOutput = {
	var css : String;
	var map : String;
	var imports : Array<String>;
};
typedef LessStatic = {
	@:overload(function(input:String, options:Less.Options, callback:Less.RenderError -> Less.RenderOutput -> Void):Void { })
	@:overload(function(input:String):Less.Promise<Less.RenderOutput> { })
	@:overload(function(input:String, options:Less.Options):Less.Promise<Less.RenderOutput> { })
	function render(input:String, callback:Less.RenderError -> Less.RenderOutput -> Void):Void;
	var version : Array<Float>;
};
