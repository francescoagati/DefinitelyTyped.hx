extern class Web-frameTopLevel {
	static function setZoomFactor(factor:Float):Void;
	static function getZoomFactor():Float;
	static function setZoomLevel(level:Float):Void;
	static function getZoomLevel():Float;
	static function setSpellCheckProvider(language:String, autoCorrectWord:Bool, provider:{ var spellCheck : String -> Bool; }):Void;
	static function registerUrlSchemeAsSecure(scheme:String):Void;
}
