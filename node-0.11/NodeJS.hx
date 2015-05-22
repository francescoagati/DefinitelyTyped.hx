typedef ErrnoException = {
	>Error,
	@:optional
	var errno : Float;
	@:optional
	var code : String;
	@:optional
	var path : String;
	@:optional
	var syscall : String;
};
typedef EventEmitter = {
	function addListener(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function on(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function once(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function removeListener(event:String, listener:haxe.Constraints.Function):EventEmitter;
	function removeAllListeners(?event:String):EventEmitter;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<haxe.Constraints.Function>;
	function emit(event:String, args:haxe.extern.Rest<Dynamic>):Bool;
};
typedef ReadableStream = {
	>EventEmitter,
	var readable : Bool;
	function read(?size:Float):Dynamic;
	function setEncoding(encoding:String):Void;
	function pause():Void;
	function resume():Void;
	function pipe<T:(WritableStream)>(destination:T, ?options:{ @:optional
	var end : Bool; }):T;
	function unpipe<T:(WritableStream)>(?destination:T):Void;
	@:overload(function(chunk:Buffer):Void { })
	function unshift(chunk:String):Void;
	function wrap(oldStream:ReadableStream):ReadableStream;
};
typedef WritableStream = {
	>EventEmitter,
	var writable : Bool;
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Bool { })
	function write(buffer:Buffer, ?cb:haxe.Constraints.Function):Bool;
	@:overload(function(buffer:Buffer, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Void { })
	function end():Void;
};
typedef ReadWriteStream = {
	>ReadableStream,
	>WritableStream,
};
typedef Process = {
	>EventEmitter,
	var stdout : WritableStream;
	var stderr : WritableStream;
	var stdin : ReadableStream;
	var argv : Array<String>;
	var execPath : String;
	function abort():Void;
	function chdir(directory:String):Void;
	function cwd():String;
	var env : Dynamic;
	function exit(?code:Float):Void;
	function getgid():Float;
	@:overload(function(id:String):Void { })
	function setgid(id:Float):Void;
	function getuid():Float;
	@:overload(function(id:String):Void { })
	function setuid(id:Float):Void;
	var version : String;
	var versions : { var http_parser : String; var node : String; var v8 : String; var ares : String; var uv : String; var zlib : String; var openssl : String; };
	var config : { var target_defaults : { var cflags : Array<Dynamic>; var default_configuration : String; var defines : Array<String>; var include_dirs : Array<String>; var libraries : Array<String>; }; var variables : { var clang : Float; var host_arch : String; var node_install_npm : Bool; var node_install_waf : Bool; var node_prefix : String; var node_shared_openssl : Bool; var node_shared_v8 : Bool; var node_shared_zlib : Bool; var node_use_dtrace : Bool; var node_use_etw : Bool; var node_use_openssl : Bool; var target_arch : String; var v8_no_strict_aliasing : Float; var v8_use_snapshot : Bool; var visibility : String; }; };
	function kill(pid:Float, ?signal:String):Void;
	var pid : Float;
	var title : String;
	var arch : String;
	var platform : String;
	function memoryUsage():{ var rss : Float; var heapTotal : Float; var heapUsed : Float; };
	function nextTick(callback:haxe.Constraints.Function):Void;
	function umask(?mask:Float):Float;
	function uptime():Float;
	function hrtime(?time:Array<Float>):Array<Float>;
	@:optional
	function send(message:Dynamic, ?sendHandle:Dynamic):Void;
};
typedef Timer = {
	function ref():Void;
	function unref():Void;
};
typedef NodeBuffer = {
	function write(string:String, ?offset:Float, ?length:Float, ?encoding:String):Float;
	function toString(?encoding:String, ?start:Float, ?end:Float):String;
	function toJSON():Dynamic;
	var length : Float;
	function copy(targetBuffer:Buffer, ?targetStart:Float, ?sourceStart:Float, ?sourceEnd:Float):Float;
	function slice(?start:Float, ?end:Float):Buffer;
	function readUInt8(offset:Float, ?noAsset:Bool):Float;
	function readUInt16LE(offset:Float, ?noAssert:Bool):Float;
	function readUInt16BE(offset:Float, ?noAssert:Bool):Float;
	function readUInt32LE(offset:Float, ?noAssert:Bool):Float;
	function readUInt32BE(offset:Float, ?noAssert:Bool):Float;
	function readInt8(offset:Float, ?noAssert:Bool):Float;
	function readInt16LE(offset:Float, ?noAssert:Bool):Float;
	function readInt16BE(offset:Float, ?noAssert:Bool):Float;
	function readInt32LE(offset:Float, ?noAssert:Bool):Float;
	function readInt32BE(offset:Float, ?noAssert:Bool):Float;
	function readFloatLE(offset:Float, ?noAssert:Bool):Float;
	function readFloatBE(offset:Float, ?noAssert:Bool):Float;
	function readDoubleLE(offset:Float, ?noAssert:Bool):Float;
	function readDoubleBE(offset:Float, ?noAssert:Bool):Float;
	function writeUInt8(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeUInt16LE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeUInt16BE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeUInt32LE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeUInt32BE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeInt8(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeInt16LE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeInt16BE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeInt32LE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeInt32BE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeFloatLE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeFloatBE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeDoubleLE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function writeDoubleBE(value:Float, offset:Float, ?noAssert:Bool):Void;
	function fill(value:Dynamic, ?offset:Float, ?end:Float):Void;
};
