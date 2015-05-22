typedef Toast = {
	>PolymerElement,
	>HTMLElement,
	var text : String;
	var duration : Float;
	var opened : Bool;
	var responsiveWidth : String;
	var swipeDisabled : Bool;
	var autoCloseDisabled : Bool;
	function show():Void;
	function dismiss():Void;
	function toggle():Void;
};
