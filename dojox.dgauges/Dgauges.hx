extern class CircularRangeIndicator extends dojox.dgauges.ScaleIndicatorBase {
	function new():Void;
	var animationDuration : Float;
	@:overload(function(property:AnimationEaser, value:Dynamic):Void { })
	@:overload(function(property:EndThickness, value:Float):Void { })
	@:overload(function(property:Fill, value:Dynamic):Void { })
	@:overload(function(property:InteractionArea, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Radius, value:Float):Void { })
	@:overload(function(property:Scale, value:Dynamic):Void { })
	@:overload(function(property:Start, value:Float):Void { })
	@:overload(function(property:StartThickness, value:Float):Void { })
	@:overload(function(property:Stroke, value:Dynamic):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:AnimationDuration, value:Float):Void;
	@:overload(function(property:AnimationEaser):Dynamic { })
	@:overload(function(property:EndThickness):Float { })
	@:overload(function(property:Fill):Dynamic { })
	@:overload(function(property:InteractionArea):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Radius):Float { })
	@:overload(function(property:Scale):Dynamic { })
	@:overload(function(property:Start):Float { })
	@:overload(function(property:StartThickness):Float { })
	@:overload(function(property:Stroke):Dynamic { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:String):Dynamic { })
	function get(property:AnimationDuration):Float;
	@:overload(function(property:AnimationEaser, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndThickness, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Fill, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionArea, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Radius, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scale, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Start, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartThickness, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Stroke, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AnimationDuration, callback:{ }):{ function unwatch():Void; };
	var animationEaser : Dynamic;
	var endThickness : Float;
	var fill : Dynamic;
	var interactionArea : String;
	var interactionMode : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var radius : Float;
	var scale : Dynamic;
	var start : Float;
	var startThickness : Float;
	var stroke : Dynamic;
	var value : Float;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function invalidateRendering():Void;
	function postscript(mixin:Dynamic):Void;
	function refreshRendering():Void;
	function validateRendering():Void;
	function valueChanged(indicator:Dynamic):Void;
}
extern class CircularScale extends dojox.dgauges.ScaleBase {
	function new():Void;
	var endAngle : Float;
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:LabelGap, value:Float):Void { })
	@:overload(function(property:LabelPosition, value:String):Void { })
	@:overload(function(property:Orientation, value:String):Void { })
	@:overload(function(property:OriginX, value:Float):Void { })
	@:overload(function(property:OriginY, value:Float):Void { })
	@:overload(function(property:Radius, value:Float):Void { })
	@:overload(function(property:Scaler, value:Dynamic):Void { })
	@:overload(function(property:StartAngle, value:Float):Void { })
	@:overload(function(property:TickStroke, value:Dynamic):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:EndAngle, value:Float):Void;
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:LabelGap):Float { })
	@:overload(function(property:LabelPosition):String { })
	@:overload(function(property:Orientation):String { })
	@:overload(function(property:OriginX):Float { })
	@:overload(function(property:OriginY):Float { })
	@:overload(function(property:Radius):Float { })
	@:overload(function(property:Scaler):Dynamic { })
	@:overload(function(property:StartAngle):Float { })
	@:overload(function(property:TickStroke):Dynamic { })
	@:overload(function(name:String):Dynamic { })
	function get(property:EndAngle):Float;
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelGap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Orientation, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OriginX, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OriginY, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Radius, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scaler, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartAngle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TickStroke, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:EndAngle, callback:{ }):{ function unwatch():Void; };
	var font : Dynamic;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var labelGap : Float;
	var labelPosition : String;
	var orientation : String;
	var originX : Float;
	var originY : Float;
	var radius : Float;
	var scaler : Dynamic;
	var startAngle : Float;
	var tickStroke : Dynamic;
	function addIndicator(name:String, indicator:dojox.dgauges.IndicatorBase, behindScale:Bool):Dynamic;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function getIndicator(name:String):Dynamic;
	function getIndicatorRenderer(name:String):Dynamic;
	function invalidateRendering():Void;
	function positionForValue(value:Float):Dynamic;
	function positionInRange(value:Float):Dynamic;
	function refreshRendering():Void;
	function removeIndicator(name:String):Dynamic;
	function tickLabelFunc(tickItem:Dynamic):Dynamic;
	function tickShapeFunc(group:dojox.gfx.Group, scale:dojox.dgauges.ScaleBase, tickItem:Dynamic):Dynamic;
	function validateRendering():Void;
	function valueForPosition(angle:Float):Dynamic;
}
extern class CircularGauge extends dojox.dgauges.GaugeBase {
	function new(args:Dynamic, node:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var font : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var lang : String;
	var ownerDocument : Dynamic;
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
extern class CircularValueIndicator extends dojox.dgauges.ScaleIndicatorBase {
	function new():Void;
	var animationDuration : Float;
	@:overload(function(property:AnimationEaser, value:Dynamic):Void { })
	@:overload(function(property:InteractionArea, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Scale, value:Dynamic):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:AnimationDuration, value:Float):Void;
	@:overload(function(property:AnimationEaser):Dynamic { })
	@:overload(function(property:InteractionArea):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Scale):Dynamic { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:String):Dynamic { })
	function get(property:AnimationDuration):Float;
	@:overload(function(property:AnimationEaser, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionArea, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scale, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AnimationDuration, callback:{ }):{ function unwatch():Void; };
	var animationEaser : Dynamic;
	var interactionArea : String;
	var interactionMode : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var scale : Dynamic;
	var value : Float;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function indicatorShapeFunc(group:dojox.gfx.Group, indicator:dojox.dgauges.IndicatorBase):Dynamic;
	function invalidateRendering():Void;
	function postscript(mixin:Dynamic):Void;
	function refreshRendering():Void;
	function validateRendering():Void;
	function valueChanged(indicator:Dynamic):Void;
}
extern class IndicatorBase extends dojox.widget._Invalidating {
	function new():Void;
	var invalidatingProperties : Dynamic;
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:InvalidatingProperties, value:Dynamic):Void;
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:String):Dynamic { })
	function get(property:InvalidatingProperties):Dynamic;
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; };
	var invalidRendering : Bool;
	var value : Float;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function invalidateRendering():Void;
	function postscript(mixin:Dynamic):Void;
	function refreshRendering():Void;
	function validateRendering():Void;
}
extern class LogScaler extends dojo.Stateful {
	function new():Void;
	var majorTicks : Dynamic;
	@:overload(function(property:Maximum, value:Float):Void { })
	@:overload(function(property:Minimum, value:Float):Void { })
	@:overload(function(property:Multiplier, value:Float):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:MajorTicks, value:Dynamic):Void;
	@:overload(function(property:Maximum):Float { })
	@:overload(function(property:Minimum):Float { })
	@:overload(function(property:Multiplier):Float { })
	@:overload(function(name:String):Dynamic { })
	function get(property:MajorTicks):Dynamic;
	@:overload(function(property:Maximum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Minimum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Multiplier, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:MajorTicks, callback:{ }):{ function unwatch():Void; };
	var maximum : Float;
	var minimum : Float;
	var multiplier : Float;
	function computeTicks():Dynamic;
	function getComputedMaximum():Dynamic;
	function getComputedMinimum():Dynamic;
	function getComputedMultiplier():Dynamic;
	function positionForValue(value:Float):Dynamic;
	function postscript(params:Dynamic):Void;
	function valueForPosition(position:Float):Dynamic;
}
extern class MultiLinearScaler extends dojo.Stateful {
	function new():Void;
	var majorTicks : Dynamic;
	@:overload(function(property:MajorTickValues, value:Array<Dynamic>):Void { })
	@:overload(function(property:MinorTickCount, value:Array<Dynamic>):Void { })
	@:overload(function(property:MinorTicks, value:Dynamic):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:MajorTicks, value:Dynamic):Void;
	@:overload(function(property:MajorTickValues):Array<Dynamic> { })
	@:overload(function(property:MinorTickCount):Array<Dynamic> { })
	@:overload(function(property:MinorTicks):Dynamic { })
	@:overload(function(name:String):Dynamic { })
	function get(property:MajorTicks):Dynamic;
	@:overload(function(property:MajorTickValues, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTickCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:MajorTicks, callback:{ }):{ function unwatch():Void; };
	var majorTickValues : Array<Dynamic>;
	var minorTickCount : Array<Dynamic>;
	var minorTicks : Dynamic;
	function computeTicks():Dynamic;
	function positionForValue(value:Float):Dynamic;
	function postscript(params:Dynamic):Void;
	function valueForPosition(position:Float):Dynamic;
}
extern class LinearScaler extends dojo.Stateful {
	function new():Void;
	var majorTickInterval : Float;
	@:overload(function(property:MajorTicks, value:Dynamic):Void { })
	@:overload(function(property:Maximum, value:Float):Void { })
	@:overload(function(property:Minimum, value:Float):Void { })
	@:overload(function(property:MinorTickInterval, value:Float):Void { })
	@:overload(function(property:MinorTicks, value:Dynamic):Void { })
	@:overload(function(property:MinorTicksEnabled, value:Bool):Void { })
	@:overload(function(property:SnapInterval, value:Float):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:MajorTickInterval, value:Float):Void;
	@:overload(function(property:MajorTicks):Dynamic { })
	@:overload(function(property:Maximum):Float { })
	@:overload(function(property:Minimum):Float { })
	@:overload(function(property:MinorTickInterval):Float { })
	@:overload(function(property:MinorTicks):Dynamic { })
	@:overload(function(property:MinorTicksEnabled):Bool { })
	@:overload(function(property:SnapInterval):Float { })
	@:overload(function(name:String):Dynamic { })
	function get(property:MajorTickInterval):Float;
	@:overload(function(property:MajorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Maximum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Minimum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTickInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicks, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinorTicksEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:MajorTickInterval, callback:{ }):{ function unwatch():Void; };
	var majorTicks : Dynamic;
	var maximum : Float;
	var minimum : Float;
	var minorTickInterval : Float;
	var minorTicks : Dynamic;
	var minorTicksEnabled : Bool;
	var snapInterval : Float;
	function computeTicks():Dynamic;
	function getComputedMajorTickInterval():Dynamic;
	function getComputedMinorTickInterval():Dynamic;
	function positionForValue(value:Float):Dynamic;
	function postscript(params:Dynamic):Void;
	function valueForPosition(position:Float):Dynamic;
}
extern class GaugeBase extends dijit._WidgetBase {
	function new(args:Dynamic, node:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var font : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var lang : String;
	var ownerDocument : Dynamic;
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
extern class RectangularSegmentedRangeIndicator extends dojox.dgauges.IndicatorBase {
	function new():Void;
	var endThickness : Float;
	@:overload(function(property:Fill, value:Dynamic):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:PaddingBottom, value:Float):Void { })
	@:overload(function(property:PaddingLeft, value:Float):Void { })
	@:overload(function(property:PaddingRight, value:Float):Void { })
	@:overload(function(property:PaddingTop, value:Float):Void { })
	@:overload(function(property:Ranges, value:Array<Dynamic>):Void { })
	@:overload(function(property:Rounded, value:Bool):Void { })
	@:overload(function(property:Segments, value:Float):Void { })
	@:overload(function(property:SegmentSpacing, value:Float):Void { })
	@:overload(function(property:Start, value:Float):Void { })
	@:overload(function(property:StartThickness, value:Float):Void { })
	@:overload(function(property:Stroke, value:Dynamic):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:EndThickness, value:Float):Void;
	@:overload(function(property:Fill):Dynamic { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:PaddingBottom):Float { })
	@:overload(function(property:PaddingLeft):Float { })
	@:overload(function(property:PaddingRight):Float { })
	@:overload(function(property:PaddingTop):Float { })
	@:overload(function(property:Ranges):Array<Dynamic> { })
	@:overload(function(property:Rounded):Bool { })
	@:overload(function(property:Segments):Float { })
	@:overload(function(property:SegmentSpacing):Float { })
	@:overload(function(property:Start):Float { })
	@:overload(function(property:StartThickness):Float { })
	@:overload(function(property:Stroke):Dynamic { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:String):Dynamic { })
	function get(property:EndThickness):Float;
	@:overload(function(property:Fill, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingBottom, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingLeft, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingRight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingTop, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Ranges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Rounded, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Segments, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SegmentSpacing, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Start, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartThickness, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Stroke, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:EndThickness, callback:{ }):{ function unwatch():Void; };
	var fill : Dynamic;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var paddingBottom : Float;
	var paddingLeft : Float;
	var paddingRight : Float;
	var paddingTop : Float;
	var ranges : Array<Dynamic>;
	var rounded : Bool;
	var segments : Float;
	var segmentSpacing : Float;
	var start : Float;
	var startThickness : Float;
	var stroke : Dynamic;
	var value : Float;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function invalidateRendering():Void;
	function postscript(mixin:Dynamic):Void;
	function refreshRendering():Void;
	function validateRendering():Void;
}
extern class ScaleBase extends dojox.widget._Invalidating {
	function new():Void;
	var font : Dynamic;
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:LabelGap, value:Float):Void { })
	@:overload(function(property:LabelPosition, value:String):Void { })
	@:overload(function(property:Scaler, value:Dynamic):Void { })
	@:overload(function(property:TickStroke, value:Dynamic):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:Font, value:Dynamic):Void;
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:LabelGap):Float { })
	@:overload(function(property:LabelPosition):String { })
	@:overload(function(property:Scaler):Dynamic { })
	@:overload(function(property:TickStroke):Dynamic { })
	@:overload(function(name:String):Dynamic { })
	function get(property:Font):Dynamic;
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelGap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scaler, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TickStroke, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Font, callback:{ }):{ function unwatch():Void; };
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var labelGap : Float;
	var labelPosition : String;
	var scaler : Dynamic;
	var tickStroke : Dynamic;
	function addIndicator(name:String, indicator:dojox.dgauges.IndicatorBase, behindScale:Bool):Dynamic;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function getIndicator(name:String):Dynamic;
	function getIndicatorRenderer(name:String):Dynamic;
	function invalidateRendering():Void;
	function positionForValue(value:Float):Dynamic;
	function refreshRendering():Void;
	function removeIndicator(name:String):Dynamic;
	function tickLabelFunc(tickItem:Dynamic):Dynamic;
	function tickShapeFunc(group:dojox.gfx.Group, scale:dojox.dgauges.ScaleBase, tickItem:Dynamic):Dynamic;
	function validateRendering():Void;
	function valueForPosition(position:Float):Float;
}
extern class RectangularScale extends dojox.dgauges.ScaleBase {
	function new():Void;
	var font : Dynamic;
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:LabelGap, value:Float):Void { })
	@:overload(function(property:LabelPosition, value:String):Void { })
	@:overload(function(property:PaddingBottom, value:Float):Void { })
	@:overload(function(property:PaddingLeft, value:Float):Void { })
	@:overload(function(property:PaddingRight, value:Float):Void { })
	@:overload(function(property:PaddingTop, value:Float):Void { })
	@:overload(function(property:Scaler, value:Dynamic):Void { })
	@:overload(function(property:TickStroke, value:Dynamic):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:Font, value:Dynamic):Void;
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:LabelGap):Float { })
	@:overload(function(property:LabelPosition):String { })
	@:overload(function(property:PaddingBottom):Float { })
	@:overload(function(property:PaddingLeft):Float { })
	@:overload(function(property:PaddingRight):Float { })
	@:overload(function(property:PaddingTop):Float { })
	@:overload(function(property:Scaler):Dynamic { })
	@:overload(function(property:TickStroke):Dynamic { })
	@:overload(function(name:String):Dynamic { })
	function get(property:Font):Dynamic;
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelGap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingBottom, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingLeft, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingRight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingTop, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scaler, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TickStroke, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Font, callback:{ }):{ function unwatch():Void; };
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var labelGap : Float;
	var labelPosition : String;
	var paddingBottom : Float;
	var paddingLeft : Float;
	var paddingRight : Float;
	var paddingTop : Float;
	var scaler : Dynamic;
	var tickStroke : Dynamic;
	function addIndicator(name:String, indicator:dojox.dgauges.IndicatorBase, behindScale:Bool):Dynamic;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function getIndicator(name:String):Dynamic;
	function getIndicatorRenderer(name:String):Dynamic;
	function invalidateRendering():Void;
	function positionForValue(value:Dynamic):Dynamic;
	function refreshRendering():Void;
	function removeIndicator(name:String):Dynamic;
	function tickLabelFunc(tickItem:Dynamic):Dynamic;
	function tickShapeFunc(group:dojox.gfx.Group, scale:dojox.dgauges.ScaleBase, tickItem:Dynamic):Dynamic;
	function validateRendering():Void;
	function valueForPosition(pos:Dynamic):Dynamic;
}
extern class RectangularValueIndicator extends dojox.dgauges.ScaleIndicatorBase {
	function new():Void;
	var animationDuration : Float;
	@:overload(function(property:AnimationEaser, value:Dynamic):Void { })
	@:overload(function(property:InteractionArea, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:PaddingBottom, value:Float):Void { })
	@:overload(function(property:PaddingLeft, value:Float):Void { })
	@:overload(function(property:PaddingRight, value:Float):Void { })
	@:overload(function(property:PaddingTop, value:Float):Void { })
	@:overload(function(property:Scale, value:Dynamic):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:AnimationDuration, value:Float):Void;
	@:overload(function(property:AnimationEaser):Dynamic { })
	@:overload(function(property:InteractionArea):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:PaddingBottom):Float { })
	@:overload(function(property:PaddingLeft):Float { })
	@:overload(function(property:PaddingRight):Float { })
	@:overload(function(property:PaddingTop):Float { })
	@:overload(function(property:Scale):Dynamic { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:String):Dynamic { })
	function get(property:AnimationDuration):Float;
	@:overload(function(property:AnimationEaser, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionArea, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingBottom, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingLeft, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingRight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingTop, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scale, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AnimationDuration, callback:{ }):{ function unwatch():Void; };
	var animationEaser : Dynamic;
	var interactionArea : String;
	var interactionMode : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var paddingBottom : Float;
	var paddingLeft : Float;
	var paddingRight : Float;
	var paddingTop : Float;
	var scale : Dynamic;
	var value : Float;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function indicatorShapeFunc(group:dojox.gfx.Group, indicator:dojox.dgauges.IndicatorBase):Dynamic;
	function invalidateRendering():Void;
	function postscript(mixin:Dynamic):Void;
	function refreshRendering():Void;
	function validateRendering():Void;
	function valueChanged(indicator:Dynamic):Void;
}
extern class RectangularRangeIndicator extends dojox.dgauges.ScaleIndicatorBase {
	function new():Void;
	var animationDuration : Float;
	@:overload(function(property:AnimationEaser, value:Dynamic):Void { })
	@:overload(function(property:EndThickness, value:Float):Void { })
	@:overload(function(property:Fill, value:Dynamic):Void { })
	@:overload(function(property:InteractionArea, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:PaddingBottom, value:Float):Void { })
	@:overload(function(property:PaddingLeft, value:Float):Void { })
	@:overload(function(property:PaddingRight, value:Float):Void { })
	@:overload(function(property:PaddingTop, value:Float):Void { })
	@:overload(function(property:Scale, value:Dynamic):Void { })
	@:overload(function(property:Start, value:Float):Void { })
	@:overload(function(property:StartThickness, value:Float):Void { })
	@:overload(function(property:Stroke, value:Dynamic):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:AnimationDuration, value:Float):Void;
	@:overload(function(property:AnimationEaser):Dynamic { })
	@:overload(function(property:EndThickness):Float { })
	@:overload(function(property:Fill):Dynamic { })
	@:overload(function(property:InteractionArea):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:PaddingBottom):Float { })
	@:overload(function(property:PaddingLeft):Float { })
	@:overload(function(property:PaddingRight):Float { })
	@:overload(function(property:PaddingTop):Float { })
	@:overload(function(property:Scale):Dynamic { })
	@:overload(function(property:Start):Float { })
	@:overload(function(property:StartThickness):Float { })
	@:overload(function(property:Stroke):Dynamic { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:String):Dynamic { })
	function get(property:AnimationDuration):Float;
	@:overload(function(property:AnimationEaser, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndThickness, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Fill, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionArea, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingBottom, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingLeft, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingRight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PaddingTop, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scale, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Start, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartThickness, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Stroke, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AnimationDuration, callback:{ }):{ function unwatch():Void; };
	var animationEaser : Dynamic;
	var endThickness : Float;
	var fill : Dynamic;
	var interactionArea : String;
	var interactionMode : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var paddingBottom : Float;
	var paddingLeft : Float;
	var paddingRight : Float;
	var paddingTop : Float;
	var scale : Dynamic;
	var start : Float;
	var startThickness : Float;
	var stroke : Dynamic;
	var value : Float;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function invalidateRendering():Void;
	function postscript(mixin:Dynamic):Void;
	function refreshRendering():Void;
	function validateRendering():Void;
	function valueChanged(indicator:Dynamic):Void;
}
extern class TextIndicator extends dojox.dgauges.IndicatorBase {
	function new():Void;
	var align : String;
	@:overload(function(property:Color, value:Dynamic):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Indicator, value:Dynamic):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:LabelFunc, value:Dynamic):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(property:X, value:Float):Void { })
	@:overload(function(property:Y, value:Float):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:Align, value:String):Void;
	@:overload(function(property:Color):Dynamic { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Indicator):Dynamic { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:LabelFunc):Dynamic { })
	@:overload(function(property:Value):Float { })
	@:overload(function(property:X):Float { })
	@:overload(function(property:Y):Float { })
	@:overload(function(name:String):Dynamic { })
	function get(property:Align):String;
	@:overload(function(property:Color, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Indicator, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:X, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Y, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Align, callback:{ }):{ function unwatch():Void; };
	var color : Dynamic;
	var font : Dynamic;
	var indicator : Dynamic;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var labelFunc : Dynamic;
	var value : Float;
	var x : Float;
	var y : Float;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function invalidateRendering():Void;
	function refreshRendering():Dynamic;
	function validateRendering():Void;
}
extern class RectangularGauge extends dojox.dgauges.GaugeBase {
	function new():Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Font, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Orientation, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Font):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Orientation):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Font, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Orientation, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var font : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var lang : String;
	var orientation : String;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	var value : Float;
	function addElement(name:String, element:Dynamic, ?location:String):Void;
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
extern class ScaleIndicatorBase extends dojox.dgauges.IndicatorBase {
	function new():Void;
	var animationDuration : Float;
	@:overload(function(property:AnimationEaser, value:Dynamic):Void { })
	@:overload(function(property:InteractionArea, value:String):Void { })
	@:overload(function(property:InteractionMode, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Scale, value:Dynamic):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:AnimationDuration, value:Float):Void;
	@:overload(function(property:AnimationEaser):Dynamic { })
	@:overload(function(property:InteractionArea):String { })
	@:overload(function(property:InteractionMode):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Scale):Dynamic { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:String):Dynamic { })
	function get(property:AnimationDuration):Float;
	@:overload(function(property:AnimationEaser, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionArea, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InteractionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scale, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AnimationDuration, callback:{ }):{ function unwatch():Void; };
	var animationEaser : Dynamic;
	var interactionArea : String;
	var interactionMode : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var scale : Dynamic;
	var value : Float;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function invalidateRendering():Void;
	function postscript(mixin:Dynamic):Void;
	function refreshRendering():Void;
	function validateRendering():Void;
	function valueChanged(indicator:Dynamic):Void;
}
