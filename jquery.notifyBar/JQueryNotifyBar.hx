typedef NotifyBarOptions = {
	@:optional
	var html : String;
	@:optional
	var delay : Float;
	@:optional
	var jqObject : JQuery;
	@:optional
	var cssClass : String;
	@:optional
	var close : Bool;
	@:optional
	var closeText : String;
	@:optional
	var closeOnClick : Bool;
	@:optional
	var closeOnOver : Bool;
	@:optional
	var onBeforeShow : Void -> Dynamic;
	@:optional
	var onShow : Void -> Dynamic;
	@:optional
	var onBeforeHide : Void -> Dynamic;
	@:optional
	var onHide : Void -> Dynamic;
	@:optional
	var position : String;
};
typedef NotifyBarOptionsForAnimationSpeedString = {
	>NotifyBarOptions,
	@:optional
	var animationSpeed : String;
};
typedef NotifyBarOptionsForAnimationSpeedNumber = {
	>NotifyBarOptions,
	@:optional
	var animationSpeed : Float;
};
typedef JQueryStatic = {
	function notifyBar(?options:JQueryNotifyBar.NotifyBarOptions):Void;
};
