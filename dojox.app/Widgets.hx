extern class _ScrollableMixin extends dojox.mobile.Scrollable {
	function new():Void;
	var allowNestedScrolls : Bool;
	var appBars : Bool;
	var constraint : Bool;
	var dirLock : Bool;
	var disableFlashScrollBar : Bool;
	var fadeScrollBar : Bool;
	var fixedFooterHeight : Float;
	var fixedHeaderHeight : Float;
	var height : String;
	var isLocalFooter : Bool;
	var propagatable : Bool;
	var scrollableParams : Dynamic;
	var scrollBar : Bool;
	var scrollDir : String;
	var scrollType : Float;
	var threshold : Float;
	var touchNode : HTMLElement;
	var weight : Float;
	function abort():Void;
	function addCover():Void;
	function adjustDestination(to:Dynamic, pos:Dynamic, dim:Dynamic):Bool;
	function buildRendering():Void;
	function calcScrollBarPos(to:Dynamic):Dynamic;
	function calcSpeed(distance:Float, time:Float):Float;
	function checkFixedBar(node:HTMLElement, local:Bool):Dynamic;
	function cleanup():Void;
	function createMask():Void;
	function destroy():Void;
	function findAppBars():Void;
	function findDisp(node:HTMLElement):Dynamic;
	function flashScrollBar():Void;
	function getDim():Dynamic;
	function getPos():Dynamic;
	function getScreenSize():Dynamic;
	function getSpeed():Dynamic;
	function hideScrollBar():Void;
	function init(params:Dynamic):Void;
	function isFormElement(node:HTMLElement):Bool;
	function isTopLevel():Bool;
	function makeTranslateStr(to:Dynamic):String;
	function removeCover():Void;
	function reparent():Void;
	function resetScrollBar():Void;
	function resize():Void;
	function scrollIntoView(node:HTMLElement, alignWithTop:Bool, duration:Float):Void;
	function scrollScrollBarTo(to:Dynamic):Void;
	function scrollTo(to:Dynamic, doNotMoveScrollBar:Bool, node:HTMLElement):Void;
	function setKeyframes(from:Dynamic, to:Dynamic, idx:Float):Void;
	function setSelectable(node:HTMLElement, selectable:Bool):Void;
	function showScrollBar():Void;
	function slideScrollBarTo(to:Dynamic, duration:Float, easing:String):Void;
	function slideTo(to:Dynamic, duration:Float, easing:String):Void;
	function startup():Void;
	function stopAnimation():Void;
	function onAfterScroll(e:Event):Void;
	function onBeforeScroll(e:Event):Bool;
	function onFlickAnimationEnd(e:Dynamic):Void;
	function onFlickAnimationStart(e:Dynamic):Void;
	function onTouchEnd(e:Event):Void;
	function onTouchMove(e:Dynamic):Void;
	function onTouchStart(e:Dynamic):Void;
}
extern class Container extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var allowNestedScrolls : Bool;
	@:overload(function(property:AppBars, value:Bool):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Constraint, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DirLock, value:Bool):Void { })
	@:overload(function(property:DisableFlashScrollBar, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FadeScrollBar, value:Bool):Void { })
	@:overload(function(property:FixedFooter, value:String):Void { })
	@:overload(function(property:FixedFooterHeight, value:Float):Void { })
	@:overload(function(property:FixedHeader, value:String):Void { })
	@:overload(function(property:FixedHeaderHeight, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Height, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IsLocalFooter, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Propagatable, value:Bool):Void { })
	@:overload(function(property:Scrollable, value:Bool):Void { })
	@:overload(function(property:ScrollableParams, value:Dynamic):Void { })
	@:overload(function(property:ScrollBar, value:Bool):Void { })
	@:overload(function(property:ScrollDir, value:String):Void { })
	@:overload(function(property:ScrollType, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Threshold, value:Float):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TouchNode, value:HTMLElement):Void { })
	@:overload(function(property:Weight, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AllowNestedScrolls, value:Bool):Void;
	@:overload(function(property:AppBars):Bool { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Constraint):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DirLock):Bool { })
	@:overload(function(property:DisableFlashScrollBar):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FadeScrollBar):Bool { })
	@:overload(function(property:FixedFooter):String { })
	@:overload(function(property:FixedFooterHeight):Float { })
	@:overload(function(property:FixedHeader):String { })
	@:overload(function(property:FixedHeaderHeight):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Height):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IsLocalFooter):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Propagatable):Bool { })
	@:overload(function(property:Scrollable):Bool { })
	@:overload(function(property:ScrollableParams):Dynamic { })
	@:overload(function(property:ScrollBar):Bool { })
	@:overload(function(property:ScrollDir):String { })
	@:overload(function(property:ScrollType):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Threshold):Float { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TouchNode):HTMLElement { })
	@:overload(function(property:Weight):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AllowNestedScrolls):Bool;
	@:overload(function(property:AppBars, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Constraint, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DirLock, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisableFlashScrollBar, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FadeScrollBar, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FixedFooter, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FixedFooterHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FixedHeader, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FixedHeaderHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLocalFooter, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Propagatable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scrollable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollableParams, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollBar, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollDir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollType, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Threshold, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TouchNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Weight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllowNestedScrolls, callback:{ }):{ function unwatch():Void; };
	var appBars : Bool;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var constraint : Bool;
	var containerNode : HTMLElement;
	var dir : String;
	var dirLock : Bool;
	var disableFlashScrollBar : Bool;
	var domNode : HTMLElement;
	var fadeScrollBar : Bool;
	var fixedFooter : String;
	var fixedFooterHeight : Float;
	var fixedHeader : String;
	var fixedHeaderHeight : Float;
	var focused : Bool;
	var height : String;
	var id : String;
	var isLocalFooter : Bool;
	var lang : String;
	var ownerDocument : Dynamic;
	var propagatable : Bool;
	var scrollable : Bool;
	var scrollableParams : Dynamic;
	var scrollBar : Bool;
	var scrollDir : String;
	var scrollType : Float;
	var srcNodeRef : HTMLElement;
	var style : String;
	var threshold : Float;
	var title : String;
	var tooltip : String;
	var touchNode : HTMLElement;
	var weight : Float;
	function abort():Void;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
	function addCover():Void;
	function adjustDestination(to:Dynamic, pos:Dynamic, dim:Dynamic):Bool;
	function buildRendering():Void;
	function calcScrollBarPos(to:Dynamic):Dynamic;
	function calcSpeed(distance:Float, time:Float):Float;
	function checkFixedBar(node:HTMLElement, local:Bool):Dynamic;
	function cleanup():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createMask():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function findAppBars():Void;
	function findDisp(node:HTMLElement):Dynamic;
	function flashScrollBar():Void;
	function getChildren():Array<Dynamic>;
	function getDim():Dynamic;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPos():Dynamic;
	function getPreviousSibling():Dynamic;
	function getScreenSize():Dynamic;
	function getSpeed():Dynamic;
	function hasChildren():Bool;
	function hideScrollBar():Void;
	function init(params:Dynamic):Void;
	function isFocusable():Dynamic;
	function isFormElement(node:HTMLElement):Bool;
	function isLeftToRight():Dynamic;
	function isTopLevel():Bool;
	function layout():Void;
	function makeTranslateStr(to:Dynamic):String;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function own():Dynamic;
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	function postCreate():Void;
	function postMixInProperties():Void;
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
	function removeCover():Void;
	function reparent():Void;
	function resetScrollBar():Void;
	function resize(?changeSize:Dynamic, ?resultSize:Dynamic):Void;
	function scrollIntoView(node:HTMLElement, alignWithTop:Bool, duration:Float):Void;
	function scrollScrollBarTo(to:Dynamic):Void;
	function scrollTo(to:Dynamic, doNotMoveScrollBar:Bool, node:HTMLElement):Void;
	function setKeyframes(from:Dynamic, to:Dynamic, idx:Float):Void;
	function setSelectable(node:HTMLElement, selectable:Bool):Void;
	function showScrollBar():Void;
	function slideScrollBarTo(to:Dynamic, duration:Float, easing:String):Void;
	function slideTo(to:Dynamic, duration:Float, easing:String):Void;
	function startup():Void;
	function stopAnimation():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onAfterScroll(e:Event):Void;
	function onBeforeScroll(e:Event):Bool;
	function onBlur():Void;
	function onFlickAnimationEnd(e:Dynamic):Void;
	function onFlickAnimationStart(e:Dynamic):Void;
	function onFocus():Void;
	function onTouchEnd(e:Event):Void;
	function onTouchMove(e:Dynamic):Void;
	function onTouchStart(e:Dynamic):Void;
}
