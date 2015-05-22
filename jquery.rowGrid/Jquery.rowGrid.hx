typedef JQueryRowGridJSOptions = {
	@:optional
	var minMargin : Float;
	@:optional
	var maxMargin : Float;
	var itemSelector : String;
};
typedef JQuery = {
	@:overload(function(appended:String):JQuery { })
	function rowGrid(?options:JQueryRowGridJSOptions):JQuery;
};
