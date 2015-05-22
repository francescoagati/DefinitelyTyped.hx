typedef Stream = {
	>events.EventEmitter,
	function pipe<T:(NodeJS.WritableStream)>(destination:T, ?options:{ @:optional
	var end : Bool; }):T;
};
typedef ReadableOptions = {
	@:optional
	var highWaterMark : Float;
	@:optional
	var encoding : String;
	@:optional
	var objectMode : Bool;
};
extern class Readable extends events.EventEmitter {
	var readable : Bool;
	function new(?opts:ReadableOptions):Void;
	function _read(size:Float):Void;
	function read(?size:Float):haxe.extern.EitherType<String, Buffer>;
	function setEncoding(encoding:String):Void;
	function pause():Void;
	function resume():Void;
	function pipe<T:(NodeJS.WritableStream)>(destination:T, ?options:{ @:optional
	var end : Bool; }):T;
	function unpipe<T:(NodeJS.WritableStream)>(?destination:T):Void;
	@:overload(function(chunk:Buffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:NodeJS.ReadableStream):NodeJS.ReadableStream;
	function push(chunk:Dynamic, ?encoding:String):Bool;
}
typedef WritableOptions = {
	@:optional
	var highWaterMark : Float;
	@:optional
	var decodeStrings : Bool;
};
extern class Writable extends events.EventEmitter {
	var writable : Bool;
	function new(?opts:WritableOptions):Void;
	@:overload(function(data:String, encoding:String, callback:haxe.Constraints.Function):Void { })
	function _write(data:Buffer, encoding:String, callback:haxe.Constraints.Function):Void;
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Bool { })
	function write(buffer:Buffer, ?cb:haxe.Constraints.Function):Bool;
	@:overload(function(buffer:Buffer, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Void { })
	function end():Void;
}
typedef DuplexOptions = {
	>ReadableOptions,
	>WritableOptions,
	@:optional
	var allowHalfOpen : Bool;
};
extern class Duplex extends Readable {
	var writable : Bool;
	function new(?opts:DuplexOptions):Void;
	@:overload(function(data:String, encoding:String, callback:haxe.Constraints.Function):Void { })
	function _write(data:Buffer, encoding:String, callback:haxe.Constraints.Function):Void;
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Bool { })
	function write(buffer:Buffer, ?cb:haxe.Constraints.Function):Bool;
	@:overload(function(buffer:Buffer, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Void { })
	function end():Void;
}
typedef TransformOptions = {
	>ReadableOptions,
	>WritableOptions,
};
extern class Transform extends events.EventEmitter {
	var readable : Bool;
	var writable : Bool;
	function new(?opts:TransformOptions):Void;
	@:overload(function(chunk:String, encoding:String, callback:haxe.Constraints.Function):Void { })
	function _transform(chunk:Buffer, encoding:String, callback:haxe.Constraints.Function):Void;
	function _flush(callback:haxe.Constraints.Function):Void;
	function read(?size:Float):Dynamic;
	function setEncoding(encoding:String):Void;
	function pause():Void;
	function resume():Void;
	function pipe<T:(NodeJS.WritableStream)>(destination:T, ?options:{ @:optional
	var end : Bool; }):T;
	function unpipe<T:(NodeJS.WritableStream)>(?destination:T):Void;
	@:overload(function(chunk:Buffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:NodeJS.ReadableStream):NodeJS.ReadableStream;
	function push(chunk:Dynamic, ?encoding:String):Bool;
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Bool { })
	function write(buffer:Buffer, ?cb:haxe.Constraints.Function):Bool;
	@:overload(function(buffer:Buffer, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Void { })
	function end():Void;
}
extern class PassThrough extends Transform {

}
