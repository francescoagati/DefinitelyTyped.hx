typedef SourceMapConverter = {
	function toObject():Dynamic;
	function toJSON(?space:Dynamic):String;
	function toBase64():String;
	function toComment():String;
	function addProperty(key:String, value:Dynamic):SourceMapConverter;
	function setProperty(key:String, value:Dynamic):SourceMapConverter;
	function getProperty(key:String):Dynamic;
};
extern class Convert-source-mapTopLevel {
	static function removeComments(src:String):String;
	static var commentRegex : js.RegExp;
	static function fromObject(obj:Dynamic):SourceMapConverter;
	static function fromJSON(json:String):SourceMapConverter;
	static function fromBase64(base64:String):SourceMapConverter;
	static function fromComment(comment:String):SourceMapConverter;
	static function fromSource(source:String):SourceMapConverter;
}
extern class Convert-source-mapTopLevel {
	static function removeComments(src:String):String;
	static var commentRegex : js.RegExp;
	static function fromObject(obj:Dynamic):SourceMapConverter;
	static function fromJSON(json:String):SourceMapConverter;
	static function fromBase64(base64:String):SourceMapConverter;
	static function fromComment(comment:String):SourceMapConverter;
	static function fromSource(source:String):SourceMapConverter;
}
