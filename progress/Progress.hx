typedef ProgressJsStatic = { };
typedef ProgressJs = {
	function start():ProgressJs;
	function set(percent:Float):ProgressJs;
	function autoIncrease(size:Float, millisecond:Float):ProgressJs;
	function increase(?size:Float):ProgressJs;
	function end():ProgressJs;
	@:overload(function(option:String, value:Bool):ProgressJs { })
	function setOption(option:String, value:String):ProgressJs;
	function setOptions(options:ProgressJsOptions):ProgressJs;
	function onbeforeend(providedCallback:Void -> Dynamic):ProgressJs;
	function onbeforestart(providedCallback:Void -> Dynamic):ProgressJs;
	function onprogress(providedCallback:String -> Float -> Dynamic):ProgressJs;
};
typedef ProgressJsOptions = {
	@:optional
	var theme : String;
	@:optional
	var overlayMode : Bool;
	@:optional
	var considerTransition : Bool;
};
extern class ProgressTopLevel {
	static var progressJs : ProgressJsStatic;
}
