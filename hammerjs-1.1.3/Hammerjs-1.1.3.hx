typedef HammerStatic = {
	var VERSION : Float;
	var HAS_POINTEREVENTS : Bool;
	var HAS_TOUCHEVENTS : Bool;
	var UPDATE_VELOCITY_INTERVAL : Float;
	var POINTER_MOUSE : HammerPointerType;
	var POINTER_TOUCH : HammerPointerType;
	var POINTER_PEN : HammerPointerType;
	var DIRECTION_UP : HammerDirectionType;
	var DIRECTION_DOWN : HammerDirectionType;
	var DIRECTION_LEFT : HammerDirectionType;
	var DIRECTION_RIGH : HammerDirectionType;
	var EVENT_START : HammerTouchEventState;
	var EVENT_MOVE : HammerTouchEventState;
	var EVENT_END : HammerTouchEventState;
	var plugins : Dynamic;
	var gestures : Dynamic;
	var READY : Bool;
};
extern class HammerInstance {
	function new(element:Dynamic, ?options:HammerOptions):Void;
	function on(gesture:String, handler:HammerEvent -> Void):HammerInstance;
	function off(gesture:String, handler:HammerEvent -> Void):HammerInstance;
	function enable(toggle:Bool):HammerInstance;
	function trigger(gesture:String, eventData:HammerGestureEventData):HammerInstance;
}
typedef HammerOptions = {
	@:optional
	var behavior : { @:optional
	var contentZooming : String; @:optional
	var tapHighlightColor : String; @:optional
	var touchAction : String; @:optional
	var touchCallout : String; @:optional
	var userDrag : String; @:optional
	var userSelect : String; };
	@:optional
	var doubleTapDistance : Float;
	@:optional
	var doubleTapInterval : Float;
	@:optional
	var drag : Bool;
	@:optional
	var dragBlockHorizontal : Bool;
	@:optional
	var dragBlockVertical : Bool;
	@:optional
	var dragDistanceCorrection : Bool;
	@:optional
	var dragLockMinDistance : Float;
	@:optional
	var dragLockToAxis : Bool;
	@:optional
	var dragMaxTouches : Float;
	@:optional
	var dragMinDistance : Float;
	@:optional
	var gesture : Bool;
	@:optional
	var hold : Bool;
	@:optional
	var holdThreshold : Float;
	@:optional
	var holdTimeout : Float;
	@:optional
	var preventDefault : Bool;
	@:optional
	var preventMouse : Bool;
	@:optional
	var release : Bool;
	@:optional
	var showTouches : Bool;
	@:optional
	var swipe : Bool;
	@:optional
	var swipeMaxTouches : Float;
	@:optional
	var swipeMinTouches : Float;
	@:optional
	var swipeVelocityX : Float;
	@:optional
	var swipeVelocityY : Float;
	@:optional
	var tap : Bool;
	@:optional
	var tapAlways : Bool;
	@:optional
	var tapMaxDistance : Float;
	@:optional
	var tapMaxTime : Float;
	@:optional
	var touch : Bool;
	@:optional
	var transform : Bool;
	@:optional
	var transformMinRotation : Float;
	@:optional
	var transformMinScale : Float;
};
typedef HammerGestureEventData = {
	var timestamp : Float;
	var target : HTMLElement;
	var touches : Array<HammerPoint>;
	var pointerType : HammerPointerType;
	var center : HammerPoint;
	var deltaTime : Float;
	var deltaX : Float;
	var deltaY : Float;
	var velocityX : Float;
	var velocityY : Float;
	var angle : Float;
	var interimAngle : Float;
	var direction : HammerDirectionType;
	var interimDirection : HammerDirectionType;
	var distance : Float;
	var scale : Float;
	var rotation : Float;
	var eventType : HammerTouchEventState;
	var srcEvent : Dynamic;
	var startEvent : Dynamic;
	function stopPropagation():Void;
	function preventDefault():Void;
	function stopDetect():Void;
};
typedef HammerPoint = {
	var clientX : Float;
	var clientY : Float;
	var pageX : Float;
	var pageY : Float;
};
typedef HammerEvent = {
	var type : String;
	var gesture : HammerGestureEventData;
	function stopPropagation():Void;
	function preventDefault():Void;
};
@:enum abstract HammerPointerType(Int) {

}
@:enum abstract HammerDirectionType(Int) {

}
@:enum abstract HammerTouchEventState(Int) {

}
typedef JQuery = {
	function hammer(?options:HammerOptions):JQuery;
};
extern class Hammerjs-1.1.3TopLevel {
	static var Hammer : HammerStatic;
}
