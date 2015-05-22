typedef Stamp = {
	function fromISOString(formattedString:String, defaultTime:Float):Dynamic;
	function toISOString(dateObject:Date, options:Dynamic):Dynamic;
};
typedef Locale = {
	function addCustomFormats(packageName:String, bundleName:String):Void;
	function format(dateObject:Date, options:Dynamic):Dynamic;
	function getNames(item:String, type:String, context:String, locale:String):Dynamic;
	function isWeekend(dateObject:Date, locale:String):Bool;
	function parse(value:String, options:Dynamic):Dynamic;
	function regexp(options:Dynamic):Dynamic;
};
