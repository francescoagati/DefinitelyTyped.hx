typedef File = {
	>Ti.Proxy,
	var executable : Bool;
	var hidden : Bool;
	var name : String;
	var nativePath : String;
	var parent : Ti.Filesystem.File;
	var readonly : Bool;
	var remoteBackup : Bool;
	var size : Float;
	var symbolicLink : Bool;
	var writable : Bool;
	var writeable : Bool;
	@:overload(function(data:Ti.Blob):Bool { })
	@:overload(function(data:Ti.Filesystem.File):Bool { })
	function append(data:String):Bool;
	function copy(destinationPath:String):Bool;
	function createDirectory():Bool;
	function createFile():Bool;
	function createTimestamp():Float;
	function deleteDirectory(?recursive:Bool):Bool;
	function deleteFile():Bool;
	function exists():Bool;
	function extension():String;
	function getDirectoryListing():Array<String>;
	function getExecutable():Bool;
	function getHidden():Bool;
	function getName():String;
	function getNativePath():String;
	function getParent():Dynamic;
	function getReadonly():Bool;
	function getRemoteBackup():Bool;
	function getSize():Float;
	function getSymbolicLink():Bool;
	function getWritable():Bool;
	function getWriteable():Bool;
	function isDirectory():Bool;
	function isFile():Bool;
	function modificationTimestamp():Float;
	function move(newpath:String):Bool;
	function open(mode:Float):Ti.Filesystem.FileStream;
	function read():Ti.Blob;
	function rename(newname:String):Bool;
	function resolve():String;
	function setHidden(hidden:Bool):Void;
	function setRemoteBackup(remoteBackup:Bool):Void;
	function spaceAvailable():Float;
	@:overload(function(data:Ti.Filesystem.File, ?append:Bool):Bool { })
	@:overload(function(data:Ti.Blob, ?append:Bool):Bool { })
	function write(data:String, ?append:Bool):Bool;
};
@:enum abstract FileStream(Int) {

}
extern class FilesystemTopLevel {
	static var MODE_APPEND : Float;
	static var MODE_READ : Float;
	static var MODE_WRITE : Float;
	static var apiName : String;
	static var applicationCacheDirectory : String;
	static var applicationDataDirectory : String;
	static var applicationDirectory : String;
	static var applicationSupportDirectory : String;
	static var bubbleParent : Bool;
	static var externalStorageDirectory : String;
	static var lineEnding : String;
	static var resRawDirectory : String;
	static var resourcesDirectory : String;
	static var separator : String;
	static var tempDirectory : String;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function createTempDirectory():Ti.Filesystem.File;
	static function createTempFile():Ti.Filesystem.File;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getApiName():String;
	static function getApplicationCacheDirectory():String;
	static function getApplicationDataDirectory():String;
	static function getApplicationDirectory():String;
	static function getApplicationSupportDirectory():String;
	static function getBubbleParent():Bool;
	static function getExternalStorageDirectory():String;
	static function getFile(path:String, extraPaths:haxe.extern.Rest<String>):Ti.Filesystem.File;
	static function getLineEnding():String;
	static function getResRawDirectory():String;
	static function getResourcesDirectory():String;
	static function getSeparator():String;
	static function getTempDirectory():String;
	static function isExternalStoragePresent():Bool;
	static function openStream(mode:Float, path:String, extraPaths:haxe.extern.Rest<String>):Ti.Filesystem.FileStream;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
}
