extern class Reader {
	var size : Float;
	function init(callback:Void -> Void, onerror:Dynamic -> Void):Void;
	function readUint8Array(index:Float, length:Float, callback:Uint8Array -> Void, ?onerror:Dynamic -> Void):Void;
}
extern class TextReader extends Reader {
	function new(text:String):Void;
}
extern class BlobReader extends Reader {
	function new(blob:Blob):Void;
}
extern class Data64URIReader extends Reader {
	function new(dataURI:String):Void;
}
extern class HttpReader extends Reader {
	function new(url:String):Void;
}
extern class ZipReader {
	function getEntries(callback:Array<zip.Entry> -> Void):Void;
	function close(?callback:Void -> Void):Void;
}
typedef Entry = {
	var filename : String;
	var directory : Bool;
	var compressedSize : Float;
	var uncompressedSize : Float;
	var lastModDate : Date;
	var lastModDateRaw : Float;
	var comment : String;
	var crc32 : Float;
	function getData(writer:zip.Writer, onend:Dynamic -> Void, ?onprogress:Float -> Float -> Void, ?checkCrc32:Bool):Void;
};
extern class Writer {
	function init(callback:Void -> Void, ?onerror:Dynamic -> Void):Void;
	function writeUint8Array(array:Uint8Array, callback:Void -> Void, ?onerror:Dynamic -> Void):Void;
	function getData(callback:Dynamic -> Void, ?onerror:Dynamic -> Void):Void;
}
extern class TextWriter extends Writer {
	function new(encoding:String):Void;
}
extern class BlobWriter extends Writer {
	function new(contentType:String):Void;
}
extern class FileWriter extends Writer {
	function new(fileEntry:FileEntry):Void;
}
extern class Data64URIWriter extends Writer {
	function new(?mimeString:String):Void;
}
typedef WriteOptions = {
	@:optional
	var directory : Bool;
	@:optional
	var level : Float;
	@:optional
	var comment : String;
	@:optional
	var lastModDate : Date;
	@:optional
	var version : Float;
};
extern class ZipWriter {
	function add(name:String, reader:zip.Reader, onend:Void -> Void, ?onprogress:Float -> Float -> Void, ?options:WriteOptions):Void;
	function close(callback:Dynamic -> Void):Void;
}
extern class ZipTopLevel {
	static var useWebWorkers : Bool;
	static var workerScriptsPath : String;
	static var workerScripts : { @:optional
	var deflater : Array<String>; @:optional
	var inflater : Array<String>; };
	static function createReader(reader:zip.Reader, callback:ZipReader -> Void, ?onerror:Dynamic -> Void):Void;
	static function createWriter(writer:zip.Writer, callback:zip.ZipWriter -> Void, ?onerror:Dynamic -> Void, ?dontDeflate:Bool):Void;
}
