typedef Overlay = {
	>PolymerElement,
	>HTMLElement,
	var target : Dynamic;
	var sizingTarget : Dynamic;
	var opened : Bool;
	var backdrop : Bool;
	var layered : Bool;
	var autoCloseDisabled : Bool;
	var autoFocusDisabled : Bool;
	var closeAttribute : String;
	var closeSelector : String;
	var transition : String;
	function toggle():Void;
	function open():Void;
	function close():Void;
	function resizeHandler():Void;
};
