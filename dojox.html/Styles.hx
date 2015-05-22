extern class _ContentSetter {
	function new(params:Dynamic, node:String):Void;
	var adjustPaths : Bool;
	var cleanContent : Bool;
	var content : String;
	var executeScripts : Bool;
	var extractContent : Bool;
	var id : Dynamic;
	var node : HTMLElement;
	var parseContent : Bool;
	var parserScope : String;
	var referencePath : String;
	var renderStyles : Bool;
	var scriptHasHooks : Bool;
	var scriptHookReplacement : Dynamic;
	var startup : Bool;
	function empty():Void;
	@:overload(function(cont:HTMLElement, params:Dynamic):Dynamic { })
	@:overload(function(cont:NodeList, params:Dynamic):Dynamic { })
	function set(cont:String, params:Dynamic):Dynamic;
	function setContent():Void;
	function tearDown():Void;
	function onBegin():Void;
	function onContentError(err:Dynamic):String;
	function onEnd():Dynamic;
	function onExecError(err:Dynamic):String;
}
typedef Entities = {
	var html : Array<Dynamic>;
	var latin : Array<Dynamic>;
	function decode(str:Dynamic, m:Dynamic):Void;
	function encode(str:Dynamic, m:Dynamic):Void;
};
typedef Ext_dojo = {
	var style : Dynamic;
};
typedef Metrics = {
	function getCachedFontMeasurements(recalculate:Dynamic):Dynamic;
	function getFontMeasurements():Dynamic;
	function getScrollbar():Dynamic;
	function getTextBox(text:String, style:Dynamic, className:String):Void;
	function initOnFontResize():Void;
};
