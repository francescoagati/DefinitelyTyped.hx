extern class CircularLinearGauge extends dojox.dgauges.CircularGauge {
	function new():Void;
	var animationDuration : Float;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:BorderColor, value:Dynamic):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FillColor, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IndicatorColor, value:Dynamic):Void { })
	@:overload(function(property:InteractionArea, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MajorTickInterval, value:Float):Void { })
	@:overload(function(property:Maximum, value:Float):Void { })
	@:overload(function(property:Minimum, value:Float):Void { })
	@:overload(function(property:MinorTickInterval, value:Float):Void { })
	@:overload(function(property:MinorTicksEnabled, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SnapInterval, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AnimationDuration, value:Float):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:BorderColor):Dynamic { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FillColor):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IndicatorColor):Dynamic { })
	@:overload(function(property:InteractionArea):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MajorTickInterval):Float { })
	@:overload(function(property:Maximum):Float { })
	@:overload(function(property:Minimum):Float { })
	@:overload(function(property:MinorTickInterval):Float { })
	@:overload(function(property:MinorTicksEnabled):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SnapInterval):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AnimationDuration):Float;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BorderColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FillColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IndicatorColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionArea, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTickInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Maximum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Minimum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTickInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AnimationDuration, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var borderColor : Dynamic;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var fillColor : Dynamic;
	var focused : Bool;
	var font : Dynamic;
	var id : String;
	var indicatorColor : Dynamic;
	var interactionArea : String;
	var interactionMode : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var lang : String;
	var majorTickInterval : Float;
	var maximum : Float;
	var minimum : Float;
	var minorTickInterval : Float;
	var minorTicksEnabled : Bool;
	var ownerDocument : Dynamic;
	var snapInterval : Float;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	var value : Float;
	function addElement(name:String, element:Dynamic):Dynamic;
	function addInvalidatingProperties(properties:Array<String>):Void;
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
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function drawBackground(g:dojox.gfx.Group):Void;
	function drawForeground(g:dojox.gfx.Group):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getElement(name:String):Dynamic;
	function getElementRenderer(name:String):Dynamic;
	function getParent():Dynamic;
	function invalidateRendering():Void;
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
	function refreshRendering():Void;
	function removeElement(name:String):Dynamic;
	@:overload(function(width:Dynamic, height:Float):Dynamic { })
	function resize(width:Float, height:Float):Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validateRendering():Void;
	function onBlur():Void;
	function onEndEditing(event:Dynamic):Void;
	function onFocus():Void;
	function onStartEditing(event:Dynamic):Void;
}
extern class HorizontalLinearGauge extends dojox.dgauges.RectangularGauge {
	function new():Void;
	var animationDuration : Float;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:BorderColor, value:Dynamic):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FillColor, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IndicatorColor, value:Dynamic):Void { })
	@:overload(function(property:InteractionArea, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MajorTickInterval, value:Float):Void { })
	@:overload(function(property:Maximum, value:Float):Void { })
	@:overload(function(property:Minimum, value:Float):Void { })
	@:overload(function(property:MinorTickInterval, value:Float):Void { })
	@:overload(function(property:MinorTicksEnabled, value:Bool):Void { })
	@:overload(function(property:Orientation, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SnapInterval, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AnimationDuration, value:Float):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:BorderColor):Dynamic { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FillColor):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IndicatorColor):Dynamic { })
	@:overload(function(property:InteractionArea):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MajorTickInterval):Float { })
	@:overload(function(property:Maximum):Float { })
	@:overload(function(property:Minimum):Float { })
	@:overload(function(property:MinorTickInterval):Float { })
	@:overload(function(property:MinorTicksEnabled):Bool { })
	@:overload(function(property:Orientation):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SnapInterval):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AnimationDuration):Float;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BorderColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FillColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IndicatorColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionArea, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTickInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Maximum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Minimum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTickInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Orientation, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AnimationDuration, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var borderColor : Dynamic;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var fillColor : Dynamic;
	var focused : Bool;
	var font : Dynamic;
	var id : String;
	var indicatorColor : Dynamic;
	var interactionArea : String;
	var interactionMode : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var lang : String;
	var majorTickInterval : Float;
	var maximum : Float;
	var minimum : Float;
	var minorTickInterval : Float;
	var minorTicksEnabled : Bool;
	var orientation : String;
	var ownerDocument : Dynamic;
	var snapInterval : Float;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	var value : Float;
	function addElement(name:String, element:Dynamic, location:String):Void;
	function addInvalidatingProperties(properties:Array<String>):Void;
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
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function drawBackground(g:dojox.gfx.Group, w:Float, h:Float):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getElement(name:String):Dynamic;
	function getElementRenderer(name:String):Dynamic;
	function getParent():Dynamic;
	function invalidateRendering():Void;
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
	function refreshRendering():Void;
	function removeElement(name:String):Dynamic;
	@:overload(function(width:Dynamic, height:Float):Dynamic { })
	function resize(width:Float, height:Float):Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validateRendering():Void;
	function onBlur():Void;
	function onEndEditing(event:Dynamic):Void;
	function onFocus():Void;
	function onStartEditing(event:Dynamic):Void;
}
extern class SemiCircularLinearGauge extends dojox.dgauges.CircularGauge {
	function new():Void;
	var animationDuration : Float;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:BorderColor, value:Dynamic):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FillColor, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IndicatorColor, value:Dynamic):Void { })
	@:overload(function(property:InteractionArea, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MajorTickInterval, value:Float):Void { })
	@:overload(function(property:Maximum, value:Float):Void { })
	@:overload(function(property:Minimum, value:Float):Void { })
	@:overload(function(property:MinorTickInterval, value:Float):Void { })
	@:overload(function(property:MinorTicksEnabled, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SnapInterval, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AnimationDuration, value:Float):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:BorderColor):Dynamic { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FillColor):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IndicatorColor):Dynamic { })
	@:overload(function(property:InteractionArea):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MajorTickInterval):Float { })
	@:overload(function(property:Maximum):Float { })
	@:overload(function(property:Minimum):Float { })
	@:overload(function(property:MinorTickInterval):Float { })
	@:overload(function(property:MinorTicksEnabled):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SnapInterval):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AnimationDuration):Float;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BorderColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FillColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IndicatorColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionArea, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTickInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Maximum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Minimum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTickInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AnimationDuration, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var borderColor : Dynamic;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var fillColor : Dynamic;
	var focused : Bool;
	var font : Dynamic;
	var id : String;
	var indicatorColor : Dynamic;
	var interactionArea : String;
	var interactionMode : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var lang : String;
	var majorTickInterval : Float;
	var maximum : Float;
	var minimum : Float;
	var minorTickInterval : Float;
	var minorTicksEnabled : Bool;
	var ownerDocument : Dynamic;
	var snapInterval : Float;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	var value : Float;
	function addElement(name:String, element:Dynamic):Dynamic;
	function addInvalidatingProperties(properties:Array<String>):Void;
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
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function drawBackground(g:dojox.gfx.Group):Void;
	function drawForeground(g:dojox.gfx.Group):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getElement(name:String):Dynamic;
	function getElementRenderer(name:String):Dynamic;
	function getParent():Dynamic;
	function invalidateRendering():Void;
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
	function refreshRendering():Void;
	function removeElement(name:String):Dynamic;
	@:overload(function(width:Dynamic, height:Float):Dynamic { })
	function resize(width:Float, height:Float):Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validateRendering():Void;
	function onBlur():Void;
	function onEndEditing(event:Dynamic):Void;
	function onFocus():Void;
	function onStartEditing(event:Dynamic):Void;
}
extern class VerticalLinearGauge extends dojox.dgauges.RectangularGauge {
	function new():Void;
	var animationDuration : Float;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:BorderColor, value:Dynamic):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FillColor, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IndicatorColor, value:Dynamic):Void { })
	@:overload(function(property:InteractionArea, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MajorTickInterval, value:Float):Void { })
	@:overload(function(property:Maximum, value:Float):Void { })
	@:overload(function(property:Minimum, value:Float):Void { })
	@:overload(function(property:MinorTickInterval, value:Float):Void { })
	@:overload(function(property:MinorTicksEnabled, value:Bool):Void { })
	@:overload(function(property:Orientation, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SnapInterval, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AnimationDuration, value:Float):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:BorderColor):Dynamic { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FillColor):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IndicatorColor):Dynamic { })
	@:overload(function(property:InteractionArea):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MajorTickInterval):Float { })
	@:overload(function(property:Maximum):Float { })
	@:overload(function(property:Minimum):Float { })
	@:overload(function(property:MinorTickInterval):Float { })
	@:overload(function(property:MinorTicksEnabled):Bool { })
	@:overload(function(property:Orientation):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SnapInterval):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AnimationDuration):Float;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BorderColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FillColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IndicatorColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionArea, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MajorTickInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Maximum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Minimum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTickInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Orientation, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AnimationDuration, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var borderColor : Dynamic;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var fillColor : Dynamic;
	var focused : Bool;
	var font : Dynamic;
	var id : String;
	var indicatorColor : Dynamic;
	var interactionArea : String;
	var interactionMode : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var lang : String;
	var majorTickInterval : Float;
	var maximum : Float;
	var minimum : Float;
	var minorTickInterval : Float;
	var minorTicksEnabled : Bool;
	var orientation : String;
	var ownerDocument : Dynamic;
	var snapInterval : Float;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	var value : Float;
	function addElement(name:String, element:Dynamic, location:String):Void;
	function addInvalidatingProperties(properties:Array<String>):Void;
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
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function drawBackground(g:dojox.gfx.Group, w:Float, h:Float):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getElement(name:String):Dynamic;
	function getElementRenderer(name:String):Dynamic;
	function getParent():Dynamic;
	function invalidateRendering():Void;
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
	function refreshRendering():Void;
	function removeElement(name:String):Dynamic;
	@:overload(function(width:Dynamic, height:Float):Dynamic { })
	function resize(width:Float, height:Float):Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validateRendering():Void;
	function onBlur():Void;
	function onEndEditing(event:Dynamic):Void;
	function onFocus():Void;
	function onStartEditing(event:Dynamic):Void;
}
