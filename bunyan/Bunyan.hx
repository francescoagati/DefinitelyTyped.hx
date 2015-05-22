extern class Logger extends EventEmitter {
	function new(options:LoggerOptions):Void;
	function addStream(stream:Stream):Void;
	function addSerializers(serializers:Serializers):Void;
	@:overload(function(obj:Dynamic, ?simple:Bool):Logger { })
	function child(options:LoggerOptions, ?simple:Bool):Logger;
	function reopenFileStreams():Void;
	function level(value:haxe.extern.EitherType<Float, String>):Void;
	function levels(name:haxe.extern.EitherType<Float, String>, value:haxe.extern.EitherType<Float, String>):Void;
	@:overload(function(buffer:Buffer, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(obj:Dynamic, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(format:String, params:haxe.extern.Rest<Dynamic>):Void { })
	function trace(error:Error, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(buffer:Buffer, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(obj:Dynamic, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(format:String, params:haxe.extern.Rest<Dynamic>):Void { })
	function debug(error:Error, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(buffer:Buffer, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(obj:Dynamic, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(format:String, params:haxe.extern.Rest<Dynamic>):Void { })
	function info(error:Error, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(buffer:Buffer, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(obj:Dynamic, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(format:String, params:haxe.extern.Rest<Dynamic>):Void { })
	function warn(error:Error, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(buffer:Buffer, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(obj:Dynamic, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(format:String, params:haxe.extern.Rest<Dynamic>):Void { })
	function error(error:Error, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(buffer:Buffer, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(obj:Dynamic, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void { })
	@:overload(function(format:String, params:haxe.extern.Rest<Dynamic>):Void { })
	function fatal(error:Error, ?format:Dynamic, params:haxe.extern.Rest<Dynamic>):Void;
}
typedef LoggerOptions = {
	var name : String;
	@:optional
	var streams : Array<Stream>;
	@:optional
	var level : String;
	@:optional
	var stream : WritableStream;
	@:optional
	var serializers : Serializers;
	@:optional
	var src : Bool;
};
typedef Serializers = { };
typedef Stream = {
	@:optional
	var type : String;
	@:optional
	var level : haxe.extern.EitherType<Float, String>;
	@:optional
	var path : String;
	@:optional
	var stream : haxe.extern.EitherType<WritableStream, Stream>;
	@:optional
	var closeOnExit : Bool;
};
extern class RingBuffer extends EventEmitter {
	function new(options:RingBufferOptions):Void;
	var writable : Bool;
	var records : Array<Dynamic>;
	function write(record:Dynamic):Void;
	function end(?record:Dynamic):Void;
	function destroy():Void;
	function destroySoon():Void;
}
typedef RingBufferOptions = {
	@:optional
	var limit : Float;
};
extern class BunyanTopLevel {
	static var stdSerializers : Serializers;
	static var TRACE : Float;
	static var DEBUG : Float;
	static var INFO : Float;
	static var WARN : Float;
	static var ERROR : Float;
	static var FATAL : Float;
	static function resolveLevel(value:haxe.extern.EitherType<Float, String>):Float;
	static function createLogger(options:LoggerOptions):Logger;
	static function safeCycles():String -> Dynamic -> Dynamic;
}
extern class BunyanTopLevel {
	static var stdSerializers : Serializers;
	static var TRACE : Float;
	static var DEBUG : Float;
	static var INFO : Float;
	static var WARN : Float;
	static var ERROR : Float;
	static var FATAL : Float;
	static function resolveLevel(value:haxe.extern.EitherType<Float, String>):Float;
	static function createLogger(options:LoggerOptions):Logger;
	static function safeCycles():String -> Dynamic -> Dynamic;
}
