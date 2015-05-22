@:enum abstract ByteOrder(Int) {
	var littleEndian = 0;
	var bigEndian = 1;
}
@:enum abstract UnicodeEncoding(Int) {
	var utf8 = 0;
	var utf16LE = 1;
	var utf16BE = 2;
}
extern class DataReaderLoadOperation {
	var completed : Windows.Foundation.AsyncOperationCompletedHandler<Float>;
	var errorCode : Float;
	var id : Float;
	var status : Windows.Foundation.AsyncStatus;
	function getResults():Float;
	function cancel():Void;
	function close():Void;
	@:overload(function<U>(?success:Float -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Float -> U, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Float -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	function then<U>(?success:Float -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U>;
	function done<U>(?success:Float -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	var operation : { var completed : Windows.Foundation.AsyncOperationCompletedHandler<Float>; function getResults():Float; };
}
typedef IDataReader = {
	var byteOrder : Windows.Storage.Streams.ByteOrder;
	var inputStreamOptions : Windows.Storage.Streams.InputStreamOptions;
	var unconsumedBufferLength : Float;
	var unicodeEncoding : Windows.Storage.Streams.UnicodeEncoding;
	function readByte():Float;
	function readBytes():Uint8Array;
	function readBuffer(length:Float):Windows.Storage.Streams.IBuffer;
	function readBoolean():Bool;
	function readGuid():String;
	function readInt16():Float;
	function readInt32():Float;
	function readInt64():Float;
	function readUInt16():Float;
	function readUInt32():Float;
	function readUInt64():Float;
	function readSingle():Float;
	function readDouble():Float;
	function readString(codeUnitCount:Float):String;
	function readDateTime():Date;
	function readTimeSpan():Float;
	function loadAsync(count:Float):Windows.Storage.Streams.DataReaderLoadOperation;
	function detachBuffer():Windows.Storage.Streams.IBuffer;
	function detachStream():Windows.Storage.Streams.IInputStream;
};
typedef IDataReaderFactory = {
	function createDataReader(inputStream:Windows.Storage.Streams.IInputStream):Windows.Storage.Streams.DataReader;
};
extern class DataReader {
	function new(inputStream:Windows.Storage.Streams.IInputStream):Void;
	var byteOrder : Windows.Storage.Streams.ByteOrder;
	var inputStreamOptions : Windows.Storage.Streams.InputStreamOptions;
	var unconsumedBufferLength : Float;
	var unicodeEncoding : Windows.Storage.Streams.UnicodeEncoding;
	function readByte():Float;
	function readBytes():Uint8Array;
	function readBuffer(length:Float):Windows.Storage.Streams.IBuffer;
	function readBoolean():Bool;
	function readGuid():String;
	function readInt16():Float;
	function readInt32():Float;
	function readInt64():Float;
	function readUInt16():Float;
	function readUInt32():Float;
	function readUInt64():Float;
	function readSingle():Float;
	function readDouble():Float;
	function readString(codeUnitCount:Float):String;
	function readDateTime():Date;
	function readTimeSpan():Float;
	function loadAsync(count:Float):Windows.Storage.Streams.DataReaderLoadOperation;
	function detachBuffer():Windows.Storage.Streams.IBuffer;
	function detachStream():Windows.Storage.Streams.IInputStream;
	function dispose():Void;
	static function fromBuffer(buffer:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.DataReader;
	function close():Void;
}
typedef IDataReaderStatics = {
	function fromBuffer(buffer:Windows.Storage.Streams.IBuffer):Windows.Storage.Streams.DataReader;
};
extern class DataWriterStoreOperation {
	var completed : Windows.Foundation.AsyncOperationCompletedHandler<Float>;
	var errorCode : Float;
	var id : Float;
	var status : Windows.Foundation.AsyncStatus;
	function getResults():Float;
	function cancel():Void;
	function close():Void;
	@:overload(function<U>(?success:Float -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Float -> U, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	@:overload(function<U>(?success:Float -> Windows.Foundation.IPromise<U>, ?error:Dynamic -> Windows.Foundation.IPromise<U>, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U> { })
	function then<U>(?success:Float -> U, ?error:Dynamic -> U, ?progress:Dynamic -> Void):Windows.Foundation.IPromise<U>;
	function done<U>(?success:Float -> Dynamic, ?error:Dynamic -> Dynamic, ?progress:Dynamic -> Void):Void;
	var operation : { var completed : Windows.Foundation.AsyncOperationCompletedHandler<Float>; function getResults():Float; };
}
typedef IDataWriter = {
	var byteOrder : Windows.Storage.Streams.ByteOrder;
	var unicodeEncoding : Windows.Storage.Streams.UnicodeEncoding;
	var unstoredBufferLength : Float;
	function writeByte(value:Float):Void;
	function writeBytes(value:Uint8Array):Void;
	@:overload(function(buffer:Windows.Storage.Streams.IBuffer, start:Float, count:Float):Void { })
	function writeBuffer(buffer:Windows.Storage.Streams.IBuffer):Void;
	function writeBoolean(value:Bool):Void;
	function writeGuid(value:String):Void;
	function writeInt16(value:Float):Void;
	function writeInt32(value:Float):Void;
	function writeInt64(value:Float):Void;
	function writeUInt16(value:Float):Void;
	function writeUInt32(value:Float):Void;
	function writeUInt64(value:Float):Void;
	function writeSingle(value:Float):Void;
	function writeDouble(value:Float):Void;
	function writeDateTime(value:Date):Void;
	function writeTimeSpan(value:Float):Void;
	function writeString(value:String):Float;
	function measureString(value:String):Float;
	function storeAsync():Windows.Storage.Streams.DataWriterStoreOperation;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function detachBuffer():Windows.Storage.Streams.IBuffer;
	function detachStream():Windows.Storage.Streams.IOutputStream;
};
typedef IDataWriterFactory = {
	function createDataWriter(outputStream:Windows.Storage.Streams.IOutputStream):Windows.Storage.Streams.DataWriter;
};
extern class DataWriter {
	@:overload(function():Void { })
	function new(outputStream:Windows.Storage.Streams.IOutputStream):Void;
	var byteOrder : Windows.Storage.Streams.ByteOrder;
	var unicodeEncoding : Windows.Storage.Streams.UnicodeEncoding;
	var unstoredBufferLength : Float;
	function writeByte(value:Float):Void;
	function writeBytes(value:Uint8Array):Void;
	@:overload(function(buffer:Windows.Storage.Streams.IBuffer, start:Float, count:Float):Void { })
	function writeBuffer(buffer:Windows.Storage.Streams.IBuffer):Void;
	function writeBoolean(value:Bool):Void;
	function writeGuid(value:String):Void;
	function writeInt16(value:Float):Void;
	function writeInt32(value:Float):Void;
	function writeInt64(value:Float):Void;
	function writeUInt16(value:Float):Void;
	function writeUInt32(value:Float):Void;
	function writeUInt64(value:Float):Void;
	function writeSingle(value:Float):Void;
	function writeDouble(value:Float):Void;
	function writeDateTime(value:Date):Void;
	function writeTimeSpan(value:Float):Void;
	function writeString(value:String):Float;
	function measureString(value:String):Float;
	function storeAsync():Windows.Storage.Streams.DataWriterStoreOperation;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function detachBuffer():Windows.Storage.Streams.IBuffer;
	function detachStream():Windows.Storage.Streams.IOutputStream;
	function dispose():Void;
	function close():Void;
}
typedef IRandomAccessStreamStatics = {
	@:overload(function(source:Windows.Storage.Streams.IInputStream, destination:Windows.Storage.Streams.IOutputStream, bytesToCopy:Float):Windows.Foundation.IAsyncOperationWithProgress<Float, Float> { })
	function copyAsync(source:Windows.Storage.Streams.IInputStream, destination:Windows.Storage.Streams.IOutputStream):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function copyAndCloseAsync(source:Windows.Storage.Streams.IInputStream, destination:Windows.Storage.Streams.IOutputStream):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
};
extern class RandomAccessStream {
	@:overload(function(source:Windows.Storage.Streams.IInputStream, destination:Windows.Storage.Streams.IOutputStream, bytesToCopy:Float):Windows.Foundation.IAsyncOperationWithProgress<Float, Float> { })
	static function copyAsync(source:Windows.Storage.Streams.IInputStream, destination:Windows.Storage.Streams.IOutputStream):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	static function copyAndCloseAsync(source:Windows.Storage.Streams.IInputStream, destination:Windows.Storage.Streams.IOutputStream):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
}
typedef IBufferFactory = {
	function create(capacity:Float):Windows.Storage.Streams.Buffer;
};
extern class Buffer {
	function new(capacity:Float):Void;
	var capacity : Float;
	var length : Float;
}
typedef IBuffer = {
	var capacity : Float;
	var length : Float;
};
@:enum abstract InputStreamOptions(Int) {
	var none = 0;
	var partial = 1;
	var readAhead = 2;
}
typedef IContentTypeProvider = {
	var contentType : String;
};
typedef IRandomAccessStreamReference = {
	function openReadAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IRandomAccessStreamWithContentType>;
};
typedef IInputStreamReference = {
	function openSequentialReadAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IInputStream>;
};
typedef IRandomAccessStreamReferenceStatics = {
	function createFromFile(file:Windows.Storage.IStorageFile):Windows.Storage.Streams.RandomAccessStreamReference;
	function createFromUri(uri:Windows.Foundation.Uri):Windows.Storage.Streams.RandomAccessStreamReference;
	function createFromStream(stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Storage.Streams.RandomAccessStreamReference;
};
extern class RandomAccessStreamReference {
	function openReadAsync():Windows.Foundation.IAsyncOperation<Windows.Storage.Streams.IRandomAccessStreamWithContentType>;
	static function createFromFile(file:Windows.Storage.IStorageFile):Windows.Storage.Streams.RandomAccessStreamReference;
	static function createFromUri(uri:Windows.Foundation.Uri):Windows.Storage.Streams.RandomAccessStreamReference;
	static function createFromStream(stream:Windows.Storage.Streams.IRandomAccessStream):Windows.Storage.Streams.RandomAccessStreamReference;
}
extern class FileRandomAccessStream {
	var canRead : Bool;
	var canWrite : Bool;
	var position : Float;
	var size : Float;
	function getInputStreamAt(position:Float):Windows.Storage.Streams.IInputStream;
	function getOutputStreamAt(position:Float):Windows.Storage.Streams.IOutputStream;
	function seek(position:Float):Void;
	function cloneStream():Windows.Storage.Streams.IRandomAccessStream;
	function dispose():Void;
	function readAsync(buffer:Windows.Storage.Streams.IBuffer, count:Float, options:Windows.Storage.Streams.InputStreamOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Storage.Streams.IBuffer, Float>;
	function writeAsync(buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function close():Void;
}
extern class FileInputStream {
	function readAsync(buffer:Windows.Storage.Streams.IBuffer, count:Float, options:Windows.Storage.Streams.InputStreamOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Storage.Streams.IBuffer, Float>;
	function dispose():Void;
	function close():Void;
}
extern class FileOutputStream {
	function writeAsync(buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function dispose():Void;
	function close():Void;
}
extern class RandomAccessStreamOverStream {
	var canRead : Bool;
	var canWrite : Bool;
	var position : Float;
	var size : Float;
	function getInputStreamAt(position:Float):Windows.Storage.Streams.IInputStream;
	function getOutputStreamAt(position:Float):Windows.Storage.Streams.IOutputStream;
	function seek(position:Float):Void;
	function cloneStream():Windows.Storage.Streams.IRandomAccessStream;
	function dispose():Void;
	function readAsync(buffer:Windows.Storage.Streams.IBuffer, count:Float, options:Windows.Storage.Streams.InputStreamOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Storage.Streams.IBuffer, Float>;
	function writeAsync(buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function close():Void;
}
extern class InputStreamOverStream {
	function readAsync(buffer:Windows.Storage.Streams.IBuffer, count:Float, options:Windows.Storage.Streams.InputStreamOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Storage.Streams.IBuffer, Float>;
	function dispose():Void;
	function close():Void;
}
extern class OutputStreamOverStream {
	function writeAsync(buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function dispose():Void;
	function close():Void;
}
extern class InMemoryRandomAccessStream {
	var canRead : Bool;
	var canWrite : Bool;
	var position : Float;
	var size : Float;
	function getInputStreamAt(position:Float):Windows.Storage.Streams.IInputStream;
	function getOutputStreamAt(position:Float):Windows.Storage.Streams.IOutputStream;
	function seek(position:Float):Void;
	function cloneStream():Windows.Storage.Streams.IRandomAccessStream;
	function dispose():Void;
	function readAsync(buffer:Windows.Storage.Streams.IBuffer, count:Float, options:Windows.Storage.Streams.InputStreamOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Storage.Streams.IBuffer, Float>;
	function writeAsync(buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
	function close():Void;
}
typedef IInputStream = {
	>Windows.Foundation.IClosable,
	function readAsync(buffer:Windows.Storage.Streams.IBuffer, count:Float, options:Windows.Storage.Streams.InputStreamOptions):Windows.Foundation.IAsyncOperationWithProgress<Windows.Storage.Streams.IBuffer, Float>;
};
typedef IOutputStream = {
	>Windows.Foundation.IClosable,
	function writeAsync(buffer:Windows.Storage.Streams.IBuffer):Windows.Foundation.IAsyncOperationWithProgress<Float, Float>;
	function flushAsync():Windows.Foundation.IAsyncOperation<Bool>;
};
typedef IRandomAccessStream = {
	>Windows.Foundation.IClosable,
	>Windows.Storage.Streams.IInputStream,
	>Windows.Storage.Streams.IOutputStream,
	var canRead : Bool;
	var canWrite : Bool;
	var position : Float;
	var size : Float;
	function getInputStreamAt(position:Float):Windows.Storage.Streams.IInputStream;
	function getOutputStreamAt(position:Float):Windows.Storage.Streams.IOutputStream;
	function seek(position:Float):Void;
	function cloneStream():Windows.Storage.Streams.IRandomAccessStream;
};
typedef IRandomAccessStreamWithContentType = {
	>Windows.Storage.Streams.IRandomAccessStream,
	>Windows.Foundation.IClosable,
	>Windows.Storage.Streams.IInputStream,
	>Windows.Storage.Streams.IOutputStream,
	>Windows.Storage.Streams.IContentTypeProvider,
};
