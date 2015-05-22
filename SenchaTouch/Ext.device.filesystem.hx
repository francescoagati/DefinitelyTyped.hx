typedef IAbstract = {
	>Ext.IBase,
	@:optional
	function getFileSystemSize():Float;
	@:optional
	function getFileSystemType():Float;
	@:optional
	function getReaderType():String;
	@:optional
	function getStringEncoding():String;
	@:optional
	function setFileSystemSize(?fileSystemSize:Float):Void;
	@:optional
	function setFileSystemType(?fileSystemType:Float):Void;
	@:optional
	function setReaderType(?readerType:String):Void;
	@:optional
	function setStringEncoding(?stringEncoding:String):Void;
};
typedef IChrome = {
	>Ext.device.filesystem.IHTML5,
	@:optional
	function requestFileSystem(?config:Dynamic):Void;
};
typedef ICordova = {
	>Ext.device.filesystem.IHTML5,
	@:optional
	function download(?config:Dynamic):Dynamic;
	@:optional
	function readMetadata(?config:Dynamic):Void;
	@:optional
	function upload(?config:Dynamic):Dynamic;
	@:optional
	function writeMetadata(?config:Dynamic):Void;
};
typedef IPhoneGap = {
	>Ext.device.filesystem.IHTML5,
	@:optional
	function download(?config:Dynamic):Dynamic;
	@:optional
	function readMetadata(?config:Dynamic):Void;
	@:optional
	function upload(?config:Dynamic):Dynamic;
	@:optional
	function writeMetadata(?config:Dynamic):Void;
};
typedef IDirectoryEntry = {
	>Ext.device.filesystem.IEntry,
	@:optional
	function getDirectory(?config:Dynamic):Void;
	@:optional
	function getEntry(?config:Dynamic):Void;
	@:optional
	function getFile(?config:Dynamic):Void;
	@:optional
	function readEntries(?config:Dynamic):Void;
	@:optional
	function removeRecursively(?config:Dynamic):Void;
};
typedef IEntry = {
	>Ext.IBase,
	@:optional
	function copyTo(?config:Dynamic):Void;
	@:optional
	function getFileSystem():Ext.device.filesystem.IFileSystem;
	@:optional
	function getFullPath():String;
	@:optional
	function getName():String;
	@:optional
	function getParent(?config:Dynamic):Void;
	@:optional
	function isDirectory():Bool;
	@:optional
	function isFile():Bool;
	@:optional
	function moveTo(?config:Dynamic):Void;
	@:optional
	function remove(?config:Dynamic):Void;
};
typedef IFileEntry = {
	>Ext.device.filesystem.IEntry,
	@:optional
	function getEntry(?config:Dynamic):Void;
	@:optional
	function getOffset():Float;
	@:optional
	function read(?config:Dynamic):Void;
	@:optional
	function seek(?config:Dynamic):Void;
	@:optional
	function truncate(?config:Dynamic):Void;
	@:optional
	function write(?config:Dynamic):Void;
};
typedef IFileSystem = {
	>Ext.IBase,
	@:optional
	function getRoot():Ext.device.filesystem.IDirectoryEntry;
};
typedef IHTML5 = {
	>Ext.device.filesystem.IAbstract,
	@:optional
	function requestFileSystem(?config:Dynamic):Void;
};
typedef ISencha = {
	>Ext.device.filesystem.IAbstract,
	@:optional
	function requestFileSystem(?config:Dynamic):Void;
};
typedef ISimulator = {
	>Ext.device.filesystem.IHTML5,
};
