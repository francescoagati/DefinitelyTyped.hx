typedef JQBlockUIOptions = {
	@:optional
	var message : Dynamic;
	@:optional
	var title : String;
	@:optional
	var draggable : Bool;
	@:optional
	var theme : Bool;
	@:optional
	var css : Dynamic;
	@:optional
	var themedCSS : Dynamic;
	@:optional
	var overlayCSS : Dynamic;
	@:optional
	var cursorReset : String;
	@:optional
	var growlCSS : Dynamic;
	@:optional
	var iframeSrc : String;
	@:optional
	var forceIframe : Bool;
	@:optional
	var baseZ : Float;
	@:optional
	var centerX : Bool;
	@:optional
	var centerY : Bool;
	@:optional
	var allowBodyStretch : Bool;
	@:optional
	var bindEvents : Bool;
	@:optional
	var constrainTabKey : Bool;
	@:optional
	var fadeIn : Float;
	@:optional
	var fadeOut : Float;
	@:optional
	var timeout : Float;
	@:optional
	var showOverlay : Bool;
	@:optional
	var focusInput : Bool;
	@:optional
	var onBlock : Void -> Void;
	@:optional
	var onUnblock : Dynamic -> Dynamic -> Void;
	@:optional
	var quirksmodeOffsetHack : Float;
	@:optional
	var blockMsgClass : String;
	@:optional
	var ignoreIfBlocked : Bool;
};
typedef JQBlockUIStatic = {
	@:optional
	var defaults : JQBlockUIOptions;
};
typedef JQueryStatic = {
	@:optional
	var blockUI : JQBlockUIStatic;
	@:optional
	var unblockUI : JQBlockUIStatic;
};
typedef JQuery = {
	function block(?option:JQBlockUIOptions):JQuery;
	function unblock(?option:JQBlockUIOptions):JQuery;
};
