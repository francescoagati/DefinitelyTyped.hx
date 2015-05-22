typedef ReadLine = {
	>events.NodeEventEmitter,
	function setPrompt(prompt:String, length:Float):Void;
	function prompt(?preserveCursor:Bool):Void;
	function question(query:String, callback:haxe.Constraints.Function):Void;
	function pause():Void;
	function resume():Void;
	function close():Void;
	function write(data:Dynamic, ?key:Dynamic):Void;
};
typedef ReadLineOptions = {
	var input : stream.ReadableStream;
	var output : stream.WritableStream;
	@:optional
	var completer : haxe.Constraints.Function;
	@:optional
	var terminal : Bool;
};
extern class ReadlineTopLevel {
	static function createInterface(options:ReadLineOptions):ReadLine;
}
