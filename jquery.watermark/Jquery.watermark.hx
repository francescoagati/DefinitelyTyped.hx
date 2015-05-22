typedef WatermarkOptions = {
	@:optional
	var className : String;
	@:optional
	var useNative : Bool;
	@:optional
	var hideBeforeUnload : Bool;
};
typedef Watermark = {
	var options : WatermarkOptions;
	function show(element:String):Void;
	function hide(element:String):Void;
	function showAll():Void;
	function hideAll():Void;
};
typedef JQuery = {
	function watermark(text:String, ?options:WatermarkOptions):JQuery;
};
typedef JQueryStatic = {
	var watermark : Watermark;
};
