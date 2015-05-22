typedef IAbstract = {
	>Ext.IEvented,
	@:optional
	var before : Dynamic;
	@:optional
	var easing : String;
	@:optional
	function destroy():Void;
	@:optional
	function getAfter():Dynamic;
	@:optional
	function getBefore():Dynamic;
	@:optional
	function getDelay():Float;
	@:optional
	function getDirection():String;
	@:optional
	function getDuration():Float;
	@:optional
	function getEasing():String;
	@:optional
	function getElement():Dynamic;
	@:optional
	function getIteration():Float;
	@:optional
	function getName():String;
	@:optional
	function getOnBeforeEnd():Dynamic;
	@:optional
	function getOnBeforeStart():Dynamic;
	@:optional
	function getOnEnd():Dynamic;
	@:optional
	function getPreserveEndState():Bool;
	@:optional
	function getReplacePrevious():Bool;
	@:optional
	function getReverse():Dynamic;
	@:optional
	function getScope():Dynamic;
	@:optional
	function setAfter(?after:Dynamic):Void;
	@:optional
	function setBefore(?before:Dynamic):Void;
	@:optional
	function setDelay(?delay:Float):Void;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setDuration(?duration:Float):Void;
	@:optional
	function setEasing(?easing:String):Void;
	@:optional
	function setElement(?element:Dynamic):Void;
	@:optional
	function setIteration(?iteration:Float):Void;
	@:optional
	function setName(?name:String):Void;
	@:optional
	function setOnBeforeEnd(?onBeforeEnd:Dynamic):Void;
	@:optional
	function setOnBeforeStart(?onBeforeStart:Dynamic):Void;
	@:optional
	function setOnEnd(?onEnd:Dynamic):Void;
	@:optional
	function setPreserveEndState(?preserveEndState:Bool):Void;
	@:optional
	function setReplacePrevious(?replacePrevious:Bool):Void;
	@:optional
	function setReverse(?reverse:Dynamic):Void;
	@:optional
	function setScope(?scope:Dynamic):Void;
};
typedef ICube = {
	>Ext.fx.animation.IAbstract,
	@:optional
	var before : Dynamic;
	@:optional
	var direction : String;
	@:optional
	function getAfter():Dynamic;
	@:optional
	function getBefore():Dynamic;
	@:optional
	function getDirection():String;
	@:optional
	function getOut():Bool;
	@:optional
	function setAfter(?after:Dynamic):Void;
	@:optional
	function setBefore(?before:Dynamic):Void;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setOut(?out:Bool):Void;
};
typedef IFade = {
	>Ext.fx.animation.IAbstract,
	@:optional
	var before : Dynamic;
	@:optional
	var out : Bool;
	@:optional
	function getAfter():Dynamic;
	@:optional
	function getBefore():Dynamic;
	@:optional
	function getOut():Bool;
	@:optional
	function getReverse():Dynamic;
	@:optional
	function setAfter(?after:Dynamic):Void;
	@:optional
	function setBefore(?before:Dynamic):Void;
	@:optional
	function setOut(?out:Bool):Void;
	@:optional
	function setReverse(?reverse:Dynamic):Void;
};
typedef IFadeIn = {
	>Ext.fx.animation.IAbstract,
	@:optional
	var before : Dynamic;
	@:optional
	var out : Bool;
	@:optional
	function getAfter():Dynamic;
	@:optional
	function getBefore():Dynamic;
	@:optional
	function getOut():Bool;
	@:optional
	function getReverse():Dynamic;
	@:optional
	function setAfter(?after:Dynamic):Void;
	@:optional
	function setBefore(?before:Dynamic):Void;
	@:optional
	function setOut(?out:Bool):Void;
	@:optional
	function setReverse(?reverse:Dynamic):Void;
};
typedef IFadeOut = {
	>Ext.fx.animation.IFade,
	@:optional
	var before : Dynamic;
	@:optional
	function getBefore():Dynamic;
	@:optional
	function setBefore(?before:Dynamic):Void;
};
typedef IFlip = {
	>Ext.fx.animation.IAbstract,
	@:optional
	var direction : String;
	@:optional
	var easing : String;
	@:optional
	function getDirection():String;
	@:optional
	function getEasing():String;
	@:optional
	function getHalf():Bool;
	@:optional
	function getOut():Dynamic;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setEasing(?easing:String):Void;
	@:optional
	function setHalf(?half:Bool):Void;
	@:optional
	function setOut(?out:Dynamic):Void;
};
typedef IPop = {
	>Ext.fx.animation.IAbstract,
	@:optional
	var before : Dynamic;
	@:optional
	var out : Bool;
	@:optional
	function getAfter():Dynamic;
	@:optional
	function getBefore():Dynamic;
	@:optional
	function getOut():Bool;
	@:optional
	function setAfter(?after:Dynamic):Void;
	@:optional
	function setBefore(?before:Dynamic):Void;
	@:optional
	function setOut(?out:Bool):Void;
};
typedef IPopIn = {
	>Ext.fx.animation.IAbstract,
	@:optional
	var before : Dynamic;
	@:optional
	var out : Bool;
	@:optional
	function getAfter():Dynamic;
	@:optional
	function getBefore():Dynamic;
	@:optional
	function getOut():Bool;
	@:optional
	function setAfter(?after:Dynamic):Void;
	@:optional
	function setBefore(?before:Dynamic):Void;
	@:optional
	function setOut(?out:Bool):Void;
};
typedef IPopOut = {
	>Ext.fx.animation.IPop,
	@:optional
	var before : Dynamic;
	@:optional
	function getBefore():Dynamic;
	@:optional
	function setBefore(?before:Dynamic):Void;
};
typedef ISlide = {
	>Ext.fx.animation.IAbstract,
	@:optional
	var direction : String;
	@:optional
	var easing : String;
	@:optional
	var offset : Float;
	@:optional
	var out : Bool;
	@:optional
	function getDirection():String;
	@:optional
	function getEasing():String;
	@:optional
	function getIsElementBoxFit():Bool;
	@:optional
	function getOffset():Float;
	@:optional
	function getOut():Bool;
	@:optional
	function getUseCssTransform():Bool;
	@:optional
	function setContainerBox(?containerBox:String):Void;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setEasing(?easing:String):Void;
	@:optional
	function setElementBox(?elementBox:String):Void;
	@:optional
	function setIsElementBoxFit(?isElementBoxFit:Bool):Void;
	@:optional
	function setOffset(?offset:Float):Void;
	@:optional
	function setOut(?out:Bool):Void;
	@:optional
	function setUseCssTransform(?useCssTransform:Bool):Void;
};
typedef ISlideIn = {
	>Ext.fx.animation.IAbstract,
	@:optional
	var direction : String;
	@:optional
	var easing : String;
	@:optional
	var offset : Float;
	@:optional
	var out : Bool;
	@:optional
	function getDirection():String;
	@:optional
	function getEasing():String;
	@:optional
	function getIsElementBoxFit():Bool;
	@:optional
	function getOffset():Float;
	@:optional
	function getOut():Bool;
	@:optional
	function getUseCssTransform():Bool;
	@:optional
	function setContainerBox(?containerBox:String):Void;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setEasing(?easing:String):Void;
	@:optional
	function setElementBox(?elementBox:String):Void;
	@:optional
	function setIsElementBoxFit(?isElementBoxFit:Bool):Void;
	@:optional
	function setOffset(?offset:Float):Void;
	@:optional
	function setOut(?out:Bool):Void;
	@:optional
	function setUseCssTransform(?useCssTransform:Bool):Void;
};
typedef ISlideOut = {
	>Ext.fx.animation.ISlide,
};
typedef IWipe = {
	>Ext.fx.IAnimation,
	@:optional
	var direction : String;
	@:optional
	var easing : String;
	@:optional
	var out : Bool;
	@:optional
	function getDirection():String;
	@:optional
	function getEasing():String;
	@:optional
	function getOut():Bool;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setEasing(?easing:String):Void;
	@:optional
	function setOut(?out:Bool):Void;
};
typedef IWipeIn = {
	>Ext.fx.IAnimation,
	@:optional
	var direction : String;
	@:optional
	var easing : String;
	@:optional
	var out : Bool;
	@:optional
	function getDirection():String;
	@:optional
	function getEasing():String;
	@:optional
	function getOut():Bool;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setEasing(?easing:String):Void;
	@:optional
	function setOut(?out:Bool):Void;
};
typedef IWipeOut = {
	>Ext.fx.animation.IWipe,
};
