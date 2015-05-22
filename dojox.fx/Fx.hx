extern class Shadow extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var animate : Bool;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Node, value:HTMLElement):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Opacity, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ShadowOffset, value:Float):Void { })
	@:overload(function(property:ShadowPng, value:String):Void { })
	@:overload(function(property:ShadowThickness, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Animate, value:Bool):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Node):HTMLElement { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Opacity):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ShadowOffset):Float { })
	@:overload(function(property:ShadowPng):String { })
	@:overload(function(property:ShadowThickness):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Animate):Bool;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Node, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Opacity, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShadowOffset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShadowPng, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShadowThickness, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Animate, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var node : HTMLElement;
	var observer : String;
	var opacity : Float;
	var ownerDocument : Dynamic;
	var shadowOffset : Float;
	var shadowPng : String;
	var shadowThickness : Float;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
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
	function resize(args:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setOpacity(n:Float, animArgs:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onShow():Void;
}
typedef _base = {
	@:overload(function(node:HTMLElement, cssClass:String, args:Dynamic):Dynamic { })
	function addClass(node:String, cssClass:String, args:Dynamic):Dynamic;
	function animateTimeline(options:Dynamic, node:HTMLElement):Void;
	function flip(args:Dynamic):Void;
	function flipCube(args:Dynamic):Void;
	function flipGrid(args:Dynamic):Void;
	function flipPage(args:Dynamic):Void;
	function removeClass(node:Dynamic, cssClass:Dynamic, args:Dynamic):Dynamic;
	function smoothScroll(args:Dynamic):Void;
	@:overload(function(node:HTMLElement, cssClass:String, condition:Bool, args:Dynamic):Dynamic { })
	function toggleClass(node:String, cssClass:String, condition:Bool, args:Dynamic):Dynamic;
};
typedef Easing = { };
typedef _arg = {
	var ShadowResizeArgs : { };
	var StyleArgs : { };
};
typedef Flip = {
	@:overload(function(node:HTMLElement, cssClass:String, args:Dynamic):Dynamic { })
	function addClass(node:String, cssClass:String, args:Dynamic):Dynamic;
	function animateTimeline(options:Dynamic, node:HTMLElement):Void;
	function flip(args:Dynamic):Void;
	function flipCube(args:Dynamic):Void;
	function flipGrid(args:Dynamic):Void;
	function flipPage(args:Dynamic):Void;
	function removeClass(node:Dynamic, cssClass:Dynamic, args:Dynamic):Dynamic;
	function smoothScroll(args:Dynamic):Void;
	@:overload(function(node:HTMLElement, cssClass:String, condition:Bool, args:Dynamic):Dynamic { })
	function toggleClass(node:String, cssClass:String, condition:Bool, args:Dynamic):Dynamic;
};
typedef Style = {
	@:overload(function(node:HTMLElement, cssClass:String, args:Dynamic):Dynamic { })
	function addClass(node:String, cssClass:String, args:Dynamic):Dynamic;
	function removeClass(node:Dynamic, cssClass:Dynamic, args:Dynamic):Dynamic;
	@:overload(function(node:HTMLElement, cssClass:String, condition:Bool, args:Dynamic):Dynamic { })
	function toggleClass(node:String, cssClass:String, condition:Bool, args:Dynamic):Dynamic;
};
typedef Split = {
	@:overload(function(node:HTMLElement, cssClass:String, args:Dynamic):Dynamic { })
	function addClass(node:String, cssClass:String, args:Dynamic):Dynamic;
	function animateTimeline(options:Dynamic, node:HTMLElement):Void;
	function flip(args:Dynamic):Void;
	function flipCube(args:Dynamic):Void;
	function flipGrid(args:Dynamic):Void;
	function flipPage(args:Dynamic):Void;
	function removeClass(node:Dynamic, cssClass:Dynamic, args:Dynamic):Dynamic;
	function smoothScroll(args:Dynamic):Void;
	@:overload(function(node:HTMLElement, cssClass:String, condition:Bool, args:Dynamic):Dynamic { })
	function toggleClass(node:String, cssClass:String, condition:Bool, args:Dynamic):Dynamic;
};
typedef Text = {
	function backspace(args:Dynamic):Void;
	function blockFadeIn(args:Dynamic):Void;
	function blockFadeOut(args:Dynamic):Void;
	function build(args:Dynamic):Void;
	function converge(args:Dynamic):Void;
	function disintegrate(args:Dynamic):Void;
	function explode(args:Dynamic):Void;
	function type(args:Dynamic):Void;
};
typedef Timeline = {
	@:overload(function(node:HTMLElement, cssClass:String, args:Dynamic):Dynamic { })
	function addClass(node:String, cssClass:String, args:Dynamic):Dynamic;
	function animateTimeline(options:Dynamic, node:HTMLElement):Void;
	function flip(args:Dynamic):Void;
	function flipCube(args:Dynamic):Void;
	function flipGrid(args:Dynamic):Void;
	function flipPage(args:Dynamic):Void;
	function removeClass(node:Dynamic, cssClass:Dynamic, args:Dynamic):Dynamic;
	function smoothScroll(args:Dynamic):Void;
	@:overload(function(node:HTMLElement, cssClass:String, condition:Bool, args:Dynamic):Dynamic { })
	function toggleClass(node:String, cssClass:String, condition:Bool, args:Dynamic):Dynamic;
};
typedef _core = { };
typedef _core = { };
typedef _core = { };
typedef _core = { };
