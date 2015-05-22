typedef FastClickObject = {
	var lastTouchIdentifier : Float;
	var layer : Element;
	var tapDelay : Float;
	var targetElement : Dynamic;
	var touchBoundary : Float;
	var touchStartX : Float;
	var touchStartY : Float;
	var trackingClick : Bool;
	var trackingClickStart : Float;
	function destroy():Void;
	function determineEventType(targetElement:Dynamic):String;
	function findControl(labelElement:Dynamic):Dynamic;
	function focus(targetElement:Dynamic):Void;
	function getTargetElementFromEventTarget(eventTarget:EventTarget):Dynamic;
	function needsClick(target:Dynamic):Bool;
	function needsFocus(target:Dynamic):Bool;
};
typedef FastClickOptions = {
	@:optional
	var touchBoundary : Float;
	@:optional
	var tapDelay : Float;
};
typedef FastClickStatic = {
	function new(layer:Dynamic, ?options:FastClickOptions):FastClickObject;
	function attach(layer:Dynamic, ?options:FastClickOptions):FastClickObject;
};
extern class FastclickTopLevel {
	static function fastclick(layer:Dynamic, ?options:FastClickOptions):FastClickObject;
	static var FastClick : FastClickStatic;
	static var FastClick : FastClickStatic;
}
extern class FastclickTopLevel {
	static function fastclick(layer:Dynamic, ?options:FastClickOptions):FastClickObject;
	static var FastClick : FastClickStatic;
	static var FastClick : FastClickStatic;
}
extern class FastclickTopLevel {
	static function fastclick(layer:Dynamic, ?options:FastClickOptions):FastClickObject;
	static var FastClick : FastClickStatic;
	static var FastClick : FastClickStatic;
}
