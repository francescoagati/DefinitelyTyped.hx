typedef Static = {
	@:overload(function(file:File, ?config:ParseConfig):ParseResult { })
	function parse(csvString:String, ?config:ParseConfig):ParseResult;
	@:overload(function(data:Array<Array<Dynamic>>, ?config:UnparseConfig):String { })
	@:overload(function(data:UnparseObject, ?config:UnparseConfig):String { })
	function unparse(data:Array<Dynamic>, ?config:UnparseConfig):String;
	var BAD_DELIMETERS : Array<String>;
	var RECORD_SEP : String;
	var UNIT_SEP : String;
	var WORKERS_SUPPORTED : Bool;
	var SCRIPT_PATH : String;
	var LocalChunkSize : String;
	var RemoteChunkSize : String;
	var DefaultDelimiter : String;
	var Parser : ParserConstructor;
};
typedef ParseConfig = {
	@:optional
	var delimiter : String;
	@:optional
	var newline : String;
	@:optional
	var header : Bool;
	@:optional
	var dynamicTyping : Bool;
	@:optional
	var preview : Float;
	@:optional
	var encoding : String;
	@:optional
	var worker : Bool;
	@:optional
	var comments : Bool;
	@:optional
	var download : Bool;
	@:optional
	var skipEmptyLines : Bool;
	@:optional
	var fastMode : Bool;
	@:optional
	function step(results:ParseResult, parser:Parser):Void;
	@:optional
	function complete(results:ParseResult, ?file:File):Void;
	@:optional
	function error(error:ParseError, ?file:File):Void;
	@:optional
	function chunk(results:ParseResult, parser:Parser):Void;
	@:optional
	function beforeFirstChunk(chunk:String):haxe.extern.EitherType<String, Void>;
};
typedef UnparseConfig = {
	var quotes : Bool;
	var delimiter : String;
	var newline : String;
};
typedef UnparseObject = {
	var fields : Array<Dynamic>;
	var data : haxe.extern.EitherType<String, Array<Dynamic>>;
};
typedef ParseError = {
	var type : String;
	var code : String;
	var message : String;
	var row : Float;
};
typedef ParseMeta = {
	var delimiter : String;
	var linebreak : String;
	var aborted : Bool;
	var fields : Array<String>;
	var truncated : Bool;
};
typedef ParseResult = {
	var data : Array<Dynamic>;
	var errors : Array<ParseError>;
	var meta : ParseMeta;
};
typedef ParserConstructor = {
	function new(config:ParseConfig):Parser;
};
typedef Parser = {
	function parse(input:String, baseIndex:Float, ignoreLastRow:Bool):Dynamic;
	function abort():Void;
	function getCharIndex():Float;
};
