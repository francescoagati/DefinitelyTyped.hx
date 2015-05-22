@:enum abstract BinaryStringEncoding(Int) {
	var utf8 = 0;
	var utf16LE = 1;
	var utf16BE = 2;
}
typedef ICryptographicBufferStatics = {
	function compare(object1:Windows.Storage.Streams.IBuffer, object2:Windows.Storage.Streams.IBuffer):Bool;
	function generateRandom(length:Float):Windows.Storage.Streams.IBuffer;
	function generateRandomNumber():Float;
	function createFromByteArray(value:Uint8Array):Windows.Storage.Streams.IBuffer;
	function copyToByteArray(buffer:Windows.Storage.Streams.IBuffer):Uint8Array;
	function decodeFromHexString(value:String):Windows.Storage.Streams.IBuffer;
	function encodeToHexString(buffer:Windows.Storage.Streams.IBuffer):String;
	function decodeFromBase64String(value:String):Windows.Storage.Streams.IBuffer;
	function encodeToBase64String(buffer:Windows.Storage.Streams.IBuffer):String;
	function convertStringToBinary(value:String, encoding:Windows.Security.Cryptography.BinaryStringEncoding):Windows.Storage.Streams.IBuffer;
	function convertBinaryToString(encoding:Windows.Security.Cryptography.BinaryStringEncoding, buffer:Windows.Storage.Streams.IBuffer):String;
};
extern class CryptographicBuffer {
	static function compare(object1:Windows.Storage.Streams.IBuffer, object2:Windows.Storage.Streams.IBuffer):Bool;
	static function generateRandom(length:Float):Windows.Storage.Streams.IBuffer;
	static function generateRandomNumber():Float;
	static function createFromByteArray(value:Uint8Array):Windows.Storage.Streams.IBuffer;
	static function copyToByteArray(buffer:Windows.Storage.Streams.IBuffer):Uint8Array;
	static function decodeFromHexString(value:String):Windows.Storage.Streams.IBuffer;
	static function encodeToHexString(buffer:Windows.Storage.Streams.IBuffer):String;
	static function decodeFromBase64String(value:String):Windows.Storage.Streams.IBuffer;
	static function encodeToBase64String(buffer:Windows.Storage.Streams.IBuffer):String;
	static function convertStringToBinary(value:String, encoding:Windows.Security.Cryptography.BinaryStringEncoding):Windows.Storage.Streams.IBuffer;
	static function convertBinaryToString(encoding:Windows.Security.Cryptography.BinaryStringEncoding, buffer:Windows.Storage.Streams.IBuffer):String;
}
