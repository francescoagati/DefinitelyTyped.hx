typedef IAlertifyStatic = {
	function alert(message:String, ?fn:haxe.Constraints.Function, ?cssClass:String):IAlertifyStatic;
	function confirm(message:String, ?fn:haxe.Constraints.Function, ?cssClass:String):IAlertifyStatic;
	function extend(type:String):String -> ?Float -> IAlertifyStatic;
	function init():Void;
	function log(message:String, ?type:String, ?wait:Float):IAlertifyStatic;
	function prompt(message:String, ?fn:haxe.Constraints.Function, ?placeholder:String, ?cssClass:String):IAlertifyStatic;
	function success(message:String):IAlertifyStatic;
	function error(message:String):IAlertifyStatic;
	function set(args:IProperties):Void;
	var labels : ILabels;
	function debug():Void;
};
typedef IProperties = {
	@:optional
	var delay : Float;
	@:optional
	var labels : ILabels;
	@:optional
	var buttonFocus : String;
	@:optional
	var buttonReverse : Bool;
};
typedef ILabels = {
	@:optional
	var ok : String;
	@:optional
	var cancel : String;
};
extern class AlertifyTopLevel {
	static var alertify : alertify.IAlertifyStatic;
}
extern class AlertifyTopLevel {
	static var alertify : alertify.IAlertifyStatic;
}
