typedef FormatStatic = {
	var OpenSSL : IFormatter;
	var Hex : IFormatter;
};
typedef IFormatter = {
	function stringify(cipherParams:lib.CipherParamsData):String;
	function parse(s:String):lib.CipherParams;
};
