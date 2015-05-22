typedef ISaxHandler = {
	function startTag(name:String, attribs:Array<String>, param:Dynamic):Void;
	function endTag(name:String, param:Dynamic):Void;
	function pcdata(text:String, param:Dynamic):Void;
	function cdata(text:String, param:Dynamic):Void;
	function rcdata(text:String, param:Dynamic):Void;
	function comment(text:String, param:Dynamic):Void;
	function startDoc(param:Dynamic):Void;
	function endDoc(param:Dynamic):Void;
};
extern class SanitizerTopLevel {
	static function escape(s:String):String;
	static function makeSaxParser(yourHandler:ISaxHandler):haxe.extern.Rest<Dynamic> -> Dynamic;
	static function normalizeRCData(s:String):String;
	static function sanitize(s:String):String;
	static function unescapeEntities(s:String):String;
}
extern class SanitizerTopLevel {
	static function escape(s:String):String;
	static function makeSaxParser(yourHandler:ISaxHandler):haxe.extern.Rest<Dynamic> -> Dynamic;
	static function normalizeRCData(s:String):String;
	static function sanitize(s:String):String;
	static function unescapeEntities(s:String):String;
}
