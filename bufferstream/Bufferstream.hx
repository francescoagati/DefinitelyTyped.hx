extern class BufferStream extends stream.Duplex {
	function new(?options:BufferStream.Opts):Void;
	@:overload(function(size:Float):Void { })
	function setSize(size:String):Void;
	function enable():Void;
	@:overload(function(token:String, tokens:haxe.extern.Rest<String>):Void { })
	@:overload(function(tokens:Array<String>):Void { })
	@:overload(function(token:Buffer, tokens:haxe.extern.Rest<Buffer>):Void { })
	@:overload(function(tokens:Array<Buffer>):Void { })
	function disable():Void;
	@:overload(function(tokens:Array<String>):Void { })
	@:overload(function(token:Buffer, tokens:haxe.extern.Rest<Buffer>):Void { })
	@:overload(function(tokens:Array<Buffer>):Void { })
	function split(token:String, tokens:haxe.extern.Rest<String>):Void;
	function getBuffer():Buffer;
	var buffer : Buffer;
	function toString():String;
	var length : Float;
}
