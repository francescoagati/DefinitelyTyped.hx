typedef JoyrideTemplate = {
	@:optional
	var link : String;
	@:optional
	var timer : String;
	@:optional
	var tip : String;
	@:optional
	var wrapper : String;
	@:optional
	var button : String;
	@:optional
	var modal : String;
	@:optional
	var exposeCover : String;
};
typedef JoyrideOptions = {
	@:optional
	var version : String;
	@:optional
	var tipLocation : String;
	@:optional
	var nubPosition : Dynamic;
	@:optional
	var scroll : Bool;
	@:optional
	var scrollSpeed : Float;
	@:optional
	var timer : Float;
	@:optional
	var autoStart : Bool;
	@:optional
	var startTimerOnClick : Bool;
	@:optional
	var startOffset : Float;
	@:optional
	var nextButton : Bool;
	@:optional
	var tipAnimation : String;
	@:optional
	var pauseAfter : Array<Dynamic>;
	@:optional
	var tipAnimationFadeSpeed : Float;
	@:optional
	var cookieMonster : Bool;
	@:optional
	var cookieName : String;
	@:optional
	var cookieDomain : Dynamic;
	@:optional
	var cookiePath : Dynamic;
	@:optional
	var localStorage : Bool;
	@:optional
	var localStorageKey : String;
	@:optional
	var tipContainer : HTMLElement;
	@:optional
	var modal : Bool;
	@:optional
	var expose : Bool;
	@:optional
	var postExposeCallback : Float -> JQuery -> ?JQuery -> Void;
	@:optional
	var preRideCallback : Float -> JQuery -> ?JQuery -> Void;
	@:optional
	var postRideCallback : Float -> JQuery -> ?Bool -> Void;
	@:optional
	var postStepCallback : Float -> JQuery -> ?Bool -> Void;
	@:optional
	var preStepCallback : Float -> JQuery -> ?JQuery -> Void;
	@:optional
	var template : JoyrideTemplate;
};
typedef Joyride = { };
typedef JQuery = {
	var joyride : Joyride;
};
