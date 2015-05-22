extern class Controller {
	function new(params:Dynamic, node:HTMLElement):Void;
	var commands : String;
	var rotator : Dynamic;
	function destroy():Void;
}
extern class ThumbnailController {
	function new(params:Dynamic, node:HTMLElement):Void;
	var rotator : Dynamic;
	function destroy():Void;
}
typedef Fade = {
	function crossFade(args:Dynamic):Dynamic;
	function fade(args:Dynamic):Dynamic;
};
typedef Pan = {
	function pan(args:Dynamic):Dynamic;
	function panDown(args:Dynamic):Dynamic;
	function panLeft(args:Dynamic):Dynamic;
	function panRight(args:Dynamic):Dynamic;
	function panUp(args:Dynamic):Dynamic;
};
typedef Slide = {
	function slideDown(args:Dynamic):Dynamic;
	function slideLeft(args:Dynamic):Dynamic;
	function slideRight(args:Dynamic):Dynamic;
	function slideUp(args:Dynamic):Dynamic;
};
typedef PanFade = {
	function panFade(args:Dynamic):Dynamic;
	function panFadeDown(args:Dynamic):Dynamic;
	function panFadeLeft(args:Dynamic):Dynamic;
	function panFadeRight(args:Dynamic):Dynamic;
	function panFadeUp(args:Dynamic):Dynamic;
};
typedef Wipe = {
	function wipeDown(args:Dynamic):Dynamic;
	function wipeLeft(args:Dynamic):Dynamic;
	function wipeRight(args:Dynamic):Dynamic;
	function wipeUp(args:Dynamic):Dynamic;
};
typedef CalendarViews = { };
typedef FilePicker = { };
