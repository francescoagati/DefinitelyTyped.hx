typedef Cycle2 = { };
typedef Options = {
	@:optional
	var allowWrap : Bool;
	@:optional
	var autoHeight : Dynamic;
	@:optional
	var autoSelector : String;
	@:optional
	var caption : String;
	@:optional
	var captionTemplate : String;
	@:optional
	var continueAuto : Bool;
	@:optional
	var delay : Float;
	@:optional
	var disabledClass : String;
	@:optional
	var easing : String;
	@:optional
	var fx : String;
	@:optional
	var hideNonActive : Bool;
	@:optional
	var loader : Dynamic;
	@:optional
	var log : Bool;
	@:optional
	var loop : Float;
	@:optional
	var manualSpeed : Float;
	@:optional
	var manualTrump : Bool;
	@:optional
	var next : String;
	@:optional
	var nextEvent : String;
	@:optional
	var overlay : String;
	@:optional
	var overlayTemplate : String;
	@:optional
	var pager : String;
	@:optional
	var pagerActivateClass : String;
	@:optional
	var pagerEvent : String;
	@:optional
	var pagerTemplate : String;
	@:optional
	var pauseOnHover : Dynamic;
	@:optional
	var paused : Bool;
	@:optional
	var prev : String;
	@:optional
	var prevEvent : String;
	@:optional
	var progressive : String;
	@:optional
	var random : Bool;
	@:optional
	var reverse : Bool;
	@:optional
	var slideActiveClass : String;
	@:optional
	var slideCss : Dynamic;
	@:optional
	var slideClass : String;
	@:optional
	var slides : String;
	@:optional
	var speed : Float;
	@:optional
	var startingSlide : Float;
	@:optional
	var swipe : Bool;
	@:optional
	var sync : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var tmplRegex : String;
	@:optional
	var updateView : Float;
};
typedef OptionsWithState = {
	>Options,
	var busy : Bool;
	var currSlide : Float;
	var nextSlide : Float;
	var paused : Bool;
	var slideNum : Float;
	var slideCount : Float;
};
typedef API = {
	function add(slides:Dynamic, ?prepend:Bool):Void;
	function addInitialSlides():Void;
	function advanceSlide(numberOfOpositions:Float):Bool;
	function buildPagerLink(slideOptionHash:Options, slide:Dynamic):Void;
	function buildSlideOpts(slide:Dynamic):Options;
	function calcFirstSlide():Void;
	function calcNextSlide():Void;
	function calcTx(slideOptions:Options, manual:Bool):Transition;
	function destroy():Void;
	function doTransition(slideOptions:Options, currEl:Element, nextEl:Element, fwdFlag:Bool, callback:haxe.Constraints.Function):Void;
	function getComponent(nameOfComponent:String):JQuery;
	function getSlideIndex(slideElement:Element):Float;
	function getSlideOpts(slideIndex:Float):Options;
	function goto(index:Float):Void;
	function initSlide(slideOptions:Options, slide:Dynamic, suggestedZindex:Float):Void;
	function initSlideshow():Void;
	function log(args:haxe.extern.Rest<Dynamic>):Void;
	function next():Void;
	function page(pagerEl:Element, targetEl:Element):Void;
	function pause():Void;
	function postInitSlideshow():Void;
	function preInitSlideshow():Void;
	function prepareTx(manualFlag:Bool, fwdFlag:Bool):Void;
	function prev():Void;
	function queueTransition(slideOptions:Options):Void;
	function reinit():Void;
	function remove(slideIndexToRemove:Float):Void;
	function resume():Void;
	function stackSlides(currEl:Element, nextEl:Element, fwdFlag:Bool):Void;
	function stop():Void;
	function stopTransition():Void;
	function tmpl(templateString:String, optionHash:Options, slideEl:Element):Void;
	function trigger(eventName:String, args:haxe.extern.Rest<Dynamic>):Void;
	function updateView():Void;
};
typedef Transition = {
	function before(opts:Options, curr:Element, next:Element, fwd:Bool):Void;
};
