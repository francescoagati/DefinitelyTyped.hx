typedef LineStreamOptions = {
	>stream.TransformOptions,
	@:optional
	var keepEmptyLines : Bool;
};
typedef LineStream = {
	>stream.Transform,
};
typedef LineStreamCreatable = {
	>LineStream,
	function new(?options:LineStreamOptions):LineStream;
};
extern class BylineTopLevel {
	static function createStream():LineStream;
	static function createStream(stream:NodeJS.ReadableStream, ?options:LineStreamOptions):LineStream;
	static var LineStream : LineStreamCreatable;
}
extern class BylineTopLevel {
	static function createStream():LineStream;
	static function createStream(stream:NodeJS.ReadableStream, ?options:LineStreamOptions):LineStream;
	static var LineStream : LineStreamCreatable;
}
