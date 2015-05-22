typedef IFileStatic = {
	function new(path:String, ?symlink:Bool):IFile;
};
typedef IFile = {
	var realPath : String;
	var path : String;
	var symlink : Bool;
	var cachedContents : String;
	var digest : String;
	function handleEventSubscriptions():Void;
	function setPath(path:String):Void;
	function getPath():String;
	function getRealPathSync():String;
	function getBaseName():String;
	function write(text:String):Void;
	function readSync(flushCache:Bool):String;
	function read(?flushCache:Bool):Q.Promise<String>;
	function existsSync():Bool;
	function setDigest(contents:String):Void;
	function getDigest():String;
	function writeFileWithPrivilegeEscalationSync(filePath:String, text:String):Void;
	function handleNativeChangeEvent(eventType:String, eventPath:String):Void;
	function detectResurrectionAfterDelay():Void;
	function detectResurrection():Void;
	function subscribeToNativeChangeEvents():Void;
	function unsubscribeFromNativeChangeEvents():Void;
};
typedef IDirectoryStatic = {
	function new(path:String, ?symlink:Bool):IDirectory;
};
typedef IDirectory = {
	var realPath : String;
	var path : String;
	var symlink : Bool;
	function getBaseName():String;
	function getPath():Void;
	function getRealPathSync():String;
	function contains(pathToCheck:String):Bool;
	function relativize(fullPath:String):String;
	function getEntriesSync():Array<Dynamic>;
	function getEntries(callback:haxe.Constraints.Function):Void;
	function subscribeToNativeChangeEvents():Void;
	function unsubscribeFromNativeChangeEvents():Void;
	function isPathPrefixOf(prefix:String, fullPath:String):Bool;
};
