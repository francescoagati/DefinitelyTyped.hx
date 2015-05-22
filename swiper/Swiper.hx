typedef SwiperOptions = {
	@:optional
	var speed : Float;
	@:optional
	var autoplay : Float;
	@:optional
	var mode : String;
	@:optional
	var loop : Bool;
	@:optional
	var loopAdditionalSlides : Float;
	@:optional
	var slidesPerView : Dynamic;
	@:optional
	var slidesPerGroup : Float;
	@:optional
	var calculateHeight : Bool;
	@:optional
	var updateOnImagesReady : Bool;
	@:optional
	var releaseFormElements : Bool;
	@:optional
	var watchActiveIndex : Bool;
	@:optional
	var visibilityFullFit : Bool;
	@:optional
	var autoResize : Bool;
	@:optional
	var resizeReInit : Bool;
	@:optional
	var DOMAnimation : Bool;
	@:optional
	var resistance : Dynamic;
	@:optional
	var noSwiping : Bool;
	@:optional
	var preventLinks : Bool;
	@:optional
	var initialSlide : Float;
	@:optional
	var useCSS3Transforms : Bool;
	@:optional
	var freeMode : Bool;
	@:optional
	var freeModeFluid : Bool;
	@:optional
	var scrollContainer : Bool;
	@:optional
	var momentumRatio : Float;
	@:optional
	var momentumBounce : Bool;
	@:optional
	var momentumBounceRatio : Float;
	@:optional
	var centeredSlides : Bool;
	@:optional
	var offsetPxBefore : Float;
	@:optional
	var offsetPxAfter : Float;
	@:optional
	var offsetSlidesBefore : Float;
	@:optional
	var offsetSlidesAfter : Float;
	@:optional
	var touchRatio : Float;
	@:optional
	var simulateTouch : Bool;
	@:optional
	var onlyExternal : Bool;
	@:optional
	var followFinger : Bool;
	@:optional
	var grabCursor : Bool;
	@:optional
	var shortSwipes : Bool;
	@:optional
	var moveStartThreshold : Float;
	@:optional
	var keyboardControl : Bool;
	@:optional
	var mousewheelControl : Bool;
	@:optional
	var pagination : Dynamic;
	@:optional
	var paginationClickable : Bool;
	@:optional
	var paginationAsRange : Bool;
	@:optional
	var createPagination : Bool;
	@:optional
	var wrapperClass : String;
	@:optional
	var slideClass : String;
	@:optional
	var slideActiveClass : String;
	@:optional
	var slideVisibleClass : String;
	@:optional
	var slideElement : String;
	@:optional
	var noSwipingClass : String;
	@:optional
	var paginationElement : String;
	@:optional
	var paginationElementClass : String;
	@:optional
	var paginationActiveClass : String;
	@:optional
	var paginationVisibleClass : String;
	@:optional
	var queueStartCallbacks : Bool;
	@:optional
	var queueEndCallbacks : Bool;
	@:optional
	var onTouchStart : Swiper -> Void;
	@:optional
	var onTouchMove : Swiper -> Void;
	@:optional
	var onTouchEnd : Swiper -> Void;
	@:optional
	var onSlideReset : Swiper -> Void;
	@:optional
	var onSlideChangeStart : Swiper -> Void;
	@:optional
	var onSlideChangeEnd : Swiper -> Void;
	@:optional
	var onSlideClick : Swiper -> Void;
	@:optional
	var onSlideTouch : Swiper -> Void;
	@:optional
	var onImagesReady : Swiper -> Void;
	@:optional
	var onMomentumBounce : Swiper -> Void;
	@:optional
	var onResistanceBefore : Swiper -> Dynamic -> Void;
	@:optional
	var onResistanceAfter : Swiper -> Dynamic -> Void;
	@:optional
	var loader : { @:optional
	var slides : Array<Dynamic>; @:optional
	var slidesHTMLType : String; @:optional
	var surroundGroups : Float; @:optional
	var logic : String; @:optional
	var loadAllSlides : Bool; };
	@:optional
	var scrollbar : SwiperScrollbarOptions;
};
typedef SwiperScrollbarOptions = {
	var container : String;
	@:optional
	var draggable : Bool;
	@:optional
	var hide : Bool;
	@:optional
	var snapOnRelease : Bool;
};
extern class SwiperSlide {
	function append():SwiperSlide;
	function clone():SwiperSlide;
	function getWidth():Float;
	function getHeight():Float;
	function getOffset():{ var top : Float; var left : Float; };
	function insertAfter(index:Float):SwiperSlide;
	function prepend():SwiperSlide;
	function remove():Void;
}
extern class Swiper {
	@:overload(function(container:Element, ?options:SwiperOptions):Void { })
	function new(container:String, ?options:SwiperOptions):Void;
	var width : Float;
	var height : Float;
	var params : Dynamic;
	var positions : Dynamic;
	var support : { var touch : Bool; var transforms : Bool; var transforms3d : Bool; var transitions : Bool; };
	var browser : { var ie8 : Bool; var ie10 : Bool; };
	var activeIndex : Float;
	var activeLoopIndex : Float;
	var activeLoaderIndex : Float;
	var previousIndex : Float;
	function swipeNext(?internal:Bool):Bool;
	function swipePrev(?internal:Bool):Bool;
	function swipeReset():Bool;
	function swipeTo(index:Float, ?speed:Float, ?runCallbacks:Bool):Bool;
	function activeSlide():SwiperSlide;
	function updateActiveSlide(index:Float):Void;
	var touches : Dynamic;
	var isTouched : Bool;
	var clickedSlideIndex : Float;
	var clickedSlide : SwiperSlide;
	function wrapperTransitionEnd(callback:Void -> Void, permanent:Bool):Void;
	function destroy(?removeResizeEvent:Bool):Void;
	function reInit(?forceCalcSlides:Bool):Void;
	function resizeFix(?reInit:Bool):Void;
	var autoplay : Bool;
	function startAutoplay():Void;
	function stopAutoplay():Void;
	function getWrapperTranslate(axis:String):Float;
	function setWrapperTranslate(x:Float, y:Float, z:Float):Void;
	function setWrapperTransition(duration:Dynamic):Void;
	var slides : Array<SwiperSlide>;
	function createSlide(html:String, ?slideClassList:String, ?element:String):SwiperSlide;
	@:overload(function(slideInstance:HTMLElement):SwiperSlide { })
	function appendSlide(html:String, ?slideClassList:String, ?element:String):SwiperSlide;
	@:overload(function(slideInstance:HTMLElement):SwiperSlide { })
	function prependSlide(html:String, ?slideClassList:String, ?element:String):SwiperSlide;
	@:overload(function(index:Float, slideInstance:HTMLElement):SwiperSlide { })
	function insertSlideAfter(index:Float, html:String, ?slideClassList:String, ?element:String):SwiperSlide;
	function removeSlide(index:Float):Bool;
	function removeLastSlide():Bool;
	function removeAllSlides():Void;
	function getSlide(index:Float):SwiperSlide;
	function getLastSlide():SwiperSlide;
	function getFirstSlide():SwiperSlide;
}
