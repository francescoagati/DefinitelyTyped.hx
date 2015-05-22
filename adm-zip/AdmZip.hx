extern class ZipFile {
	@:overload(function(fileName:String):Void { })
	function new():Void;
	@:overload(function(entry:IZipEntry):Buffer { })
	function readFile(entry:String):Buffer;
	@:overload(function(entry:IZipEntry, callback:Buffer -> String -> Dynamic):Void { })
	function readFileAsync(entry:String, callback:Buffer -> String -> Dynamic):Void;
	@:overload(function(fileName:IZipEntry, ?encoding:String):String { })
	function readAsText(fileName:String, ?encoding:String):String;
	@:overload(function(fileName:IZipEntry, callback:String -> Dynamic, ?encoding:String):Void { })
	function readAsTextAsync(fileName:String, callback:String -> Dynamic, ?encoding:String):Void;
	@:overload(function(entry:IZipEntry):Void { })
	function deleteFile(entry:String):Void;
	function addZipComment(comment:String):Void;
	function getZipComment():String;
	@:overload(function(entry:IZipEntry, comment:String):Void { })
	function addZipEntryComment(entry:String, comment:String):Void;
	@:overload(function(entry:IZipEntry):String { })
	function getZipEntryComment(entry:String):String;
	@:overload(function(entry:IZipEntry, content:Buffer):Void { })
	function updateFile(entry:String, content:Buffer):Void;
	function addLocalFile(localPath:String, ?zipPath:String):Void;
	function addLocalFolder(localPath:String, ?zipPath:String):Void;
	function addFile(entryName:String, data:Buffer, ?comment:String, ?attr:Float):Void;
	function getEntries():Array<IZipEntry>;
	function getEntry(name:String):IZipEntry;
	@:overload(function(entryPath:IZipEntry, targetPath:String, ?maintainEntryPath:Bool, ?overwrite:Bool):Bool { })
	function extractEntryTo(entryPath:String, targetPath:String, ?maintainEntryPath:Bool, ?overwrite:Bool):Bool;
	function extractAllTo(targetPath:String, ?overwrite:Bool):Void;
	function writeZip(?targetPath:String):Void;
	function toBuffer():Buffer;
}
typedef IZipEntry = {
	var entryName : String;
	var rawEntryName : Buffer;
	var extra : Buffer;
	var comment : String;
	var name : String;
	var isDirectory : Bool;
	var header : Buffer;
	function getCompressedData():Buffer;
	function getCompressedDataAsync(callback:Buffer -> Void):Void;
	@:overload(function(value:Buffer):Void { })
	function setData(value:String):Void;
	function getData():Buffer;
	function getDataAsync(callback:Buffer -> Void):Void;
	function packHeader():Buffer;
	function toString():String;
};
