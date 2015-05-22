extern class Chrome.i18nTopLevel {
	static function getMessage(messageName:String, ?substitutions:Dynamic):String;
	static function getAcceptLanguages(callback:Array<String> -> Void):Void;
	static function getUILanguage():String;
}
