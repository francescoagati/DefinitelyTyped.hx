typedef SliderObject = {
	var container : Dynamic;
	var slides : Dynamic;
	var count : Float;
	var currentSlide : Float;
	var animatingTo : Float;
	var animating : Bool;
	var atEnd : Bool;
	var manualPause : Bool;
	var controlNav : Dynamic;
	var directionNav : Dynamic;
	var controlsContainer : Dynamic;
	var manualControls : Dynamic;
	function flexAnimate(target:Dynamic, ?pause:Dynamic):Dynamic;
	function pause():Dynamic;
	function resume():Dynamic;
	function canAdvance(target:Dynamic):Dynamic;
	function getTarget(dir:Dynamic):Dynamic;
};
typedef FlexSliderOptions = {
	@:optional
	var namespace : String;
	@:optional
	var selector : String;
	@:optional
	var animation : String;
	@:optional
	var easing : String;
	@:optional
	var direction : String;
	@:optional
	var reverse : Bool;
	@:optional
	var animationLoop : Bool;
	@:optional
	var smoothHeight : Bool;
	@:optional
	var startAt : Float;
	@:optional
	var slideshow : Bool;
	@:optional
	var slideshowSpeed : Float;
	@:optional
	var animationSpeed : Float;
	@:optional
	var initDelay : Float;
	@:optional
	var randomize : Bool;
	@:optional
	var pauseOnAction : Bool;
	@:optional
	var pauseOnHover : Bool;
	@:optional
	var useCSS : Bool;
	@:optional
	var touch : Bool;
	@:optional
	var video : Bool;
	@:optional
	var controlNav : Dynamic;
	@:optional
	var directionNav : Bool;
	@:optional
	var prevText : String;
	@:optional
	var nextText : String;
	@:optional
	var keyboard : Bool;
	@:optional
	var multipleKeyboard : Bool;
	@:optional
	var mousewheel : Bool;
	@:optional
	var pausePlay : Bool;
	@:optional
	var pauseText : String;
	@:optional
	var playText : String;
	@:optional
	var controlsContainer : String;
	@:optional
	var manualControls : String;
	@:optional
	var sync : String;
	@:optional
	var asNavFor : String;
	@:optional
	var itemWidth : Float;
	@:optional
	var itemMargin : Float;
	@:optional
	var minItems : Float;
	@:optional
	var maxItems : Float;
	@:optional
	var move : Float;
	@:optional
	var start : SliderObject -> Dynamic;
	@:optional
	var before : SliderObject -> Dynamic;
	@:optional
	var after : Void -> Dynamic;
	@:optional
	var end : Void -> Dynamic;
	@:optional
	var added : Void -> Dynamic;
	@:optional
	var removed : Void -> Dynamic;
};
typedef JQuery = {
	function flexslider(?options:FlexSliderOptions):Dynamic;
};
