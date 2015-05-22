typedef Doc = {
	var documentElement : Dynamic;
	var dojoClick : Bool;
};
typedef Global = {
	function $():Dynamic;
	function GoogleSearchStoreCallback_undefined_NaN(start:Dynamic, data:Dynamic, responseCode:Dynamic, errorMsg:Dynamic):Void;
	function jQuery():Dynamic;
	function swfIsInHTML():Void;
	function undefined_onload():Void;
};
typedef Kernel = {
	var back : Dynamic;
	var baseUrl : String;
	var behavior : Dynamic;
	var cldr : Dynamic;
	var colors : Dynamic;
	var config : Dynamic;
	var connectPublisher : Dynamic;
	var contentHandlers : Dynamic;
	var currency : Dynamic;
	var data : Dynamic;
	var date : Dynamic;
	var dijit : Dynamic;
	var dnd : Dynamic;
	var doc : Dynamic;
	var dojox : Dynamic;
	var fx : Dynamic;
	var gears : Dynamic;
	var global : Dynamic;
	var html : Dynamic;
	var i18n : Dynamic;
	var io : Dynamic;
	var isAir : Bool;
	var isAndroid : Float;
	var isAsync : Bool;
	var isBrowser : Bool;
	var isChrome : Float;
	var isCopyKey : Dynamic;
	var isFF : Dynamic;
	var isIE : Float;
	var isIos : Float;
	var isKhtml : Float;
	var isMac : Bool;
	var isMoz : Dynamic;
	var isMozilla : Dynamic;
	var isOpera : Float;
	var isQuirks : Bool;
	var isSafari : Float;
	var isSpidermonkey : Bool;
	var isWebKit : Float;
	var isWii : Bool;
	var keys : Dynamic;
	var locale : Dynamic;
	var mouseButtons : Dynamic;
	var number : Dynamic;
	var parser : String;
	var publish : Dynamic;
	var query : Dynamic;
	var regexp : Dynamic;
	var rpc : Dynamic;
	var scopeMap : Dynamic;
	var store : Dynamic;
	var string : Dynamic;
	var subscribe : Dynamic;
	var tests : Dynamic;
	var toJsonIndentStr : String;
	var touch : Dynamic;
	var version : Dynamic;
	var window : Dynamic;
	function AdapterRegistry(returnWrappers:Bool):Void;
	@:overload(function(node:HTMLElement, classStr:String):Void { })
	@:overload(function(node:String, classStr:Array<Dynamic>):Void { })
	@:overload(function(node:HTMLElement, classStr:Array<Dynamic>):Void { })
	function addClass(node:String, classStr:String):Void;
	function addOnLoad(priority:Float, context:Dynamic, callback:haxe.Constraints.Function):Void;
	@:overload(function(obj:haxe.Constraints.Function, functionName:String):Void { })
	@:overload(function(obj:Dynamic, functionName:haxe.Constraints.Function):Void { })
	@:overload(function(obj:haxe.Constraints.Function, functionName:haxe.Constraints.Function):Void { })
	function addOnUnload(obj:Dynamic, functionName:String):Void;
	@:overload(function(obj:Dynamic, functionName:haxe.Constraints.Function):Void { })
	function addOnWindowUnload(obj:Dynamic, functionName:String):Void;
	@:overload(function(node:String, properties:Dynamic, duration:Float, easing:haxe.Constraints.Function, onEnd:haxe.Constraints.Function, delay:Float):Dynamic { })
	function anim(node:HTMLElement, properties:Dynamic, duration:Float, easing:haxe.Constraints.Function, onEnd:haxe.Constraints.Function, delay:Float):Dynamic;
	function animateProperty(args:Dynamic):Dynamic;
	function Animation(args:Dynamic):Void;
	@:overload(function(node:String, name:String, value:String):Dynamic { })
	@:overload(function(node:HTMLElement, name:Dynamic, value:String):Dynamic { })
	@:overload(function(node:String, name:Dynamic, value:String):Dynamic { })
	function attr(node:HTMLElement, name:String, value:String):Dynamic;
	function blendColors(start:dojo._base.Color, end:dojo._base.Color, weight:Float, obj:dojo._base.Color):Dynamic;
	function body(doc:HTMLDocument):Dynamic;
	@:overload(function(id:HTMLElement, doc:HTMLDocument):Dynamic { })
	function byId(id:String, doc:HTMLDocument):Dynamic;
	@:overload(function(module:Dynamic, url:String, value:String):Dynamic { })
	@:overload(function(module:String, url:String, value:Dynamic):Dynamic { })
	@:overload(function(module:Dynamic, url:String, value:Dynamic):Dynamic { })
	function cache(module:String, url:String, value:String):Dynamic;
	function clearCache():Void;
	@:overload(function(color:String):Void { })
	@:overload(function(color:Dynamic):Void { })
	function Color(color:Array<Dynamic>):Void;
	function colorFromArray(a:Array<Dynamic>, obj:dojo._base.Color):Dynamic;
	function colorFromHex(color:String, obj:dojo._base.Color):Dynamic;
	function colorFromRgb(color:String, obj:dojo._base.Color):Dynamic;
	function colorFromString(str:String, obj:dojo._base.Color):Dynamic;
	@:overload(function(obj:Dynamic, event:String, context:Dynamic, method:String, dontFix:Bool):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, context:Dynamic, method:haxe.Constraints.Function, dontFix:Bool):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, context:Dynamic, method:haxe.Constraints.Function, dontFix:Bool):Dynamic { })
	function connect(obj:Dynamic, event:String, context:Dynamic, method:String, dontFix:Bool):Dynamic;
	@:overload(function(node:String, box:Dynamic):Dynamic { })
	function contentBox(node:HTMLElement, box:Dynamic):Dynamic;
	function cookie(name:String, value:String, props:Dynamic):Dynamic;
	@:overload(function(node:String, includeScroll:Bool):Dynamic { })
	function coords(node:HTMLElement, includeScroll:Bool):Dynamic;
	@:overload(function(tag:String, attrs:Dynamic, refNode:HTMLElement, pos:String):Dynamic { })
	@:overload(function(tag:HTMLElement, attrs:Dynamic, refNode:String, pos:String):Dynamic { })
	@:overload(function(tag:String, attrs:Dynamic, refNode:String, pos:String):Dynamic { })
	function create(tag:HTMLElement, attrs:Dynamic, refNode:HTMLElement, pos:String):Dynamic;
	@:overload(function(className:String, superclass:Array<haxe.Constraints.Function>, props:Dynamic):dojo._base.declare.__DeclareCreatedObject { })
	function declare(className:String, superclass:haxe.Constraints.Function, props:Dynamic):dojo._base.declare.__DeclareCreatedObject;
	function Deferred(canceller:haxe.Constraints.Function):Void;
	function DeferredList(list:Array<Dynamic>, fireOnOneCallback:Bool, fireOnOneErrback:Bool, consumeErrors:Bool, canceller:haxe.Constraints.Function):Void;
	function deprecated(behaviour:String, extra:String, removal:String):Void;
	function destroy(node:Dynamic):Void;
	function disconnect(handle:Dynamic):Void;
	function docScroll(doc:HTMLDocument):Dynamic;
	function empty(node:Dynamic):Void;
	function eval(scriptText:Dynamic):Dynamic;
	@:overload(function(arr:String, callback:haxe.Constraints.Function, thisObject:Dynamic):Bool { })
	@:overload(function(arr:Array<Dynamic>, callback:String, thisObject:Dynamic):Bool { })
	@:overload(function(arr:String, callback:String, thisObject:Dynamic):Bool { })
	function every(arr:Array<Dynamic>, callback:haxe.Constraints.Function, thisObject:Dynamic):Bool;
	function exit(exitcode:Dynamic):Void;
	function experimental(moduleName:String, extra:String):Void;
	function fadeIn(args:Dynamic):Dynamic;
	function fadeOut(args:Dynamic):Dynamic;
	@:overload(function(inputNode:String):Dynamic { })
	function fieldToObject(inputNode:HTMLElement):Dynamic;
	@:overload(function(arr:Array<Dynamic>, callback:String, thisObject:Dynamic):Array<Dynamic> { })
	function filter(arr:Array<Dynamic>, callback:haxe.Constraints.Function, thisObject:Dynamic):Array<Dynamic>;
	function fixEvent(evt:Event, sender:HTMLElement):Event;
	function fixIeBiDiScrollLeft(scrollLeft:Float, doc:HTMLDocument):Float;
	@:overload(function(arr:String, callback:haxe.Constraints.Function, thisObject:Dynamic):Void { })
	@:overload(function(arr:Array<Dynamic>, callback:String, thisObject:Dynamic):Void { })
	@:overload(function(arr:String, callback:String, thisObject:Dynamic):Void { })
	function forEach(arr:Array<Dynamic>, callback:haxe.Constraints.Function, thisObject:Dynamic):Void;
	@:overload(function(formNode:String, prettyPrint:Bool):String { })
	function formToJson(formNode:HTMLElement, prettyPrint:Bool):String;
	@:overload(function(formNode:String):Dynamic { })
	function formToObject(formNode:HTMLElement):Dynamic;
	@:overload(function(formNode:String):String { })
	function formToQuery(formNode:HTMLElement):String;
	function fromJson(js:String):Dynamic;
	@:overload(function(node:String, name:String):Dynamic { })
	function getAttr(node:HTMLElement, name:String):Dynamic;
	function getBorderExtents(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	function getComputedStyle(node:HTMLElement):Void;
	function getContentBox(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	function getIeDocumentElementOffset(doc:HTMLDocument):Dynamic;
	function getL10nName(moduleName:Dynamic, bundleName:Dynamic, locale:Dynamic):String;
	function getMarginBox(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	function getMarginExtents(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	@:overload(function(node:String, computedStyle:Dynamic):Dynamic { })
	function getMarginSize(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	@:overload(function(node:String, name:String):Dynamic { })
	function getNodeProp(node:HTMLElement, name:String):Dynamic;
	function getPadBorderExtents(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	function getPadExtents(node:HTMLElement, computedStyle:Dynamic):Dynamic;
	@:overload(function(node:String, name:String):Dynamic { })
	function getProp(node:HTMLElement, name:String):Dynamic;
	@:overload(function(node:String, name:String):Dynamic { })
	function getStyle(node:HTMLElement, name:String):Dynamic;
	@:overload(function(node:String, name:String):Bool { })
	function hasAttr(node:HTMLElement, name:String):Bool;
	@:overload(function(node:HTMLElement, classStr:String):Bool { })
	function hasClass(node:String, classStr:String):Bool;
	function hash(hash:String, replace:Bool):Dynamic;
	function indexOf(arr:Array<Dynamic>, value:Dynamic, fromIndex:Float, findLast:Bool):Float;
	function isBodyLtr(doc:HTMLDocument):Bool;
	@:overload(function(node:String, ancestor:HTMLElement):Bool { })
	@:overload(function(node:HTMLElement, ancestor:String):Bool { })
	@:overload(function(node:String, ancestor:String):Bool { })
	function isDescendant(node:HTMLElement, ancestor:HTMLElement):Bool;
	function lastIndexOf(arr:Dynamic, value:Dynamic, fromIndex:Float):Float;
	function loadInit(f:Dynamic):Void;
	@:overload(function(arr:String, callback:haxe.Constraints.Function, thisObject:Dynamic, Ctr:Dynamic):Array<Dynamic> { })
	@:overload(function(arr:Array<Dynamic>, callback:String, thisObject:Dynamic, Ctr:Dynamic):Array<Dynamic> { })
	@:overload(function(arr:String, callback:String, thisObject:Dynamic, Ctr:Dynamic):Array<Dynamic> { })
	function map(arr:Array<Dynamic>, callback:haxe.Constraints.Function, thisObject:Dynamic, Ctr:Dynamic):Array<Dynamic>;
	@:overload(function(node:String, box:Dynamic):Dynamic { })
	function marginBox(node:HTMLElement, box:Dynamic):Dynamic;
	function moduleUrl(module:String, url:String):String;
	function NodeList(array:Dynamic):Array<Dynamic>;
	function objectToQuery(map:Dynamic):Dynamic;
	@:overload(function(node:String, refNode:HTMLElement, position:String):HTMLElement { })
	@:overload(function(node:HTMLElement, refNode:String, position:String):HTMLElement { })
	@:overload(function(node:String, refNode:String, position:String):HTMLElement { })
	@:overload(function(node:HTMLElement, refNode:HTMLElement, position:Float):HTMLElement { })
	@:overload(function(node:String, refNode:HTMLElement, position:Float):HTMLElement { })
	@:overload(function(node:HTMLElement, refNode:String, position:Float):HTMLElement { })
	@:overload(function(node:String, refNode:String, position:Float):HTMLElement { })
	function place(node:HTMLElement, refNode:HTMLElement, position:String):HTMLElement;
	function platformRequire(modMap:Dynamic):Void;
	function popContext():Void;
	@:overload(function(node:String, includeScroll:Bool):Dynamic { })
	function position(node:HTMLElement, includeScroll:Bool):Dynamic;
	@:overload(function(node:String, name:String, value:String):Dynamic { })
	@:overload(function(node:HTMLElement, name:Dynamic, value:String):Dynamic { })
	@:overload(function(node:String, name:Dynamic, value:String):Dynamic { })
	function prop(node:HTMLElement, name:String, value:String):Dynamic;
	function provide(mid:Dynamic):Void;
	@:overload(function(g:String, d:HTMLDocument):Void { })
	function pushContext(g:Dynamic, d:HTMLDocument):Void;
	function queryToObject(str:String):Dynamic;
	function rawXhrPost(args:Dynamic):Dynamic;
	function rawXhrPut(args:Dynamic):Dynamic;
	function ready(priority:Float, context:Dynamic, callback:haxe.Constraints.Function):Void;
	function registerModulePath(moduleName:String, prefix:String):Void;
	@:overload(function(node:String, name:String):Void { })
	function removeAttr(node:HTMLElement, name:String):Void;
	@:overload(function(node:HTMLElement, classStr:String):Void { })
	@:overload(function(node:String, classStr:Array<Dynamic>):Void { })
	@:overload(function(node:HTMLElement, classStr:Array<Dynamic>):Void { })
	function removeClass(node:String, classStr:String):Void;
	@:overload(function(node:HTMLElement, addClassStr:String, removeClassStr:String):Void { })
	@:overload(function(node:String, addClassStr:Array<Dynamic>, removeClassStr:String):Void { })
	@:overload(function(node:HTMLElement, addClassStr:Array<Dynamic>, removeClassStr:String):Void { })
	@:overload(function(node:String, addClassStr:String, removeClassStr:Array<Dynamic>):Void { })
	@:overload(function(node:HTMLElement, addClassStr:String, removeClassStr:Array<Dynamic>):Void { })
	@:overload(function(node:String, addClassStr:Array<Dynamic>, removeClassStr:Array<Dynamic>):Void { })
	@:overload(function(node:HTMLElement, addClassStr:Array<Dynamic>, removeClassStr:Array<Dynamic>):Void { })
	function replaceClass(node:String, addClassStr:String, removeClassStr:String):Void;
	function require(moduleName:String, omitModuleCheck:Bool):Dynamic;
	function requireAfterIf(condition:Bool, moduleName:String, omitModuleCheck:Bool):Void;
	function requireIf(condition:Bool, moduleName:String, omitModuleCheck:Bool):Void;
	function requireLocalization(moduleName:String, bundleName:String, locale:String):Void;
	function safeMixin(target:Dynamic, source:Dynamic):Dynamic;
	@:overload(function(node:String, name:String, value:String):Dynamic { })
	@:overload(function(node:HTMLElement, name:Dynamic, value:String):Dynamic { })
	@:overload(function(node:String, name:Dynamic, value:String):Dynamic { })
	function setAttr(node:HTMLElement, name:String, value:String):Dynamic;
	function setContentSize(node:HTMLElement, box:Dynamic, computedStyle:Dynamic):Void;
	function setContext(globalObject:Dynamic, globalDocument:HTMLDocument):Void;
	function setMarginBox(node:HTMLElement, box:Dynamic, computedStyle:Dynamic):Void;
	@:overload(function(node:String, name:String, value:String):Dynamic { })
	@:overload(function(node:HTMLElement, name:Dynamic, value:String):Dynamic { })
	@:overload(function(node:String, name:Dynamic, value:String):Dynamic { })
	function setProp(node:HTMLElement, name:String, value:String):Dynamic;
	function setSelectable(node:Dynamic, selectable:Dynamic):Void;
	@:overload(function(node:String, name:String, value:String):String { })
	@:overload(function(node:HTMLElement, name:Dynamic, value:String):String { })
	@:overload(function(node:String, name:Dynamic, value:String):String { })
	function setStyle(node:HTMLElement, name:String, value:String):String;
	@:overload(function(arr:String, callback:haxe.Constraints.Function, thisObject:Dynamic):Bool { })
	@:overload(function(arr:Array<Dynamic>, callback:String, thisObject:Dynamic):Bool { })
	@:overload(function(arr:String, callback:String, thisObject:Dynamic):Bool { })
	function some(arr:Array<Dynamic>, callback:haxe.Constraints.Function, thisObject:Dynamic):Bool;
	function Stateful():Void;
	function stopEvent(evt:Event):Void;
	@:overload(function(node:String, name:String, value:String):Dynamic { })
	@:overload(function(node:HTMLElement, name:Dynamic, value:String):Dynamic { })
	@:overload(function(node:String, name:Dynamic, value:String):Dynamic { })
	function style(node:HTMLElement, name:String, value:String):Dynamic;
	function toDom(frag:String, doc:HTMLDocument):Dynamic;
	@:overload(function(node:HTMLElement, classStr:String, condition:Bool):Bool { })
	@:overload(function(node:String, classStr:Array<Dynamic>, condition:Bool):Bool { })
	@:overload(function(node:HTMLElement, classStr:Array<Dynamic>, condition:Bool):Bool { })
	function toggleClass(node:String, classStr:String, condition:Bool):Bool;
	function toJson(it:Dynamic, prettyPrint:Bool):Dynamic;
	function toPixelValue(node:HTMLElement, value:String):Float;
	function unsubscribe(handle:Dynamic):Void;
	function when(valueOrPromise:Dynamic, callback:haxe.Constraints.Function, errback:haxe.Constraints.Function, progback:haxe.Constraints.Function):dojo.promise.Promise<Dynamic>;
	function windowUnloaded():Void;
	function withDoc(documentObject:HTMLDocument, callback:haxe.Constraints.Function, thisObject:Dynamic, cbArguments:Array<Dynamic>):Dynamic;
	function withGlobal(globalObject:Dynamic, callback:haxe.Constraints.Function, thisObject:Dynamic, cbArguments:Array<Dynamic>):Dynamic;
	function xhr(method:Dynamic, args:Dynamic):Dynamic;
	function xhrDelete(args:Dynamic):Dynamic;
	function xhrGet(args:Dynamic):Dynamic;
	function xhrPost(args:Dynamic):Dynamic;
	function xhrPut(args:Dynamic):Dynamic;
};
