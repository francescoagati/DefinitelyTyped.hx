typedef UtilOptions = {
	@:optional
	var silent : Bool;
};
typedef ExecOptions = {
	@:optional
	var printStdout : Bool;
	@:optional
	var printStderr : Bool;
	@:optional
	var breakOnError : Bool;
};
typedef Exec = {
	>NodeJS.EventEmitter,
	function append(cmd:String):Void;
	function run():Void;
};
typedef Logger = {
	function log(value:Dynamic):Void;
	function error(value:Dynamic):Void;
};
typedef TaskOptions = {
	@:optional
	var async : Bool;
};
extern class Task {
	function new(name:String, ?prereqs:Array<String>, ?action:Void -> Void, ?opts:TaskOptions):Void;
	function invoke():Void;
	function reenable():Void;
	function addListener(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function on(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function once(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function removeListener(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	function removeAllListeners(?event:String):NodeJS.EventEmitter;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
	var value : Dynamic;
}
extern class DirectoryTask {
	function new(name:String):Void;
}
typedef FileTaskOptions = {
	@:optional
	var async : Bool;
};
extern class FileTask {
	function new(name:String, ?prereqs:Array<String>, ?action:Void -> Void, ?opts:FileTaskOptions):Void;
}
typedef FileFilter = { };
extern class FileList {
	function new():Void;
	@:overload(function(files:haxe.extern.Rest<String>):Void { })
	function include(files:Array<String>):Void;
	function shouldExclude(name:String):Bool;
	@:overload(function(file:haxe.extern.Rest<String>):Void { })
	@:overload(function(file:Array<js.RegExp>):Void { })
	@:overload(function(file:haxe.extern.Rest<js.RegExp>):Void { })
	@:overload(function(file:Array<FileFilter>):Void { })
	@:overload(function(file:haxe.extern.Rest<FileFilter>):Void { })
	function exclude(file:Array<String>):Void;
	function resolve():Void;
	function toArray():Array<String>;
	function clearExclude():Void;
}
extern class PackageTask {
	function new(name:String, version:String, definition:Void -> Void):Void;
	var archiveChangeDir : String;
	var archiveContentDir : String;
	var jarCommand : String;
	var manifestFile : String;
	var name : String;
	var needJar : Bool;
	var needTar : Bool;
	var needTarBz2 : Bool;
	var needZip : Bool;
	var packageFiles : FileList;
	var tarCommand : String;
	var version : String;
	var zipCommand : String;
}
extern class TestTask {
	function new(name:String, ?definition:Void -> Void):Void;
}
extern class NpmPublishTask {
	@:overload(function(name:String, ?definition:Void -> Void):Void { })
	function new(name:String, packageFiles:Array<String>):Void;
}
extern class JakeTopLevel {
	static function complete(?value:Dynamic):Void;
	static function desc(description:String):Void;
	static function directory(name:String):jake.DirectoryTask;
	static function fail(err:haxe.extern.Rest<String>):Void;
	static function fail(err:haxe.extern.Rest<Error>):Void;
	static function fail(err:haxe.extern.Rest<Dynamic>):Void;
	static function file(name:String, ?prereqs:Array<String>, ?action:Void -> Void, ?opts:jake.FileTaskOptions):jake.FileTask;
	static function namespace(name:String, scope:Void -> Void):Void;
	static function task(name:String, ?prereqs:Array<String>, ?action:haxe.extern.Rest<Dynamic> -> Dynamic, ?opts:jake.TaskOptions):jake.Task;
	static function task(name:String, ?action:haxe.extern.Rest<Dynamic> -> Dynamic, ?opts:jake.TaskOptions):jake.Task;
	static function task(name:String, ?opts:jake.TaskOptions, ?action:haxe.extern.Rest<Dynamic> -> Dynamic):jake.Task;
	static function npmPublishTask(name:String, packageFiles:Array<String>):jake.NpmPublishTask;
	static function npmPublishTask(name:String, ?definition:Void -> Void):jake.NpmPublishTask;
	static function mkdirP(name:String, ?mode:String, ?f:Error -> Dynamic -> Void):Void;
	static function mkdirP(name:String, ?f:Error -> Dynamic -> Void):Void;
	static function cpR(path:String, destination:String, ?opts:UtilOptions, ?callback:Void -> Void):Void;
	static function cpR(path:String, destination:String, ?callback:Error -> Void):Void;
	static function readdirR(name:String, ?opts:UtilOptions):Array<String>;
	static function rmRf(name:String, ?opts:UtilOptions):Void;
	static function exec(cmds:Array<String>, ?callback:Void -> Void, ?opts:ExecOptions):Void;
	static function createExec(cmds:Array<String>, ?callback:Void -> Void, ?opts:ExecOptions):Exec;
	static function createExec(cmds:Array<String>, ?opts:ExecOptions, ?callback:Void -> Void):Exec;
	static function createExec(cmds:String, ?callback:Void -> Void, ?opts:ExecOptions):Exec;
	static function createExec(cmds:String, ?opts:ExecOptions, ?callback:Void -> Void):Exec;
	static var logger : Logger;
	static var program : { var opts : { var quiet : Bool; }; var taskNames : Array<String>; var taskArgs : Array<String>; var envVars : { }; };
	static function addListener(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	static function on(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	static function once(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	static function removeListener(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	static function removeAllListener(event:String):NodeJS.EventEmitter;
	static function setMaxListeners(n:Float):Void;
	static function listeners(event:String):Array<haxe.Constraints.Function>;
	static function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
}
extern class JakeTopLevel {
	static function complete(?value:Dynamic):Void;
	static function desc(description:String):Void;
	static function directory(name:String):jake.DirectoryTask;
	static function fail(err:haxe.extern.Rest<String>):Void;
	static function fail(err:haxe.extern.Rest<Error>):Void;
	static function fail(err:haxe.extern.Rest<Dynamic>):Void;
	static function file(name:String, ?prereqs:Array<String>, ?action:Void -> Void, ?opts:jake.FileTaskOptions):jake.FileTask;
	static function namespace(name:String, scope:Void -> Void):Void;
	static function task(name:String, ?prereqs:Array<String>, ?action:haxe.extern.Rest<Dynamic> -> Dynamic, ?opts:jake.TaskOptions):jake.Task;
	static function task(name:String, ?action:haxe.extern.Rest<Dynamic> -> Dynamic, ?opts:jake.TaskOptions):jake.Task;
	static function task(name:String, ?opts:jake.TaskOptions, ?action:haxe.extern.Rest<Dynamic> -> Dynamic):jake.Task;
	static function npmPublishTask(name:String, packageFiles:Array<String>):jake.NpmPublishTask;
	static function npmPublishTask(name:String, ?definition:Void -> Void):jake.NpmPublishTask;
	static function mkdirP(name:String, ?mode:String, ?f:Error -> Dynamic -> Void):Void;
	static function mkdirP(name:String, ?f:Error -> Dynamic -> Void):Void;
	static function cpR(path:String, destination:String, ?opts:UtilOptions, ?callback:Void -> Void):Void;
	static function cpR(path:String, destination:String, ?callback:Error -> Void):Void;
	static function readdirR(name:String, ?opts:UtilOptions):Array<String>;
	static function rmRf(name:String, ?opts:UtilOptions):Void;
	static function exec(cmds:Array<String>, ?callback:Void -> Void, ?opts:ExecOptions):Void;
	static function createExec(cmds:Array<String>, ?callback:Void -> Void, ?opts:ExecOptions):Exec;
	static function createExec(cmds:Array<String>, ?opts:ExecOptions, ?callback:Void -> Void):Exec;
	static function createExec(cmds:String, ?callback:Void -> Void, ?opts:ExecOptions):Exec;
	static function createExec(cmds:String, ?opts:ExecOptions, ?callback:Void -> Void):Exec;
	static var logger : Logger;
	static var program : { var opts : { var quiet : Bool; }; var taskNames : Array<String>; var taskArgs : Array<String>; var envVars : { }; };
	static function addListener(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	static function on(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	static function once(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	static function removeListener(event:String, listener:haxe.Constraints.Function):NodeJS.EventEmitter;
	static function removeAllListener(event:String):NodeJS.EventEmitter;
	static function setMaxListeners(n:Float):Void;
	static function listeners(event:String):Array<haxe.Constraints.Function>;
	static function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
}
