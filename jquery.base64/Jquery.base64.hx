typedef JQueryBase64Static = {
	function encode(data:String, ?isUTF8:Bool):String;
	function decode(data:String, ?isUTF8:Bool):String;
};
typedef JQueryStatic = {
	var base64 : JQueryBase64Static;
};
