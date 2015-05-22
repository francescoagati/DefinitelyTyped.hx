typedef JSZip = {
	@:overload(function(path:js.RegExp):Array<JSZipObject> { })
	@:overload(function(path:String, data:Dynamic, ?options:JSZipFileOptions):JSZip { })
	function file(path:String):JSZipObject;
	@:overload(function(name:js.RegExp):Array<JSZipObject> { })
	function folder(name:String):JSZip;
	function filter(predicate:String -> JSZipObject -> Bool):Array<JSZipObject>;
	function remove(path:String):JSZip;
	function generate(?options:JSZipGeneratorOptions):Dynamic;
	function load(data:Dynamic, options:JSZipLoadOptions):JSZip;
};
typedef JSZipObject = {
	var name : String;
	var dir : Bool;
	var date : Date;
	var comment : String;
	var options : JSZipObjectOptions;
	function asText():String;
	function asBinary():String;
	function asArrayBuffer():ArrayBuffer;
	function asUint8Array():Uint8Array;
};
typedef JSZipFileOptions = {
	@:optional
	var base64 : Bool;
	@:optional
	var binary : Bool;
	@:optional
	var date : Date;
	@:optional
	var compression : String;
	@:optional
	var comment : String;
	@:optional
	var optimizedBinaryString : Bool;
	@:optional
	var createFolders : Bool;
};
typedef JSZipObjectOptions = {
	var base64 : Bool;
	var binary : Bool;
	var dir : Bool;
	var date : Date;
	var compression : String;
};
typedef JSZipGeneratorOptions = {
	@:optional
	var base64 : Bool;
	@:optional
	var compression : String;
	@:optional
	var type : String;
	@:optional
	var comment : String;
};
typedef JSZipLoadOptions = {
	@:optional
	var base64 : Bool;
	@:optional
	var checkCRC32 : Bool;
	@:optional
	var optimizedBinaryString : Bool;
	@:optional
	var createFolders : Bool;
};
typedef JSZipSupport = {
	var arraybuffer : Bool;
	var uint8array : Bool;
	var blob : Bool;
	var nodebuffer : Bool;
};
typedef DEFLATE = {
	@:overload(function(input:Array<Float>, compressionOptions:{ var level : Float; }):Uint8Array { })
	@:overload(function(input:Uint8Array, compressionOptions:{ var level : Float; }):Uint8Array { })
	function compress(input:String, compressionOptions:{ var level : Float; }):Uint8Array;
	@:overload(function(input:Array<Float>):Uint8Array { })
	@:overload(function(input:Uint8Array):Uint8Array { })
	function uncompress(input:String):Uint8Array;
};
extern class JszipTopLevel {
	static var JSZip : { @:overload(function(data:Dynamic, ?options:JSZipLoadOptions):JSZip { })
	function new():JSZip; var prototype : JSZip; var support : JSZipSupport; var compressions : { var DEFLATE : DEFLATE; }; };
}
extern class JszipTopLevel {
	static var JSZip : { @:overload(function(data:Dynamic, ?options:JSZipLoadOptions):JSZip { })
	function new():JSZip; var prototype : JSZip; var support : JSZipSupport; var compressions : { var DEFLATE : DEFLATE; }; };
}
