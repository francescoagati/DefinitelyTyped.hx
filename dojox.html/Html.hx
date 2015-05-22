typedef Ellipsis = { };
typedef Entities = {
	var html : Array<Dynamic>;
	var latin : Array<Dynamic>;
	function decode(str:Dynamic, m:Dynamic):Void;
	function encode(str:Dynamic, m:Dynamic):Void;
};
typedef Metrics = {
	function getCachedFontMeasurements(recalculate:Dynamic):Dynamic;
	function getFontMeasurements():Dynamic;
	function getScrollbar():Dynamic;
	function getTextBox(text:String, style:Dynamic, className:String):Void;
	function initOnFontResize():Void;
};
typedef Styles = {
	var entities : Dynamic;
	var ext-dojo : Dynamic;
	var metrics : Dynamic;
	function activeStyleSheet(title:String):Void;
	function disableStyleSheet(styleSheetName:String):Void;
	function enableStyleSheet(styleSheetName:String):Void;
	function getDynamicStyleSheet(styleSheetName:String):Dynamic;
	function getPreferredStyleSheet():Void;
	function getStyleSheet(styleSheetName:String):Void;
	function getStyleSheets():Dynamic;
	function getToggledStyleSheets():Dynamic;
	function insertCssRule(selector:String, declaration:String, styleSheetName:String):String;
	function modifyCssRule(selector:Dynamic, declaration:Dynamic, styleSheetName:Dynamic):Void;
	function removeCssRule(selector:String, declaration:String, styleSheetName:String):Void;
};
