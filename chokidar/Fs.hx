typedef FSWatcher = {
	@:overload(function(filesDirsOrGlobs:Array<String>):Void { })
	function add(fileDirOrGlob:String):Void;
	@:overload(function(filesDirsOrGlobs:Array<String>):Void { })
	function unwatch(fileDirOrGlob:String):Void;
};
