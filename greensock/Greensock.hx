typedef IDispatcher = {
	function addEventListener(type:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?useParam:Bool, ?priority:Float):Void;
	function removeEventListener(type:String, callback:haxe.Constraints.Function):Void;
};
extern class Animation {
	static var ticker : IDispatcher;
	var data : Dynamic;
	var timeline : SimpleTimeline;
	var vars : Dynamic;
	function new(?duration:Float, ?vars:Dynamic):Void;
	@:overload(function(value:Float):Animation { })
	function delay():Float;
	@:overload(function(value:Float):Animation { })
	function duration():Float;
	@:overload(function(type:String, callback:haxe.Constraints.Function, ?params:Array<Dynamic>, ?scope:Dynamic):Animation { })
	function eventCallback(type:String):haxe.Constraints.Function;
	function invalidate():Animation;
	function isActive():Bool;
	function kill(?vars:Dynamic, ?target:Dynamic):Animation;
	function pause(?atTime:Dynamic, ?suppressEvents:Bool):Animation;
	@:overload(function(value:Bool):Animation { })
	function paused():Bool;
	function play(?from:Dynamic, ?suppressEvents:Bool):Animation;
	@:overload(function(value:Float, ?supressEvents:Bool):Animation { })
	function progress():Float;
	function restart(?includeDelay:Bool, ?suppressEvents:Bool):Animation;
	function resume(?from:Dynamic, ?suppressEvents:Bool):Animation;
	function reverse(?from:Dynamic, ?suppressEvents:Bool):Animation;
	@:overload(function(value:Bool):Animation { })
	function reversed():Bool;
	function seek(time:Dynamic, ?suppressEvents:Bool):Animation;
	@:overload(function(value:Float):Animation { })
	function startTime():Float;
	@:overload(function(value:Float, ?suppressEvents:Bool):Animation { })
	function time():Float;
	@:overload(function(value:Float):Animation { })
	function timeScale():Float;
	@:overload(function(value:Float):Animation { })
	function totalDuration():Float;
	@:overload(function(value:Float):Animation { })
	function totalProgress():Float;
	@:overload(function(time:Float, ?suppressEvents:Bool):Animation { })
	function totalTime():Float;
}
extern class SimpleTimeline extends Animation {
	var autoRemoveChildren : Bool;
	var smoothChildTiming : Bool;
	function new(?vars:Dynamic):Void;
	function add(value:Dynamic, ?position:Dynamic, ?align:String, ?stagger:Float):SimpleTimeline;
	function render(time:Float, ?suppressEvents:Bool, ?force:Bool):Void;
}
extern class TweenLite extends Animation {
	static var defaultEase : Ease;
	static var defaultOverwrite : String;
	static var selector : Dynamic;
	var target : Dynamic;
	function new(target:Dynamic, duration:Float, vars:Dynamic):Void;
	static function delayedCall(delay:Float, callback:haxe.Constraints.Function, ?params:Array<Dynamic>, ?scope:Dynamic, ?useFrames:Bool):TweenLite;
	function endTime(?includeRepeats:Bool):Float;
	static function from(target:haxe.extern.EitherType<Dynamic, Array<Dynamic>>, duration:Float, vars:Dynamic):TweenLite;
	static function fromTo(target:haxe.extern.EitherType<Dynamic, Array<Dynamic>>, duration:Float, fromVars:Dynamic, toVars:Dynamic):TweenLite;
	static function getTweensOf(target:Dynamic, onlyActive:Bool):Array<Tween>;
	static function killDelayedCallsTo(func:haxe.Constraints.Function):Void;
	static function killTweensOf(target:Dynamic, ?onlyActive:Bool, ?vars:Dynamic):Void;
	static function lagSmoothing(threshold:Float, adjustedLag:Float):Void;
	static function set(target:Dynamic, vars:Dynamic):TweenLite;
	static function to(target:Dynamic, duration:Float, vars:Dynamic):TweenLite;
}
extern class TweenMax extends TweenLite {
	function new(target:Dynamic, duration:Float, vars:Dynamic):Void;
	static function delayedCall(delay:Float, callback:haxe.Constraints.Function, ?params:Array<Dynamic>, ?scope:Dynamic, ?useFrames:Bool):TweenMax;
	static function from(target:Dynamic, duration:Float, vars:Dynamic):TweenMax;
	static function fromTo(target:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic):TweenMax;
	static function getAllTweens(?includeTimelines:Bool):Array<Tween>;
	static function getTweensOf(target:Dynamic):Array<Tween>;
	static function isTweening(target:Dynamic):Bool;
	static function killAll(?complete:Bool, ?tweens:Bool, ?delayedCalls:Bool, ?timelines:Bool):Void;
	static function killChildTweensOf(parent:Dynamic, ?complete:Bool):Void;
	static function killDelayedCallsTo(func:haxe.Constraints.Function):Void;
	static function killTweensOf(target:Dynamic, ?vars:Dynamic):Void;
	static function pauseAll(?tweens:Bool, ?delayedCalls:Bool, ?timelines:Bool):Void;
	@:overload(function(value:Float):TweenMax { })
	function repeat():Float;
	@:overload(function(value:Float):TweenMax { })
	function repeatDelay():Float;
	static function resumeAll(?tweens:Bool, ?delayedCalls:Bool, ?timelines:Bool):Void;
	static function set(target:Dynamic, vars:Dynamic):TweenMax;
	static function staggerFrom(targets:Dynamic, duration:Float, vars:Dynamic, stagger:Float, ?onCompleteAll:haxe.Constraints.Function, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Array<Dynamic>;
	static function staggerFromTo(targets:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic, stagger:Float, ?onCompleteAll:haxe.Constraints.Function, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Array<Dynamic>;
	static function staggerTo(targets:Dynamic, duration:Float, vars:Dynamic, stagger:Float, ?onCompleteAll:haxe.Constraints.Function, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):Array<Dynamic>;
	static function to(target:Dynamic, duration:Float, vars:Dynamic):TweenMax;
	function updateTo(vars:Dynamic, ?resetDuration:Bool):TweenMax;
	@:overload(function(?value:Bool):TweenMax { })
	function yoyo():Bool;
}
extern class TimelineLite extends SimpleTimeline {
	function new(?vars:Dynamic):Void;
	function add(value:Dynamic, ?position:Dynamic, ?align:String, ?stagger:Float):TimelineLite;
	function addLabel(label:String, position:Dynamic):TimelineLite;
	function addPause(?position:Dynamic, ?callback:haxe.Constraints.Function, ?params:Array<Dynamic>, ?scope:Dynamic):TimelineLite;
	function call(callback:haxe.Constraints.Function, ?params:Array<Dynamic>, ?scope:Dynamic, ?position:Dynamic):TimelineLite;
	function clear(?labels:Bool):TimelineLite;
	function endTime(?includeRepeats:Bool):Float;
	static function exportRoot(?vars:Dynamic, ?omitDelayedCalls:Bool):TimelineLite;
	function from(target:Dynamic, duration:Float, vars:Dynamic, ?position:Dynamic):TimelineLite;
	function fromTo(target:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic, ?position:Dynamic):TimelineLite;
	function getChildren(?nested:Bool, ?tweens:Bool, ?timelines:Bool, ?ignoreBeforeTime:Float):haxe.extern.EitherType<Tween, Array<Timeline>>;
	function getLabelTime(label:String):Float;
	function getTweensOf(target:Dynamic, ?nested:Bool):Array<Tween>;
	function recent():Animation;
	function remove(value:Dynamic):TimelineLite;
	function removeLabel(label:String):Dynamic;
	function set(target:Dynamic, vars:Dynamic, ?position:Dynamic):TimelineLite;
	function shiftChildren(amount:Float, ?adjustLabels:Bool, ?ignoreBeforeTime:Float):TimelineLite;
	function staggerFrom(targets:Dynamic, duration:Float, vars:Dynamic, ?stagger:Float, ?position:Dynamic, ?onCompleteAll:haxe.Constraints.Function, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteScope:Dynamic):TimelineLite;
	function staggerFromTo(targets:Dynamic, duration:Float, fromVars:Dynamic, toVars:Dynamic, ?stagger:Float, ?position:Dynamic, ?onCompleteAll:haxe.Constraints.Function, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):TimelineLite;
	function staggerTo(targets:Dynamic, duration:Float, vars:Dynamic, stagger:Float, ?position:Dynamic, ?onCompleteAll:haxe.Constraints.Function, ?onCompleteAllParams:Array<Dynamic>, ?onCompleteAllScope:Dynamic):TimelineLite;
	function to(target:Dynamic, duration:Float, vars:Dynamic, ?position:Dynamic):TimelineLite;
	function usesFrames():Bool;
}
extern class TimelineMax extends TimelineLite {
	function new(?vars:Dynamic):Void;
	function addCallback(callback:haxe.Constraints.Function, position:Dynamic, ?params:Array<Dynamic>, ?scope:Dynamic):TimelineMax;
	@:overload(function(value:String):TimelineMax { })
	function currentLabel():String;
	function getActive(?nested:Bool, ?tweens:Bool, ?timelines:Bool):haxe.extern.EitherType<Tween, Array<Timeline>>;
	function getLabelAfter(time:Float):String;
	function getLabelBefore(time:Float):String;
	function getLabelsArray():Array<Dynamic>;
	function removeCallback(callback:haxe.Constraints.Function, ?timeOrLabel:Dynamic):TimelineMax;
	@:overload(function(value:Float):TimelineMax { })
	function repeat():Float;
	@:overload(function(value:Float):TimelineMax { })
	function repeatDelay():Float;
	function tweenFromTo(fromPosition:Dynamic, toPosition:Dynamic, ?vars:Dynamic):TweenLite;
	function tweenTo(position:Dynamic, ?vars:Dynamic):TweenLite;
	@:overload(function(value:Bool):TimelineMax { })
	function yoyo():Bool;
}
typedef Back = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Bounce = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Circ = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Cubic = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Ease = {
	function getRatio(p:Float):Float;
};
typedef EaseLookup = {
	function find(name:String):Ease;
};
typedef Elastic = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Expo = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Linear = {
	var ease : Linear;
	var easeIn : Linear;
	var easeInOut : Linear;
	var easeNone : Linear;
	var easeOut : Linear;
};
typedef Power0 = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Power1 = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Power2 = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Power3 = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Power4 = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Quad = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Quart = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Quint = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef Sine = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef SlowMo = {
	var ease : SlowMo;
	function new(linearRatio:Float, power:Float, yoyoMode:Bool):SlowMo;
	function config(linearRatio:Float, power:Float, yoyoMode:Bool):SlowMo;
	function getRatio(p:Float):Float;
};
typedef SteppedEase = {
	function config(steps:Float):SteppedEase;
	function getRatio(p:Float):Float;
};
typedef Strong = {
	var easeIn : Ease;
	var easeInOut : Ease;
	var easeOut : Ease;
};
typedef BezierPlugin = {
	>TweenPlugin,
	function bezierThrough(values:Array<Dynamic>, ?curviness:Float, ?quadratic:Bool, ?correlate:String, ?prepend:Dynamic, ?calcDifs:Bool):Dynamic;
	function cubicToQuadratic(a:Float, b:Float, c:Float, d:Float):Array<Dynamic>;
	function quadraticToCubic(a:Float, b:Float, c:Float):Dynamic;
};
typedef ColorPropsPlugin = {
	>TweenPlugin,
};
typedef CSSPlugin = {
	>TweenPlugin,
};
typedef CSSRulePlugin = {
	>TweenPlugin,
	function getRule(selector:String):Dynamic;
};
typedef EaselPlugin = {
	>TweenPlugin,
};
typedef RaphaelPlugin = {
	>TweenPlugin,
};
typedef RoundPropsPlugin = {
	>TweenPlugin,
};
typedef ScrollToPlugin = {
	>TweenPlugin,
};
typedef TweenPlugin = {
	function activate(plugins:Array<Dynamic>):Bool;
};
extern class GreensockTopLevel {
	static var Back : Back;
	static var Bounce : Bounce;
	static var Circ : Circ;
	static var Cubic : Cubic;
	static var Ease : Ease;
	static var EaseLookup : EaseLookup;
	static var Elastic : Elastic;
	static var Expo : Expo;
	static var Linear : Linear;
	static var Power0 : Power0;
	static var Power1 : Power1;
	static var Power2 : Power2;
	static var Power3 : Power3;
	static var Power4 : Power4;
	static var Quad : Quad;
	static var Quart : Quart;
	static var Quint : Quint;
	static var Sine : Sine;
	static var SlowMo : SlowMo;
	static var SteppedEase : SteppedEase;
	static var Strong : Strong;
	static var BezierPlugin : BezierPlugin;
	static var ColorPropsPlugin : ColorPropsPlugin;
	static var CSSPlugin : CSSPlugin;
	static var CSSRulePlugin : CSSRulePlugin;
	static var EaselPlugin : EaselPlugin;
	static var RaphaelPlugin : RaphaelPlugin;
	static var RoundPropsPlugin : RoundPropsPlugin;
	static var ScrollToPlugin : ScrollToPlugin;
	static var TweenPlugin : TweenPlugin;
}
