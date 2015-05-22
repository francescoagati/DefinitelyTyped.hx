typedef Options = {
	@:optional
	var clickToHide : Bool;
	@:optional
	var autoHide : Bool;
	@:optional
	var autoHideDelay : Float;
	@:optional
	var arrowShow : Bool;
	@:optional
	var arrowSize : Float;
	@:optional
	var elementPosition : String;
	@:optional
	var globalPosition : String;
	@:optional
	var style : String;
	@:optional
	var className : String;
	@:optional
	var showAnimation : String;
	@:optional
	var showDuration : Float;
	@:optional
	var hideAnimation : String;
	@:optional
	var hideDuration : Float;
	@:optional
	var gap : Float;
};
typedef ClassCSS = { };
typedef StyleDefinition = {
	var html : String;
	@:optional
	var classes : { @:optional
	var base : ClassCSS; };
	@:optional
	var css : String;
};
typedef JQueryStatic = {
	function addStyle(styleName:String, styleDefinition:StyleDefinition):Void;
	function defaults(options:Options):Void;
};
typedef JQueryStatic = {
	var notify : Notify.JQueryStatic;
};
typedef JQuery = {
	@:overload(function(text:String, ?options:Notify.Options):Void { })
	@:overload(function(data:Dynamic, ?className:String):Void { })
	@:overload(function(data:Dynamic, ?options:Notify.Options):Void { })
	function notify(text:String, ?className:String):Void;
};
