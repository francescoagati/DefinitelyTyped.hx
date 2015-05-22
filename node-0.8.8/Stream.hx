typedef WritableStream = {
	>events.NodeEventEmitter,
	var writable : Bool;
	@:overload(function(buffer:Buffer):Bool { })
	function write(str:String, ?encoding:String, ?fd:String):Bool;
	@:overload(function(str:String, enconding:String):Void { })
	@:overload(function(buffer:Buffer):Void { })
	function end():Void;
	function destroy():Void;
	function destroySoon():Void;
};
typedef ReadableStream = {
	>events.NodeEventEmitter,
	var readable : Bool;
	function setEncoding(encoding:String):Void;
	function pause():Void;
	function resume():Void;
	function destroy():Void;
	function pipe(destination:WritableStream, ?options:{ @:optional
	var end : Bool; }):Void;
};
typedef ReadWriteStream = {
	>ReadableStream,
	>WritableStream,
};
