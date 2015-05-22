typedef CustomScrollbarOptions = {
	@:optional
	var set_width : Dynamic;
	@:optional
	var set_height : Dynamic;
	@:optional
	var horizontalScroll : Bool;
	@:optional
	var scrollInertia : Float;
	@:optional
	var mouseWheel : Bool;
	@:optional
	var mouseWheelPixels : Dynamic;
	@:optional
	var autoDraggerLength : Bool;
	@:optional
	var autoHideScrollbar : Bool;
	@:optional
	var scrollButtons : { @:optional
	var scrollType : String; @:optional
	var scrollSpeed : Dynamic; @:optional
	var scrollAmount : Float; };
	@:optional
	var advanced : { @:optional
	var updateOnBrowserResize : Bool; @:optional
	var updateOnContentResize : Bool; @:optional
	var autoExpandHorizontalScroll : Bool; @:optional
	var autoScrollOnFocus : Bool; @:optional
	var normalizeMouseWheelDelta : Bool; };
	@:optional
	var contentTouchScroll : Bool;
	@:optional
	var callbacks : { @:optional
	var onScrollStart : Void -> Void; @:optional
	var onScroll : Void -> Void; @:optional
	var onTotalScrollBack : Void -> Void; @:optional
	var onTotalScrollOffset : Float; @:optional
	var whileScrolling : Void -> Void; };
	@:optional
	var theme : String;
};
typedef ScrollToParameterOptions = {
	@:optional
	var scrollInertia : Float;
	@:optional
	var moveDragger : Bool;
	@:optional
	var callbacks : Bool;
};
typedef JQuery = {
	@:overload(function(method:String):JQuery { })
	@:overload(function(scrollTo:String, parameter:Dynamic, ?options:MCustomScrollbar.ScrollToParameterOptions):JQuery { })
	function mCustomScrollbar(?options:MCustomScrollbar.CustomScrollbarOptions):JQuery;
};
