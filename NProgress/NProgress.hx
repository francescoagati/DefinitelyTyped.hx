typedef NProgressStatic = {
	function start():NProgressStatic;
	function done(?forceShow:Bool):NProgressStatic;
	@:overload(function(amount:Float):NProgressStatic { })
	function inc():NProgressStatic;
	function remove():Void;
	function set(progressPercent:Float):NProgressStatic;
	function configure(options:NProgressConfigureOptions):NProgressStatic;
	var version : String;
	var status : Dynamic;
	function isStarted():Bool;
};
typedef NProgressConfigureOptions = {
	@:optional
	var minimum : Float;
	@:optional
	var trickleRate : Float;
	@:optional
	var trickleSpeed : Float;
	@:optional
	var showSpinner : Bool;
	@:optional
	var trickle : Bool;
	@:optional
	var ease : String;
	@:optional
	var speed : Float;
	@:optional
	var template : String;
};
extern class NProgressTopLevel {
	static var NProgress : NProgressStatic;
}
