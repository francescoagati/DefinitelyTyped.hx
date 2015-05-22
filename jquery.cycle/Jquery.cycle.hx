typedef CycleOptions = {
	@:optional
	var activePagerClass : String;
	@:optional
	var after : Element -> Element -> CycleOptions -> Bool -> Void;
	@:optional
	var allowPagerClickBubble : Bool;
	@:optional
	var animIn : Dynamic;
	@:optional
	var animOut : Dynamic;
	@:optional
	var aspect : Bool;
	@:optional
	var autostop : Bool;
	@:optional
	var autostopCount : Float;
	@:optional
	var backwards : Bool;
	@:optional
	var before : Element -> Element -> CycleOptions -> Bool -> Void;
	@:optional
	var center : Bool;
	@:optional
	var cleartype : Bool;
	@:optional
	var cleartypeNoBg : Bool;
	@:optional
	var containerResize : Bool;
	@:optional
	var containerResizeHeight : Bool;
	@:optional
	var continuous : Bool;
	@:optional
	var cssAfter : Dynamic;
	@:optional
	var cssBefore : Dynamic;
	@:optional
	var delay : Float;
	@:optional
	var easeIn : String;
	@:optional
	var easeOut : String;
	@:optional
	var easing : String;
	@:optional
	var end : CycleOptions -> Void;
	@:optional
	var fastOnEvent : Bool;
	@:optional
	var fit : Bool;
	@:optional
	var fx : String;
	@:optional
	var fxFn : Element -> Element -> CycleOptions -> haxe.Constraints.Function -> Bool -> Void;
	@:optional
	var height : Dynamic;
	@:optional
	var manualTrump : Bool;
	@:optional
	var metaAttr : String;
	@:optional
	var next : Dynamic;
	@:optional
	var nowrap : Bool;
	@:optional
	var onPagerEvent : Float -> Element -> Void;
	@:optional
	var onPrevNextEvent : Bool -> Float -> Element -> Void;
	@:optional
	var pager : Dynamic;
	@:optional
	var pagerAnchorBuilder : Float -> Element -> String;
	@:optional
	var pagerEvent : String;
	@:optional
	var pause : Bool;
	@:optional
	var pauseOnPagerHover : Bool;
	@:optional
	var prev : Dynamic;
	@:optional
	var prevNextEvent : String;
	@:optional
	var random : Bool;
	@:optional
	var randomizeEffects : Bool;
	@:optional
	var requeueOnImageNotLoaded : Bool;
	@:optional
	var requeueTimeout : Float;
	@:optional
	var rev : Bool;
	@:optional
	var shuffle : Dynamic;
	@:optional
	var skipInitializationCallbacks : Bool;
	@:optional
	var slideExpr : String;
	@:optional
	var slideResize : Bool;
	@:optional
	var speed : Dynamic;
	@:optional
	var speedIn : Dynamic;
	@:optional
	var speedOut : Dynamic;
	@:optional
	var startingSlide : Float;
	@:optional
	var sync : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var timeoutFn : Element -> Element -> CycleOptions -> Bool -> Void;
	@:optional
	var updateActivePagerLink : Dynamic -> Float -> String -> Void;
	@:optional
	var width : Dynamic;
};
typedef Cycle = {
	var ver : Void -> String;
	var debug : Bool;
	var defaults : CycleOptions;
	var next : ?CycleOptions -> Void;
	var prev : ?CycleOptions -> Void;
	var transitions : { };
	var custom : Element -> Element -> CycleOptions -> haxe.Constraints.Function -> Bool -> ?Float -> Void;
	var commonReset : Element -> Element -> CycleOptions -> ?Bool -> ?Bool -> ?Bool -> Void;
	var hopsFromLast : CycleOptions -> ?Bool -> Float;
	var createPagerAnchor : Float -> Element -> JQuery -> Dynamic -> CycleOptions -> String;
	var updateActivePagerLink : Dynamic -> Float -> String -> Void;
	var resetState : CycleOptions -> ?String -> Void;
};
typedef JQuery = {
	var cycle : Cycle;
};
