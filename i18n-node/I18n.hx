typedef ConfigurationOptions = {
	@:optional
	var locales : Array<String>;
	@:optional
	var defaultLocale : String;
	@:optional
	var cookie : String;
	@:optional
	var directory : String;
	@:optional
	var updateFiles : Bool;
	@:optional
	var indent : String;
	@:optional
	var extension : String;
	@:optional
	var objectNotation : Bool;
};
typedef TranslateOptions = {
	var phrase : String;
	@:optional
	var locale : String;
};
typedef PluralOptions = {
	var singular : String;
	var plural : String;
	@:optional
	var count : Float;
	@:optional
	var locale : String;
};
typedef Replacements = { };
typedef LocaleCatalog = { };
typedef GlobalCatalog = { };
extern class I18nTopLevel {
	static function configure(options:ConfigurationOptions):Void;
	static function init(request:Express.Request, response:Express.Response, ?next:haxe.Constraints.Function):Void;
	static function __(phrase:String, replace:haxe.extern.Rest<String>):String;
	static function __(phrase:String, replacements:Replacements):String;
	static function __(options:TranslateOptions):String;
	static function __(options:TranslateOptions, replace:haxe.extern.Rest<String>):String;
	static function __(options:TranslateOptions, replacements:Replacements):String;
	static function __n(options:PluralOptions):String;
	static function __n(options:PluralOptions, count:Float):String;
	static function __n(singular:String, plural:String, count:Float):String;
	static function __n(singular:String, plural:String, count:String):String;
	static function setLocale(locale:String):Void;
	static function setLocale(request:Express.Request, locale:String):Void;
	static function getLocale():String;
	static function getLocale(request:Express.Request):String;
	static function getCatalog():GlobalCatalog;
	static function getCatalog(locale:String):LocaleCatalog;
	static function getCatalog(request:Express.Request):LocaleCatalog;
	static function getCatalog(request:Express.Request, locale:String):LocaleCatalog;
	static function overrideLocaleFromQuery(?request:Express.Request):Void;
	static var version : String;
}
typedef I18nAPI = {
	var locale : String;
	@:overload(function(phrase:String, replacements:i18n.Replacements):String { })
	@:overload(function(options:i18n.TranslateOptions):String { })
	@:overload(function(options:i18n.TranslateOptions, replace:haxe.extern.Rest<String>):String { })
	@:overload(function(options:i18n.TranslateOptions, replacements:i18n.Replacements):String { })
	function __(phrase:String, replace:haxe.extern.Rest<String>):String;
	@:overload(function(options:i18n.PluralOptions, count:Float):String { })
	@:overload(function(singular:String, plural:String, count:Float):String { })
	@:overload(function(singular:String, plural:String, count:String):String { })
	function __n(options:i18n.PluralOptions):String;
	function getLocale():String;
	function setLocale(locale:String):Void;
	@:overload(function(locale:String):i18n.LocaleCatalog { })
	function getCatalog():i18n.GlobalCatalog;
};
extern class I18nTopLevel {
	static function configure(options:ConfigurationOptions):Void;
	static function init(request:Express.Request, response:Express.Response, ?next:haxe.Constraints.Function):Void;
	static function __(phrase:String, replace:haxe.extern.Rest<String>):String;
	static function __(phrase:String, replacements:Replacements):String;
	static function __(options:TranslateOptions):String;
	static function __(options:TranslateOptions, replace:haxe.extern.Rest<String>):String;
	static function __(options:TranslateOptions, replacements:Replacements):String;
	static function __n(options:PluralOptions):String;
	static function __n(options:PluralOptions, count:Float):String;
	static function __n(singular:String, plural:String, count:Float):String;
	static function __n(singular:String, plural:String, count:String):String;
	static function setLocale(locale:String):Void;
	static function setLocale(request:Express.Request, locale:String):Void;
	static function getLocale():String;
	static function getLocale(request:Express.Request):String;
	static function getCatalog():GlobalCatalog;
	static function getCatalog(locale:String):LocaleCatalog;
	static function getCatalog(request:Express.Request):LocaleCatalog;
	static function getCatalog(request:Express.Request, locale:String):LocaleCatalog;
	static function overrideLocaleFromQuery(?request:Express.Request):Void;
	static var version : String;
}
