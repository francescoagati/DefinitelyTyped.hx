typedef UtilModule = {
	function kindOf(value:Dynamic):String;
	@:overload(function(error:Error, ?origError:Error):Error { })
	@:overload(function(error:Dynamic, ?origError:Error):Error { })
	function error(message:String, ?origError:Error):Error;
	var linefeed : String;
	function normalizelf(str:String):String;
	function recurse(object:Dynamic, callbackFunction:Dynamic -> Void, continueFunction:Dynamic -> Bool):Void;
	function repeat(n:Float, str:String):String;
	function pluralize(n:Float, str:String, ?separator:String):String;
	function spawn(options:ISpawnOptions, done:Error -> ISpawnResult -> Float -> Void):ISpawnedChild;
	function toArray<T>(arrayLikeObject:Dynamic):Array<T>;
	@:overload(function<A, R>(syncOrAsyncFunction:A -> R):A -> R -> Void -> Void { })
	@:overload(function<A, B, R>(syncOrAsyncFunction:A -> B -> R):A -> B -> R -> Void -> Void { })
	@:overload(function<A, B, C, R>(syncOrAsyncFunction:A -> B -> C -> R):A -> B -> C -> R -> Void -> Void { })
	@:overload(function<A, B, C, D, R>(syncOrAsyncFunction:A -> B -> C -> D -> R):A -> B -> C -> D -> R -> Void -> Void { })
	function callbackify<R>(syncOrAsyncFunction:Void -> R):R -> Void -> Void;
	var namespace : Dynamic;
	var task : Dynamic;
};
typedef ISpawnOptions = {
	var cmd : String;
	@:optional
	var grunt : Bool;
	@:optional
	var args : Array<String>;
	@:optional
	var opts : { @:optional
	var cwd : String; @:optional
	var stdio : Dynamic; @:optional
	var custom : Dynamic; @:optional
	var env : Dynamic; @:optional
	var detached : Bool; };
	@:optional
	var fallback : Dynamic;
};
typedef ISpawnResult = {
	var stdout : String;
	var stderr : String;
	var code : Float;
};
typedef ISpawnedChild = {
	function start():Void;
	function once():Void;
	function forever():Void;
	function kill():Void;
};
typedef IFlag = { };
typedef IConfigComponents = {
	>grunt.config.ConfigModule,
	function initConfig(config:grunt.config.IProjectConfig):Void;
};
typedef ITaskComponents = {
	>grunt.task.CommonTaskModule,
	function loadTasks(tasksPath:String):Void;
	function loadNpmTasks(pluginName:String):Void;
};
typedef IGrunt = {
	>grunt.IConfigComponents,
	>grunt.fail.FailModule,
	>grunt.ITaskComponents,
	var config : grunt.config.ConfigModule;
	var event : grunt.event.EventModule;
	var fail : grunt.fail.FailModule;
	var file : grunt.file.FileModule;
	var log : grunt.log.LogModule;
	var option : grunt.option.OptionModule;
	var task : grunt.task.TaskModule;
	var template : grunt.template.TemplateModule;
	var util : grunt.util.UtilModule;
	var package : node.NodePackage;
	var version : String;
};
