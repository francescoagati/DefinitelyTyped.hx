typedef Interactable = {
	@:overload(function(newValue:Element):Interactable { })
	@:overload(function(newValue:String):Interactable { })
	function accept():Dynamic;
	@:overload(function(checker:haxe.Constraints.Function):Interactable { })
	function actionChecker():haxe.Constraints.Function;
	@:overload(function(options:Bool):Interactable { })
	@:overload(function(options:{ }):Interactable { })
	function autoScroll():Dynamic;
	function context():Node;
	function defaultActionChecker(event:Dynamic):String;
	@:overload(function(newValue:String):Interactable { })
	function deltaSource():String;
	@:overload(function(options:Bool):Interactable { })
	@:overload(function(options:{ }):Interactable { })
	function draggable():Bool;
	@:overload(function(event:TouchEvent):Bool { })
	function dropCheck(event:MouseEvent):Bool;
	@:overload(function(checker:haxe.Constraints.Function):Interactable { })
	function dropChecker():haxe.Constraints.Function;
	@:overload(function(options:Bool):Interactable { })
	@:overload(function(options:{ }):Interactable { })
	function dropzone():Dynamic;
	function element():Element;
	function fire(iEvent:InteractEvent):Interactable;
	@:overload(function(options:Bool):Interactable { })
	@:overload(function(options:{ }):Interactable { })
	function gesturable():Dynamic;
	function getRect():ClientRect;
	@:overload(function(newValue:String):Interactable { })
	@:overload(function(newValue:Element):Interactable { })
	function ignoreFrom():Dynamic;
	@:overload(function(options:Bool):Interactable { })
	@:overload(function(options:{ }):Interactable { })
	function inertia():Dynamic;
	function off(eventType:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Interactable;
	function on(eventType:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Interactable;
	@:overload(function(newValue:HTMLElement):Interactable { })
	@:overload(function(newValue:SVGElement):Interactable { })
	@:overload(function(newValue:Point):Interactable { })
	function origin():Point;
	@:overload(function(newValue:haxe.Constraints.Function):Interactable { })
	function rectChecker():haxe.Constraints.Function;
	@:overload(function(options:Bool):Interactable { })
	@:overload(function(options:{ }):Interactable { })
	function resizable():Interactable;
	@:overload(function(newValue:Restrict):Interactable { })
	function restrict():Restrict;
	function set(options:{ }):Interactable;
	@:overload(function(options:Bool):Interactable { })
	@:overload(function(options:{ }):Interactable { })
	function snap():Dynamic;
	@:overload(function(newValue:Bool):Interactable { })
	function squareResize():Bool;
	@:overload(function(newValue:Bool):Interactable { })
	function styleCursor():Bool;
	function unset():InteractStatic;
	function validateSetting(context:String, option:String, value:Dynamic):Dynamic;
};
typedef Coordinates = {
	var clientX : Float;
	var clientY : Float;
	var pageX : Float;
	var pageY : Float;
	var timeStamp : Float;
};
typedef Debug = {
	var target : Dynamic;
	var dragging : Dynamic;
	var resizing : Dynamic;
	var gesturing : Dynamic;
	var prepared : Dynamic;
	var prevCoords : Coordinates;
	var downCoords : Coordinates;
	var pointerIds : Array<Dynamic>;
	var pointerMoves : Array<Dynamic>;
	var addPointer : Dynamic;
	var removePointer : Dynamic;
	var recordPointers : Dynamic;
	var inertia : InertiaStatus;
	var downTime : Dynamic;
	var downEvent : Dynamic;
	var prevEvent : Dynamic;
	var Interactable : Dynamic;
	var IOptions : Dynamic;
	var interactables : Dynamic;
	var dropzones : Dynamic;
	var pointerIsDown : Dynamic;
	var defaultOptions : Dynamic;
	var defaultActionChecker : Dynamic;
	var actions : Dynamic;
	var dragMove : Dynamic;
	var resizeMove : Dynamic;
	var gestureMove : Dynamic;
	var pointerUp : Dynamic;
	var pointerDown : Dynamic;
	var pointerMove : Dynamic;
	var pointerHover : Dynamic;
	var events : Dynamic;
	var globalEvents : Dynamic;
	var delegatedEvents : Dynamic;
};
typedef InertiaStatus = {
	var active : Bool;
	var target : Dynamic;
	var targetElement : Dynamic;
	var startEvent : Dynamic;
	var pointerUp : Dynamic;
	var xe : Float;
	var ye : Float;
	var duration : Float;
	var t0 : Float;
	var vx0 : Float;
	var vys : Float;
	var lambda_v0 : Float;
	var one_ve_v0 : Float;
	var i : Dynamic;
};
typedef Point = {
	var x : Float;
	var y : Float;
};
typedef Restrict = {
	@:optional
	var drag : Dynamic;
	@:optional
	var gesture : Dynamic;
	@:optional
	var resize : Dynamic;
	@:optional
	var elementRect : { };
};
typedef InteractEvent = {
	var altKey : Bool;
	var axes : String;
	var button : Float;
	var clientX0 : Float;
	var clientX : Float;
	var clientY0 : Float;
	var clientY : Float;
	var ctrlKey : Bool;
	var dt : Float;
	var duration : Float;
	var dx : Float;
	var dy : Float;
	var metaKey : Bool;
	var pageX : Float;
	var pageY : Float;
	var shiftKey : Bool;
	var speed : Float;
	var t0 : Float;
	var target : Dynamic;
	var timeStamp : Float;
	var type : String;
	var velocityX : Float;
	var velocityY : Float;
	var x0 : Float;
	var y0 : Float;
};
typedef TouchEvent = {
	var changedTouches : Array<Dynamic>;
	var pageX : Float;
	var pageY : Float;
	var touches : Array<Dynamic>;
	var type : String;
};
typedef InteractStatic = {
	@:overload(function(options:Bool):InteractStatic { })
	@:overload(function(options:{ }):InteractStatic { })
	function autoScroll():Dynamic;
	function currentAction():String;
	function debug():Debug;
	@:overload(function(newValue:String):InteractStatic { })
	function deltaSource():String;
	@:overload(function(newValue:Bool):InteractStatic { })
	function dynamicDrop():Bool;
	@:overload(function(newValue:Bool):InteractStatic { })
	function enableDragging():Bool;
	@:overload(function(newValue:Bool):InteractStatic { })
	function enableGesturing():Bool;
	@:overload(function(newValue:Bool):InteractStatic { })
	function enableResizing():Bool;
	@:overload(function(options:Bool):InteractStatic { })
	@:overload(function(options:{ }):InteractStatic { })
	function inertia():Dynamic;
	function isSet(element:Element):Bool;
	@:overload(function(newvalue:Float):InteractStatic { })
	function margin():Float;
	function off(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):InteractStatic;
	function on(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):InteractStatic;
	@:overload(function(newValue:Restrict):InteractStatic { })
	function restrict():Restrict;
	function simulate(action:String, element:Element, ?pointerEvent:Dynamic):InteractStatic;
	@:overload(function(options:Bool):InteractStatic { })
	@:overload(function(options:{ }):InteractStatic { })
	function snap():Dynamic;
	function stop(event:Event):InteractStatic;
	@:overload(function(newValue:Bool):InteractStatic { })
	function styleCursor():Bool;
	function supportsTouch():Bool;
};
extern class InteractTopLevel {
	static var interact : InteractStatic;
}
extern class InteractTopLevel {
	static var interact : InteractStatic;
}
