typedef IFileEncodedOption = {
	var encoding : String;
};
typedef IFileWriteOptions = {
	@:optional
	var noProcess : Dynamic;
};
typedef IFileWriteBufferOption = {
	>grunt.file.IFileWriteOptions,
	@:optional
	var process : Buffer -> Bool;
};
typedef IFileWriteStringOption = {
	>grunt.file.IFileWriteOptions,
	@:optional
	var process : String -> Bool;
};
typedef FileModule = {
	var defaultEncoding : String;
	@:overload(function(filepath:String, options:IFileEncodedOption):Buffer { })
	function read(filepath:String):String;
	@:overload(function(filepath:String, options:IFileEncodedOption):Buffer { })
	function readJSON(filepath:String):Dynamic;
	@:overload(function(filepath:String, options:IFileEncodedOption):Buffer { })
	function readYAML(filepath:String):Dynamic;
	@:overload(function(filepath:String, contents:Buffer):Void { })
	function write(filepath:String, contents:String, ?options:IFileEncodedOption):Void;
	@:overload(function(srcpath:String, destpath:String, options:IFileWriteStringOption):Void { })
	@:overload(function(srcpath:String, destpath:String, options:IFileWriteBufferOption):Void { })
	function copy(srcpath:String, destpath:String):Void;
	function delete(filepath:String, ?options:{ @:optional
	var force : Bool; }):Bool;
	function mkdir(dirpath:String, ?mode:String):Void;
	function recurse(rootdir:String, callback:String -> String -> String -> String -> Void):Void;
	@:overload(function(options:IFilesConfig, patterns:Array<String>):Array<String> { })
	function expand(patterns:Array<String>):Array<String>;
	function expandMapping(patterns:Array<String>, dest:String, options:IExpandedFilesConfig):Array<IFileMap>;
	@:overload(function(pattern:String, filepaths:Array<String>):Array<String> { })
	@:overload(function(patterns:Array<String>, filepath:String):Array<String> { })
	@:overload(function(patterns:Array<String>, filepaths:Array<String>):Array<String> { })
	@:overload(function(options:minimatch.IMinimatchOptions, pattern:String, filepath:String):Array<String> { })
	@:overload(function(options:minimatch.IMinimatchOptions, pattern:String, filepaths:Array<String>):Array<String> { })
	@:overload(function(options:minimatch.IMinimatchOptions, patterns:Array<String>, filepath:String):Array<String> { })
	@:overload(function(options:minimatch.IMinimatchOptions, patterns:Array<String>, filepaths:Array<String>):Array<String> { })
	function match(pattern:String, filepath:String):Array<String>;
	@:overload(function(pattern:String, filepaths:Array<String>):Bool { })
	@:overload(function(patterns:Array<String>, filepath:String):Bool { })
	@:overload(function(patterns:Array<String>, filepaths:Array<String>):Bool { })
	@:overload(function(options:minimatch.IMinimatchOptions, pattern:String, filepath:String):Bool { })
	@:overload(function(options:minimatch.IMinimatchOptions, pattern:String, filepaths:Array<String>):Bool { })
	@:overload(function(options:minimatch.IMinimatchOptions, patterns:Array<String>, filepath:String):Bool { })
	@:overload(function(options:minimatch.IMinimatchOptions, patterns:Array<String>, filepaths:Array<String>):Bool { })
	function isMatch(pattern:String, filepath:String):Bool;
	function exists(path:String, append:haxe.extern.Rest<String>):Bool;
	function isLink(path:String, append:haxe.extern.Rest<String>):Bool;
	function isDir(path:String, append:haxe.extern.Rest<String>):Bool;
	function isFile(path:String, append:haxe.extern.Rest<String>):Bool;
	function isPathAbsolute(path:String, append:haxe.extern.Rest<String>):Bool;
	function arePathsEquivalent(path:String, append:haxe.extern.Rest<String>):Bool;
	function doesPathContain(ancestorPath:String, decendantPaths:Array<String>):Bool;
	function isPathCwd(path:String, append:haxe.extern.Rest<String>):Bool;
	function setBase(path:String, append:haxe.extern.Rest<String>):Void;
	var glob : Dynamic;
	var minimatch : Dynamic;
	var findup : Dynamic;
};
typedef IFilesArray = {
	>Array<IFilesConfig>,
};
typedef IFilesConfig = {
	>minimatch.IMinimatchOptions,
	@:optional
	var src : Array<String>;
	@:optional
	var dest : String;
	@:optional
	var expand : Bool;
	@:optional
	var filter : Dynamic;
};
typedef IExpandedFilesConfig = {
	>IFilesConfig,
	@:optional
	var expand : Bool;
	@:optional
	var cwd : String;
	@:optional
	var ext : String;
	@:optional
	var flatten : Bool;
	@:optional
	var rename : haxe.Constraints.Function;
};
typedef IFileMap = {
	var src : Array<String>;
	var dest : String;
};
