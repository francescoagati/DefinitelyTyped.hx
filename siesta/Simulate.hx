typedef IEvent = {
	var simulateEventsWith : String;
	function simulateEvent(el:Dynamic, type:String, ?the:Dynamic, ?suppressLog:Bool):Void;
};
typedef IKeyboard = {
	function keyPress(el:Dynamic, key:String, options:Dynamic):Void;
	function type(el:Dynamic, text:String, ?callback:haxe.Constraints.Function, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IMouse = {
	var dragDelay : Float;
	var dragPrecision : Float;
	var moveCursorBetweenPoints : Bool;
	@:overload(function(?callback:haxe.Constraints.Function, ?scope:Dynamic, ?options:Dynamic):Void { })
	function click(?el:Dynamic, ?callback:haxe.Constraints.Function, ?scope:Dynamic, ?options:Dynamic):Void;
	@:overload(function(?callback:haxe.Constraints.Function, ?scope:Dynamic, ?options:Dynamic):Void { })
	function doubleClick(?el:Dynamic, ?callback:haxe.Constraints.Function, ?scope:Dynamic, ?options:Dynamic):Void;
	function drag(source:Dynamic, ?target:Dynamic, ?delta:Array<Float>, ?callback:haxe.Constraints.Function, ?scope:Dynamic, ?options:Dynamic):Void;
	function dragBy(source:Dynamic, delta:Array<Float>, ?callback:haxe.Constraints.Function, ?scope:Dynamic, ?options:Dynamic, ?dragOnly:Bool):Void;
	function dragTo(source:Dynamic, target:Dynamic, ?callback:haxe.Constraints.Function, ?scope:Dynamic, ?options:Dynamic, ?dragOnly:Bool):Void;
	function mouseDown(el:Dynamic, options:Dynamic):Void;
	function mouseOut(el:Dynamic, options:Dynamic):Void;
	function mouseOver(el:Dynamic, options:Dynamic):Void;
	function mouseUp(el:Dynamic, options:Dynamic):Void;
	function moveCursorBy(delta:Array<Float>, ?callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	function moveCursorTo(?target:Dynamic, ?callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	function moveMouseBy(delta:Array<Float>, ?callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	function moveMouseTo(?target:Dynamic, ?callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	@:overload(function(?callback:haxe.Constraints.Function, ?scope:Dynamic, ?options:Dynamic):Void { })
	function rightClick(?el:Dynamic, ?callback:haxe.Constraints.Function, ?scope:Dynamic, ?options:Dynamic):Void;
};
extern class SimulateTopLevel {
	static var KeyCodes : { var  : Float; var BACKSPACE : Float; var 	 : Float; var TAB : Float; var  : Float; var RETURN : Float; var ENTER : Float; var SHIFT : Float; var CTRL : Float; var ALT : Float; var PAUSE-BREAK : Float; var CAPS : Float; var ESCAPE : Float; var NUM-LOCK : Float; var SCROLL-LOCK : Float; var PRINT : Float; var PAGE-UP : Float; var PAGE-DOWN : Float; var END : Float; var HOME : Float; var LEFT : Float; var UP : Float; var RIGHT : Float; var DOWN : Float; var INSERT : Float; var DELETE : Float; var   : Float; var 0 : Float; var 1 : Float; var 2 : Float; var 3 : Float; var 4 : Float; var 5 : Float; var 6 : Float; var 7 : Float; var 8 : Float; var 9 : Float; var A : Float; var B : Float; var C : Float; var D : Float; var E : Float; var F : Float; var G : Float; var H : Float; var I : Float; var J : Float; var K : Float; var L : Float; var M : Float; var N : Float; var O : Float; var P : Float; var Q : Float; var R : Float; var S : Float; var T : Float; var U : Float; var V : Float; var W : Float; var X : Float; var Y : Float; var Z : Float; var NUM0 : Float; var NUM1 : Float; var NUM2 : Float; var NUM3 : Float; var NUM4 : Float; var NUM5 : Float; var NUM6 : Float; var NUM7 : Float; var NUM8 : Float; var NUM9 : Float; var NUM* : Float; var NUM+ : Float; var ; : Float; var = : Float; var , : Float; var - : Float; var . : Float; var / : Float; var ` : Float; var [ : Float; var \ : Float; var ] : Float; var " : Float; var F1 : Float; var F2 : Float; var F3 : Float; var F4 : Float; var F5 : Float; var F6 : Float; var F7 : Float; var F8 : Float; var F9 : Float; var F10 : Float; var F11 : Float; var F12 : Float; };
	static function StartTest(testScript:Siesta.ITest -> Void):Void;
	static var startTest : Dynamic;
	static var describe : Dynamic;
}
typedef Browser = {
	>ITest,
	>Simulate.IEvent,
	>Simulate.IKeyboard,
	>Simulate.IMouse,
	>IElement,
	>ITextSelection,
	function clearTimeout(timeoutId:Float):Void;
	function elementFromPoint(x:Float, y:Float, ?shallow:Bool):HTMLElement;
	function firesAtLeastNTimes(observable:Dynamic, event:String, n:Float, desc:String):Void;
	function firesOk(options:Dynamic):Void;
	function firesOnce(observable:Dynamic, event:String, desc:String):Void;
	function isntFired(observable:Dynamic, event:String, desc:String):Void;
	function setTimeout(func:haxe.Constraints.Function, delay:Float):Float;
	function waitForEvent(observable:Dynamic, event:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForPageLoad(callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	function willFireNTimes(observable:Dynamic, event:String, n:Float, desc:String):Void;
	function wontFire(observable:Dynamic, event:String, desc:String):Void;
};
typedef IDate = {
	function isDateEqual(got:Date, expectedDate:Date, ?description:String):Void;
};
typedef IElement = {
	function chainClick(elements:Array<Dynamic>, callback:haxe.Constraints.Function):Void;
	@:overload(function(selector:String, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic):Void { })
	function clickSelector(selector:String, callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	function contentLike(el:Dynamic, text:String, ?description:String):Void;
	function contentNotLike(el:Dynamic, text:String, ?description:String):Void;
	function elementIsAt(el:Dynamic, xy:Array<Float>, allowChildren:Bool, ?description:String):Void;
	function elementIsInView(el:Dynamic):Void;
	function elementIsNotTopElement(el:Dynamic, allowChildren:Bool, ?description:String):Void;
	function elementIsNotVisible(el:Dynamic, ?description:String):Void;
	function elementIsTop(el:Dynamic, allowChildren:Bool):Bool;
	function elementIsTopElement(el:Dynamic, allowChildren:Bool, ?description:String, ?strict:Dynamic):Void;
	function elementIsVisible(el:Dynamic, ?description:String):Void;
	function findCenter(el:Dynamic, ?local:Bool):Array<Float>;
	function hasCls(el:Dynamic, cls:String, ?description:String):Void;
	function hasNotCls(el:Dynamic, cls:String, ?description:String):Void;
	function hasNotStyle(el:Dynamic, property:String, value:String, ?description:String):Void;
	function hasStyle(el:Dynamic, property:String, value:String, ?description:String):Void;
	function isElementVisible(el:Dynamic):Bool;
	function isInView(el:Dynamic, ?description:String):Void;
	function monkeyTest(el:Dynamic, nbrInteractions:Float, ?description:String, ?callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	function scrollHorizontallyTo(el:Dynamic, newLeft:Float, ?delay:Float, ?callback:haxe.Constraints.Function):Float;
	function scrollVerticallyTo(el:Dynamic, newTop:Float, ?delay:Float, ?callback:haxe.Constraints.Function):Float;
	@:overload(function(selector:String, root:Dynamic, count:Float, description:String):Void { })
	function selectorCountIs(selector:String, count:Float, description:String):Void;
	function selectorExists(selector:String, ?description:String):Void;
	function selectorIsAt(selector:String, xy:Array<Float>, allowChildren:Bool, ?description:String):Void;
	function selectorNotExists(selector:String, ?description:String):Void;
	function waitForContentLike(el:Dynamic, text:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForContentNotLike(el:Dynamic, text:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForElementNotTop(el:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForElementNotVisible(el:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForElementTop(el:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForElementVisible(el:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForScrollChange(el:Dynamic, side:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForScrollLeftChange(el:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForScrollTopChange(el:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	@:overload(function(selector:String, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForSelector(selector:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForSelectorAt(xy:Array<Float>, selector:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitForSelectorAtCursor(xy:Array<Float>, selector:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	@:overload(function(selector:String, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForSelectorNotFound(selector:String, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	@:overload(function(selectors:Array<String>, root:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void { })
	function waitForSelectors(selectors:Array<String>, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
	function waitUntilInView(el:Dynamic, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
};
typedef IExtJSCore = {
	function Ext():Dynamic;
	function clickCQ(selector:String, root:Dynamic, callback:haxe.Constraints.Function):Dynamic;
	function clickComponentQuery(selector:String, root:Dynamic, callback:haxe.Constraints.Function):Dynamic;
	function compositeQuery(selector:String, root:Dynamic, allowEmpty:Bool):Array<HTMLElement>;
	function cq(selector:String):Dynamic;
	function cq1(selector:String):Dynamic;
	function getExt():Dynamic;
	function knownBugIn(frameworkVersion:String, fn:haxe.Constraints.Function, reason:String):Dynamic;
	function requireOk(args:haxe.extern.Rest<Dynamic>):Void;
};
typedef IFunction = {
	@:overload(function(fn:haxe.Constraints.Function, host:Dynamic, desc:String):Void { })
	function isCalled(fn:String, host:Dynamic, desc:String):Void;
	@:overload(function(fn:haxe.Constraints.Function, host:Dynamic, n:Float, desc:String):Void { })
	function isCalledNTimes(fn:String, host:Dynamic, n:Float, desc:String):Void;
	@:overload(function(fn:haxe.Constraints.Function, host:Dynamic, desc:String):Void { })
	function isCalledOnce(fn:String, host:Dynamic, desc:String):Void;
	@:overload(function(fn:haxe.Constraints.Function, host:Dynamic, n:Float, desc:String):Void { })
	function isntCalled(fn:String, host:Dynamic, n:Float, desc:String):Void;
	@:overload(function(fn:haxe.Constraints.Function, className:String, desc:String):Void { })
	@:overload(function(fn:String, className:haxe.Constraints.Function, desc:String):Void { })
	@:overload(function(fn:haxe.Constraints.Function, className:haxe.Constraints.Function, desc:String):Void { })
	function methodIsCalled(fn:String, className:String, desc:String):Void;
	@:overload(function(fn:haxe.Constraints.Function, className:String, n:Float, desc:String):Void { })
	@:overload(function(fn:String, className:haxe.Constraints.Function, n:Float, desc:String):Void { })
	@:overload(function(fn:haxe.Constraints.Function, className:haxe.Constraints.Function, n:Float, desc:String):Void { })
	function methodIsCalledNTimes(fn:String, className:String, n:Float, desc:String):Void;
	@:overload(function(fn:haxe.Constraints.Function, className:String, desc:String):Void { })
	@:overload(function(fn:String, className:haxe.Constraints.Function, desc:String):Void { })
	@:overload(function(fn:haxe.Constraints.Function, className:haxe.Constraints.Function, desc:String):Void { })
	function methodIsntCalled(fn:String, className:String, desc:String):Void;
};
typedef JQuery = {
	>Browser,
	function get$():Dynamic;
};
typedef IWaitForConfig = {
	var method : haxe.Constraints.Function;
	var callback : haxe.Constraints.Function;
	@:optional
	var scope : Dynamic;
	@:optional
	var timeout : Float;
	@:optional
	var interval : Float;
};
typedef IWaitForReturn = {
	var force : haxe.Constraints.Function;
};
typedef IMore = {
	var waitForTimeout : Float;
	@:overload(function(step:haxe.extern.Rest<IAction>):Void { })
	function chain(steps:Array<IAction>):Void;
	function expectGlobals(names:haxe.extern.Rest<Dynamic>):Void;
	function isApprox(value1:Float, value2:Float, threshHold:Float, desc:String):Void;
	function isArray(value:Dynamic, desc:String):Void;
	function isBoolean(value:Dynamic, desc:String):Void;
	function isDate(value:Dynamic, desc:String):Void;
	function isDeeply(obj1:Dynamic, obj2:Dynamic, desc:String):Void;
	function isDeeplyStrict(obj1:Dynamic, obj2:Dynamic, desc:String):Void;
	function isFunction(value:Dynamic, desc:String):Void;
	function isGreater(value1:Dynamic, value2:Dynamic, desc:String):Void;
	function isGreaterOrEqual(value1:Dynamic, value2:Dynamic, desc:String):Void;
	function isLess(value1:Dynamic, value2:Dynamic, desc:String):Void;
	function isLessOrEqual(value1:Dynamic, value2:Dynamic, desc:String):Void;
	function isNumber(value:Dynamic, desc:String):Void;
	function isObject(value:Dynamic, desc:String):Void;
	function isRegExp(value:Dynamic, desc:String):Void;
	function isString(value:Dynamic, desc:String):Void;
	@:overload(function(value:Dynamic, className:haxe.Constraints.Function, desc:String):Void { })
	function isaOk(value:Dynamic, className:String, desc:String):Void;
	@:overload(function(string:String, regex:js.RegExp, desc:String):Void { })
	function like(string:String, regex:String, desc:String):Void;
	function livesOk(func:haxe.Constraints.Function, desc:String):Void;
	@:overload(function(func:haxe.Constraints.Function, expected:js.RegExp, desc:String):Void { })
	function throwsOk(func:haxe.Constraints.Function, expected:String, desc:String):Void;
	@:overload(function(string:String, regex:js.RegExp, desc:String):Void { })
	function unlike(string:String, regex:String, desc:String):Void;
	function verifyGlobals(names:haxe.extern.Rest<String>):Void;
	@:overload(function(method:haxe.Constraints.Function, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float, ?interval:Float):IWaitForReturn { })
	@:overload(function(config:IWaitForConfig):IWaitForReturn { })
	function waitFor(wait:Float, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float, ?interval:Float):IWaitForReturn;
};
typedef IPositionConfig = {
	@:optional
	var x : Float;
	@:optional
	var y : Float;
};
typedef SenchaTouch = {
	>Browser,
	>IExtJSComponent,
	>IExtJSElement,
	>IExtJSFormField,
	>IExtJSObservable,
	>IExtJSStore,
	>IExtJSCore,
	function doubleTap(target:Dynamic, ?callback:haxe.Constraints.Function, ?scope:Dynamic, ?offset:Array<Float>):Void;
	function longpress(target:Dynamic, ?callback:haxe.Constraints.Function, ?scope:Dynamic, ?offset:Array<Float>):Void;
	function moveFingerBy(delta:Array<Float>, ?callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	function moveFingerTo(target:Dynamic, ?callback:haxe.Constraints.Function, ?scope:Dynamic, ?offset:Array<Float>):Void;
	function scrollUntilElementVisible(scrollable:Dynamic, direction:String, actionTarget:Dynamic, callback:haxe.Constraints.Function, scope:Dynamic):Void;
	function swipe(target:Dynamic, direction:String, ?callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	function tap(target:Dynamic, ?callback:haxe.Constraints.Function, ?scope:Dynamic):Void;
	function waitForScrollerPosition(scroller:Dynamic, position:IPositionConfig, callback:haxe.Constraints.Function, ?scope:Dynamic, ?timeout:Float):Void;
};
typedef ITextSelection = {
	function getSelectedText(el:Dynamic):String;
	function selectText(el:Dynamic, ?start:Float, ?end:Float):Void;
};
