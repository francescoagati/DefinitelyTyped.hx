typedef StringifyOpts = {
	@:optional
	var columns : Array<String>;
	@:optional
	var delimiter : String;
	@:optional
	var eof : Bool;
	@:optional
	var escape : Bool;
	@:optional
	var header : Bool;
	@:optional
	var lineBreaks : String;
	@:optional
	var quote : String;
	@:optional
	var quoted : Bool;
	@:optional
	var quotedEmpty : Bool;
	@:optional
	var quotedString : Bool;
	@:optional
	var rowDelimiter : String;
};
typedef Stringifier = {
	>NodeJS.ReadWriteStream,
	@:overload(function(buffer:Buffer, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?cb:haxe.Constraints.Function):Bool { })
	@:overload(function(str:String, ?encoding:String, ?cb:haxe.Constraints.Function):Bool { })
	function write(line:Array<String>):Bool;
};
