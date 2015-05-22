@:enum abstract PointerDeviceType(Int) {
	var touch = 0;
	var pen = 1;
	var mouse = 2;
}
typedef PointerDeviceUsage = {
	var usagePage : Float;
	var usage : Float;
	var minLogical : Float;
	var maxLogical : Float;
	var minPhysical : Float;
	var maxPhysical : Float;
	var unit : Float;
	var physicalMultiplier : Float;
};
typedef MouseDelta = {
	var x : Float;
	var y : Float;
};
typedef IMouseCapabilities = {
	var horizontalWheelPresent : Float;
	var mousePresent : Float;
	var numberOfButtons : Float;
	var swapButtons : Float;
	var verticalWheelPresent : Float;
};
typedef IKeyboardCapabilities = {
	var keyboardPresent : Float;
};
typedef ITouchCapabilities = {
	var contacts : Float;
	var touchPresent : Float;
};
typedef IPointerDeviceStatics = {
	function getPointerDevice(pointerId:Float):Windows.Devices.Input.PointerDevice;
	function getPointerDevices():Windows.Foundation.Collections.IVectorView<Windows.Devices.Input.PointerDevice>;
};
extern class PointerDevice {
	var isIntegrated : Bool;
	var maxContacts : Float;
	var physicalDeviceRect : Windows.Foundation.Rect;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var screenRect : Windows.Foundation.Rect;
	var supportedUsages : Windows.Foundation.Collections.IVectorView<Windows.Devices.Input.PointerDeviceUsage>;
	static function getPointerDevice(pointerId:Float):Windows.Devices.Input.PointerDevice;
	static function getPointerDevices():Windows.Foundation.Collections.IVectorView<Windows.Devices.Input.PointerDevice>;
}
typedef IPointerDevice = {
	var isIntegrated : Bool;
	var maxContacts : Float;
	var physicalDeviceRect : Windows.Foundation.Rect;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var screenRect : Windows.Foundation.Rect;
	var supportedUsages : Windows.Foundation.Collections.IVectorView<Windows.Devices.Input.PointerDeviceUsage>;
};
typedef IMouseEventArgs = {
	var mouseDelta : Windows.Devices.Input.MouseDelta;
};
typedef IMouseDevice = {
	var onmousemoved : Dynamic;
};
extern class MouseDevice {
	var onmousemoved : Dynamic;
	static function getForCurrentView():Windows.Devices.Input.MouseDevice;
}
extern class MouseEventArgs {
	var mouseDelta : Windows.Devices.Input.MouseDelta;
}
typedef IMouseDeviceStatics = {
	function getForCurrentView():Windows.Devices.Input.MouseDevice;
};
extern class MouseCapabilities {
	var horizontalWheelPresent : Float;
	var mousePresent : Float;
	var numberOfButtons : Float;
	var swapButtons : Float;
	var verticalWheelPresent : Float;
}
extern class KeyboardCapabilities {
	var keyboardPresent : Float;
}
extern class TouchCapabilities {
	var contacts : Float;
	var touchPresent : Float;
}
@:enum abstract EdgeGestureKind(Int) {
	var touch = 0;
	var keyboard = 1;
	var mouse = 2;
}
typedef IEdgeGestureEventArgs = {
	var kind : Windows.UI.Input.EdgeGestureKind;
};
extern class EdgeGestureEventArgs {
	var kind : Windows.UI.Input.EdgeGestureKind;
}
typedef IEdgeGestureStatics = {
	function getForCurrentView():Windows.UI.Input.EdgeGesture;
};
extern class EdgeGesture {
	var onstarting : Dynamic;
	var oncompleted : Dynamic;
	var oncanceled : Dynamic;
	static function getForCurrentView():Windows.UI.Input.EdgeGesture;
}
typedef IEdgeGesture = {
	var onstarting : Dynamic;
	var oncompleted : Dynamic;
	var oncanceled : Dynamic;
};
@:enum abstract HoldingState(Int) {
	var started = 0;
	var completed = 1;
	var canceled = 2;
}
@:enum abstract DraggingState(Int) {
	var started = 0;
	var continuing = 1;
	var completed = 2;
}
@:enum abstract CrossSlidingState(Int) {
	var started = 0;
	var dragging = 1;
	var selecting = 2;
	var selectSpeedBumping = 3;
	var speedBumping = 4;
	var rearranging = 5;
	var completed = 6;
}
@:enum abstract GestureSettings(Int) {
	var none = 0;
	var tap = 1;
	var doubleTap = 2;
	var hold = 3;
	var holdWithMouse = 4;
	var rightTap = 5;
	var drag = 6;
	var manipulationTranslateX = 7;
	var manipulationTranslateY = 8;
	var manipulationTranslateRailsX = 9;
	var manipulationTranslateRailsY = 10;
	var manipulationRotate = 11;
	var manipulationScale = 12;
	var manipulationTranslateInertia = 13;
	var manipulationRotateInertia = 14;
	var manipulationScaleInertia = 15;
	var crossSlide = 16;
}
typedef ManipulationDelta = {
	var translation : Windows.Foundation.Point;
	var scale : Float;
	var rotation : Float;
	var expansion : Float;
};
typedef ManipulationVelocities = {
	var linear : Windows.Foundation.Point;
	var angular : Float;
	var expansion : Float;
};
typedef CrossSlideThresholds = {
	var selectionStart : Float;
	var speedBumpStart : Float;
	var speedBumpEnd : Float;
	var rearrangeStart : Float;
};
typedef ITappedEventArgs = {
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
	var tapCount : Float;
};
typedef IRightTappedEventArgs = {
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
};
typedef IHoldingEventArgs = {
	var holdingState : Windows.UI.Input.HoldingState;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
};
typedef IDraggingEventArgs = {
	var draggingState : Windows.UI.Input.DraggingState;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
};
typedef IManipulationStartedEventArgs = {
	var cumulative : Windows.UI.Input.ManipulationDelta;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
};
typedef IManipulationUpdatedEventArgs = {
	var cumulative : Windows.UI.Input.ManipulationDelta;
	var delta : Windows.UI.Input.ManipulationDelta;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
	var velocities : Windows.UI.Input.ManipulationVelocities;
};
typedef IManipulationInertiaStartingEventArgs = {
	var cumulative : Windows.UI.Input.ManipulationDelta;
	var delta : Windows.UI.Input.ManipulationDelta;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
	var velocities : Windows.UI.Input.ManipulationVelocities;
};
typedef IManipulationCompletedEventArgs = {
	var cumulative : Windows.UI.Input.ManipulationDelta;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
	var velocities : Windows.UI.Input.ManipulationVelocities;
};
typedef ICrossSlidingEventArgs = {
	var crossSlidingState : Windows.UI.Input.CrossSlidingState;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
};
typedef IMouseWheelParameters = {
	var charTranslation : Windows.Foundation.Point;
	var deltaRotationAngle : Float;
	var deltaScale : Float;
	var pageTranslation : Windows.Foundation.Point;
};
typedef IGestureRecognizer = {
	var autoProcessInertia : Bool;
	var crossSlideExact : Bool;
	var crossSlideHorizontally : Bool;
	var crossSlideThresholds : Windows.UI.Input.CrossSlideThresholds;
	var gestureSettings : Windows.UI.Input.GestureSettings;
	var inertiaExpansion : Float;
	var inertiaExpansionDeceleration : Float;
	var inertiaRotationAngle : Float;
	var inertiaRotationDeceleration : Float;
	var inertiaTranslationDeceleration : Float;
	var inertiaTranslationDisplacement : Float;
	var isActive : Bool;
	var isInertial : Bool;
	var manipulationExact : Bool;
	var mouseWheelParameters : Windows.UI.Input.MouseWheelParameters;
	var pivotCenter : Windows.Foundation.Point;
	var pivotRadius : Float;
	var showGestureFeedback : Bool;
	function canBeDoubleTap(value:Windows.UI.Input.PointerPoint):Bool;
	function processDownEvent(value:Windows.UI.Input.PointerPoint):Void;
	function processMoveEvents(value:Windows.Foundation.Collections.IVector<Windows.UI.Input.PointerPoint>):Void;
	function processUpEvent(value:Windows.UI.Input.PointerPoint):Void;
	function processMouseWheelEvent(value:Windows.UI.Input.PointerPoint, isShiftKeyDown:Bool, isControlKeyDown:Bool):Void;
	function processInertia():Void;
	function completeGesture():Void;
	var ontapped : Dynamic;
	var onrighttapped : Dynamic;
	var onholding : Dynamic;
	var ondragging : Dynamic;
	var onmanipulationstarted : Dynamic;
	var onmanipulationupdated : Dynamic;
	var onmanipulationinertiastarting : Dynamic;
	var onmanipulationcompleted : Dynamic;
	var oncrosssliding : Dynamic;
};
extern class MouseWheelParameters {
	var charTranslation : Windows.Foundation.Point;
	var deltaRotationAngle : Float;
	var deltaScale : Float;
	var pageTranslation : Windows.Foundation.Point;
}
extern class GestureRecognizer {
	var autoProcessInertia : Bool;
	var crossSlideExact : Bool;
	var crossSlideHorizontally : Bool;
	var crossSlideThresholds : Windows.UI.Input.CrossSlideThresholds;
	var gestureSettings : Windows.UI.Input.GestureSettings;
	var inertiaExpansion : Float;
	var inertiaExpansionDeceleration : Float;
	var inertiaRotationAngle : Float;
	var inertiaRotationDeceleration : Float;
	var inertiaTranslationDeceleration : Float;
	var inertiaTranslationDisplacement : Float;
	var isActive : Bool;
	var isInertial : Bool;
	var manipulationExact : Bool;
	var mouseWheelParameters : Windows.UI.Input.MouseWheelParameters;
	var pivotCenter : Windows.Foundation.Point;
	var pivotRadius : Float;
	var showGestureFeedback : Bool;
	function canBeDoubleTap(value:Windows.UI.Input.PointerPoint):Bool;
	function processDownEvent(value:Windows.UI.Input.PointerPoint):Void;
	function processMoveEvents(value:Windows.Foundation.Collections.IVector<Windows.UI.Input.PointerPoint>):Void;
	function processUpEvent(value:Windows.UI.Input.PointerPoint):Void;
	function processMouseWheelEvent(value:Windows.UI.Input.PointerPoint, isShiftKeyDown:Bool, isControlKeyDown:Bool):Void;
	function processInertia():Void;
	function completeGesture():Void;
	var ontapped : Dynamic;
	var onrighttapped : Dynamic;
	var onholding : Dynamic;
	var ondragging : Dynamic;
	var onmanipulationstarted : Dynamic;
	var onmanipulationupdated : Dynamic;
	var onmanipulationinertiastarting : Dynamic;
	var onmanipulationcompleted : Dynamic;
	var oncrosssliding : Dynamic;
}
extern class TappedEventArgs {
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
	var tapCount : Float;
}
extern class RightTappedEventArgs {
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
}
extern class HoldingEventArgs {
	var holdingState : Windows.UI.Input.HoldingState;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
}
extern class DraggingEventArgs {
	var draggingState : Windows.UI.Input.DraggingState;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
}
extern class ManipulationStartedEventArgs {
	var cumulative : Windows.UI.Input.ManipulationDelta;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
}
extern class ManipulationUpdatedEventArgs {
	var cumulative : Windows.UI.Input.ManipulationDelta;
	var delta : Windows.UI.Input.ManipulationDelta;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
	var velocities : Windows.UI.Input.ManipulationVelocities;
}
extern class ManipulationInertiaStartingEventArgs {
	var cumulative : Windows.UI.Input.ManipulationDelta;
	var delta : Windows.UI.Input.ManipulationDelta;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
	var velocities : Windows.UI.Input.ManipulationVelocities;
}
extern class ManipulationCompletedEventArgs {
	var cumulative : Windows.UI.Input.ManipulationDelta;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
	var velocities : Windows.UI.Input.ManipulationVelocities;
}
extern class CrossSlidingEventArgs {
	var crossSlidingState : Windows.UI.Input.CrossSlidingState;
	var pointerDeviceType : Windows.Devices.Input.PointerDeviceType;
	var position : Windows.Foundation.Point;
}
typedef IPointerPointStatics = {
	@:overload(function(pointerId:Float, transform:Windows.UI.Input.IPointerPointTransform):Windows.UI.Input.PointerPoint { })
	function getCurrentPoint(pointerId:Float):Windows.UI.Input.PointerPoint;
	@:overload(function(pointerId:Float, transform:Windows.UI.Input.IPointerPointTransform):Windows.Foundation.Collections.IVector<Windows.UI.Input.PointerPoint> { })
	function getIntermediatePoints(pointerId:Float):Windows.Foundation.Collections.IVector<Windows.UI.Input.PointerPoint>;
};
extern class PointerPoint {
	var frameId : Float;
	var isInContact : Bool;
	var pointerDevice : Windows.Devices.Input.PointerDevice;
	var pointerId : Float;
	var position : Windows.Foundation.Point;
	var properties : Windows.UI.Input.PointerPointProperties;
	var rawPosition : Windows.Foundation.Point;
	var timestamp : Float;
	@:overload(function(pointerId:Float, transform:Windows.UI.Input.IPointerPointTransform):Windows.UI.Input.PointerPoint { })
	static function getCurrentPoint(pointerId:Float):Windows.UI.Input.PointerPoint;
	@:overload(function(pointerId:Float, transform:Windows.UI.Input.IPointerPointTransform):Windows.Foundation.Collections.IVector<Windows.UI.Input.PointerPoint> { })
	static function getIntermediatePoints(pointerId:Float):Windows.Foundation.Collections.IVector<Windows.UI.Input.PointerPoint>;
}
typedef IPointerPointTransform = {
	var inverse : Windows.UI.Input.IPointerPointTransform;
	function tryTransform(inPoint:Windows.Foundation.Point):{ var outPoint : Windows.Foundation.Point; var returnValue : Bool; };
	function transformBounds(rect:Windows.Foundation.Rect):Windows.Foundation.Rect;
};
typedef IPointerPoint = {
	var frameId : Float;
	var isInContact : Bool;
	var pointerDevice : Windows.Devices.Input.PointerDevice;
	var pointerId : Float;
	var position : Windows.Foundation.Point;
	var properties : Windows.UI.Input.PointerPointProperties;
	var rawPosition : Windows.Foundation.Point;
	var timestamp : Float;
};
extern class PointerPointProperties {
	var contactRect : Windows.Foundation.Rect;
	var contactRectRaw : Windows.Foundation.Rect;
	var isBarrelButtonPressed : Bool;
	var isCanceled : Bool;
	var isEraser : Bool;
	var isHorizontalMouseWheel : Bool;
	var isInRange : Bool;
	var isInverted : Bool;
	var isLeftButtonPressed : Bool;
	var isMiddleButtonPressed : Bool;
	var isPrimary : Bool;
	var isRightButtonPressed : Bool;
	var isXButton1Pressed : Bool;
	var isXButton2Pressed : Bool;
	var mouseWheelDelta : Float;
	var orientation : Float;
	var pointerUpdateKind : Windows.UI.Input.PointerUpdateKind;
	var pressure : Float;
	var touchConfidence : Bool;
	var twist : Float;
	var xTilt : Float;
	var yTilt : Float;
	function hasUsage(usagePage:Float, usageId:Float):Bool;
	function getUsageValue(usagePage:Float, usageId:Float):Float;
}
@:enum abstract PointerUpdateKind(Int) {
	var other = 0;
	var leftButtonPressed = 1;
	var leftButtonReleased = 2;
	var rightButtonPressed = 3;
	var rightButtonReleased = 4;
	var middleButtonPressed = 5;
	var middleButtonReleased = 6;
	var xButton1Pressed = 7;
	var xButton1Released = 8;
	var xButton2Pressed = 9;
	var xButton2Released = 10;
}
typedef IPointerPointProperties = {
	var contactRect : Windows.Foundation.Rect;
	var contactRectRaw : Windows.Foundation.Rect;
	var isBarrelButtonPressed : Bool;
	var isCanceled : Bool;
	var isEraser : Bool;
	var isHorizontalMouseWheel : Bool;
	var isInRange : Bool;
	var isInverted : Bool;
	var isLeftButtonPressed : Bool;
	var isMiddleButtonPressed : Bool;
	var isPrimary : Bool;
	var isRightButtonPressed : Bool;
	var isXButton1Pressed : Bool;
	var isXButton2Pressed : Bool;
	var mouseWheelDelta : Float;
	var orientation : Float;
	var pointerUpdateKind : Windows.UI.Input.PointerUpdateKind;
	var pressure : Float;
	var touchConfidence : Bool;
	var twist : Float;
	var xTilt : Float;
	var yTilt : Float;
	function hasUsage(usagePage:Float, usageId:Float):Bool;
	function getUsageValue(usagePage:Float, usageId:Float):Float;
};
typedef IPointerVisualizationSettings = {
	var isBarrelButtonFeedbackEnabled : Bool;
	var isContactFeedbackEnabled : Bool;
};
typedef IPointerVisualizationSettingsStatics = {
	function getForCurrentView():Windows.UI.Input.PointerVisualizationSettings;
};
extern class PointerVisualizationSettings {
	var isBarrelButtonFeedbackEnabled : Bool;
	var isContactFeedbackEnabled : Bool;
	static function getForCurrentView():Windows.UI.Input.PointerVisualizationSettings;
}
