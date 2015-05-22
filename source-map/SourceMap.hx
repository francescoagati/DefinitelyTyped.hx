typedef StartOfSourceMap = {
	@:optional
	var file : String;
	@:optional
	var sourceRoot : String;
};
typedef RawSourceMap = {
	>StartOfSourceMap,
	var version : String;
	var sources : Array<String>;
	var names : Array<String>;
	@:optional
	var sourcesContent : String;
	var mappings : String;
};
typedef Position = {
	var line : Float;
	var column : Float;
};
typedef MappedPosition = {
	>Position,
	var source : String;
	@:optional
	var name : String;
};
typedef MappingItem = {
	var source : String;
	var generatedLine : Float;
	var generatedColumn : Float;
	var originalLine : Float;
	var originalColumn : Float;
	var name : String;
};
typedef Mapping = {
	var generated : Position;
	var original : Position;
	var source : String;
	@:optional
	var name : String;
};
typedef CodeWithSourceMap = {
	var code : String;
	var map : SourceMapGenerator;
};
extern class SourceMapConsumer {
	static var GENERATED_ORDER : Float;
	static var ORIGINAL_ORDER : Float;
	function new(rawSourceMap:RawSourceMap):Void;
	function originalPositionFor(generatedPosition:Position):MappedPosition;
	function generatedPositionFor(originalPosition:MappedPosition):Position;
	function sourceContentFor(source:String):String;
	function eachMapping(callback:MappingItem -> Void, ?context:Dynamic, ?order:Float):Void;
}
extern class SourceMapGenerator {
	function new(?startOfSourceMap:StartOfSourceMap):Void;
	static function fromSourceMap(sourceMapConsumer:SourceMapConsumer):SourceMapGenerator;
	function addMapping(mapping:Mapping):Void;
	function setSourceContent(sourceFile:String, sourceContent:String):Void;
	function applySourceMap(sourceMapConsumer:SourceMapConsumer, ?sourceFile:String, ?sourceMapPath:String):Void;
	function toString():String;
}
extern class SourceNode {
	@:overload(function(line:Float, column:Float, source:String):Void { })
	@:overload(function(line:Float, column:Float, source:String, ?chunk:String, ?name:String):Void { })
	function new():Void;
	static function fromStringWithSourceMap(code:String, sourceMapConsumer:SourceMapConsumer, ?relativePath:String):SourceNode;
	function add(chunk:String):Void;
	function prepend(chunk:String):Void;
	function setSourceContent(sourceFile:String, sourceContent:String):Void;
	function walk(fn:String -> MappedPosition -> Void):Void;
	function walkSourceContents(fn:String -> String -> Void):Void;
	function join(sep:String):SourceNode;
	function replaceRight(pattern:String, replacement:String):SourceNode;
	function toString():String;
	function toStringWithSourceMap(?startOfSourceMap:StartOfSourceMap):CodeWithSourceMap;
}
