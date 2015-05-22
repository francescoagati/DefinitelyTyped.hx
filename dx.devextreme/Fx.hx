typedef AnimationOptions = {
	@:optional
	var complete : JQuery -> AnimationOptions -> Void;
	@:optional
	var delay : Float;
	@:optional
	var duration : Float;
	@:optional
	var easing : String;
	@:optional
	var from : Dynamic;
	@:optional
	var start : JQuery -> AnimationOptions -> Void;
	@:optional
	var to : Dynamic;
	@:optional
	var type : String;
	@:optional
	var direction : String;
};
extern class FxTopLevel {
	static function animate(element:HTMLElement, config:Dynamic):Dynamic;
	static function isAnimating(element:HTMLElement):Bool;
	static function stop(element:HTMLElement, jumpToEnd:Bool):Void;
}
