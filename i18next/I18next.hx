typedef IResourceStore = { };
typedef IResourceStoreLanguage = { };
typedef IResourceStoreKey = { };
typedef I18nextOptions = {
	@:optional
	var lng : String;
	@:optional
	var load : String;
	@:optional
	var preload : Array<String>;
	@:optional
	var lowerCaseLng : Bool;
	@:optional
	var returnObjectTrees : Bool;
	@:optional
	var fallbackLng : String;
	@:optional
	var detectLngQS : String;
	@:optional
	var ns : Dynamic;
	@:optional
	var nsseparator : String;
	@:optional
	var keyseparator : String;
	@:optional
	var selectorAttr : String;
	@:optional
	var debug : Bool;
	@:optional
	var resGetPath : String;
	@:optional
	var resPostPath : String;
	@:optional
	var getAsync : Bool;
	@:optional
	var postAsync : Bool;
	@:optional
	var resStore : IResourceStore;
	@:optional
	var useLocalStorage : Bool;
	@:optional
	var localStorageExpirationTime : Float;
	@:optional
	var dynamicLoad : Bool;
	@:optional
	var sendMissing : Bool;
	@:optional
	var sendMissingTo : String;
	@:optional
	var sendType : String;
	@:optional
	var interpolationPrefix : String;
	@:optional
	var interpolationSuffix : String;
	@:optional
	var reusePrefix : String;
	@:optional
	var reuseSuffix : String;
	@:optional
	var pluralSuffix : String;
	@:optional
	var pluralNotFound : String;
	@:optional
	var contextNotFound : String;
	@:optional
	var setJqueryExt : Bool;
	@:optional
	var defaultValueFromContent : Bool;
	@:optional
	var useDataAttrOptions : Bool;
	@:optional
	var cookieExpirationTime : Float;
	@:optional
	var useCookie : Bool;
	@:optional
	var cookieName : String;
	@:optional
	var postProcess : String;
};
typedef I18nextStatic = {
	function addPostProcessor(name:String, fn:Dynamic -> String -> Dynamic -> String):Void;
	function detectLanguage():String;
	var functions : { @:overload(function(deep:Bool, target:Dynamic, objs:haxe.extern.Rest<Dynamic>):Dynamic { })
	function extend(target:Dynamic, objs:haxe.extern.Rest<Dynamic>):Dynamic; function each(collection:Dynamic, callback:Dynamic -> Dynamic -> Dynamic):Dynamic; @:overload(function(url:String, ?settings:JQueryAjaxSettings):JQueryXHR { })
	function ajax(settings:JQueryAjaxSettings):JQueryXHR; var cookie : { var create : String -> String -> Float -> Void; var read : String -> String; var remove : String -> Void; }; function detectLanguage():String; function log(message:String):Void; function toLanguages(language:String):Array<String>; function regexEscape(str:String):String; };
	@:overload(function(?options:I18nextOptions, ?callback:String -> ?Dynamic -> String -> Void):JQueryDeferred<Dynamic> { })
	function init(?callback:String -> ?Dynamic -> String -> Void):JQueryDeferred<Dynamic>;
	function lng():String;
	function loadNamespace(namespace:String, ?callback:Void -> Void):Void;
	function loadNamespaces(namespaces:Array<String>, ?callback:Void -> Void):Void;
	var pluralExtensions : { function addRule(language:String, obj:{ var name : String; var numbers : Array<Float>; var plurals : Float -> Float; }):Void; function get(language:String, count:Float):Float; var rules : Dynamic; var setCurrentLng : String -> Void; };
	@:overload(function(languages:Array<String>, ?callback:String -> ?Dynamic -> String -> Void):Void { })
	function preload(language:String, ?callback:String -> ?Dynamic -> String -> Void):Void;
	function setDefaultNamespace(namespace:String):Void;
	function setLng(language:String, ?callback:String -> ?Dynamic -> String -> Void):Void;
	var sync : { var load : Array<String> -> I18nextOptions -> Error -> IResourceStore -> Void -> Void; var postMissing : String -> String -> String -> Dynamic -> Array<String> -> Void; };
	function t(key:String, ?options:Dynamic):String;
	function translate(key:String, ?options:Dynamic):String;
	function exists(key:String, ?options:Dynamic):Bool;
};
typedef JQueryStatic = {
	var i18n : I18nextStatic;
	var t : String -> ?Dynamic -> String;
};
typedef JQuery = {
	var i18n : ?I18nextOptions -> Void;
};
extern class I18nextTopLevel {
	static var i18n : I18nextStatic;
}
extern class I18nextTopLevel {
	static var i18n : I18nextStatic;
}
