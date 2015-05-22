typedef OutputFormatOptions = {
	var outputUpper : Bool;
	var b64Pad : String;
};
typedef JsSHA = {
	function new(srcString:String, inputFormat:String, ?encoding:String):JsSHA;
	function getHash(variant:String, format:String, ?numRounds:Float, ?outputFormatOpts:OutputFormatOptions):String;
	function getHMAC(key:String, inputFormat:String, variant:String, outputFormat:String, ?outputFormatOpts:OutputFormatOptions):String;
};
