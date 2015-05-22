extern class _Gauge extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:Background, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DefaultColors, value:Array<Dynamic>):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:GaugeContent, value:Array<Dynamic>):Void { })
	@:overload(function(property:Height, value:Float):Void { })
	@:overload(function(property:HideValues, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Image, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MajorTicks, value:Dynamic):Void { })
	@:overload(function(property:Max, value:Float):Void { })
	@:overload(function(property:Min, value:Float):Void { })
	@:overload(function(property:MinorTicks, value:Dynamic):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Surface, value:Dynamic):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UseRangeStyles, value:Float):Void { })
	@:overload(function(property:UseTooltip, value:Bool):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:Background):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DefaultColors):Array<Dynamic> { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:GaugeContent):Array<Dynamic> { })
	@:overload(function(property:Height):Float { })
	@:overload(function(property:HideValues):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Image):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MajorTicks):Dynamic { })
	@:overload(function(property:Max):Float { })
	@:overload(function(property:Min):Float { })
	@:overload(function(property:MinorTicks):Dynamic { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Surface):Dynamic { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UseRangeStyles):Float { })
	@:overload(function(property:UseTooltip):Bool { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:Background, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultColors, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:GaugeContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValues, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Image, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Max, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Min, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Surface, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseRangeStyles, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseTooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var background : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var defaultColors : Array<Dynamic>;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var gaugeContent : Array<Dynamic>;
	var height : Float;
	var hideValues : Bool;
	var id : String;
	var image : String;
	var lang : String;
	var majorTicks : Dynamic;
	var max : Float;
	var min : Float;
	var minorTicks : Dynamic;
	var observer : String;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
	var surface : Dynamic;
	var title : String;
	var tooltip : String;
	var useRangeStyles : Float;
	var useTooltip : Bool;
	var width : Float;
	function addIndicator(indicator:dojox.gauges._Indicator):Dynamic;
	function addRange(range:dojox.gauges.Range):Void;
	function addRanges(ranges:Array<Dynamic>):Void;
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
	function createSurface():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function draw():Void;
	function drawBackground(group:Dynamic):Void;
	function drawForeground(group:Dynamic):Void;
	function drawText(group:dojox.gfx.Group, txt:String, x:Float, y:Float, align:String, color:String, font:Dynamic):Dynamic;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseMove(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchEnd(e:Dynamic):Void;
	function handleTouchMove(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
	function handleTouchStartIndicator(indicator:dojox.gauges._Indicator, e:Dynamic):Void;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function moveIndicatorToFront(indicator:dojox.gauges._Indicator):Void;
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
	function removeIndicator(indicator:dojox.gauges._Indicator):Void;
	function removeText(t:String):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setBackground(background:Dynamic):Void;
	function setMajorTicks(ticks:Dynamic):Void;
	function setMinorTicks(ticks:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateTooltip(txt:String, e:Event):Void;
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
extern class _Indicator extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class AnalogArcIndicator extends dojox.gauges.AnalogIndicatorBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(group:Dynamic, dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class AnalogArrowIndicator extends dojox.gauges.AnalogIndicatorBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(group:Dynamic, dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class AnalogIndicatorBase extends dojox.gauges._Indicator {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(?group:Dynamic, ?dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class AnalogCircleIndicator extends dojox.gauges.AnalogIndicatorBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(group:Dynamic, dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class AnalogLineIndicator extends dojox.gauges.AnalogIndicatorBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(group:Dynamic, dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class AnalogGauge extends dojox.gauges._Gauge {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:Background, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Cx, value:Float):Void { })
	@:overload(function(property:Cy, value:Float):Void { })
	@:overload(function(property:DefaultColors, value:Array<Dynamic>):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:EndAngle, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:GaugeContent, value:Array<Dynamic>):Void { })
	@:overload(function(property:Height, value:Float):Void { })
	@:overload(function(property:HideValues, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Image, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MajorTicks, value:Dynamic):Void { })
	@:overload(function(property:Max, value:Float):Void { })
	@:overload(function(property:Min, value:Float):Void { })
	@:overload(function(property:MinorTicks, value:Dynamic):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Orientation, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Radius, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartAngle, value:Float):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Surface, value:Dynamic):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UseRangeStyles, value:Float):Void { })
	@:overload(function(property:UseTooltip, value:Bool):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:Background):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Cx):Float { })
	@:overload(function(property:Cy):Float { })
	@:overload(function(property:DefaultColors):Array<Dynamic> { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:EndAngle):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:GaugeContent):Array<Dynamic> { })
	@:overload(function(property:Height):Float { })
	@:overload(function(property:HideValues):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Image):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MajorTicks):Dynamic { })
	@:overload(function(property:Max):Float { })
	@:overload(function(property:Min):Float { })
	@:overload(function(property:MinorTicks):Dynamic { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Orientation):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Radius):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartAngle):Float { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Surface):Dynamic { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UseRangeStyles):Float { })
	@:overload(function(property:UseTooltip):Bool { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:Background, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Cx, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Cy, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultColors, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndAngle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:GaugeContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValues, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Image, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Max, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Min, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Orientation, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Radius, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartAngle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Surface, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseRangeStyles, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseTooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var background : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var cx : Float;
	var cy : Float;
	var defaultColors : Array<Dynamic>;
	var dir : String;
	var domNode : HTMLElement;
	var endAngle : Float;
	var focused : Bool;
	var gaugeContent : Array<Dynamic>;
	var height : Float;
	var hideValues : Bool;
	var id : String;
	var image : String;
	var lang : String;
	var majorTicks : Dynamic;
	var max : Float;
	var min : Float;
	var minorTicks : Dynamic;
	var observer : String;
	var orientation : String;
	var ownerDocument : Dynamic;
	var radius : Float;
	var srcNodeRef : HTMLElement;
	var startAngle : Float;
	var style : String;
	var surface : Dynamic;
	var title : String;
	var tooltip : String;
	var useRangeStyles : Float;
	var useTooltip : Bool;
	var width : Float;
	function addIndicator(indicator:dojox.gauges._Indicator):Dynamic;
	function addRange(range:dojox.gauges.Range):Void;
	function addRanges(ranges:Array<Dynamic>):Void;
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
	function createSurface():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function draw():Void;
	function drawBackground(group:Dynamic):Void;
	function drawForeground(group:Dynamic):Void;
	function drawRange(group:Dynamic, range:Dynamic):Void;
	function drawText(group:dojox.gfx.Group, txt:String, x:Float, y:Float, align:String, color:String, font:Dynamic):Dynamic;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function getRangeUnderMouse(e:Dynamic):Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseMove(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchEnd(e:Dynamic):Void;
	function handleTouchMove(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
	function handleTouchStartIndicator(indicator:dojox.gauges._Indicator, e:Dynamic):Void;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function moveIndicatorToFront(indicator:dojox.gauges._Indicator):Void;
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
	function removeIndicator(indicator:dojox.gauges._Indicator):Void;
	function removeText(t:String):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setBackground(background:Dynamic):Void;
	function setMajorTicks(ticks:Dynamic):Void;
	function setMinorTicks(ticks:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateTooltip(txt:String, e:Event):Void;
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
extern class AnalogNeedleIndicator extends dojox.gauges.AnalogIndicatorBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(group:Dynamic, dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class BarCircleIndicator extends dojox.gauges.BarLineIndicator {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(group:Dynamic, dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class BarLineIndicator extends dojox.gauges._Indicator {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(?group:Dynamic, ?dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class BarIndicator extends dojox.gauges.BarLineIndicator {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(group:Dynamic, dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class BarGauge extends dojox.gauges._Gauge {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:Background, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DataHeight, value:Float):Void { })
	@:overload(function(property:DataWidth, value:Float):Void { })
	@:overload(function(property:DataX, value:Float):Void { })
	@:overload(function(property:DataY, value:Float):Void { })
	@:overload(function(property:DefaultColors, value:Array<Dynamic>):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:GaugeContent, value:Array<Dynamic>):Void { })
	@:overload(function(property:Height, value:Float):Void { })
	@:overload(function(property:HideValues, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Image, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MajorTicks, value:Dynamic):Void { })
	@:overload(function(property:Max, value:Float):Void { })
	@:overload(function(property:Min, value:Float):Void { })
	@:overload(function(property:MinorTicks, value:Dynamic):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Surface, value:Dynamic):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UseRangeStyles, value:Float):Void { })
	@:overload(function(property:UseTooltip, value:Bool):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:Background):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DataHeight):Float { })
	@:overload(function(property:DataWidth):Float { })
	@:overload(function(property:DataX):Float { })
	@:overload(function(property:DataY):Float { })
	@:overload(function(property:DefaultColors):Array<Dynamic> { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:GaugeContent):Array<Dynamic> { })
	@:overload(function(property:Height):Float { })
	@:overload(function(property:HideValues):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Image):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MajorTicks):Dynamic { })
	@:overload(function(property:Max):Float { })
	@:overload(function(property:Min):Float { })
	@:overload(function(property:MinorTicks):Dynamic { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Surface):Dynamic { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UseRangeStyles):Float { })
	@:overload(function(property:UseTooltip):Bool { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:Background, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DataHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DataWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DataX, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DataY, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultColors, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:GaugeContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValues, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Image, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Max, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Min, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Surface, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseRangeStyles, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseTooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var background : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dataHeight : Float;
	var dataWidth : Float;
	var dataX : Float;
	var dataY : Float;
	var defaultColors : Array<Dynamic>;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var gaugeContent : Array<Dynamic>;
	var height : Float;
	var hideValues : Bool;
	var id : String;
	var image : String;
	var lang : String;
	var majorTicks : Dynamic;
	var max : Float;
	var min : Float;
	var minorTicks : Dynamic;
	var observer : String;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
	var surface : Dynamic;
	var title : String;
	var tooltip : String;
	var useRangeStyles : Float;
	var useTooltip : Bool;
	var width : Float;
	function addIndicator(indicator:dojox.gauges._Indicator):Dynamic;
	function addRange(range:dojox.gauges.Range):Void;
	function addRanges(ranges:Array<Dynamic>):Void;
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
	function createSurface():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function draw():Void;
	function drawBackground(group:Dynamic):Void;
	function drawForeground(group:Dynamic):Void;
	function drawRange(group:Dynamic, range:Dynamic):Void;
	function drawText(group:dojox.gfx.Group, txt:String, x:Float, y:Float, align:String, color:String, font:Dynamic):Dynamic;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function getRangeUnderMouse(e:Dynamic):Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseMove(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchEnd(e:Dynamic):Void;
	function handleTouchMove(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
	function handleTouchStartIndicator(indicator:dojox.gauges._Indicator, e:Dynamic):Void;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function moveIndicatorToFront(indicator:dojox.gauges._Indicator):Void;
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
	function removeIndicator(indicator:dojox.gauges._Indicator):Void;
	function removeText(t:String):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setBackground(background:Dynamic):Void;
	function setMajorTicks(ticks:Dynamic):Void;
	function setMinorTicks(ticks:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateTooltip(txt:String, e:Event):Void;
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
extern class GlossyHorizontalGaugeMarker extends dojox.gauges.BarLineIndicator {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(group:Dynamic, dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class GlossyCircularGauge extends dojox.gauges.GlossyCircularGaugeBase {
	function new():Void;
	var attributeMap : Dynamic;
	@:overload(function(property:Background, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Cx, value:Float):Void { })
	@:overload(function(property:Cy, value:Float):Void { })
	@:overload(function(property:DefaultColors, value:Array<Dynamic>):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:EndAngle, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:GaugeContent, value:Array<Dynamic>):Void { })
	@:overload(function(property:Height, value:Float):Void { })
	@:overload(function(property:HideValues, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Image, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MajorTicks, value:Dynamic):Void { })
	@:overload(function(property:MajorTicksColor, value:Dynamic):Void { })
	@:overload(function(property:MajorTicksInterval, value:Float):Void { })
	@:overload(function(property:MajorTicksLabelPlacement, value:String):Void { })
	@:overload(function(property:Max, value:Float):Void { })
	@:overload(function(property:Min, value:Float):Void { })
	@:overload(function(property:MinorTicks, value:Dynamic):Void { })
	@:overload(function(property:MinorTicksColor, value:Dynamic):Void { })
	@:overload(function(property:MinorTicksInterval, value:Float):Void { })
	@:overload(function(property:NeedleColor, value:Dynamic):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Orientation, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Radius, value:Float):Void { })
	@:overload(function(property:ScalePrecision, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartAngle, value:Float):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Surface, value:Dynamic):Void { })
	@:overload(function(property:TextIndicatorColor, value:Dynamic):Void { })
	@:overload(function(property:TextIndicatorFont, value:String):Void { })
	@:overload(function(property:TextIndicatorPrecision, value:Float):Void { })
	@:overload(function(property:TextIndicatorVisible, value:Bool):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UseRangeStyles, value:Float):Void { })
	@:overload(function(property:UseTooltip, value:Bool):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:Background):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Cx):Float { })
	@:overload(function(property:Cy):Float { })
	@:overload(function(property:DefaultColors):Array<Dynamic> { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:EndAngle):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:GaugeContent):Array<Dynamic> { })
	@:overload(function(property:Height):Float { })
	@:overload(function(property:HideValues):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Image):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MajorTicks):Dynamic { })
	@:overload(function(property:MajorTicksColor):Dynamic { })
	@:overload(function(property:MajorTicksInterval):Float { })
	@:overload(function(property:MajorTicksLabelPlacement):String { })
	@:overload(function(property:Max):Float { })
	@:overload(function(property:Min):Float { })
	@:overload(function(property:MinorTicks):Dynamic { })
	@:overload(function(property:MinorTicksColor):Dynamic { })
	@:overload(function(property:MinorTicksInterval):Float { })
	@:overload(function(property:NeedleColor):Dynamic { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Orientation):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Radius):Float { })
	@:overload(function(property:ScalePrecision):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartAngle):Float { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Surface):Dynamic { })
	@:overload(function(property:TextIndicatorColor):Dynamic { })
	@:overload(function(property:TextIndicatorFont):String { })
	@:overload(function(property:TextIndicatorPrecision):Float { })
	@:overload(function(property:TextIndicatorVisible):Bool { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UseRangeStyles):Float { })
	@:overload(function(property:UseTooltip):Bool { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:Background, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Cx, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Cy, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultColors, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndAngle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:GaugeContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValues, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Image, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicksColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicksInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicksLabelPlacement, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Max, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Min, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NeedleColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Orientation, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Radius, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScalePrecision, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartAngle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Surface, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorFont, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorPrecision, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorVisible, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseRangeStyles, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseTooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var background : Dynamic;
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var cx : Float;
	var cy : Float;
	var defaultColors : Array<Dynamic>;
	var dir : String;
	var domNode : HTMLElement;
	var endAngle : Float;
	var focused : Bool;
	var font : Dynamic;
	var gaugeContent : Array<Dynamic>;
	var height : Float;
	var hideValues : Bool;
	var id : String;
	var image : String;
	var lang : String;
	var majorTicks : Dynamic;
	var majorTicksColor : Dynamic;
	var majorTicksInterval : Float;
	var majorTicksLabelPlacement : String;
	var max : Float;
	var min : Float;
	var minorTicks : Dynamic;
	var minorTicksColor : Dynamic;
	var minorTicksInterval : Float;
	var needleColor : Dynamic;
	var noChange : Bool;
	var observer : String;
	var orientation : String;
	var ownerDocument : Dynamic;
	var radius : Float;
	var scalePrecision : Float;
	var srcNodeRef : HTMLElement;
	var startAngle : Float;
	var style : String;
	var surface : Dynamic;
	var textIndicatorColor : Dynamic;
	var textIndicatorFont : String;
	var textIndicatorPrecision : Float;
	var textIndicatorVisible : Bool;
	var title : String;
	var tooltip : String;
	var useRangeStyles : Float;
	var useTooltip : Bool;
	var value : Float;
	var width : Float;
	function addIndicator(indicator:dojox.gauges._Indicator):Dynamic;
	function addRange(range:dojox.gauges.Range):Void;
	function addRanges(ranges:Array<Dynamic>):Void;
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
	function createSurface():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function draw():Void;
	function drawBackground(group:Dynamic):Void;
	function drawForeground(group:Dynamic):Void;
	function drawRange(group:Dynamic, range:Dynamic):Void;
	function drawText(group:dojox.gfx.Group, txt:String, x:Float, y:Float, align:String, color:String, font:Dynamic):Dynamic;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getMajorTicksLength():Dynamic;
	function getMajorTicksOffset():Dynamic;
	function getMinorTicksLength():Dynamic;
	function getMinorTicksOffset():Dynamic;
	function getParent():Dynamic;
	function getRangeUnderMouse(e:Dynamic):Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseMove(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchEnd(e:Dynamic):Void;
	function handleTouchMove(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
	function handleTouchStartIndicator(indicator:dojox.gauges._Indicator, e:Dynamic):Void;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function moveIndicatorToFront(indicator:dojox.gauges._Indicator):Void;
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
	function removeIndicator(indicator:dojox.gauges._Indicator):Void;
	function removeText(t:String):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setBackground(background:Dynamic):Void;
	function setMajorTicks(ticks:Dynamic):Void;
	function setMajorTicksLength(length:Dynamic):haxe.Constraints.Function;
	function setMajorTicksOffset(offset:Dynamic):haxe.Constraints.Function;
	function setMinorTicks(ticks:Dynamic):Void;
	function setMinorTicksLength(length:Dynamic):haxe.Constraints.Function;
	function setMinorTicksOffset(offset:Dynamic):haxe.Constraints.Function;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateTooltip(txt:String, e:Event):Void;
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
	function onValueChanged():Void;
}
extern class GlossyCircularGaugeNeedle extends dojox.gauges.AnalogIndicatorBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
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
	function draw(group:Dynamic, dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class GlossyCircularGaugeBase extends dojox.gauges.AnalogGauge {
	function new():Void;
	var attributeMap : Dynamic;
	@:overload(function(property:Background, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Cx, value:Float):Void { })
	@:overload(function(property:Cy, value:Float):Void { })
	@:overload(function(property:DefaultColors, value:Array<Dynamic>):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:EndAngle, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:GaugeContent, value:Array<Dynamic>):Void { })
	@:overload(function(property:Height, value:Float):Void { })
	@:overload(function(property:HideValues, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Image, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MajorTicks, value:Dynamic):Void { })
	@:overload(function(property:MajorTicksColor, value:Dynamic):Void { })
	@:overload(function(property:MajorTicksInterval, value:Float):Void { })
	@:overload(function(property:MajorTicksLabelPlacement, value:String):Void { })
	@:overload(function(property:Max, value:Float):Void { })
	@:overload(function(property:Min, value:Float):Void { })
	@:overload(function(property:MinorTicks, value:Dynamic):Void { })
	@:overload(function(property:MinorTicksColor, value:Dynamic):Void { })
	@:overload(function(property:MinorTicksInterval, value:Float):Void { })
	@:overload(function(property:NeedleColor, value:Dynamic):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Orientation, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Radius, value:Float):Void { })
	@:overload(function(property:ScalePrecision, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartAngle, value:Float):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Surface, value:Dynamic):Void { })
	@:overload(function(property:TextIndicatorColor, value:Dynamic):Void { })
	@:overload(function(property:TextIndicatorFont, value:String):Void { })
	@:overload(function(property:TextIndicatorPrecision, value:Float):Void { })
	@:overload(function(property:TextIndicatorVisible, value:Bool):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UseRangeStyles, value:Float):Void { })
	@:overload(function(property:UseTooltip, value:Bool):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:Background):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Cx):Float { })
	@:overload(function(property:Cy):Float { })
	@:overload(function(property:DefaultColors):Array<Dynamic> { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:EndAngle):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:GaugeContent):Array<Dynamic> { })
	@:overload(function(property:Height):Float { })
	@:overload(function(property:HideValues):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Image):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MajorTicks):Dynamic { })
	@:overload(function(property:MajorTicksColor):Dynamic { })
	@:overload(function(property:MajorTicksInterval):Float { })
	@:overload(function(property:MajorTicksLabelPlacement):String { })
	@:overload(function(property:Max):Float { })
	@:overload(function(property:Min):Float { })
	@:overload(function(property:MinorTicks):Dynamic { })
	@:overload(function(property:MinorTicksColor):Dynamic { })
	@:overload(function(property:MinorTicksInterval):Float { })
	@:overload(function(property:NeedleColor):Dynamic { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Orientation):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Radius):Float { })
	@:overload(function(property:ScalePrecision):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartAngle):Float { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Surface):Dynamic { })
	@:overload(function(property:TextIndicatorColor):Dynamic { })
	@:overload(function(property:TextIndicatorFont):String { })
	@:overload(function(property:TextIndicatorPrecision):Float { })
	@:overload(function(property:TextIndicatorVisible):Bool { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UseRangeStyles):Float { })
	@:overload(function(property:UseTooltip):Bool { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:Background, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Cx, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Cy, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultColors, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndAngle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:GaugeContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValues, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Image, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicksColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicksInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicksLabelPlacement, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Max, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Min, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NeedleColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Orientation, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Radius, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScalePrecision, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartAngle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Surface, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorFont, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorPrecision, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorVisible, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseRangeStyles, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseTooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var background : Dynamic;
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var cx : Float;
	var cy : Float;
	var defaultColors : Array<Dynamic>;
	var dir : String;
	var domNode : HTMLElement;
	var endAngle : Float;
	var focused : Bool;
	var font : Dynamic;
	var gaugeContent : Array<Dynamic>;
	var height : Float;
	var hideValues : Bool;
	var id : String;
	var image : String;
	var lang : String;
	var majorTicks : Dynamic;
	var majorTicksColor : Dynamic;
	var majorTicksInterval : Float;
	var majorTicksLabelPlacement : String;
	var max : Float;
	var min : Float;
	var minorTicks : Dynamic;
	var minorTicksColor : Dynamic;
	var minorTicksInterval : Float;
	var needleColor : Dynamic;
	var noChange : Bool;
	var observer : String;
	var orientation : String;
	var ownerDocument : Dynamic;
	var radius : Float;
	var scalePrecision : Float;
	var srcNodeRef : HTMLElement;
	var startAngle : Float;
	var style : String;
	var surface : Dynamic;
	var textIndicatorColor : Dynamic;
	var textIndicatorFont : String;
	var textIndicatorPrecision : Float;
	var textIndicatorVisible : Bool;
	var title : String;
	var tooltip : String;
	var useRangeStyles : Float;
	var useTooltip : Bool;
	var value : Float;
	var width : Float;
	function addIndicator(indicator:dojox.gauges._Indicator):Dynamic;
	function addRange(range:dojox.gauges.Range):Void;
	function addRanges(ranges:Array<Dynamic>):Void;
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
	function createSurface():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function draw():Void;
	function drawBackground(group:Dynamic):Void;
	function drawForeground(group:Dynamic):Void;
	function drawRange(group:Dynamic, range:Dynamic):Void;
	function drawText(group:dojox.gfx.Group, txt:String, x:Float, y:Float, align:String, color:String, font:Dynamic):Dynamic;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getMajorTicksLength():Dynamic;
	function getMajorTicksOffset():Dynamic;
	function getMinorTicksLength():Dynamic;
	function getMinorTicksOffset():Dynamic;
	function getParent():Dynamic;
	function getRangeUnderMouse(e:Dynamic):Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseMove(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchEnd(e:Dynamic):Void;
	function handleTouchMove(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
	function handleTouchStartIndicator(indicator:dojox.gauges._Indicator, e:Dynamic):Void;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function moveIndicatorToFront(indicator:dojox.gauges._Indicator):Void;
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
	function removeIndicator(indicator:dojox.gauges._Indicator):Void;
	function removeText(t:String):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setBackground(background:Dynamic):Void;
	function setMajorTicks(ticks:Dynamic):Void;
	function setMajorTicksLength(length:Dynamic):haxe.Constraints.Function;
	function setMajorTicksOffset(offset:Dynamic):haxe.Constraints.Function;
	function setMinorTicks(ticks:Dynamic):Void;
	function setMinorTicksLength(length:Dynamic):haxe.Constraints.Function;
	function setMinorTicksOffset(offset:Dynamic):haxe.Constraints.Function;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateTooltip(txt:String, e:Event):Void;
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
	function onValueChanged():Void;
}
extern class GlossyHorizontalGauge extends dojox.gauges.BarGauge {
	function new():Void;
	var attributeMap : Dynamic;
	@:overload(function(property:Background, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DataHeight, value:Float):Void { })
	@:overload(function(property:DataWidth, value:Float):Void { })
	@:overload(function(property:DataX, value:Float):Void { })
	@:overload(function(property:DataY, value:Float):Void { })
	@:overload(function(property:DefaultColors, value:Array<Dynamic>):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:GaugeContent, value:Array<Dynamic>):Void { })
	@:overload(function(property:Height, value:Float):Void { })
	@:overload(function(property:HideValues, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Image, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MajorTicks, value:Dynamic):Void { })
	@:overload(function(property:MajorTicksColor, value:Dynamic):Void { })
	@:overload(function(property:MajorTicksInterval, value:Float):Void { })
	@:overload(function(property:MarkerColor, value:String):Void { })
	@:overload(function(property:Max, value:Float):Void { })
	@:overload(function(property:Min, value:Float):Void { })
	@:overload(function(property:MinorTicks, value:Dynamic):Void { })
	@:overload(function(property:MinorTicksColor, value:Dynamic):Void { })
	@:overload(function(property:MinorTicksInterval, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ScalePrecision, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Surface, value:Dynamic):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UseRangeStyles, value:Float):Void { })
	@:overload(function(property:UseTooltip, value:Bool):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:Background):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DataHeight):Float { })
	@:overload(function(property:DataWidth):Float { })
	@:overload(function(property:DataX):Float { })
	@:overload(function(property:DataY):Float { })
	@:overload(function(property:DefaultColors):Array<Dynamic> { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:GaugeContent):Array<Dynamic> { })
	@:overload(function(property:Height):Float { })
	@:overload(function(property:HideValues):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Image):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MajorTicks):Dynamic { })
	@:overload(function(property:MajorTicksColor):Dynamic { })
	@:overload(function(property:MajorTicksInterval):Float { })
	@:overload(function(property:MarkerColor):String { })
	@:overload(function(property:Max):Float { })
	@:overload(function(property:Min):Float { })
	@:overload(function(property:MinorTicks):Dynamic { })
	@:overload(function(property:MinorTicksColor):Dynamic { })
	@:overload(function(property:MinorTicksInterval):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ScalePrecision):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Surface):Dynamic { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UseRangeStyles):Float { })
	@:overload(function(property:UseTooltip):Bool { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:Background, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DataHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DataWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DataX, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DataY, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultColors, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:GaugeContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValues, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Image, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicksColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicksInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MarkerColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Max, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Min, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScalePrecision, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Surface, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseRangeStyles, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseTooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var background : Dynamic;
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dataHeight : Float;
	var dataWidth : Float;
	var dataX : Float;
	var dataY : Float;
	var defaultColors : Array<Dynamic>;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var font : Dynamic;
	var gaugeContent : Array<Dynamic>;
	var height : Float;
	var hideValues : Bool;
	var id : String;
	var image : String;
	var lang : String;
	var majorTicks : Dynamic;
	var majorTicksColor : Dynamic;
	var majorTicksInterval : Float;
	var markerColor : String;
	var max : Float;
	var min : Float;
	var minorTicks : Dynamic;
	var minorTicksColor : Dynamic;
	var minorTicksInterval : Float;
	var noChange : Bool;
	var observer : String;
	var ownerDocument : Dynamic;
	var scalePrecision : Float;
	var srcNodeRef : HTMLElement;
	var style : String;
	var surface : Dynamic;
	var title : String;
	var tooltip : String;
	var useRangeStyles : Float;
	var useTooltip : Bool;
	var value : Float;
	var width : Float;
	function addIndicator(indicator:dojox.gauges._Indicator):Dynamic;
	function addRange(range:dojox.gauges.Range):Void;
	function addRanges(ranges:Array<Dynamic>):Void;
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
	function createSurface():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function draw():Void;
	function drawBackground(group:Dynamic):Void;
	function drawForeground(group:Dynamic):Void;
	function drawRange(group:Dynamic, range:Dynamic):Void;
	function drawText(group:dojox.gfx.Group, txt:String, x:Float, y:Float, align:String, color:String, font:Dynamic):Dynamic;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getMajorTicksLength():Dynamic;
	function getMinorTicksLength():Dynamic;
	function getParent():Dynamic;
	function getRangeUnderMouse(e:Dynamic):Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseMove(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchEnd(e:Dynamic):Void;
	function handleTouchMove(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
	function handleTouchStartIndicator(indicator:dojox.gauges._Indicator, e:Dynamic):Void;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function moveIndicatorToFront(indicator:dojox.gauges._Indicator):Void;
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
	function removeIndicator(indicator:dojox.gauges._Indicator):Void;
	function removeText(t:String):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setBackground(background:Dynamic):Void;
	function setMajorTicks(ticks:Dynamic):Void;
	function setMajorTicksLength(length:Dynamic):haxe.Constraints.Function;
	function setMinorTicks(ticks:Dynamic):Void;
	function setMinorTicksLength(length:Dynamic):haxe.Constraints.Function;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateTooltip(txt:String, e:Event):Void;
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
	function onValueChanged():Void;
}
extern class Range extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:High, value:Float):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Low, value:Float):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Size, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:High):Float { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Low):Float { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Size):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:High, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Low, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Size, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var color : Dynamic;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var high : Float;
	var hover : String;
	var id : String;
	var lang : String;
	var low : Float;
	var observer : String;
	var ownerDocument : Dynamic;
	var size : Float;
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
	function setAttribute(attr:String, value:Dynamic):Void;
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
extern class TextIndicator extends dojox.gauges._Indicator {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var align : String;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:FixedPrecision, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Front, value:Bool):Void { })
	@:overload(function(property:HideValue, value:Bool):Void { })
	@:overload(function(property:Hover, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Length, value:Float):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Offset, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Precision, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StrokeColor, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(property:X, value:Float):Void { })
	@:overload(function(property:Y, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Align, value:String):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:FixedPrecision):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Front):Bool { })
	@:overload(function(property:HideValue):Bool { })
	@:overload(function(property:Hover):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Length):Float { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Offset):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Precision):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StrokeColor):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(property:X):Float { })
	@:overload(function(property:Y):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Align):String;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FixedPrecision, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Front, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hover, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Length, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Offset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Precision, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StrokeColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:X, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Y, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Align, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var fixedPrecision : Bool;
	var focused : Bool;
	var font : Dynamic;
	var front : Bool;
	var hideValue : Bool;
	var hover : String;
	var id : String;
	var interactionMode : String;
	var label : String;
	var lang : String;
	var length : Float;
	var noChange : Bool;
	var observer : String;
	var offset : Float;
	var ownerDocument : Dynamic;
	var precision : Float;
	var srcNodeRef : HTMLElement;
	var strokeColor : String;
	var style : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	var width : Float;
	var x : Float;
	var y : Float;
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
	function draw(?group:Dynamic, ?dontAnimate:Bool):Void;
	function easing(n:Float):Float;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
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
	function remove():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update(value:Dynamic, animate:Dynamic):Void;
	function valueChanged():Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDragMove():Void;
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
extern class GlossySemiCircularGauge extends dojox.gauges.GlossyCircularGaugeBase {
	function new():Void;
	var attributeMap : Dynamic;
	@:overload(function(property:Background, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Color, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Cx, value:Float):Void { })
	@:overload(function(property:Cy, value:Float):Void { })
	@:overload(function(property:DefaultColors, value:Array<Dynamic>):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:EndAngle, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:GaugeContent, value:Array<Dynamic>):Void { })
	@:overload(function(property:Height, value:Float):Void { })
	@:overload(function(property:HideValues, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Image, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MajorTicks, value:Dynamic):Void { })
	@:overload(function(property:MajorTicksColor, value:Dynamic):Void { })
	@:overload(function(property:MajorTicksInterval, value:Float):Void { })
	@:overload(function(property:MajorTicksLabelPlacement, value:String):Void { })
	@:overload(function(property:Max, value:Float):Void { })
	@:overload(function(property:Min, value:Float):Void { })
	@:overload(function(property:MinorTicks, value:Dynamic):Void { })
	@:overload(function(property:MinorTicksColor, value:Dynamic):Void { })
	@:overload(function(property:MinorTicksInterval, value:Float):Void { })
	@:overload(function(property:NeedleColor, value:Dynamic):Void { })
	@:overload(function(property:NoChange, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:Orientation, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Radius, value:Float):Void { })
	@:overload(function(property:ScalePrecision, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartAngle, value:Float):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Surface, value:Dynamic):Void { })
	@:overload(function(property:TextIndicatorColor, value:Dynamic):Void { })
	@:overload(function(property:TextIndicatorFont, value:String):Void { })
	@:overload(function(property:TextIndicatorPrecision, value:Float):Void { })
	@:overload(function(property:TextIndicatorVisible, value:Bool):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UseRangeStyles, value:Float):Void { })
	@:overload(function(property:UseTooltip, value:Bool):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:Width, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:Background):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Color):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Cx):Float { })
	@:overload(function(property:Cy):Float { })
	@:overload(function(property:DefaultColors):Array<Dynamic> { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:EndAngle):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:GaugeContent):Array<Dynamic> { })
	@:overload(function(property:Height):Float { })
	@:overload(function(property:HideValues):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Image):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MajorTicks):Dynamic { })
	@:overload(function(property:MajorTicksColor):Dynamic { })
	@:overload(function(property:MajorTicksInterval):Float { })
	@:overload(function(property:MajorTicksLabelPlacement):String { })
	@:overload(function(property:Max):Float { })
	@:overload(function(property:Min):Float { })
	@:overload(function(property:MinorTicks):Dynamic { })
	@:overload(function(property:MinorTicksColor):Dynamic { })
	@:overload(function(property:MinorTicksInterval):Float { })
	@:overload(function(property:NeedleColor):Dynamic { })
	@:overload(function(property:NoChange):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:Orientation):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Radius):Float { })
	@:overload(function(property:ScalePrecision):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartAngle):Float { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Surface):Dynamic { })
	@:overload(function(property:TextIndicatorColor):Dynamic { })
	@:overload(function(property:TextIndicatorFont):String { })
	@:overload(function(property:TextIndicatorPrecision):Float { })
	@:overload(function(property:TextIndicatorVisible):Bool { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UseRangeStyles):Float { })
	@:overload(function(property:UseTooltip):Bool { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:Width):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:Background, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Cx, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Cy, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultColors, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndAngle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:GaugeContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HideValues, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Image, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicksColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicksInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTicksLabelPlacement, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Max, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Min, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NeedleColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Orientation, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Radius, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScalePrecision, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartAngle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Surface, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorFont, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorPrecision, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TextIndicatorVisible, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseRangeStyles, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseTooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Width, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var background : Dynamic;
	var baseClass : String;
	var class : String;
	var color : String;
	var containerNode : HTMLElement;
	var cx : Float;
	var cy : Float;
	var defaultColors : Array<Dynamic>;
	var dir : String;
	var domNode : HTMLElement;
	var endAngle : Float;
	var focused : Bool;
	var font : Dynamic;
	var gaugeContent : Array<Dynamic>;
	var height : Float;
	var hideValues : Bool;
	var id : String;
	var image : String;
	var lang : String;
	var majorTicks : Dynamic;
	var majorTicksColor : Dynamic;
	var majorTicksInterval : Float;
	var majorTicksLabelPlacement : String;
	var max : Float;
	var min : Float;
	var minorTicks : Dynamic;
	var minorTicksColor : Dynamic;
	var minorTicksInterval : Float;
	var needleColor : Dynamic;
	var noChange : Bool;
	var observer : String;
	var orientation : String;
	var ownerDocument : Dynamic;
	var radius : Float;
	var scalePrecision : Float;
	var srcNodeRef : HTMLElement;
	var startAngle : Float;
	var style : String;
	var surface : Dynamic;
	var textIndicatorColor : Dynamic;
	var textIndicatorFont : String;
	var textIndicatorPrecision : Float;
	var textIndicatorVisible : Bool;
	var title : String;
	var tooltip : String;
	var useRangeStyles : Float;
	var useTooltip : Bool;
	var value : Float;
	var width : Float;
	function addIndicator(indicator:dojox.gauges._Indicator):Dynamic;
	function addRange(range:dojox.gauges.Range):Void;
	function addRanges(ranges:Array<Dynamic>):Void;
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
	function createSurface():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function draw():Void;
	function drawBackground(group:Dynamic):Void;
	function drawForeground(group:Dynamic):Void;
	function drawRange(group:Dynamic, range:Dynamic):Void;
	function drawText(group:dojox.gfx.Group, txt:String, x:Float, y:Float, align:String, color:String, font:Dynamic):Dynamic;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getMajorTicksLength():Dynamic;
	function getMajorTicksOffset():Dynamic;
	function getMinorTicksLength():Dynamic;
	function getMinorTicksOffset():Dynamic;
	function getParent():Dynamic;
	function getRangeUnderMouse(e:Dynamic):Dynamic;
	function handleMouseDown(e:Dynamic):Void;
	function handleMouseMove(e:Dynamic):Void;
	function handleMouseOut(e:Dynamic):Void;
	function handleMouseOver(e:Dynamic):Void;
	function handleTouchEnd(e:Dynamic):Void;
	function handleTouchMove(e:Dynamic):Void;
	function handleTouchStart(e:Dynamic):Void;
	function handleTouchStartIndicator(indicator:dojox.gauges._Indicator, e:Dynamic):Void;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function moveIndicatorToFront(indicator:dojox.gauges._Indicator):Void;
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
	function removeIndicator(indicator:dojox.gauges._Indicator):Void;
	function removeText(t:String):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setBackground(background:Dynamic):Void;
	function setMajorTicks(ticks:Dynamic):Void;
	function setMajorTicksLength(length:Dynamic):haxe.Constraints.Function;
	function setMajorTicksOffset(offset:Dynamic):haxe.Constraints.Function;
	function setMinorTicks(ticks:Dynamic):Void;
	function setMinorTicksLength(length:Dynamic):haxe.Constraints.Function;
	function setMinorTicksOffset(offset:Dynamic):haxe.Constraints.Function;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateTooltip(txt:String, e:Event):Void;
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
	function onValueChanged():Void;
}
