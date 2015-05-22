typedef RoyalSliderThumbsOptions = {
	@:optional
	var drag : Bool;
	@:optional
	var touch : Bool;
	@:optional
	var orientation : String;
	@:optional
	var arrows : Bool;
	@:optional
	var spacing : Float;
	@:optional
	var arrowsAutoHide : Bool;
	@:optional
	var autoCenter : Bool;
	@:optional
	var transitionSpeed : Float;
	@:optional
	var fitInViewport : Bool;
	@:optional
	var firstMargin : Bool;
	@:optional
	var arrowLeft : JQuery;
	@:optional
	var arrowRight : JQuery;
	@:optional
	var appendSpan : Bool;
};
typedef RoyalSliderFullscreenOptions = {
	@:optional
	var enabled : Bool;
	@:optional
	var keyboardNav : Bool;
	@:optional
	var buttonFS : Bool;
	@:optional
	var nativeFS : Bool;
};
typedef RoyalSliderDeeplinkingOptions = {
	@:optional
	var enabled : Bool;
	@:optional
	var change : Bool;
	@:optional
	var prefix : String;
};
typedef RoyalSliderAutoplayOptions = {
	@:optional
	var enabled : Bool;
	@:optional
	var stopAtAction : Bool;
	@:optional
	var pauseOnHover : Bool;
	@:optional
	var delay : Float;
};
typedef RoyalSliderVideoOptions = {
	@:optional
	var autoHideArrows : Bool;
	@:optional
	var autoHideControlNav : Bool;
	@:optional
	var autoHideBlocks : Bool;
	@:optional
	var youTubeCode : String;
	@:optional
	var vimeoCode : String;
};
typedef RoyalSliderBlockOptions = {
	@:optional
	var fadeEffect : Bool;
	@:optional
	var moveEffect : String;
	@:optional
	var moveOffset : Float;
	@:optional
	var speed : Float;
	@:optional
	var easing : String;
	@:optional
	var delay : Float;
};
typedef RoyalSliderVisibleOptions = {
	@:optional
	var enabled : Bool;
	@:optional
	var centerArea : Float;
	@:optional
	var center : Bool;
	@:optional
	var navigateByCenterClick : Bool;
	@:optional
	var breakpoint : Float;
	@:optional
	var breakpointCenterArea : Float;
};
typedef RoyalSliderOptions = {
	@:optional
	var autoScaleSlider : Bool;
	@:optional
	var autoScaleSliderWidth : Float;
	@:optional
	var autoScaleSliderHeight : Float;
	@:optional
	var imageScaleMode : String;
	@:optional
	var imageAlignCenter : Bool;
	@:optional
	var imageScalePadding : Float;
	@:optional
	var controlNavigation : String;
	@:optional
	var arrowsNav : Bool;
	@:optional
	var arrowsNavAutoHide : Bool;
	@:optional
	var arrowsNavHideOnTouch : Bool;
	@:optional
	var imgWidth : Float;
	@:optional
	var imgHeight : Float;
	@:optional
	var slidesSpacing : Float;
	@:optional
	var startSlideId : Float;
	@:optional
	var loop : Bool;
	@:optional
	var loopRewind : Bool;
	@:optional
	var randomizeSlides : Bool;
	@:optional
	var numImagesToPreload : Float;
	@:optional
	var usePreloader : Bool;
	@:optional
	var slidesOrientation : String;
	@:optional
	var transitionType : String;
	@:optional
	var transitionSpeed : Float;
	@:optional
	var easeInOut : String;
	@:optional
	var easeOut : String;
	@:optional
	var controlsInside : Bool;
	@:optional
	var navigateByClick : Bool;
	@:optional
	var sliderDrag : Bool;
	@:optional
	var sliderTouch : Bool;
	@:optional
	var keyboardNavEnabled : Bool;
	@:optional
	var fadeinLoadedSlide : Bool;
	@:optional
	var allowCSS3 : Bool;
	@:optional
	var globalCaption : Bool;
	@:optional
	var addActiveClass : Bool;
	@:optional
	var minSlideOffset : Float;
	@:optional
	var autoHeight : Bool;
	@:optional
	var slides : Element;
	@:optional
	var thumbs : RoyalSliderThumbsOptions;
	@:optional
	var fullscreen : RoyalSliderFullscreenOptions;
	@:optional
	var deeplinking : RoyalSliderDeeplinkingOptions;
	@:optional
	var autoplay : RoyalSliderAutoplayOptions;
	@:optional
	var video : RoyalSliderVideoOptions;
	@:optional
	var block : RoyalSliderBlockOptions;
	@:optional
	var visibleNearby : RoyalSliderVisibleOptions;
};
typedef RoyalSlider = {
	function goTo(id:Float):Void;
	function next():Void;
	function prev():Void;
	function destroy():Void;
	function appendSlide(element:JQuery, ?index:Float):Void;
	function removeSlide(?index:Float):Void;
	function updateSliderSize(?forceResize:Bool):Void;
	function setThumbsOrientation(orientation:String):Void;
	function updateThumbsSize():Void;
	function enterFullscreen():Void;
	function exitFullscreen():Void;
	function startAutoPlay():Void;
	function stopAutoPlay():Void;
	function toggleAutoPlay():Void;
	function toggleVideo():Void;
	function playVideo():Void;
	function stopVideo():Void;
	var currSlideId : Float;
	var currSlide : JQuery;
	var numSlides : Float;
	var isFullscreen : Bool;
	var nativeFS : Bool;
	var width : Float;
	var height : Float;
	var dragSuccess : Bool;
	var slides : Array<Dynamic>;
	var slidesJQ : Array<JQuery>;
	var st : RoyalSliderOptions;
	var ev : JQuery;
};
typedef JQuery = {
	function royalSlider(?options:RoyalSlider.RoyalSliderOptions):JQuery;
};
