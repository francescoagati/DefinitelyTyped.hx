typedef LZStringStatic = {
	function compress(uncompressed:String):String;
	function decompress(compressed:String):String;
	function compressToUTF16(uncompressed:String):String;
	function decompressFromUTF16(compressed:String):String;
	function compressToBase64(uncompressed:String):String;
	function decompressFromBase64(compressed:String):String;
};
