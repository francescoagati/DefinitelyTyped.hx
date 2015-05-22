typedef Buffer = {
	>NodeBuffer,
};
extern class Node-0.11TopLevel {
	static var process : NodeJS.Process;
	static var global : Dynamic;
	static var __filename : String;
	static var __dirname : String;
	static function setTimeout(callback:haxe.extern.Rest<Dynamic> -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):NodeJS.Timer;
	static function clearTimeout(timeoutId:NodeJS.Timer):Void;
	static function setInterval(callback:haxe.extern.Rest<Dynamic> -> Void, ms:Float, args:haxe.extern.Rest<Dynamic>):NodeJS.Timer;
	static function clearInterval(intervalId:NodeJS.Timer):Void;
	static function setImmediate(callback:haxe.extern.Rest<Dynamic> -> Void, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function clearImmediate(immediateId:Dynamic):Void;
	static var require : { function resolve(id:String):String; var cache : Dynamic; var extensions : Dynamic; var main : Dynamic; };
	static var module : { var exports : Dynamic; function require(id:String):Dynamic; var id : String; var filename : String; var loaded : Bool; var parent : Dynamic; var children : Array<Dynamic>; };
	static var exports : Dynamic;
	static var SlowBuffer : { @:overload(function(size:Float):Buffer { })
	@:overload(function(size:Uint8Array):Buffer { })
	@:overload(function(array:Array<Dynamic>):Buffer { })
	function new(str:String, ?encoding:String):Buffer; var prototype : Buffer; function isBuffer(obj:Dynamic):Bool; function byteLength(string:String, ?encoding:String):Float; function concat(list:Array<Buffer>, ?totalLength:Float):Buffer; };
	static var Buffer : { @:overload(function(size:Float):Buffer { })
	@:overload(function(size:Uint8Array):Buffer { })
	@:overload(function(array:Array<Dynamic>):Buffer { })
	function new(str:String, ?encoding:String):Buffer; var prototype : Buffer; function isBuffer(obj:Dynamic):Bool; function byteLength(string:String, ?encoding:String):Float; function concat(list:Array<Buffer>, ?totalLength:Float):Buffer; };
}
