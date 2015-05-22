typedef Window = {
	function requestFileSystem(type:Float, size:Float, successCallback:FileSystem -> Void, ?errorCallback:FileError -> Void):Void;
	function resolveLocalFileSystemURI(uri:String, successCallback:Entry -> Void, ?errorCallback:FileError -> Void):Void;
	var TEMPORARY : Float;
	var PERSISTENT : Float;
};
typedef FileSystem = {
	var name : String;
	var root : DirectoryEntry;
};
typedef Entry = {
	var isFile : Bool;
	var isDirectory : Bool;
	var name : String;
	var fullPath : String;
	var fileSystem : FileSystem;
	var nativeURL : String;
	function getMetadata(successCallback:Metadata -> Void, ?errorCallback:FileError -> Void):Void;
	function moveTo(parent:DirectoryEntry, ?newName:String, ?successCallback:Entry -> Void, ?errorCallback:FileError -> Void):Void;
	function copyTo(parent:DirectoryEntry, ?newName:String, ?successCallback:Entry -> Void, ?errorCallback:FileError -> Void):Void;
	function toURL():String;
	function toInternalURL():String;
	function remove(successCallback:Void -> Void, ?errorCallback:FileError -> Void):Void;
	function getParent(successCallback:Entry -> Void, ?errorCallback:FileError -> Void):Void;
};
typedef Metadata = {
	var modificationTime : Date;
	var size : Float;
};
typedef DirectoryEntry = {
	>Entry,
	function createReader():DirectoryReader;
	function getFile(path:String, ?options:Flags, ?successCallback:FileEntry -> Void, ?errorCallback:FileError -> Void):Void;
	function getDirectory(path:String, ?options:Flags, ?successCallback:DirectoryEntry -> Void, ?errorCallback:FileError -> Void):Void;
	function removeRecursively(successCallback:Void -> Void, ?errorCallback:FileError -> Void):Void;
};
typedef Flags = {
	@:optional
	var create : Bool;
	@:optional
	var exclusive : Bool;
};
typedef DirectoryReader = {
	function readEntries(successCallback:Array<Entry> -> Void, ?errorCallback:FileError -> Void):Void;
};
typedef FileEntry = {
	>Entry,
	function createWriter(successCallback:FileWriter -> Void, ?errorCallback:FileError -> Void):Void;
	function file(successCallback:File -> Void, ?errorCallback:FileError -> Void):Void;
};
typedef FileSaver = {
	>EventTarget,
	function abort():Void;
	var readyState : Float;
	var onwritestart : ProgressEvent -> Void;
	var onprogress : ProgressEvent -> Void;
	var onwrite : ProgressEvent -> Void;
	var onabort : ProgressEvent -> Void;
	var onerror : ProgressEvent -> Void;
	var onwriteend : ProgressEvent -> Void;
	var error : Error;
};
typedef FileWriter = {
	>FileSaver,
	var position : Float;
	var length : Float;
	function write(data:Blob):Void;
	function seek(offset:Float):Void;
	function truncate(size:Float):Void;
};
typedef FileError = {
	var code : Float;
};
typedef Cordova = {
	var file : { var applicationDirectory : String; var applicationStorageDirectory : String; var dataDirectory : String; var cacheDirectory : String; var externalApplicationStorageDirectory : String; var externalDataDirectory : String; var externalCacheDirectory : String; var externalRootDirectory : String; var tempDirectory : String; var syncedDataDirectory : String; var documentsDirectory : String; var sharedDirectory : String; };
};
extern class FileSystemTopLevel {
	static var FileWriter : { var INIT : Float; var WRITING : Float; var DONE : Float; };
	static var FileError : { function new(code:Float):FileError; var NOT_FOUND_ERR : Float; var SECURITY_ERR : Float; var ABORT_ERR : Float; var NOT_READABLE_ERR : Float; var ENCODING_ERR : Float; var NO_MODIFICATION_ALLOWED_ERR : Float; var INVALID_STATE_ERR : Float; var SYNTAX_ERR : Float; var INVALID_MODIFICATION_ERR : Float; var QUOTA_EXCEEDED_ERR : Float; var TYPE_MISMATCH_ERR : Float; var PATH_EXISTS_ERR : Float; };
}
