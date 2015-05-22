@:enum abstract ApplicationViewState(Int) {
	var fullScreenLandscape = 0;
	var filled = 1;
	var snapped = 2;
	var fullScreenPortrait = 3;
}
extern class ApplicationView {
	static function getForCurrentView():ApplicationView;
	static function tryUnsnap():Bool;
	static var value : Windows.UI.ViewManagement.ApplicationViewState;
	static var terminateAppOnFinalViewClose : Bool;
	var orientation : ApplicationViewOrientation;
	var title : String;
	var isScreenCaptureEnabled : Bool;
	var isOnLockScreen : Bool;
	var isFullScreen : Bool;
	var id : Float;
	var adjacentToRightDisplayEdge : Bool;
	var adjacentToLeftDisplayEdge : Float;
}
@:enum abstract ApplicationViewOrientation(Int) {
	var landscape = 0;
	var portrait = 1;
}
typedef IInputPaneVisibilityEventArgs = {
	var ensuredFocusedElementInView : Bool;
	var occludedRect : Windows.Foundation.Rect;
};
extern class InputPaneVisibilityEventArgs {
	var ensuredFocusedElementInView : Bool;
	var occludedRect : Windows.Foundation.Rect;
}
typedef IInputPane = {
	var occludedRect : Windows.Foundation.Rect;
	var onshowing : Dynamic;
	var onhiding : Dynamic;
};
extern class InputPane {
	var occludedRect : Windows.Foundation.Rect;
	var onshowing : Dynamic;
	var onhiding : Dynamic;
	static function getForCurrentView():Windows.UI.ViewManagement.InputPane;
}
typedef IInputPaneStatics = {
	function getForCurrentView():Windows.UI.ViewManagement.InputPane;
};
@:enum abstract HandPreference(Int) {
	var leftHanded = 0;
	var rightHanded = 1;
}
@:enum abstract UIElementType(Int) {
	var activeCaption = 0;
	var background = 1;
	var buttonFace = 2;
	var buttonText = 3;
	var captionText = 4;
	var grayText = 5;
	var highlight = 6;
	var highlightText = 7;
	var hotlight = 8;
	var inactiveCaption = 9;
	var inactiveCaptionText = 10;
	var window = 11;
	var windowText = 12;
}
typedef IAccessibilitySettings = {
	var highContrast : Bool;
	var highContrastScheme : String;
	var onhighcontrastchanged : Dynamic;
};
extern class AccessibilitySettings {
	var highContrast : Bool;
	var highContrastScheme : String;
	var onhighcontrastchanged : Dynamic;
}
typedef IUISettings = {
	var animationsEnabled : Bool;
	var caretBlinkRate : Float;
	var caretBrowsingEnabled : Bool;
	var caretWidth : Float;
	var cursorSize : Windows.Foundation.Size;
	var doubleClickTime : Float;
	var handPreference : Windows.UI.ViewManagement.HandPreference;
	var messageDuration : Float;
	var mouseHoverTime : Float;
	var scrollBarArrowSize : Windows.Foundation.Size;
	var scrollBarSize : Windows.Foundation.Size;
	var scrollBarThumbBoxSize : Windows.Foundation.Size;
	function uIElementColor(desiredElement:Windows.UI.ViewManagement.UIElementType):Windows.UI.Color;
};
extern class UISettings {
	var animationsEnabled : Bool;
	var caretBlinkRate : Float;
	var caretBrowsingEnabled : Bool;
	var caretWidth : Float;
	var cursorSize : Windows.Foundation.Size;
	var doubleClickTime : Float;
	var handPreference : Windows.UI.ViewManagement.HandPreference;
	var messageDuration : Float;
	var mouseHoverTime : Float;
	var scrollBarArrowSize : Windows.Foundation.Size;
	var scrollBarSize : Windows.Foundation.Size;
	var scrollBarThumbBoxSize : Windows.Foundation.Size;
	function uIElementColor(desiredElement:Windows.UI.ViewManagement.UIElementType):Windows.UI.Color;
}
