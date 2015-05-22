typedef WatchOptions = {
	@:optional
	var persistent : Bool;
	@:optional
	var ignored : Dynamic;
	@:optional
	var ignoreInitial : Bool;
	@:optional
	var followSymlinks : Bool;
	@:optional
	var cwd : String;
	@:optional
	var usePolling : Bool;
	@:optional
	var useFsEvents : Bool;
	@:optional
	var alwaysStat : Bool;
	@:optional
	var depth : Float;
	@:optional
	var interval : Float;
	@:optional
	var binaryInterval : Float;
	@:optional
	var ignorePermissionErrors : Bool;
	@:optional
	var atomic : Bool;
};
extern class ChokidarTopLevel {
	static function watch(fileDirOrGlob:String, ?options:WatchOptions):fs.FSWatcher;
	static function watch(filesDirsOrGlobs:Array<String>, ?options:WatchOptions):fs.FSWatcher;
}
extern class ChokidarTopLevel {
	static function watch(fileDirOrGlob:String, ?options:WatchOptions):fs.FSWatcher;
	static function watch(filesDirsOrGlobs:Array<String>, ?options:WatchOptions):fs.FSWatcher;
}
