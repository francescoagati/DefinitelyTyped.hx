typedef JScrollPaneSettings = {
	@:optional
	var showArrows : Bool;
	@:optional
	var maintainPosition : Bool;
	@:optional
	var stickToBottom : Bool;
	@:optional
	var stickToRight : Bool;
	@:optional
	var autoReinitialise : Bool;
	@:optional
	var autoReinitialiseDelay : Float;
	@:optional
	var verticalDragMinHeight : Float;
	@:optional
	var verticalDragMaxHeight : Float;
	@:optional
	var horizontalDragMinWidth : Float;
	@:optional
	var horizontalDragMaxWidth : Float;
	@:optional
	var contentWidth : Float;
	@:optional
	var animateScroll : Bool;
	@:optional
	var animateDuration : Float;
	@:optional
	var animateEase : String;
	@:optional
	var hijackInternalLinks : Bool;
	@:optional
	var verticalGutter : Float;
	@:optional
	var horizontalGutter : Float;
	@:optional
	var mouseWheelSpeed : Float;
	@:optional
	var arrowButtonSpeed : Float;
	@:optional
	var arrowRepeatFreq : Float;
	@:optional
	var arrowScrollOnHover : Bool;
	@:optional
	var verticalArrowPositions : String;
	@:optional
	var horizontalArrowPositions : String;
	@:optional
	var enableKeyboardNavigation : Bool;
	@:optional
	var hideFocus : Bool;
	@:optional
	var clickOnTrack : Bool;
	@:optional
	var trackClickSpeed : Float;
	@:optional
	var trackClickRepeatFreq : Float;
};
typedef JScrollPaneApi = {
	function reinitialise(?options:JScrollPaneSettings):Void;
	@:overload(function(ele:String, ?stickToTop:Bool, ?animate:Bool):Void { })
	@:overload(function(ele:HTMLElement, ?stickToTop:Bool, ?animate:Bool):Void { })
	function scrollToElement(ele:JQuery, ?stickToTop:Bool, ?animate:Bool):Void;
	function scrollTo(destX:Float, destY:Float, ?animate:Bool):Void;
	function scrollToX(destX:Float, ?animate:Bool):Void;
	function scrollToY(destY:Float, ?animate:Bool):Void;
	function scrollToPercentX(destPercentX:Float, ?animate:Bool):Void;
	function scrollToPercentY(destPercentY:Float, ?animate:Bool):Void;
	function scrollBy(deltaX:Float, deltaY:Float, ?animate:Bool):Void;
	function scrollByX(deltaX:Float, ?animate:Bool):Void;
	function scrollByY(deltaY:Float, ?animate:Bool):Void;
	function positionDragX(x:Float, ?animate:Bool):Void;
	function positionDragY(y:Float, ?animate:Bool):Void;
	function animate(ele:JQuery, prop:String, value:Dynamic, stepCallback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	function getContentPositionX():Float;
	function getContentPositionY():Float;
	function getContentWidth():Float;
	function getContentHeight():Float;
	function getIsScrollableH():Bool;
	function getPercentScrolledX():Float;
	function getPercentScrolledY():Float;
	function getIsScrollableV():Bool;
	function getContentPane():JQuery;
	function scrollToBottom(?animate:Bool):Void;
	function hijackInternalLinks():Void;
	function destroy():Void;
};
typedef JQuery = {
	function jScrollPane(?options:JScrollPaneSettings):JQuery;
};
