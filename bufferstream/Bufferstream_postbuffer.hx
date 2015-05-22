extern class PostBuffer extends BufferStream {
	function new(req:http.ServerRequest):Void;
	function onEnd(callback:Dynamic -> Void):Void;
	function pipe(stream:NodeJS.WritableStream, ?options:BufferStream.Opts):NodeJS.ReadableStream;
}
