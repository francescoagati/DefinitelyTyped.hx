typedef ForEachCallback = { };
typedef ForEach = {
	function forEach(callback:ForEachCallback):Q.Promise<Void>;
};
typedef Reader = {
	>ForEach,
	@:overload(function():Q.Promise<Buffer> { })
	function read(charset:String):Q.Promise<String>;
	function close():Void;
	var node : NodeJS.ReadableStream;
};
typedef Writer = {
	@:overload(function(content:Buffer):Void { })
	function write(content:String):Void;
	function flush():Q.Promise<Void>;
	function close():Void;
	function destroy():Void;
	var node : NodeJS.WritableStream;
};
typedef Stream = {
	@:overload(function():Q.Promise<Buffer> { })
	function read(charset:String):Q.Promise<String>;
	@:overload(function(content:Buffer):Void { })
	function write(content:String):Void;
	function flush():Q.Promise<Void>;
	function close():Void;
	function destroy():Void;
	var node : Dynamic;
};
typedef BufferReader = {
	>QioBufferReader,
};
typedef QioBufferReader = {
	function new():Qio.Reader;
	@:overload(function(stream:Qio.Reader):Buffer { })
	function read(stream:Qio.Reader, charset:String):String;
	function join(buffers:Array<Buffer>):Buffer;
};
typedef QioBufferWriter = {
	var Writer : Qio.Writer;
};
typedef QioBufferStream = { };
