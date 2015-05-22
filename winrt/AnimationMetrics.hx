@:enum abstract PropertyAnimationType(Int) {
	var scale = 0;
	var translation = 1;
	var opacity = 2;
}
typedef IPropertyAnimation = {
	var control1 : Windows.Foundation.Point;
	var control2 : Windows.Foundation.Point;
	var delay : Float;
	var duration : Float;
	var type : Windows.UI.Core.AnimationMetrics.PropertyAnimationType;
};
typedef IScaleAnimation = {
	>Windows.UI.Core.AnimationMetrics.IPropertyAnimation,
	var finalScaleX : Float;
	var finalScaleY : Float;
	var initialScaleX : Float;
	var initialScaleY : Float;
	var normalizedOrigin : Windows.Foundation.Point;
};
typedef IOpacityAnimation = {
	>Windows.UI.Core.AnimationMetrics.IPropertyAnimation,
	var finalOpacity : Float;
	var initialOpacity : Float;
};
@:enum abstract AnimationEffect(Int) {
	var expand = 0;
	var collapse = 1;
	var reposition = 2;
	var fadeIn = 3;
	var fadeOut = 4;
	var addToList = 5;
	var deleteFromList = 6;
	var addToGrid = 7;
	var deleteFromGrid = 8;
	var addToSearchGrid = 9;
	var deleteFromSearchGrid = 10;
	var addToSearchList = 11;
	var deleteFromSearchList = 12;
	var showEdgeUI = 13;
	var showPanel = 14;
	var hideEdgeUI = 15;
	var hidePanel = 16;
	var showPopup = 17;
	var hidePopup = 18;
	var pointerDown = 19;
	var pointerUp = 20;
	var dragSourceStart = 21;
	var dragSourceEnd = 22;
	var transitionContent = 23;
	var reveal = 24;
	var hide = 25;
	var dragBetweenEnter = 26;
	var dragBetweenLeave = 27;
	var swipeSelect = 28;
	var swipeDeselect = 29;
	var swipeReveal = 30;
	var enterPage = 31;
	var transitionPage = 32;
	var crossFade = 33;
	var peek = 34;
	var updateBadge = 35;
}
@:enum abstract AnimationEffectTarget(Int) {
	var primary = 0;
	var added = 1;
	var affected = 2;
	var background = 3;
	var content = 4;
	var deleted = 5;
	var deselected = 6;
	var dragSource = 7;
	var hidden = 8;
	var incoming = 9;
	var outgoing = 10;
	var outline = 11;
	var remaining = 12;
	var revealed = 13;
	var rowIn = 14;
	var rowOut = 15;
	var selected = 16;
	var selection = 17;
	var shown = 18;
	var tapped = 19;
}
typedef IAnimationDescription = {
	var animations : Windows.Foundation.Collections.IVectorView<Windows.UI.Core.AnimationMetrics.IPropertyAnimation>;
	var delayLimit : Float;
	var staggerDelay : Float;
	var staggerDelayFactor : Float;
	var zOrder : Float;
};
typedef IAnimationDescriptionFactory = {
	function createInstance(effect:Windows.UI.Core.AnimationMetrics.AnimationEffect, target:Windows.UI.Core.AnimationMetrics.AnimationEffectTarget):Windows.UI.Core.AnimationMetrics.AnimationDescription;
};
extern class AnimationDescription {
	function new(effect:Windows.UI.Core.AnimationMetrics.AnimationEffect, target:Windows.UI.Core.AnimationMetrics.AnimationEffectTarget):Void;
	var animations : Windows.Foundation.Collections.IVectorView<Windows.UI.Core.AnimationMetrics.IPropertyAnimation>;
	var delayLimit : Float;
	var staggerDelay : Float;
	var staggerDelayFactor : Float;
	var zOrder : Float;
}
extern class PropertyAnimation {
	var control1 : Windows.Foundation.Point;
	var control2 : Windows.Foundation.Point;
	var delay : Float;
	var duration : Float;
	var type : Windows.UI.Core.AnimationMetrics.PropertyAnimationType;
}
extern class ScaleAnimation {
	var finalScaleX : Float;
	var finalScaleY : Float;
	var initialScaleX : Float;
	var initialScaleY : Float;
	var normalizedOrigin : Windows.Foundation.Point;
	var control1 : Windows.Foundation.Point;
	var control2 : Windows.Foundation.Point;
	var delay : Float;
	var duration : Float;
	var type : Windows.UI.Core.AnimationMetrics.PropertyAnimationType;
}
extern class TranslationAnimation {
	var control1 : Windows.Foundation.Point;
	var control2 : Windows.Foundation.Point;
	var delay : Float;
	var duration : Float;
	var type : Windows.UI.Core.AnimationMetrics.PropertyAnimationType;
}
extern class OpacityAnimation {
	var finalOpacity : Float;
	var initialOpacity : Float;
	var control1 : Windows.Foundation.Point;
	var control2 : Windows.Foundation.Point;
	var delay : Float;
	var duration : Float;
	var type : Windows.UI.Core.AnimationMetrics.PropertyAnimationType;
}
