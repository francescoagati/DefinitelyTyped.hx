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
	function addListener(event:String, listener:haxe.Constraints.Function):Dynamic;
	function on(event:String, listener:haxe.Constraints.Function):Dynamic;
	function once(event:String, listener:haxe.Constraints.Function):Void;
	function removeListener(event:String, listener:haxe.Constraints.Function):Void;
	function removeAllListener(event:String):Void;
	function setMaxListeners(n:Float):Void;
	function listeners(event:String):Array<{ var Function : Dynamic; }>;
	function emit(event:String, ?arg1:Dynamic, ?arg2:Dynamic):Void;
};
typedef WritableStream = {
	>EventEmitter,
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
	>EventEmitter,
	var readable : Bool;
	function setEncoding(encoding:String):Void;
	function pause():Void;
	function resume():Void;
	function destroy():Void;
	function pipe(destination:WritableStream, ?options:{ @:optional
	var end : Bool; }):Void;
};
typedef NodeProcess = {
	>EventEmitter,
	var stdout : WritableStream;
	var stderr : WritableStream;
	var stdin : ReadableStream;
	var argv : Array<String>;
	var execPath : String;
	function abort():Void;
	function chdir(directory:String):Void;
	function cwd():Void;
	var env : Dynamic;
	function exit(?code:Float):Void;
	function getgid():Float;
	function setgid(id:Float):Void;
	function getuid():Float;
	function setuid(id:Float):Void;
	var version : String;
	var versions : { var http_parser : String; var node : String; var v8 : String; var ares : String; var uv : String; var zlib : String; var openssl : String; };
	var config : { var target_defaults : { var cflags : Array<Dynamic>; var default_configuration : String; var defines : Array<String>; var include_dirs : Array<String>; var libraries : Array<String>; }; var variables : { var clang : Float; var host_arch : String; var node_install_npm : Bool; var node_install_waf : Bool; var node_prefix : String; var node_shared_openssl : Bool; var node_shared_v8 : Bool; var node_shared_zlib : Bool; var node_use_dtrace : Bool; var node_use_etw : Bool; var node_use_openssl : Bool; var target_arch : String; var v8_no_strict_aliasing : Float; var v8_use_snapshot : Bool; var visibility : String; }; };
	function kill(pid:Float, ?signal:String):Void;
	var pid : Float;
	var title : String;
	var arch : String;
	var platform : String;
	function memoryUsage():{ var rss : Float; var heapTotal : Dynamic; var number : Dynamic; var heapUsed : Float; };
	function nextTick(callback:haxe.Constraints.Function):Void;
	function umask(?mask:Float):Float;
	function uptime():Float;
	function hrtime():Array<Float>;
};
typedef Buffer = {
	function write(string:String, ?offset:Float, ?length:Float, ?encoding:String):Float;
	function toString(?encoding:String, ?start:Float, ?end:Float):String;
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
	var INSPECT_MAX_BYTES : Float;
};
extern class Node-0.8.8TopLevel {
	static var process : NodeProcess;
	static var global : Dynamic;
	static var __filename : String;
	static var __dirname : String;
	static function setTimeout(callback:Void -> Void, ms:Float):Dynamic;
	static function clearTimeout(timeoutId:Dynamic):Dynamic;
	static function setInterval(callback:Void -> Void, ms:Float):Dynamic;
	static function clearInterval(intervalId:Dynamic):Dynamic;
	static var require : { function resolve():String; var cache : Dynamic; var extensions : Dynamic; };
	static var module : { var exports : Dynamic; function require(id:String):Dynamic; var id : String; var filename : String; var loaded : Bool; var parent : Dynamic; var children : Array<Dynamic>; };
	static var exports : Dynamic;
	static var SlowBuffer : { @:overload(function(size:Float):Buffer { })
	@:overload(function(array:Array<Dynamic>):Buffer { })
	function new(str:String, ?encoding:String):Buffer; var prototype : Buffer; function isBuffer(obj:Dynamic):Bool; function byteLength(string:String, ?encoding:String):Float; function concat(list:Array<Buffer>, ?totalLength:Float):Buffer; };
	static var Buffer : { @:overload(function(size:Float):Buffer { })
	@:overload(function(array:Array<Dynamic>):Buffer { })
	function new(str:String, ?encoding:String):Buffer; var prototype : Buffer; function isBuffer(obj:Dynamic):Bool; function byteLength(string:String, ?encoding:String):Float; function concat(list:Array<Buffer>, ?totalLength:Float):Buffer; };
}
