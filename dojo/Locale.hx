extern class __FormatOptions {
	function new():Void;
	var am : String;
	var datePattern : String;
	var formatLength : String;
	var fullYear : Bool;
	var locale : String;
	var pm : String;
	var selector : String;
	var strict : Bool;
	var timePattern : String;
}
typedef Fx = {
	var easing : Dynamic;
	function chain(animations:Array<dojo._base.fx.Animation>):Dynamic;
	function combine(animations:Array<dojo._base.fx.Animation>):Dynamic;
	function slideTo(args:Dynamic):Dynamic;
	function Toggler():Void;
	function wipeIn(args:Dynamic):Dynamic;
	function wipeOut(args:Dynamic):Dynamic;
};
