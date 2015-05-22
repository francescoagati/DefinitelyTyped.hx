@:enum abstract CompressAlgorithm(Int) {
	var invalidAlgorithm = 0;
	var nullAlgorithm = 1;
	var mszip = 2;
	var xpress = 3;
	var xpressHuff = 4;
	var lzms = 5;
}
typedef ICompressor = {
	>Windows.Storage.Streams.IOutputStream,
	>Windows.Foundation.IClosable,
	function finishAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function detachStream():Windows.Storage.Streams.IOutputStream;
};
extern class Compressor {
	@:overload(function(underlyingStream:Windows.Storage.Streams.IOutputStream, algorithm:Windows.Storage.Compression.CompressAlgorithm, blockSize:Float):Void { })
	function new(underlyingStream:Windows.Storage.Streams.IOutputStream):Void;
	function finishAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function detachStream():Windows.Storage.Streams.IOutputStream;
	function writeAsync(buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function dispose():Void;
	function close():Void;
}
typedef IDecompressor = {
	>Windows.Storage.Streams.IInputStream,
	>Windows.Foundation.IClosable,
	function detachStream():Windows.Storage.Streams.IInputStream;
};
extern class Decompressor {
	function new(underlyingStream:Windows.Storage.Streams.IInputStream):Void;
	function detachStream():Windows.Storage.Streams.IInputStream;
	function readAsync(buffer:Windows.Storage.Streams.IBuffer, count:Float, options:Windows.Storage.Streams.InputStreamOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Storage.Streams.IBuffer, Float>;
	function dispose():Void;
	function close():Void;
}
typedef ICompressorFactory = {
	function createCompressor(underlyingStream:Windows.Storage.Streams.IOutputStream):Windows.Storage.Compression.Compressor;
	function createCompressorEx(underlyingStream:Windows.Storage.Streams.IOutputStream, algorithm:Windows.Storage.Compression.CompressAlgorithm, blockSize:Float):Windows.Storage.Compression.Compressor;
};
typedef IDecompressorFactory = {
	function createDecompressor(underlyingStream:Windows.Storage.Streams.IInputStream):Windows.Storage.Compression.Decompressor;
};
