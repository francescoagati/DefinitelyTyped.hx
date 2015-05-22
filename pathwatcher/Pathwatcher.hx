typedef IHandleWatcher = {
	>events.EventEmitter,
	function onEvent(event:Dynamic, filePath:Dynamic, oldFilePath:Dynamic):Dynamic;
	function start():Void;
	function closeIfNoListener():Void;
	function close():Void;
};
typedef IPathWatcher = {
	var isWatchingParent : Bool;
	var path : Dynamic;
	var handleWatcher : IHandleWatcher;
	function close():Void;
};
extern class PathwatcherTopLevel {
	static function watch(path:String, callback:haxe.Constraints.Function):IPathWatcher;
	static function closeAllWatchers():Void;
	static function getWatchedPaths():Array<String>;
	static var File : PathWatcher.IFileStatic;
	static var Directory : PathWatcher.IDirectoryStatic;
}
extern class PathwatcherTopLevel {
	static function watch(path:String, callback:haxe.Constraints.Function):IPathWatcher;
	static function closeAllWatchers():Void;
	static function getWatchedPaths():Array<String>;
	static var File : PathWatcher.IFileStatic;
	static var Directory : PathWatcher.IDirectoryStatic;
}
