typedef HammerStatic = {
	function new(element:HTMLElement, ?options:Dynamic):HammerManager;
	var defaults : HammerDefaults;
	var VERSION : Float;
	var INPUT_START : Float;
	var INPUT_MOVE : Float;
	var INPUT_END : Float;
	var INPUT_CANCEL : Float;
	var STATE_POSSIBLE : Float;
	var STATE_BEGAN : Float;
	var STATE_CHANGED : Float;
	var STATE_ENDED : Float;
	var STATE_RECOGNIZED : Float;
	var STATE_CANCELLED : Float;
	var STATE_FAILED : Float;
	var DIRECTION_NONE : Float;
	var DIRECTION_LEFT : Float;
	var DIRECTION_RIGHT : Float;
	var DIRECTION_UP : Float;
	var DIRECTION_DOWN : Float;
	var DIRECTION_HORIZONTAL : Float;
	var DIRECTION_VERTICAL : Float;
	var DIRECTION_ALL : Float;
	var Manager : HammerManager;
	var Input : HammerInput;
	var TouchAction : TouchAction;
	var TouchInput : TouchInput;
	var MouseInput : MouseInput;
	var PointerEventInput : PointerEventInput;
	var TouchMouseInput : TouchMouseInput;
	var SingleTouchInput : SingleTouchInput;
	var Recognizer : RecognizerStatic;
	var AttrRecognizer : AttrRecognizerStatic;
	var Tap : TapRecognizerStatic;
	var Pan : PanRecognizerStatic;
	var Swipe : SwipeRecognizerStatic;
	var Pinch : PinchRecognizerStatic;
	var Rotate : RotateRecognizerStatic;
	var Press : PressRecognizerStatic;
	function on(target:EventTarget, types:String, handler:haxe.Constraints.Function):Void;
	function off(target:EventTarget, types:String, handler:haxe.Constraints.Function):Void;
	function each(obj:Dynamic, iterator:haxe.Constraints.Function, context:Dynamic):Void;
	function merge(dest:Dynamic, src:Dynamic):Dynamic;
	function extend(dest:Dynamic, src:Dynamic, merge:Bool):Dynamic;
	function inherit(child:haxe.Constraints.Function, base:haxe.Constraints.Function, properties:Dynamic):Dynamic;
	function bindFn(fn:haxe.Constraints.Function, context:Dynamic):haxe.Constraints.Function;
	function prefixed(obj:Dynamic, property:String):String;
};
typedef HammerDefaults = {
	var domEvents : Bool;
	var enable : Bool;
	var preset : Array<Dynamic>;
	var touchAction : String;
	var cssProps : CssProps;
	function inputClass():Void;
	function inputTarget():Void;
};
typedef CssProps = {
	var contentZooming : String;
	var tapHighlightColor : String;
	var touchCallout : String;
	var touchSelect : String;
	var userDrag : String;
	var userSelect : String;
};
typedef HammerOptions = {
	>HammerDefaults,
};
typedef HammerManager = {
	function new(element:HTMLElement, ?options:Dynamic):HammerManager;
	@:overload(function(recogniser:Recognizer):HammerManager { })
	@:overload(function(recogniser:Array<Recognizer>):Recognizer { })
	@:overload(function(recogniser:Array<Recognizer>):HammerManager { })
	function add(recogniser:Recognizer):Recognizer;
	function destroy():Void;
	function emit(event:String, data:Dynamic):Void;
	@:overload(function(recogniser:String):Recognizer { })
	function get(recogniser:Recognizer):Recognizer;
	function off(events:String, handler:HammerInput -> Void):Void;
	function on(events:String, handler:HammerInput -> Void):Void;
	function recognize(inputData:Dynamic):Void;
	@:overload(function(recogniser:String):HammerManager { })
	function remove(recogniser:Recognizer):HammerManager;
	function set(options:HammerOptions):HammerManager;
	function stop(force:Bool):Void;
};
extern class HammerInput {
	function new(manager:HammerManager, callback:haxe.Constraints.Function):Void;
	function destroy():Void;
	function handler():Void;
	function init():Void;
	var type : String;
	var deltaX : Float;
	var deltaY : Float;
	var deltaTime : Float;
	var distance : Float;
	var angle : Float;
	var velocityX : Float;
	var velocityY : Float;
	var velocity : Float;
	var direction : Float;
	var offsetDirection : String;
	var scale : Float;
	var rotation : Float;
	var center : HammerPoint;
	var srcEvent : haxe.extern.EitherType<TouchEvent, haxe.extern.EitherType<MouseEvent, PointerEvent>>;
	var target : HTMLElement;
	var pointerType : String;
	var eventType : String;
	var isFirst : Bool;
	var isFinal : Bool;
	var pointers : Array<Dynamic>;
	var changedPointers : Array<Dynamic>;
	var preventDefault : haxe.Constraints.Function;
}
extern class MouseInput extends HammerInput {
	function new(manager:HammerManager, callback:haxe.Constraints.Function):Void;
}
extern class PointerEventInput extends HammerInput {
	function new(manager:HammerManager, callback:haxe.Constraints.Function):Void;
}
extern class SingleTouchInput extends HammerInput {
	function new(manager:HammerManager, callback:haxe.Constraints.Function):Void;
}
extern class TouchInput extends HammerInput {
	function new(manager:HammerManager, callback:haxe.Constraints.Function):Void;
}
extern class TouchMouseInput extends HammerInput {
	function new(manager:HammerManager, callback:haxe.Constraints.Function):Void;
}
typedef RecognizerStatic = {
	function new(?options:Dynamic):Recognizer;
};
typedef Recognizer = {
	var defaults : Dynamic;
	function canEmit():Bool;
	function canRecognizeWith(otherRecognizer:Recognizer):Bool;
	@:overload(function(otherRecognizer:String):Recognizer { })
	function dropRecognizeWith(otherRecognizer:Recognizer):Recognizer;
	@:overload(function(otherRecognizer:String):Recognizer { })
	function dropRequireFailure(otherRecognizer:Recognizer):Recognizer;
	function emit(input:HammerInput):Void;
	function getTouchAction():Array<Dynamic>;
	function hasRequireFailures():Bool;
	function process(inputData:HammerInput):String;
	function recognize(inputData:HammerInput):Void;
	@:overload(function(otherRecognizer:String):Recognizer { })
	function recognizeWith(otherRecognizer:Recognizer):Recognizer;
	@:overload(function(otherRecognizer:String):Recognizer { })
	function requireFailure(otherRecognizer:Recognizer):Recognizer;
	function reset():Void;
	function set(?options:Dynamic):Recognizer;
	function tryEmit(input:HammerInput):Void;
};
typedef AttrRecognizerStatic = {
	function attrTest(input:HammerInput):Bool;
	function process(input:HammerInput):Dynamic;
};
typedef AttrRecognizer = {
	>Recognizer,
	function new(?options:Dynamic):AttrRecognizer;
};
typedef PanRecognizerStatic = {
	function new(?options:Dynamic):PanRecognizer;
};
typedef PanRecognizer = {
	>AttrRecognizer,
};
typedef PinchRecognizerStatic = {
	function new(?options:Dynamic):PinchRecognizer;
};
typedef PinchRecognizer = {
	>AttrRecognizer,
};
typedef PressRecognizerStatic = {
	function new(?options:Dynamic):PressRecognizer;
};
typedef PressRecognizer = {
	>AttrRecognizer,
};
typedef RotateRecognizerStatic = {
	function new(?options:Dynamic):RotateRecognizer;
};
typedef RotateRecognizer = {
	>AttrRecognizer,
};
typedef SwipeRecognizerStatic = {
	function new(?options:Dynamic):SwipeRecognizer;
};
typedef SwipeRecognizer = { };
typedef TapRecognizerStatic = {
	function new(?options:Dynamic):TapRecognizer;
};
typedef TapRecognizer = {
	>AttrRecognizer,
};
extern class TouchAction {
	function new(manager:HammerManager, value:String):Void;
	function compute():String;
	function preventDefaults(input:HammerInput):Void;
	function preventSrc(srcEvent:Dynamic):Void;
	function set(value:String):Void;
	function update():Void;
}
typedef HammerPoint = {
	var x : Float;
	var y : Float;
};
