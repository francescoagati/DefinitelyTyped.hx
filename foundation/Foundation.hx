typedef OrbitOptions = {
	@:optional
	var animation : String;
	@:optional
	var animationSpeed : Float;
	@:optional
	var timer : Bool;
	@:optional
	var resetTimerOnClick : Bool;
	@:optional
	var advanceSpeed : Float;
	@:optional
	var pauseOnHover : Bool;
	@:optional
	var startClockOnMouseOut : Bool;
	@:optional
	var startClockOnMouseOutAfter : Float;
	@:optional
	var directionalNav : Float;
	@:optional
	var captions : Float;
	@:optional
	var captionAnimation : String;
	@:optional
	var captionAnimationSpeed : Float;
	@:optional
	var bullets : Bool;
	@:optional
	var bulletThumbs : Bool;
	@:optional
	var bulletThumbLocation : String;
	@:optional
	var afterSlideChange : Void -> Void;
	@:optional
	var fluid : Bool;
};
typedef RevealOptions = {
	@:optional
	var animation : String;
	@:optional
	var animationSpeed : Float;
	@:optional
	var closeOnBackgroundClick : Bool;
	@:optional
	var dismissModalClass : String;
	@:optional
	var bgClass : String;
	@:optional
	var open : Void -> Void;
	@:optional
	var opened : Void -> Void;
	@:optional
	var close : Void -> Void;
	@:optional
	var closed : Void -> Void;
	var bg : JQuery;
	var css : { var open : { @:optional
	var opacity : Float; @:optional
	var visibility : String; var display : String; }; var close : { var opacity : Float; var visibility : String; var display : String; }; };
};
typedef JoyrideOptions = {
	@:optional
	var tipLocation : String;
	@:optional
	var nubPosition : String;
	@:optional
	var scrollSpeed : Float;
	@:optional
	var timer : Float;
	@:optional
	var startTimerOnClick : Bool;
	@:optional
	var nextButton : Bool;
	@:optional
	var tipAnimation : String;
	@:optional
	var pauseAfter : Array<Float>;
	@:optional
	var tipAnimationFadeSpeed : Float;
	@:optional
	var cookieMonster : Bool;
	@:optional
	var cookieName : String;
	@:optional
	var cookieDomain : Bool;
	@:optional
	var tipContainer : String;
	@:optional
	var postRideCallback : Void -> Void;
	@:optional
	var postStepCallback : Void -> Void;
};
typedef JQuery = {
	@:overload(function(OrbitOptions:Dynamic):JQuery { })
	function orbit():JQuery;
	@:overload(function(RevealOptions:Dynamic):JQuery { })
	function reveal():JQuery;
	@:overload(function(JoyrideOptions:Dynamic):JQuery { })
	function joyride():JQuery;
};
