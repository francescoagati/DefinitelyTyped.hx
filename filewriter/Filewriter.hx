typedef FileSaver = {
	>EventTarget,
	function abort():Void;
	var INIT : Float;
	var WRITING : Float;
	var DONE : Float;
	var readyState : Float;
	var error : DOMError;
	var onwritestart : haxe.Constraints.Function;
	var onprogress : haxe.Constraints.Function;
	var onwrite : haxe.Constraints.Function;
	var onabort : haxe.Constraints.Function;
	var onerror : haxe.Constraints.Function;
	var onwriteend : haxe.Constraints.Function;
};
typedef FileWriter = {
	>FileSaver,
	var position : Float;
	var length : Float;
	function write(data:Blob):Void;
	function seek(offset:Float):Void;
	function truncate(size:Float):Void;
};
typedef FileWriterSync = {
	var position : Float;
	var length : Float;
	function write(data:Blob):Void;
	function seek(offset:Float):Void;
	function truncate(size:Float):Void;
};
extern class FilewriterTopLevel {
	static var FileSaver : { function new(data:Blob):FileSaver; };
}
