typedef CommonTaskModule = {
	@:overload(function(taskName:String, description:String, taskFunction:haxe.Constraints.Function):Void { })
	function registerTask(taskName:String, taskList:Array<String>):Void;
	@:overload(function(taskName:String, taskDescription:String, taskFunction:haxe.Constraints.Function):Void { })
	function registerMultiTask(taskName:String, taskFunction:haxe.Constraints.Function):Void;
	function exists(name:String):Bool;
	function renameTask(oldname:String, newname:String):Void;
};
typedef TaskModule = {
	>CommonTaskModule,
	@:overload(function(task:String, thenTasks:haxe.extern.Rest<String>):Void { })
	function run(tasks:Array<String>):Void;
	function clearQueue():Void;
	function normalizeMultiTaskFiles(data:grunt.config.IProjectConfig, ?targetname:String):Array<grunt.file.IFileMap>;
	var current : grunt.task.IMultiTask<Dynamic>;
};
typedef AsyncResultCatcher = { };
typedef ITask = {
	function async():AsyncResultCatcher;
	@:overload(function(tasks:String, otherTasks:haxe.extern.Rest<String>):Void { })
	@:overload(function(tasks:Array<String>, otherTasks:haxe.extern.Rest<Array<String>>):Void { })
	function requires(tasks:Array<String>):Void;
	function requiresConfig(prop:String, andProps:haxe.extern.Rest<String>):Void;
	var name : String;
	var nameArgs : String;
	var args : Array<String>;
	var flags : Array<grunt.IFlag>;
	var errorCount : Float;
	@:overload(function<T>(defaultsObj:T):T { })
	function options(defaultsObj:Dynamic):ITaskOptions;
};
typedef IMultiTask<T> = {
	>ITask,
	var target : String;
	var files : grunt.file.IFilesArray;
	var filesSrc : Array<String>;
	var data : T;
};
typedef ITaskOptions = {
	@:optional
	var options : Dynamic;
	@:optional
	var files : Dynamic;
};
typedef ITaskCompactOptions = {
	>grunt.task.ITaskOptions,
	>grunt.file.IFilesConfig,
};
