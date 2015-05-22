typedef DocCookies = {
	@:overload(function(sKey:String, sValue:String, ?vEnd:String, ?sPath:String, ?sDomain:String, ?bSecure:Bool):Bool { })
	@:overload(function(sKey:String, sValue:String, ?vEnd:Date, ?sPath:String, ?sDomain:String, ?bSecure:Bool):Bool { })
	function setItem(sKey:String, sValue:String, ?vEnd:Float, ?sPath:String, ?sDomain:String, ?bSecure:Bool):Bool;
	function getItem(sKey:String):String;
	function removeItem(sKey:String, ?sPath:String):Bool;
	function hasItem(sKey:String):Bool;
	function keys():Array<String>;
};
extern class DocCookiesTopLevel {
	static var docCookies : DocCookies;
}
