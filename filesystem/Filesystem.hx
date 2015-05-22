typedef LocalFileSystem = {
	var TEMPORARY : Float;
	var PERSISTENT : Float;
	function requestFileSystem(type:Float, size:Float, successCallback:FileSystemCallback, ?errorCallback:ErrorCallback):Void;
	function resolveLocalFileSystemURL(url:String, successCallback:EntryCallback, ?errorCallback:ErrorCallback):Void;
	function webkitRequestFileSystem(type:Float, size:Float, successCallback:FileSystemCallback, ?errorCallback:ErrorCallback):Void;
};
typedef LocalFileSystemSync = {
	var TEMPORARY : Float;
	var PERSISTENT : Float;
	function requestFileSystemSync(type:Float, size:Float):FileSystemSync;
	function resolveLocalFileSystemSyncURL(url:String):EntrySync;
	function webkitRequestFileSystemSync(type:Float, size:Float):FileSystemSync;
};
typedef Metadata = {
	var modificationTime : Date;
	var size : Float;
};
typedef Flags = {
	@:optional
	var create : Bool;
	@:optional
	var exclusive : Bool;
};
typedef FileSystem = {
	var name : String;
	var root : DirectoryEntry;
};
typedef Entry = {
	var isFile : Bool;
	var isDirectory : Bool;
	function getMetadata(successCallback:MetadataCallback, ?errorCallback:ErrorCallback):Void;
	var name : String;
	var fullPath : String;
	var filesystem : FileSystem;
	function moveTo(parent:DirectoryEntry, ?newName:String, ?successCallback:EntryCallback, ?errorCallback:ErrorCallback):String;
	function copyTo(parent:DirectoryEntry, ?newName:String, ?successCallback:EntryCallback, ?errorCallback:ErrorCallback):String;
	function toURL():String;
	function remove(successCallback:VoidCallback, ?errorCallback:ErrorCallback):Void;
	function getParent(successCallback:DirectoryEntryCallback, ?errorCallback:ErrorCallback):Void;
};
typedef DirectoryEntry = {
	>Entry,
	function createReader():DirectoryReader;
	function getFile(path:String, ?options:Flags, ?successCallback:FileEntryCallback, ?errorCallback:ErrorCallback):Void;
	function getDirectory(path:String, ?options:Flags, ?successCallback:DirectoryEntryCallback, ?errorCallback:ErrorCallback):Void;
	function removeRecursively(successCallback:VoidCallback, ?errorCallback:ErrorCallback):Void;
};
typedef DirectoryReader = {
	function readEntries(successCallback:EntriesCallback, ?errorCallback:ErrorCallback):Void;
};
typedef FileEntry = {
	>Entry,
	function createWriter(successCallback:FileWriterCallback, ?errorCallback:ErrorCallback):Void;
	function file(successCallback:FileCallback, ?errorCallback:ErrorCallback):Void;
};
typedef FileSystemCallback = { };
typedef EntryCallback = { };
typedef FileEntryCallback = { };
typedef DirectoryEntryCallback = { };
typedef EntriesCallback = { };
typedef MetadataCallback = { };
typedef FileWriterCallback = { };
typedef FileCallback = { };
typedef VoidCallback = { };
typedef ErrorCallback = { };
typedef FileSystemSync = {
	var name : String;
	var root : DirectoryEntrySync;
};
typedef EntrySync = {
	var isFile : Bool;
	var isDirectory : Bool;
	function getMetadata():Metadata;
	var name : String;
	var fullPath : String;
	var filesystem : FileSystemSync;
	function moveTo(parent:DirectoryEntrySync, ?newName:String):EntrySync;
	function copyTo(parent:DirectoryEntrySync, ?newName:String):EntrySync;
	function toURL():String;
	function remove():Void;
	function getParent():DirectoryEntrySync;
};
typedef DirectoryEntrySync = {
	>EntrySync,
	function createReader():DirectoryReaderSync;
	function getFile(path:String, ?options:Flags):FileEntrySync;
	function getDirectory(path:String, ?options:Flags):DirectoryEntrySync;
	function removeRecursively():Void;
};
typedef DirectoryReaderSync = {
	function readEntries():Array<EntrySync>;
};
typedef FileEntrySync = {
	>EntrySync,
	function createWriter():FileWriterSync;
	function file():File;
};
typedef Window = {
	>LocalFileSystem,
	>LocalFileSystemSync,
};
typedef WorkerGlobalScope = {
	>LocalFileSystem,
	>LocalFileSystemSync,
};
