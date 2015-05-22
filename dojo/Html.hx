extern class _ContentSetter {
	function new(params:Dynamic, node:String):Void;
	var cleanContent : Bool;
	var content : String;
	var extractContent : Bool;
	var id : Dynamic;
	var node : HTMLElement;
	var parseContent : Bool;
	var parserScope : String;
	var startup : Bool;
	function empty():Void;
	@:overload(function(cont:HTMLElement, params:Dynamic):Dynamic { })
	@:overload(function(cont:NodeList, params:Dynamic):Dynamic { })
	function set(cont:String, params:Dynamic):Dynamic;
	function setContent():Void;
	function tearDown():Void;
	function onBegin():Dynamic;
	function onContentError(err:Dynamic):String;
	function onEnd():Dynamic;
	function onExecError(err:Dynamic):String;
}
typedef Io_query = {
	function objectToQuery(map:Dynamic):Dynamic;
	function queryToObject(str:String):Dynamic;
};
typedef I18n = {
	var cache : Dynamic;
	var dynamic : Bool;
	var unitTests : Array<Dynamic>;
	function getL10nName(moduleName:Dynamic, bundleName:Dynamic, locale:Dynamic):String;
	function getLocalization(moduleName:Dynamic, bundleName:Dynamic, locale:Dynamic):Dynamic;
	function load(id:Dynamic, require:Dynamic, load:Dynamic):Void;
	function normalize(id:Dynamic, toAbsMid:Dynamic):Dynamic;
	function normalizeLocale(locale:Dynamic):Dynamic;
};
