typedef IEncoder = {
	function stringify(wordArray:lib.WordArray):String;
};
typedef IDecoder = {
	function parse(s:String):lib.WordArray;
};
typedef ICoder = {
	>IEncoder,
	>IDecoder,
};
typedef EncStatic = {
	var Hex : ICoder;
	var Latin1 : ICoder;
	var Utf8 : ICoder;
	var Base64 : ICoder;
	var Utf16 : ICoder;
	var Utf16BE : ICoder;
	var Utf16LE : ICoder;
};
