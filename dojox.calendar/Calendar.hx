extern class _RendererMixin extends dojo.Stateful {
	function new():Void;
	var edited : Bool;
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovered, value:Bool):Void { })
	@:overload(function(property:Item, value:Dynamic):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:Owner, value:Dynamic):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:Selected, value:Bool):Void { })
	@:overload(function(property:StoreState, value:Bool):Void { })
	@:overload(function(property:VisibilityLimits, value:Dynamic):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:Edited, value:Bool):Void;
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovered):Bool { })
	@:overload(function(property:Item):Dynamic { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:Owner):Dynamic { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:Selected):Bool { })
	@:overload(function(property:StoreState):Bool { })
	@:overload(function(property:VisibilityLimits):Dynamic { })
	@:overload(function(name:String):Dynamic { })
	function get(property:Edited):Bool;
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovered, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Item, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Owner, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StoreState, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VisibilityLimits, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Edited, callback:{ }):{ function unwatch():Void; };
	var focused : Bool;
	var hovered : Bool;
	var item : Dynamic;
	var moveEnabled : Bool;
	var owner : Dynamic;
	var resizeEnabled : Bool;
	var selected : Bool;
	var storeState : Bool;
	var visibilityLimits : Dynamic;
	function getDisplayValue(part:Dynamic):Dynamic;
	function postscript(params:Dynamic):Void;
	function updateRendering(w:Float, h:Float):Void;
}
extern class _ScrollBarBase extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:ContainerSize, value:Float):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Direction, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Maximum, value:Float):Void { })
	@:overload(function(property:Minimum, value:Float):Void { })
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
	@:overload(function(property:ContainerSize):Float { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Direction):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Maximum):Float { })
	@:overload(function(property:Minimum):Float { })
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
	@:overload(function(property:ContainerSize, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Direction, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Maximum, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Minimum, callback:{ }):{ function unwatch():Void; } { })
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
	var containerSize : Float;
	var dir : String;
	var direction : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var maximum : Float;
	var minimum : Float;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	var value : Float;
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
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onChange(value:Float):Void;
	function onFocus():Void;
	function onScroll(value:Float):Void;
}
extern class Calendar extends dojox.calendar.CalendarBase {
	function new(args:Dynamic):Void;
	var allDayAttr : String;
	@:overload(function(property:AnimateRange, value:Bool):Void { })
	@:overload(function(property:AnimationRangeDuration, value:Float):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColumnView, value:Dynamic):Void { })
	@:overload(function(property:ColumnViewProps, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:ContextRequire, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CreateItemFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CreateOnGridClick, value:Bool):Void { })
	@:overload(function(property:CssClassFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CurrentView, value:Dynamic):Void { })
	@:overload(function(property:Date, value:Date):Void { })
	@:overload(function(property:DateInterval, value:String):Void { })
	@:overload(function(property:DateIntervalSteps, value:Float):Void { })
	@:overload(function(property:DatePackage, value:Dynamic):Void { })
	@:overload(function(property:DecodeDate, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DisplayedItemsInvalidated, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EncodeDate, value:Dynamic):Void { })
	@:overload(function(property:EndDate, value:Date):Void { })
	@:overload(function(property:EndTimeAttr, value:String):Void { })
	@:overload(function(property:FirstDayOfWeek, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatItemTimeFunc, value:Dynamic):Void { })
	@:overload(function(property:HoveredItem, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MatrixView, value:Dynamic):Void { })
	@:overload(function(property:MatrixViewProps, value:Dynamic):Void { })
	@:overload(function(property:MaxDate, value:Date):Void { })
	@:overload(function(property:MinDate, value:Date):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectedItem, value:Dynamic):Void { })
	@:overload(function(property:SelectedItems, value:Dynamic):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartDate, value:Date):Void { })
	@:overload(function(property:StartTimeAttr, value:String):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:SubColumnAttr, value:String):Void { })
	@:overload(function(property:SummaryAttr, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:ViewChangeDuration, value:Float):Void { })
	@:overload(function(property:ViewContainer, value:HTMLElement):Void { })
	@:overload(function(property:Views, value:Dynamic):Void { })
	@:overload(function(property:WidgetsInTemplate, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AllDayAttr, value:String):Void;
	@:overload(function(property:AnimateRange):Bool { })
	@:overload(function(property:AnimationRangeDuration):Float { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColumnView):Dynamic { })
	@:overload(function(property:ColumnViewProps):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:ContextRequire):haxe.Constraints.Function { })
	@:overload(function(property:CreateItemFunc):haxe.Constraints.Function { })
	@:overload(function(property:CreateOnGridClick):Bool { })
	@:overload(function(property:CssClassFunc):haxe.Constraints.Function { })
	@:overload(function(property:CurrentView):Dynamic { })
	@:overload(function(property:Date):Date { })
	@:overload(function(property:DateInterval):String { })
	@:overload(function(property:DateIntervalSteps):Float { })
	@:overload(function(property:DatePackage):Dynamic { })
	@:overload(function(property:DecodeDate):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DisplayedItemsInvalidated):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EncodeDate):Dynamic { })
	@:overload(function(property:EndDate):Date { })
	@:overload(function(property:EndTimeAttr):String { })
	@:overload(function(property:FirstDayOfWeek):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatItemTimeFunc):Dynamic { })
	@:overload(function(property:HoveredItem):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MatrixView):Dynamic { })
	@:overload(function(property:MatrixViewProps):Dynamic { })
	@:overload(function(property:MaxDate):Date { })
	@:overload(function(property:MinDate):Date { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectedItem):Dynamic { })
	@:overload(function(property:SelectedItems):Dynamic { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartDate):Date { })
	@:overload(function(property:StartTimeAttr):String { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:SubColumnAttr):String { })
	@:overload(function(property:SummaryAttr):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:ViewChangeDuration):Float { })
	@:overload(function(property:ViewContainer):HTMLElement { })
	@:overload(function(property:Views):Dynamic { })
	@:overload(function(property:WidgetsInTemplate):Bool { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AllDayAttr):String;
	@:overload(function(property:AnimateRange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AnimationRangeDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnViewProps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContextRequire, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateItemFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateOnGridClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssClassFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CurrentView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Date, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DateInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DateIntervalSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DecodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedItemsInvalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EncodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FirstDayOfWeek, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatItemTimeFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HoveredItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MatrixView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MatrixViewProps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumnAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SummaryAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewChangeDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewContainer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Views, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:WidgetsInTemplate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllDayAttr, callback:{ }):{ function unwatch():Void; };
	var animateRange : Bool;
	var animationRangeDuration : Float;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var columnView : Dynamic;
	var columnViewProps : Dynamic;
	var containerNode : HTMLElement;
	var contextRequire : haxe.Constraints.Function;
	var createItemFunc : haxe.Constraints.Function;
	var createOnGridClick : Bool;
	var cssClassFunc : haxe.Constraints.Function;
	var currentView : Dynamic;
	var date : Date;
	var dateInterval : String;
	var dateIntervalSteps : Float;
	var datePackage : Dynamic;
	var decodeDate : Dynamic;
	var dir : String;
	var displayedItemsInvalidated : Bool;
	var domNode : HTMLElement;
	var editable : Bool;
	var encodeDate : Dynamic;
	var endDate : Date;
	var endTimeAttr : String;
	var firstDayOfWeek : Float;
	var focused : Bool;
	var formatItemTimeFunc : Dynamic;
	var hoveredItem : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var lang : String;
	var matrixView : Dynamic;
	var matrixViewProps : Dynamic;
	var maxDate : Date;
	var minDate : Date;
	var moveEnabled : Bool;
	var ownerDocument : Dynamic;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var resizeEnabled : Bool;
	var searchContainerNode : Bool;
	var selectedItem : Dynamic;
	var selectedItems : Dynamic;
	var selectionMode : String;
	var srcNodeRef : HTMLElement;
	var startDate : Date;
	var startTimeAttr : String;
	var store : Dynamic;
	var style : String;
	var subColumnAttr : String;
	var summaryAttr : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var viewChangeDuration : Float;
	var viewContainer : HTMLElement;
	var views : Dynamic;
	var widgetsInTemplate : Bool;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function addView(view:dojox.calendar.ViewBase, index:Float):Void;
	function buildRendering():Void;
	function columnViewColumnHeaderClick(e:Dynamic):Void;
	function computeTimeInterval():Dynamic;
	function configureButtons():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function dayButtonClick(e:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchChange(oldSelectedItem:Dynamic, newSelectedItem:Dynamic, renderer:Dynamic, triggerEvent:Event):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function floorDate(date:Date, unit:String, steps:Float, reuse:Bool):Dynamic;
	function floorToDay(date:Date, reuse:Bool):Dynamic;
	function floorToWeek(d:Dynamic):Dynamic;
	function fourDaysButtonClick(e:Dynamic):Void;
	function getChildren():Array<Dynamic>;
	function getIdentity(item:Dynamic):Dynamic;
	function getItemStoreState(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function goToday():Void;
	function installDefaultViewsActions(views:Dynamic):Void;
	function invalidateRendering():Void;
	function isFocusable():Dynamic;
	function isItemEditable(item:Dynamic, rendererKind:String):Dynamic;
	function isItemHovered(item:Dynamic):Dynamic;
	function isItemMoveEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemResizeEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemSelected(item:Dynamic):Dynamic;
	function isLeftToRight():Dynamic;
	function isStartOfDay(d:Date):Dynamic;
	function isToday(date:Date):Dynamic;
	function itemToRenderItem(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	function matrixViewRowHeaderClick(e:Dynamic):Void;
	function monthButtonClick(e:Dynamic):Void;
	function newDate(obj:Dynamic):Dynamic;
	function nextRange():Void;
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
	function previousRange():Void;
	function refreshRendering():Void;
	function removeView(view:dojox.calendar.ViewBase):Void;
	function renderItemToItem(renderItem:Dynamic, store:dojo.store.api.Store):Dynamic;
	function resize():Void;
	function selectFromEvent(e:Event, item:Dynamic, renderer:Dynamic, dispatch:Bool):Dynamic;
	function setItemSelected(item:Dynamic, value:Bool):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function todayButtonClick(e:Dynamic):Void;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRenderers(obj:Dynamic, stateOnly:Dynamic):Void;
	function validateRendering():Void;
	function weekButtonClick(e:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange():Void;
	function onColumnHeaderClick(e:Dynamic):Void;
	function onCurrentViewChange(e:Event):Void;
	function onExpandRendererClick(e:Dynamic):Void;
	function onFocus():Void;
	function onGridClick(e:Dynamic):Void;
	function onGridDoubleClick(e:Dynamic):Void;
	function onItemClick(e:Dynamic):Void;
	function onItemContextMenu(e:Dynamic):Void;
	function onItemDoubleClick(e:Dynamic):Void;
	function onItemEditBegin(e:Dynamic):Void;
	function onItemEditBeginGesture(e:Dynamic):Void;
	function onItemEditEnd(e:Dynamic):Void;
	function onItemEditEndGesture(e:Dynamic):Void;
	function onItemEditMoveGesture(e:Dynamic):Void;
	function onItemEditResizeGesture(e:Dynamic):Void;
	function onItemRollOut(e:Dynamic):Void;
	function onItemRollOver(e:Dynamic):Void;
	function onRendererCreated(e:Dynamic):Void;
	function onRendererDestroyed(e:Dynamic):Void;
	function onRendererRecycled(e:Dynamic):Void;
	function onRendererReused(e:Dynamic):Void;
	function onRenderersLayoutDone(view:dojox.calendar.ViewBase):Void;
	function onRowHeaderClick(e:Dynamic):Void;
	function onTimeIntervalChange(e:Dynamic):Void;
	function onViewAdded(view:dojox.calendar.ViewBase):Void;
	function onViewConfigurationChange(view:dojox.calendar.ViewBase):Void;
	function onViewRemoved(view:dojox.calendar.ViewBase):Void;
}
extern class CalendarBase extends dijit._WidgetBase {
	function new(args:Dynamic):Void;
	var allDayAttr : String;
	@:overload(function(property:AnimateRange, value:Bool):Void { })
	@:overload(function(property:AnimationRangeDuration, value:Float):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColumnView, value:Dynamic):Void { })
	@:overload(function(property:ColumnViewProps, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:ContextRequire, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CreateItemFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CreateOnGridClick, value:Bool):Void { })
	@:overload(function(property:CssClassFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CurrentView, value:Dynamic):Void { })
	@:overload(function(property:Date, value:Date):Void { })
	@:overload(function(property:DateInterval, value:String):Void { })
	@:overload(function(property:DateIntervalSteps, value:Float):Void { })
	@:overload(function(property:DatePackage, value:Dynamic):Void { })
	@:overload(function(property:DecodeDate, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DisplayedItemsInvalidated, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EncodeDate, value:Dynamic):Void { })
	@:overload(function(property:EndDate, value:Date):Void { })
	@:overload(function(property:EndTimeAttr, value:String):Void { })
	@:overload(function(property:FirstDayOfWeek, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatItemTimeFunc, value:Dynamic):Void { })
	@:overload(function(property:HoveredItem, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MatrixView, value:Dynamic):Void { })
	@:overload(function(property:MatrixViewProps, value:Dynamic):Void { })
	@:overload(function(property:MaxDate, value:Date):Void { })
	@:overload(function(property:MinDate, value:Date):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectedItem, value:Dynamic):Void { })
	@:overload(function(property:SelectedItems, value:Dynamic):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartDate, value:Date):Void { })
	@:overload(function(property:StartTimeAttr, value:String):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:SubColumnAttr, value:String):Void { })
	@:overload(function(property:SummaryAttr, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:ViewChangeDuration, value:Float):Void { })
	@:overload(function(property:ViewContainer, value:HTMLElement):Void { })
	@:overload(function(property:Views, value:Dynamic):Void { })
	@:overload(function(property:WidgetsInTemplate, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AllDayAttr, value:String):Void;
	@:overload(function(property:AnimateRange):Bool { })
	@:overload(function(property:AnimationRangeDuration):Float { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColumnView):Dynamic { })
	@:overload(function(property:ColumnViewProps):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:ContextRequire):haxe.Constraints.Function { })
	@:overload(function(property:CreateItemFunc):haxe.Constraints.Function { })
	@:overload(function(property:CreateOnGridClick):Bool { })
	@:overload(function(property:CssClassFunc):haxe.Constraints.Function { })
	@:overload(function(property:CurrentView):Dynamic { })
	@:overload(function(property:Date):Date { })
	@:overload(function(property:DateInterval):String { })
	@:overload(function(property:DateIntervalSteps):Float { })
	@:overload(function(property:DatePackage):Dynamic { })
	@:overload(function(property:DecodeDate):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DisplayedItemsInvalidated):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EncodeDate):Dynamic { })
	@:overload(function(property:EndDate):Date { })
	@:overload(function(property:EndTimeAttr):String { })
	@:overload(function(property:FirstDayOfWeek):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatItemTimeFunc):Dynamic { })
	@:overload(function(property:HoveredItem):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MatrixView):Dynamic { })
	@:overload(function(property:MatrixViewProps):Dynamic { })
	@:overload(function(property:MaxDate):Date { })
	@:overload(function(property:MinDate):Date { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectedItem):Dynamic { })
	@:overload(function(property:SelectedItems):Dynamic { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartDate):Date { })
	@:overload(function(property:StartTimeAttr):String { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:SubColumnAttr):String { })
	@:overload(function(property:SummaryAttr):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:ViewChangeDuration):Float { })
	@:overload(function(property:ViewContainer):HTMLElement { })
	@:overload(function(property:Views):Dynamic { })
	@:overload(function(property:WidgetsInTemplate):Bool { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AllDayAttr):String;
	@:overload(function(property:AnimateRange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AnimationRangeDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnViewProps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContextRequire, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateItemFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateOnGridClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssClassFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CurrentView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Date, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DateInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DateIntervalSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DecodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedItemsInvalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EncodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FirstDayOfWeek, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatItemTimeFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HoveredItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MatrixView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MatrixViewProps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumnAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SummaryAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewChangeDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewContainer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Views, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:WidgetsInTemplate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllDayAttr, callback:{ }):{ function unwatch():Void; };
	var animateRange : Bool;
	var animationRangeDuration : Float;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var columnView : Dynamic;
	var columnViewProps : Dynamic;
	var containerNode : HTMLElement;
	var contextRequire : haxe.Constraints.Function;
	var createItemFunc : haxe.Constraints.Function;
	var createOnGridClick : Bool;
	var cssClassFunc : haxe.Constraints.Function;
	var currentView : Dynamic;
	var date : Date;
	var dateInterval : String;
	var dateIntervalSteps : Float;
	var datePackage : Dynamic;
	var decodeDate : Dynamic;
	var dir : String;
	var displayedItemsInvalidated : Bool;
	var domNode : HTMLElement;
	var editable : Bool;
	var encodeDate : Dynamic;
	var endDate : Date;
	var endTimeAttr : String;
	var firstDayOfWeek : Float;
	var focused : Bool;
	var formatItemTimeFunc : Dynamic;
	var hoveredItem : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var lang : String;
	var matrixView : Dynamic;
	var matrixViewProps : Dynamic;
	var maxDate : Date;
	var minDate : Date;
	var moveEnabled : Bool;
	var ownerDocument : Dynamic;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var resizeEnabled : Bool;
	var searchContainerNode : Bool;
	var selectedItem : Dynamic;
	var selectedItems : Dynamic;
	var selectionMode : String;
	var srcNodeRef : HTMLElement;
	var startDate : Date;
	var startTimeAttr : String;
	var store : Dynamic;
	var style : String;
	var subColumnAttr : String;
	var summaryAttr : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var viewChangeDuration : Float;
	var viewContainer : HTMLElement;
	var views : Dynamic;
	var widgetsInTemplate : Bool;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function addView(view:dojox.calendar.ViewBase, index:Float):Void;
	function buildRendering():Void;
	function columnViewColumnHeaderClick(e:Dynamic):Void;
	function computeTimeInterval():Dynamic;
	function configureButtons():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function dayButtonClick(e:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchChange(oldSelectedItem:Dynamic, newSelectedItem:Dynamic, renderer:Dynamic, triggerEvent:Event):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function floorDate(date:Date, unit:String, steps:Float, reuse:Bool):Dynamic;
	function floorToDay(date:Date, reuse:Bool):Dynamic;
	function floorToWeek(d:Dynamic):Dynamic;
	function fourDaysButtonClick(e:Dynamic):Void;
	function getChildren():Array<Dynamic>;
	function getIdentity(item:Dynamic):Dynamic;
	function getItemStoreState(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function goToday():Void;
	function invalidateRendering():Void;
	function isFocusable():Dynamic;
	function isItemEditable(item:Dynamic, rendererKind:String):Dynamic;
	function isItemHovered(item:Dynamic):Dynamic;
	function isItemMoveEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemResizeEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemSelected(item:Dynamic):Dynamic;
	function isLeftToRight():Dynamic;
	function isStartOfDay(d:Date):Dynamic;
	function isToday(date:Date):Dynamic;
	function itemToRenderItem(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	function matrixViewRowHeaderClick(e:Dynamic):Void;
	function monthButtonClick(e:Dynamic):Void;
	function newDate(obj:Dynamic):Dynamic;
	function nextRange():Void;
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
	function previousRange():Void;
	function refreshRendering():Void;
	function removeView(view:dojox.calendar.ViewBase):Void;
	function renderItemToItem(renderItem:Dynamic, store:dojo.store.api.Store):Dynamic;
	function resize():Void;
	function selectFromEvent(e:Event, item:Dynamic, renderer:Dynamic, dispatch:Bool):Dynamic;
	function setItemSelected(item:Dynamic, value:Bool):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function todayButtonClick(e:Dynamic):Void;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRenderers(obj:Dynamic, stateOnly:Dynamic):Void;
	function validateRendering():Void;
	function weekButtonClick(e:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange():Void;
	function onColumnHeaderClick(e:Dynamic):Void;
	function onCurrentViewChange(e:Event):Void;
	function onExpandRendererClick(e:Dynamic):Void;
	function onFocus():Void;
	function onGridClick(e:Dynamic):Void;
	function onGridDoubleClick(e:Dynamic):Void;
	function onItemClick(e:Dynamic):Void;
	function onItemContextMenu(e:Dynamic):Void;
	function onItemDoubleClick(e:Dynamic):Void;
	function onItemEditBegin(e:Dynamic):Void;
	function onItemEditBeginGesture(e:Dynamic):Void;
	function onItemEditEnd(e:Dynamic):Void;
	function onItemEditEndGesture(e:Dynamic):Void;
	function onItemEditMoveGesture(e:Dynamic):Void;
	function onItemEditResizeGesture(e:Dynamic):Void;
	function onItemRollOut(e:Dynamic):Void;
	function onItemRollOver(e:Dynamic):Void;
	function onRendererCreated(e:Dynamic):Void;
	function onRendererDestroyed(e:Dynamic):Void;
	function onRendererRecycled(e:Dynamic):Void;
	function onRendererReused(e:Dynamic):Void;
	function onRenderersLayoutDone(view:dojox.calendar.ViewBase):Void;
	function onRowHeaderClick(e:Dynamic):Void;
	function onTimeIntervalChange(e:Dynamic):Void;
	function onViewAdded(view:dojox.calendar.ViewBase):Void;
	function onViewConfigurationChange(view:dojox.calendar.ViewBase):Void;
	function onViewRemoved(view:dojox.calendar.ViewBase):Void;
}
extern class ExpandRenderer extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColumnIndex, value:Float):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Date, value:Date):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Down, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Items, value:Dynamic):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Owner, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:RowIndex, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Up, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColumnIndex):Float { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Date):Date { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Down):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Items):Dynamic { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Owner):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:RowIndex):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Up):Bool { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Date, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Down, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Items, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Owner, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Up, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var columnIndex : Float;
	var containerNode : HTMLElement;
	var date : Date;
	var dir : String;
	var domNode : HTMLElement;
	var down : Bool;
	var focused : Bool;
	var id : String;
	var items : Dynamic;
	var lang : String;
	var owner : Dynamic;
	var ownerDocument : Dynamic;
	var rowIndex : Float;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var up : Bool;
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
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onFocus():Void;
}
extern class HorizontalRenderer extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var arrowPadding : Float;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Edited, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovered, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Item, value:Dynamic):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:Owner, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selected, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StoreState, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:VisibilityLimits, value:Dynamic):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:ArrowPadding, value:Float):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Edited):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovered):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Item):Dynamic { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:Owner):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selected):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StoreState):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:VisibilityLimits):Dynamic { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:ArrowPadding):Float;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Edited, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovered, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Item, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Owner, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StoreState, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VisibilityLimits, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:ArrowPadding, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var edited : Bool;
	var focused : Bool;
	var hovered : Bool;
	var id : String;
	var item : Dynamic;
	var lang : String;
	var moveEnabled : Bool;
	var owner : Dynamic;
	var ownerDocument : Dynamic;
	var resizeEnabled : Bool;
	var searchContainerNode : Bool;
	var selected : Bool;
	var srcNodeRef : HTMLElement;
	var storeState : Bool;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var visibilityLimits : Dynamic;
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
	function getDisplayValue(part:Dynamic):Dynamic;
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
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRendering(w:Float, h:Float):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onFocus():Void;
}
extern class Keyboard {
	function new():Void;
	var allDayKeyboardLeftRightSteps : String;
	var allDayKeyboardLeftRightUnit : Float;
	var allDayKeyboardUpDownSteps : String;
	var allDayKeyboardUpDownUnit : Float;
	var focusedItem : Dynamic;
	var keyboardLeftRightSteps : Float;
	var keyboardLeftRightUnit : String;
	var keyboardUpDownSteps : Float;
	var keyboardUpDownUnit : String;
	var maxScrollAnimationDuration : Float;
	var resizeModifier : String;
	var showFocus : Bool;
	var tabIndex : String;
	function postCreate():Void;
	function onFocusChange(e:Dynamic):Void;
}
extern class LabelRenderer extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Edited, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovered, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Item, value:Dynamic):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:Owner, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selected, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StoreState, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:VisibilityLimits, value:Dynamic):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Edited):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovered):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Item):Dynamic { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:Owner):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selected):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StoreState):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:VisibilityLimits):Dynamic { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Edited, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovered, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Item, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Owner, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StoreState, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VisibilityLimits, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var edited : Bool;
	var focused : Bool;
	var hovered : Bool;
	var id : String;
	var item : Dynamic;
	var lang : String;
	var moveEnabled : Bool;
	var owner : Dynamic;
	var ownerDocument : Dynamic;
	var resizeEnabled : Bool;
	var searchContainerNode : Bool;
	var selected : Bool;
	var srcNodeRef : HTMLElement;
	var storeState : Bool;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var visibilityLimits : Dynamic;
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
	function getDisplayValue(part:Dynamic):Dynamic;
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
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRendering(w:Float, h:Float):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onFocus():Void;
}
extern class MobileCalendar extends dojox.calendar.CalendarBase {
	function new(args:Dynamic):Void;
	var allDayAttr : String;
	@:overload(function(property:AnimateRange, value:Bool):Void { })
	@:overload(function(property:AnimationRangeDuration, value:Float):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColumnView, value:Dynamic):Void { })
	@:overload(function(property:ColumnViewProps, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:ContextRequire, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CreateItemFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CreateOnGridClick, value:Bool):Void { })
	@:overload(function(property:CssClassFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CurrentView, value:Dynamic):Void { })
	@:overload(function(property:Date, value:Date):Void { })
	@:overload(function(property:DateInterval, value:String):Void { })
	@:overload(function(property:DateIntervalSteps, value:Float):Void { })
	@:overload(function(property:DatePackage, value:Dynamic):Void { })
	@:overload(function(property:DecodeDate, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DisplayedItemsInvalidated, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EncodeDate, value:Dynamic):Void { })
	@:overload(function(property:EndDate, value:Date):Void { })
	@:overload(function(property:EndTimeAttr, value:String):Void { })
	@:overload(function(property:FirstDayOfWeek, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatItemTimeFunc, value:Dynamic):Void { })
	@:overload(function(property:HoveredItem, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MatrixView, value:Dynamic):Void { })
	@:overload(function(property:MatrixViewProps, value:Dynamic):Void { })
	@:overload(function(property:MaxDate, value:Date):Void { })
	@:overload(function(property:MinDate, value:Date):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectedItem, value:Dynamic):Void { })
	@:overload(function(property:SelectedItems, value:Dynamic):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartDate, value:Date):Void { })
	@:overload(function(property:StartTimeAttr, value:String):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:SubColumnAttr, value:String):Void { })
	@:overload(function(property:SummaryAttr, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:ViewChangeDuration, value:Float):Void { })
	@:overload(function(property:ViewContainer, value:HTMLElement):Void { })
	@:overload(function(property:Views, value:Dynamic):Void { })
	@:overload(function(property:WidgetsInTemplate, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AllDayAttr, value:String):Void;
	@:overload(function(property:AnimateRange):Bool { })
	@:overload(function(property:AnimationRangeDuration):Float { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColumnView):Dynamic { })
	@:overload(function(property:ColumnViewProps):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:ContextRequire):haxe.Constraints.Function { })
	@:overload(function(property:CreateItemFunc):haxe.Constraints.Function { })
	@:overload(function(property:CreateOnGridClick):Bool { })
	@:overload(function(property:CssClassFunc):haxe.Constraints.Function { })
	@:overload(function(property:CurrentView):Dynamic { })
	@:overload(function(property:Date):Date { })
	@:overload(function(property:DateInterval):String { })
	@:overload(function(property:DateIntervalSteps):Float { })
	@:overload(function(property:DatePackage):Dynamic { })
	@:overload(function(property:DecodeDate):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DisplayedItemsInvalidated):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EncodeDate):Dynamic { })
	@:overload(function(property:EndDate):Date { })
	@:overload(function(property:EndTimeAttr):String { })
	@:overload(function(property:FirstDayOfWeek):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatItemTimeFunc):Dynamic { })
	@:overload(function(property:HoveredItem):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MatrixView):Dynamic { })
	@:overload(function(property:MatrixViewProps):Dynamic { })
	@:overload(function(property:MaxDate):Date { })
	@:overload(function(property:MinDate):Date { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectedItem):Dynamic { })
	@:overload(function(property:SelectedItems):Dynamic { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartDate):Date { })
	@:overload(function(property:StartTimeAttr):String { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:SubColumnAttr):String { })
	@:overload(function(property:SummaryAttr):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:ViewChangeDuration):Float { })
	@:overload(function(property:ViewContainer):HTMLElement { })
	@:overload(function(property:Views):Dynamic { })
	@:overload(function(property:WidgetsInTemplate):Bool { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AllDayAttr):String;
	@:overload(function(property:AnimateRange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AnimationRangeDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnViewProps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContextRequire, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateItemFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateOnGridClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssClassFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CurrentView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Date, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DateInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DateIntervalSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DecodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedItemsInvalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EncodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FirstDayOfWeek, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatItemTimeFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HoveredItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MatrixView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MatrixViewProps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumnAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SummaryAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewChangeDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewContainer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Views, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:WidgetsInTemplate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllDayAttr, callback:{ }):{ function unwatch():Void; };
	var animateRange : Bool;
	var animationRangeDuration : Float;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var columnView : Dynamic;
	var columnViewProps : Dynamic;
	var containerNode : HTMLElement;
	var contextRequire : haxe.Constraints.Function;
	var createItemFunc : haxe.Constraints.Function;
	var createOnGridClick : Bool;
	var cssClassFunc : haxe.Constraints.Function;
	var currentView : Dynamic;
	var date : Date;
	var dateInterval : String;
	var dateIntervalSteps : Float;
	var datePackage : Dynamic;
	var decodeDate : Dynamic;
	var dir : String;
	var displayedItemsInvalidated : Bool;
	var domNode : HTMLElement;
	var editable : Bool;
	var encodeDate : Dynamic;
	var endDate : Date;
	var endTimeAttr : String;
	var firstDayOfWeek : Float;
	var focused : Bool;
	var formatItemTimeFunc : Dynamic;
	var hoveredItem : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var lang : String;
	var matrixView : Dynamic;
	var matrixViewProps : Dynamic;
	var maxDate : Date;
	var minDate : Date;
	var moveEnabled : Bool;
	var ownerDocument : Dynamic;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var resizeEnabled : Bool;
	var searchContainerNode : Bool;
	var selectedItem : Dynamic;
	var selectedItems : Dynamic;
	var selectionMode : String;
	var srcNodeRef : HTMLElement;
	var startDate : Date;
	var startTimeAttr : String;
	var store : Dynamic;
	var style : String;
	var subColumnAttr : String;
	var summaryAttr : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var viewChangeDuration : Float;
	var viewContainer : HTMLElement;
	var views : Dynamic;
	var widgetsInTemplate : Bool;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function addView(view:dojox.calendar.ViewBase, index:Float):Void;
	function buildRendering():Void;
	function columnViewColumnHeaderClick(e:Dynamic):Void;
	function computeTimeInterval():Dynamic;
	function configureButtons():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function dayButtonClick(e:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchChange(oldSelectedItem:Dynamic, newSelectedItem:Dynamic, renderer:Dynamic, triggerEvent:Event):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function floorDate(date:Date, unit:String, steps:Float, reuse:Bool):Dynamic;
	function floorToDay(date:Date, reuse:Bool):Dynamic;
	function floorToWeek(d:Dynamic):Dynamic;
	function fourDaysButtonClick(e:Dynamic):Void;
	function getChildren():Array<Dynamic>;
	function getIdentity(item:Dynamic):Dynamic;
	function getItemStoreState(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function goToday():Void;
	function installDefaultViewsActions(views:Dynamic):Void;
	function invalidateRendering():Void;
	function isFocusable():Dynamic;
	function isItemEditable(item:Dynamic, rendererKind:String):Dynamic;
	function isItemHovered(item:Dynamic):Dynamic;
	function isItemMoveEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemResizeEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemSelected(item:Dynamic):Dynamic;
	function isLeftToRight():Dynamic;
	function isStartOfDay(d:Date):Dynamic;
	function isToday(date:Date):Dynamic;
	function itemToRenderItem(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	function matrixViewRowHeaderClick(e:Dynamic):Void;
	function monthButtonClick(e:Dynamic):Void;
	function newDate(obj:Dynamic):Dynamic;
	function nextRange():Void;
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
	function previousRange():Void;
	function refreshRendering():Void;
	function removeView(view:dojox.calendar.ViewBase):Void;
	function renderItemToItem(renderItem:Dynamic, store:dojo.store.api.Store):Dynamic;
	function resize():Void;
	function selectFromEvent(e:Event, item:Dynamic, renderer:Dynamic, dispatch:Bool):Dynamic;
	function setItemSelected(item:Dynamic, value:Bool):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function todayButtonClick(e:Dynamic):Void;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRenderers(obj:Dynamic, stateOnly:Dynamic):Void;
	function validateRendering():Void;
	function weekButtonClick(e:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange():Void;
	function onColumnHeaderClick(e:Dynamic):Void;
	function onCurrentViewChange(e:Event):Void;
	function onExpandRendererClick(e:Dynamic):Void;
	function onFocus():Void;
	function onGridClick(e:Dynamic):Void;
	function onGridDoubleClick(e:Dynamic):Void;
	function onItemClick(e:Dynamic):Void;
	function onItemContextMenu(e:Dynamic):Void;
	function onItemDoubleClick(e:Dynamic):Void;
	function onItemEditBegin(e:Dynamic):Void;
	function onItemEditBeginGesture(e:Dynamic):Void;
	function onItemEditEnd(e:Dynamic):Void;
	function onItemEditEndGesture(e:Dynamic):Void;
	function onItemEditMoveGesture(e:Dynamic):Void;
	function onItemEditResizeGesture(e:Dynamic):Void;
	function onItemRollOut(e:Dynamic):Void;
	function onItemRollOver(e:Dynamic):Void;
	function onRendererCreated(e:Dynamic):Void;
	function onRendererDestroyed(e:Dynamic):Void;
	function onRendererRecycled(e:Dynamic):Void;
	function onRendererReused(e:Dynamic):Void;
	function onRenderersLayoutDone(view:dojox.calendar.ViewBase):Void;
	function onRowHeaderClick(e:Dynamic):Void;
	function onTimeIntervalChange(e:Dynamic):Void;
	function onViewAdded(view:dojox.calendar.ViewBase):Void;
	function onViewConfigurationChange(view:dojox.calendar.ViewBase):Void;
	function onViewRemoved(view:dojox.calendar.ViewBase):Void;
}
extern class MobileHorizontalRenderer extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var arrowPadding : Float;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Edited, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovered, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Item, value:Dynamic):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Mobile, value:Bool):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:Owner, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selected, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StoreState, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:VisibilityLimits, value:Dynamic):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:ArrowPadding, value:Float):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Edited):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovered):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Item):Dynamic { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Mobile):Bool { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:Owner):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selected):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StoreState):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:VisibilityLimits):Dynamic { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:ArrowPadding):Float;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Edited, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovered, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Item, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Mobile, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Owner, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StoreState, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VisibilityLimits, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:ArrowPadding, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var edited : Bool;
	var focused : Bool;
	var hovered : Bool;
	var id : String;
	var item : Dynamic;
	var lang : String;
	var mobile : Bool;
	var moveEnabled : Bool;
	var owner : Dynamic;
	var ownerDocument : Dynamic;
	var resizeEnabled : Bool;
	var searchContainerNode : Bool;
	var selected : Bool;
	var srcNodeRef : HTMLElement;
	var storeState : Bool;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var visibilityLimits : Dynamic;
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
	function getDisplayValue(part:Dynamic):Dynamic;
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
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRendering(w:Float, h:Float):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onFocus():Void;
}
extern class MobileVerticalRenderer extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Edited, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovered, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Item, value:Dynamic):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Mobile, value:Bool):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:Owner, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selected, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StoreState, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:VisibilityLimits, value:Dynamic):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Edited):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovered):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Item):Dynamic { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Mobile):Bool { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:Owner):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selected):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StoreState):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:VisibilityLimits):Dynamic { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Edited, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovered, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Item, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Mobile, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Owner, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StoreState, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VisibilityLimits, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var edited : Bool;
	var focused : Bool;
	var hovered : Bool;
	var id : String;
	var item : Dynamic;
	var lang : String;
	var mobile : Bool;
	var moveEnabled : Bool;
	var owner : Dynamic;
	var ownerDocument : Dynamic;
	var resizeEnabled : Bool;
	var searchContainerNode : Bool;
	var selected : Bool;
	var srcNodeRef : HTMLElement;
	var storeState : Bool;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var visibilityLimits : Dynamic;
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
	function getDisplayValue(part:Dynamic):Dynamic;
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
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRendering(w:Float, h:Float):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onFocus():Void;
}
extern class Mouse {
	function new():Void;
	var triggerExtent : Float;
	function postMixInProperties():Void;
	function onItemRollOut(e:Dynamic):Void;
	function onItemRollOver(e:Dynamic):Void;
}
extern class StoreMixin extends dojo.Stateful {
	function new():Void;
	var allDayAttr : String;
	@:overload(function(property:CssClassFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:DecodeDate, value:Dynamic):Void { })
	@:overload(function(property:DisplayedItemsInvalidated, value:Bool):Void { })
	@:overload(function(property:EncodeDate, value:Dynamic):Void { })
	@:overload(function(property:EndTimeAttr, value:String):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:StartTimeAttr, value:String):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:SubColumnAttr, value:String):Void { })
	@:overload(function(property:SummaryAttr, value:String):Void { })
	@:overload(function(name:String, value:Dynamic):Dynamic { })
	function set(property:AllDayAttr, value:String):Void;
	@:overload(function(property:CssClassFunc):haxe.Constraints.Function { })
	@:overload(function(property:DecodeDate):Dynamic { })
	@:overload(function(property:DisplayedItemsInvalidated):Bool { })
	@:overload(function(property:EncodeDate):Dynamic { })
	@:overload(function(property:EndTimeAttr):String { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:StartTimeAttr):String { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:SubColumnAttr):String { })
	@:overload(function(property:SummaryAttr):String { })
	@:overload(function(name:String):Dynamic { })
	function get(property:AllDayAttr):String;
	@:overload(function(property:CssClassFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DecodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedItemsInvalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EncodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumnAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SummaryAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllDayAttr, callback:{ }):{ function unwatch():Void; };
	var cssClassFunc : haxe.Constraints.Function;
	var decodeDate : Dynamic;
	var displayedItemsInvalidated : Bool;
	var encodeDate : Dynamic;
	var endTimeAttr : String;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var startTimeAttr : String;
	var store : Dynamic;
	var subColumnAttr : String;
	var summaryAttr : String;
	function getItemStoreState(item:Dynamic):Dynamic;
	function itemToRenderItem(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	function postscript(params:Dynamic):Void;
	function renderItemToItem(renderItem:Dynamic, store:dojo.store.api.Store):Dynamic;
}
extern class Touch {
	function new():Void;
	var autoScrollTouchMargin : Float;
	var touchEndEditingTimer : Float;
	var touchStartEditingTimer : Float;
	function postMixInProperties():Void;
}
extern class VerticalRenderer extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Edited, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovered, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Item, value:Dynamic):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:Owner, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selected, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StoreState, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:VisibilityLimits, value:Dynamic):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Edited):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovered):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Item):Dynamic { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:Owner):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selected):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StoreState):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:VisibilityLimits):Dynamic { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Edited, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovered, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Item, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Owner, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StoreState, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VisibilityLimits, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var edited : Bool;
	var focused : Bool;
	var hovered : Bool;
	var id : String;
	var item : Dynamic;
	var lang : String;
	var moveEnabled : Bool;
	var owner : Dynamic;
	var ownerDocument : Dynamic;
	var resizeEnabled : Bool;
	var searchContainerNode : Bool;
	var selected : Bool;
	var srcNodeRef : HTMLElement;
	var storeState : Bool;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var visibilityLimits : Dynamic;
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
	function getDisplayValue(part:Dynamic):Dynamic;
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
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRendering(w:Float, h:Float):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onFocus():Void;
}
extern class ViewBase extends dijit._WidgetBase {
	function new(args:Dynamic):Void;
	var allDayAttr : String;
	@:overload(function(property:AllowResizeLessThan24H, value:Bool):Void { })
	@:overload(function(property:AllowStartEndSwap, value:Bool):Void { })
	@:overload(function(property:AllowSubColumnMove, value:Bool):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoScroll, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CreateOnGridClick, value:Bool):Void { })
	@:overload(function(property:CssClassFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:DatePackage, value:Dynamic):Void { })
	@:overload(function(property:DecodeDate, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DisplayedItemsInvalidated, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DoubleTapDelay, value:Float):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EncodeDate, value:Dynamic):Void { })
	@:overload(function(property:EndTimeAttr, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatItemTimeFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:HoveredItem, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:ItemToRenderer, value:Dynamic):Void { })
	@:overload(function(property:ItemToRendererKindFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LayoutPriorityFunction, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:LiveLayout, value:Bool):Void { })
	@:overload(function(property:MinDurationSteps, value:Float):Void { })
	@:overload(function(property:MinDurationUnit, value:String):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:RendererList, value:Array<Dynamic>):Void { })
	@:overload(function(property:RendererPool, value:Array<Dynamic>):Void { })
	@:overload(function(property:ResizeCursor, value:String):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:Scrollable, value:Bool):Void { })
	@:overload(function(property:ScrollMethod, value:String):Void { })
	@:overload(function(property:SelectedItem, value:Dynamic):Void { })
	@:overload(function(property:SelectedItems, value:Dynamic):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:SnapSteps, value:Float):Void { })
	@:overload(function(property:SnapUnit, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartTimeAttr, value:String):Void { })
	@:overload(function(property:StayInView, value:Bool):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:SubColumnAttr, value:String):Void { })
	@:overload(function(property:SummaryAttr, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:ViewKind, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AllDayAttr, value:String):Void;
	@:overload(function(property:AllowResizeLessThan24H):Bool { })
	@:overload(function(property:AllowStartEndSwap):Bool { })
	@:overload(function(property:AllowSubColumnMove):Bool { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoScroll):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CreateOnGridClick):Bool { })
	@:overload(function(property:CssClassFunc):haxe.Constraints.Function { })
	@:overload(function(property:DatePackage):Dynamic { })
	@:overload(function(property:DecodeDate):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DisplayedItemsInvalidated):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DoubleTapDelay):Float { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EncodeDate):Dynamic { })
	@:overload(function(property:EndTimeAttr):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatItemTimeFunc):haxe.Constraints.Function { })
	@:overload(function(property:HoveredItem):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:ItemToRenderer):Dynamic { })
	@:overload(function(property:ItemToRendererKindFunc):haxe.Constraints.Function { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LayoutPriorityFunction):haxe.Constraints.Function { })
	@:overload(function(property:LiveLayout):Bool { })
	@:overload(function(property:MinDurationSteps):Float { })
	@:overload(function(property:MinDurationUnit):String { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:RendererList):Array<Dynamic> { })
	@:overload(function(property:RendererPool):Array<Dynamic> { })
	@:overload(function(property:ResizeCursor):String { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:Scrollable):Bool { })
	@:overload(function(property:ScrollMethod):String { })
	@:overload(function(property:SelectedItem):Dynamic { })
	@:overload(function(property:SelectedItems):Dynamic { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:SnapSteps):Float { })
	@:overload(function(property:SnapUnit):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartTimeAttr):String { })
	@:overload(function(property:StayInView):Bool { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:SubColumnAttr):String { })
	@:overload(function(property:SummaryAttr):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:ViewKind):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AllDayAttr):String;
	@:overload(function(property:AllowResizeLessThan24H, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowStartEndSwap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowSubColumnMove, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateOnGridClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssClassFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DecodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedItemsInvalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoubleTapDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EncodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatItemTimeFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HoveredItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRendererKindFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LayoutPriorityFunction, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LiveLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererList, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererPool, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeCursor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scrollable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollMethod, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StayInView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumnAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SummaryAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewKind, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllDayAttr, callback:{ }):{ function unwatch():Void; };
	var allowResizeLessThan24H : Bool;
	var allowStartEndSwap : Bool;
	var allowSubColumnMove : Bool;
	var attributeMap : Dynamic;
	var autoScroll : Bool;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var createOnGridClick : Bool;
	var cssClassFunc : haxe.Constraints.Function;
	var datePackage : Dynamic;
	var decodeDate : Dynamic;
	var dir : String;
	var displayedItemsInvalidated : Bool;
	var domNode : HTMLElement;
	var doubleTapDelay : Float;
	var editable : Bool;
	var encodeDate : Dynamic;
	var endTimeAttr : String;
	var focused : Bool;
	var formatItemTimeFunc : haxe.Constraints.Function;
	var hoveredItem : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var itemToRenderer : Dynamic;
	var itemToRendererKindFunc : haxe.Constraints.Function;
	var lang : String;
	var layoutPriorityFunction : haxe.Constraints.Function;
	var liveLayout : Bool;
	var minDurationSteps : Float;
	var minDurationUnit : String;
	var moveEnabled : Bool;
	var ownerDocument : Dynamic;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var rendererList : Array<Dynamic>;
	var rendererPool : Array<Dynamic>;
	var resizeCursor : String;
	var resizeEnabled : Bool;
	var scrollable : Bool;
	var scrollMethod : String;
	var selectedItem : Dynamic;
	var selectedItems : Dynamic;
	var selectionMode : String;
	var snapSteps : Float;
	var snapUnit : String;
	var srcNodeRef : HTMLElement;
	var startTimeAttr : String;
	var stayInView : Bool;
	var store : Dynamic;
	var style : String;
	var subColumnAttr : String;
	var summaryAttr : String;
	var title : String;
	var tooltip : String;
	var viewKind : String;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function afterActivate():Void;
	function afterDeactivate():Void;
	function applyRendererZIndex(item:Dynamic, renderer:Dynamic, hovered:Bool, selected:Bool, edited:Bool, focused:Bool):Void;
	function beforeActivate():Void;
	function beforeDeactivate():Void;
	function buildRendering():Void;
	function computeOverlapping(layoutItems:Array<Dynamic>, func:Dynamic):Dynamic;
	function computeProjectionOnDate(renderData:Dynamic, refDate:Date, date:Array<Date>, max:Float):Dynamic;
	function computeRangeOverlap(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createItemFunc(view:dojox.calendar.ViewBase, d:Date, e:MouseEvent):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Dynamic):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchChange(oldSelectedItem:Dynamic, newSelectedItem:Dynamic, renderer:Dynamic, triggerEvent:Event):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function ensureMinimalDuration(renderData:Dynamic, item:Dynamic, unit:String, steps:Float, editKind:String):Void;
	function ensureVisibility(start:Date, end:Date, margin:Float, visibilityTarget:String, duration:Float):Void;
	function floorDate(date:Date, unit:String, steps:Float, reuse:Bool):Dynamic;
	function floorToDay(date:Date, reuse:Bool):Dynamic;
	function floorToMonth(date:Date, reuse:Bool):Dynamic;
	function getChildren():Array<Dynamic>;
	function getCSSPrefix():String;
	function getIdentity(item:Dynamic):Dynamic;
	function getItemStoreState(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRenderers(item:Dynamic):Dynamic;
	function getSubColumn(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getSubColumnIndex(value:String):Float;
	function getTime(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getWeekNumberLabel(date:Date):Dynamic;
	function invalidateLayout():Void;
	function invalidateRendering():Void;
	function isAscendantHasClass(node:HTMLElement, ancestor:HTMLElement, className:String):Dynamic;
	function isFocusable():Dynamic;
	function isItemBeingEdited(item:Dynamic):Dynamic;
	function isItemEditable(item:Dynamic, rendererKind:String):Dynamic;
	function isItemFocused(item:Dynamic):Dynamic;
	function isItemHovered(item:Dynamic):Dynamic;
	function isItemMoveEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemResizeEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemSelected(item:Dynamic):Dynamic;
	function isLeftToRight():Dynamic;
	function isOverlapping(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	function isSameDay(date1:Date, date2:Date):Dynamic;
	function isStartOfDay(d:Date):Dynamic;
	function isToday(date:Date):Dynamic;
	function isWeekEnd(date:Date):Dynamic;
	function itemToRenderItem(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	function newDate(obj:Dynamic):Dynamic;
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
	function renderItemToItem(renderItem:Dynamic, store:dojo.store.api.Store):Dynamic;
	function resize():Void;
	function scrollView(dir:Float):Void;
	function selectFromEvent(e:Dynamic, item:Dynamic, renderer:Dynamic, dispatch:Dynamic):Void;
	function setItemSelected(item:Dynamic, value:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRenderers(obj:Dynamic, stateOnly:Bool):Void;
	function validateRendering():Void;
	function onBlur():Void;
	function onChange():Void;
	function onFocus():Void;
	function onGridClick(e:Dynamic):Void;
	function onGridDoubleClick(e:Dynamic):Void;
	function onItemClick(e:Dynamic):Void;
	function onItemContextMenu(e:Dynamic):Void;
	function onItemDoubleClick(e:Dynamic):Void;
	function onItemEditBegin(e:Dynamic):Void;
	function onItemEditBeginGesture(e:Dynamic):Void;
	function onItemEditEnd(e:Dynamic):Void;
	function onItemEditEndGesture(e:Dynamic):Void;
	function onItemEditMoveGesture(e:Dynamic):Void;
	function onItemEditResizeGesture(e:Dynamic):Void;
	function onRendererCreated(e:Dynamic):Void;
	function onRendererDestroyed(e:Dynamic):Void;
	function onRendererRecycled(e:Dynamic):Void;
	function onRendererReused(e:Dynamic):Void;
	function onRenderersLayoutDone(view:Dynamic):Void;
}
extern class ColumnViewSecondarySheet extends dojox.calendar.MatrixView {
	function new():Void;
	var allDayAttr : String;
	@:overload(function(property:AllowResizeLessThan24H, value:Bool):Void { })
	@:overload(function(property:AllowStartEndSwap, value:Bool):Void { })
	@:overload(function(property:AllowSubColumnMove, value:Bool):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoScroll, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:CellHeaderLongPattern, value:String):Void { })
	@:overload(function(property:CellHeaderShortPattern, value:String):Void { })
	@:overload(function(property:CellPaddingTop, value:Float):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColumnCount, value:Float):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CreateOnGridClick, value:Bool):Void { })
	@:overload(function(property:CssClassFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:DatePackage, value:Dynamic):Void { })
	@:overload(function(property:DecodeDate, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DisplayedItemsInvalidated, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DoubleTapDelay, value:Float):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EncodeDate, value:Dynamic):Void { })
	@:overload(function(property:EndTimeAttr, value:String):Void { })
	@:overload(function(property:ExpandDuration, value:Float):Void { })
	@:overload(function(property:ExpandEasing, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:ExpandRenderer, value:Dynamic):Void { })
	@:overload(function(property:ExpandRendererHeight, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatItemTimeFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:HorizontalRenderer, value:Dynamic):Void { })
	@:overload(function(property:HorizontalRendererHeight, value:Float):Void { })
	@:overload(function(property:HoveredItem, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:ItemToRenderer, value:Dynamic):Void { })
	@:overload(function(property:ItemToRendererKindFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:LabelRenderer, value:Dynamic):Void { })
	@:overload(function(property:LabelRendererHeight, value:Float):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LayoutDuringResize, value:Bool):Void { })
	@:overload(function(property:LayoutPriorityFunction, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:LiveLayout, value:Bool):Void { })
	@:overload(function(property:MinDurationSteps, value:Float):Void { })
	@:overload(function(property:MinDurationUnit, value:String):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:NaturalRowsHeight, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PercentOverlap, value:Float):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:RefEndTime, value:Dynamic):Void { })
	@:overload(function(property:RefStartTime, value:Dynamic):Void { })
	@:overload(function(property:RenderData, value:Dynamic):Void { })
	@:overload(function(property:RendererList, value:Array<Dynamic>):Void { })
	@:overload(function(property:RendererPool, value:Array<Dynamic>):Void { })
	@:overload(function(property:ResizeAnimationDuration, value:Float):Void { })
	@:overload(function(property:ResizeCursor, value:String):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:RoundToDay, value:Bool):Void { })
	@:overload(function(property:RowCount, value:Float):Void { })
	@:overload(function(property:Scrollable, value:Bool):Void { })
	@:overload(function(property:ScrollMethod, value:String):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectedItem, value:Dynamic):Void { })
	@:overload(function(property:SelectedItems, value:Dynamic):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:ShowCellLabel, value:Bool):Void { })
	@:overload(function(property:SnapSteps, value:Float):Void { })
	@:overload(function(property:SnapUnit, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartDate, value:Date):Void { })
	@:overload(function(property:StartTimeAttr, value:String):Void { })
	@:overload(function(property:StayInView, value:Bool):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:StyleGridCellFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:SubColumnAttr, value:String):Void { })
	@:overload(function(property:SummaryAttr, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TriggerExtent, value:Float):Void { })
	@:overload(function(property:VerticalGap, value:Float):Void { })
	@:overload(function(property:ViewKind, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AllDayAttr, value:String):Void;
	@:overload(function(property:AllowResizeLessThan24H):Bool { })
	@:overload(function(property:AllowStartEndSwap):Bool { })
	@:overload(function(property:AllowSubColumnMove):Bool { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoScroll):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:CellHeaderLongPattern):String { })
	@:overload(function(property:CellHeaderShortPattern):String { })
	@:overload(function(property:CellPaddingTop):Float { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColumnCount):Float { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CreateOnGridClick):Bool { })
	@:overload(function(property:CssClassFunc):haxe.Constraints.Function { })
	@:overload(function(property:DatePackage):Dynamic { })
	@:overload(function(property:DecodeDate):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DisplayedItemsInvalidated):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DoubleTapDelay):Float { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EncodeDate):Dynamic { })
	@:overload(function(property:EndTimeAttr):String { })
	@:overload(function(property:ExpandDuration):Float { })
	@:overload(function(property:ExpandEasing):haxe.Constraints.Function { })
	@:overload(function(property:ExpandRenderer):Dynamic { })
	@:overload(function(property:ExpandRendererHeight):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatItemTimeFunc):haxe.Constraints.Function { })
	@:overload(function(property:HorizontalRenderer):Dynamic { })
	@:overload(function(property:HorizontalRendererHeight):Float { })
	@:overload(function(property:HoveredItem):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:ItemToRenderer):Dynamic { })
	@:overload(function(property:ItemToRendererKindFunc):haxe.Constraints.Function { })
	@:overload(function(property:LabelRenderer):Dynamic { })
	@:overload(function(property:LabelRendererHeight):Float { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LayoutDuringResize):Bool { })
	@:overload(function(property:LayoutPriorityFunction):haxe.Constraints.Function { })
	@:overload(function(property:LiveLayout):Bool { })
	@:overload(function(property:MinDurationSteps):Float { })
	@:overload(function(property:MinDurationUnit):String { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:NaturalRowsHeight):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PercentOverlap):Float { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:RefEndTime):Dynamic { })
	@:overload(function(property:RefStartTime):Dynamic { })
	@:overload(function(property:RenderData):Dynamic { })
	@:overload(function(property:RendererList):Array<Dynamic> { })
	@:overload(function(property:RendererPool):Array<Dynamic> { })
	@:overload(function(property:ResizeAnimationDuration):Float { })
	@:overload(function(property:ResizeCursor):String { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:RoundToDay):Bool { })
	@:overload(function(property:RowCount):Float { })
	@:overload(function(property:Scrollable):Bool { })
	@:overload(function(property:ScrollMethod):String { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectedItem):Dynamic { })
	@:overload(function(property:SelectedItems):Dynamic { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:ShowCellLabel):Bool { })
	@:overload(function(property:SnapSteps):Float { })
	@:overload(function(property:SnapUnit):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartDate):Date { })
	@:overload(function(property:StartTimeAttr):String { })
	@:overload(function(property:StayInView):Bool { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:StyleGridCellFunc):haxe.Constraints.Function { })
	@:overload(function(property:SubColumnAttr):String { })
	@:overload(function(property:SummaryAttr):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TriggerExtent):Float { })
	@:overload(function(property:VerticalGap):Float { })
	@:overload(function(property:ViewKind):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AllDayAttr):String;
	@:overload(function(property:AllowResizeLessThan24H, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowStartEndSwap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowSubColumnMove, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellHeaderLongPattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellHeaderShortPattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellPaddingTop, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateOnGridClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssClassFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DecodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedItemsInvalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoubleTapDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EncodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExpandDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExpandEasing, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExpandRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExpandRendererHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatItemTimeFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HorizontalRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HorizontalRendererHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HoveredItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRendererKindFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelRendererHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LayoutDuringResize, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LayoutPriorityFunction, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LiveLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NaturalRowsHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PercentOverlap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RefEndTime, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RefStartTime, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RenderData, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererList, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererPool, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeAnimationDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeCursor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RoundToDay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scrollable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollMethod, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowCellLabel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StayInView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StyleGridCellFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumnAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SummaryAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TriggerExtent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VerticalGap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewKind, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllDayAttr, callback:{ }):{ function unwatch():Void; };
	var allowResizeLessThan24H : Bool;
	var allowStartEndSwap : Bool;
	var allowSubColumnMove : Bool;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoScroll : Bool;
	var baseClass : String;
	var cellHeaderLongPattern : String;
	var cellHeaderShortPattern : String;
	var cellPaddingTop : Float;
	var class : String;
	var columnCount : Float;
	var containerNode : HTMLElement;
	var createOnGridClick : Bool;
	var cssClassFunc : haxe.Constraints.Function;
	var datePackage : Dynamic;
	var decodeDate : Dynamic;
	var dir : String;
	var displayedItemsInvalidated : Bool;
	var domNode : HTMLElement;
	var doubleTapDelay : Float;
	var editable : Bool;
	var encodeDate : Dynamic;
	var endTimeAttr : String;
	var expandDuration : Float;
	var expandEasing : haxe.Constraints.Function;
	var expandRenderer : Dynamic;
	var expandRendererHeight : Float;
	var focused : Bool;
	var formatItemTimeFunc : haxe.Constraints.Function;
	var horizontalRenderer : Dynamic;
	var horizontalRendererHeight : Float;
	var hoveredItem : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var itemToRenderer : Dynamic;
	var itemToRendererKindFunc : haxe.Constraints.Function;
	var labelRenderer : Dynamic;
	var labelRendererHeight : Float;
	var lang : String;
	var layoutDuringResize : Bool;
	var layoutPriorityFunction : haxe.Constraints.Function;
	var liveLayout : Bool;
	var minDurationSteps : Float;
	var minDurationUnit : String;
	var moveEnabled : Bool;
	var naturalRowsHeight : Dynamic;
	var ownerDocument : Dynamic;
	var percentOverlap : Float;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var refEndTime : Dynamic;
	var refStartTime : Dynamic;
	var renderData : Dynamic;
	var rendererList : Array<Dynamic>;
	var rendererPool : Array<Dynamic>;
	var resizeAnimationDuration : Float;
	var resizeCursor : String;
	var resizeEnabled : Bool;
	var roundToDay : Bool;
	var rowCount : Float;
	var scrollable : Bool;
	var scrollMethod : String;
	var searchContainerNode : Bool;
	var selectedItem : Dynamic;
	var selectedItems : Dynamic;
	var selectionMode : String;
	var showCellLabel : Bool;
	var snapSteps : Float;
	var snapUnit : String;
	var srcNodeRef : HTMLElement;
	var startDate : Date;
	var startTimeAttr : String;
	var stayInView : Bool;
	var store : Dynamic;
	var style : String;
	var styleGridCellFunc : haxe.Constraints.Function;
	var subColumnAttr : String;
	var summaryAttr : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var triggerExtent : Float;
	var verticalGap : Float;
	var viewKind : String;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function afterActivate():Void;
	function afterDeactivate():Void;
	function beforeActivate():Void;
	function beforeDeactivate():Void;
	function buildRendering():Void;
	function collapseRow(duration:Float, easing:haxe.Constraints.Function, apply:Dynamic):Void;
	function computeOverlapping(layoutItems:Array<Dynamic>, func:Dynamic):Dynamic;
	function computeProjectionOnDate(renderData:Dynamic, refDate:Date, date:Array<Date>, max:Float):Dynamic;
	function computeRangeOverlap(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createItemFunc(view:dojox.calendar.ViewBase, d:Date, e:MouseEvent):Void;
	function defaultStyleGridCell(node:HTMLElement, date:Date, renderData:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Dynamic):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchChange(oldSelectedItem:Dynamic, newSelectedItem:Dynamic, renderer:Dynamic, triggerEvent:Event):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function ensureMinimalDuration(renderData:Dynamic, item:Dynamic, unit:String, steps:Float, editKind:String):Void;
	function ensureVisibility(start:Date, end:Date, margin:Float, visibilityTarget:String, duration:Float):Void;
	function expandRendererClickHandler(e:Event, renderer:Dynamic):Void;
	function expandRow(rowIndex:Float, colIndex:Float, duration:Float, easing:haxe.Constraints.Function, apply:Dynamic):Float;
	function floorDate(date:Date, unit:String, steps:Float, reuse:Bool):Dynamic;
	function floorToDay(date:Date, reuse:Bool):Dynamic;
	function floorToMonth(date:Date, reuse:Bool):Dynamic;
	function getChildren():Array<Dynamic>;
	function getCSSPrefix():String;
	function getExpandedRowIndex():Float;
	function getIdentity(item:Dynamic):Dynamic;
	function getItemStoreState(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRenderers(item:Dynamic):Dynamic;
	function getSubColumn(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getSubColumnIndex(value:String):Float;
	function getTime(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getWeekNumberLabel(date:Date):Dynamic;
	function invalidateLayout():Void;
	function invalidateRendering():Void;
	function isAscendantHasClass(node:HTMLElement, ancestor:HTMLElement, className:String):Dynamic;
	function isFocusable():Dynamic;
	function isItemBeingEdited(item:Dynamic):Dynamic;
	function isItemEditable(item:Dynamic, rendererKind:String):Dynamic;
	function isItemFocused(item:Dynamic):Dynamic;
	function isItemHovered(item:Dynamic):Dynamic;
	function isItemMoveEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemResizeEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemSelected(item:Dynamic):Dynamic;
	function isLeftToRight():Dynamic;
	function isOverlapping(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	function isSameDay(date1:Date, date2:Date):Dynamic;
	function isStartOfDay(d:Date):Dynamic;
	function isToday(date:Date):Dynamic;
	function isWeekEnd(date:Date):Dynamic;
	function itemToRenderItem(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	function newDate(obj:Dynamic):Dynamic;
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
	function renderItemToItem(renderItem:Dynamic, store:dojo.store.api.Store):Dynamic;
	function resize(e:Dynamic):Void;
	function scrollView(dir:Float):Void;
	function selectFromEvent(e:Dynamic, item:Dynamic, renderer:Dynamic, dispatch:Dynamic):Void;
	function setItemSelected(item:Dynamic, value:Dynamic):Void;
	function startup():Void;
	function styleColumnHeaderCell(node:HTMLElement, date:Date, renderData:Dynamic):Void;
	function styleGridCell(node:HTMLElement, date:Date, renderData:Dynamic):Void;
	function styleRowHeaderCell(node:HTMLElement, date:Date, renderData:Dynamic):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRenderers(obj:Dynamic, stateOnly:Bool):Void;
	function validateRendering():Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange():Void;
	function onExpandAnimationEnd(expand:Bool):Void;
	function onExpandRendererClick(e:Dynamic):Void;
	function onFocus():Void;
	function onGridClick(e:Dynamic):Void;
	function onGridDoubleClick(e:Dynamic):Void;
	function onItemClick(e:Dynamic):Void;
	function onItemContextMenu(e:Dynamic):Void;
	function onItemDoubleClick(e:Dynamic):Void;
	function onItemEditBegin(e:Dynamic):Void;
	function onItemEditBeginGesture(e:Dynamic):Void;
	function onItemEditEnd(e:Dynamic):Void;
	function onItemEditEndGesture(e:Dynamic):Void;
	function onItemEditMoveGesture(e:Dynamic):Void;
	function onItemEditResizeGesture(e:Dynamic):Void;
	function onRendererCreated(e:Dynamic):Void;
	function onRendererDestroyed(e:Dynamic):Void;
	function onRendererRecycled(e:Dynamic):Void;
	function onRendererReused(e:Dynamic):Void;
	function onRenderersLayoutDone(view:Dynamic):Void;
	function onRowHeaderClick(e:Dynamic):Void;
}
extern class ColumnView extends dojox.calendar.SimpleColumnView {
	function new():Void;
	var allDayAttr : String;
	@:overload(function(property:AllowResizeLessThan24H, value:Bool):Void { })
	@:overload(function(property:AllowStartEndSwap, value:Bool):Void { })
	@:overload(function(property:AllowSubColumnMove, value:Bool):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoScroll, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColumnCount, value:Float):Void { })
	@:overload(function(property:ColumnHeaderDatePattern, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CreateOnGridClick, value:Bool):Void { })
	@:overload(function(property:CssClassFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:DatePackage, value:Dynamic):Void { })
	@:overload(function(property:DecodeDate, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DisplayedItemsInvalidated, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DoubleTapDelay, value:Float):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EncodeDate, value:Dynamic):Void { })
	@:overload(function(property:EndTimeAttr, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatItemTimeFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:HeaderPadding, value:Float):Void { })
	@:overload(function(property:HorizontalGap, value:Float):Void { })
	@:overload(function(property:HourSize, value:Float):Void { })
	@:overload(function(property:HoveredItem, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:ItemToRenderer, value:Dynamic):Void { })
	@:overload(function(property:ItemToRendererKindFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LayoutPriorityFunction, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:LiveLayout, value:Bool):Void { })
	@:overload(function(property:MaxHours, value:Float):Void { })
	@:overload(function(property:MinColumnWidth, value:Float):Void { })
	@:overload(function(property:MinDurationSteps, value:Float):Void { })
	@:overload(function(property:MinDurationUnit, value:String):Void { })
	@:overload(function(property:MinHours, value:Float):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PercentOverlap, value:Float):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:RenderData, value:Dynamic):Void { })
	@:overload(function(property:RendererList, value:Array<Dynamic>):Void { })
	@:overload(function(property:RendererPool, value:Array<Dynamic>):Void { })
	@:overload(function(property:ResizeCursor, value:String):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:RowHeaderFirstLabelOffset, value:Float):Void { })
	@:overload(function(property:RowHeaderGridSlotDuration, value:Float):Void { })
	@:overload(function(property:RowHeaderLabelOffset, value:Float):Void { })
	@:overload(function(property:RowHeaderLabelSlotDuration, value:Float):Void { })
	@:overload(function(property:RowHeaderTimePattern, value:String):Void { })
	@:overload(function(property:Scrollable, value:Bool):Void { })
	@:overload(function(property:ScrollBarRTLPosition, value:String):Void { })
	@:overload(function(property:ScrollMethod, value:String):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SecondarySheetProps, value:Dynamic):Void { })
	@:overload(function(property:SelectedItem, value:Dynamic):Void { })
	@:overload(function(property:SelectedItems, value:Dynamic):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:ShowTimeIndicator, value:Bool):Void { })
	@:overload(function(property:SnapSteps, value:Float):Void { })
	@:overload(function(property:SnapUnit, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartDate, value:Date):Void { })
	@:overload(function(property:StartTimeAttr, value:String):Void { })
	@:overload(function(property:StartTimeOfDay, value:Dynamic):Void { })
	@:overload(function(property:StayInView, value:Bool):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:StyleGridCellFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:SubColumnAttr, value:String):Void { })
	@:overload(function(property:SubColumns, value:Dynamic):Void { })
	@:overload(function(property:SummaryAttr, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:TimeIndicatorRefreshInterval, value:Float):Void { })
	@:overload(function(property:TimeSlotDuration, value:Float):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:VerticalRenderer, value:Dynamic):Void { })
	@:overload(function(property:ViewKind, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AllDayAttr, value:String):Void;
	@:overload(function(property:AllowResizeLessThan24H):Bool { })
	@:overload(function(property:AllowStartEndSwap):Bool { })
	@:overload(function(property:AllowSubColumnMove):Bool { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoScroll):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColumnCount):Float { })
	@:overload(function(property:ColumnHeaderDatePattern):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CreateOnGridClick):Bool { })
	@:overload(function(property:CssClassFunc):haxe.Constraints.Function { })
	@:overload(function(property:DatePackage):Dynamic { })
	@:overload(function(property:DecodeDate):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DisplayedItemsInvalidated):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DoubleTapDelay):Float { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EncodeDate):Dynamic { })
	@:overload(function(property:EndTimeAttr):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatItemTimeFunc):haxe.Constraints.Function { })
	@:overload(function(property:HeaderPadding):Float { })
	@:overload(function(property:HorizontalGap):Float { })
	@:overload(function(property:HourSize):Float { })
	@:overload(function(property:HoveredItem):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:ItemToRenderer):Dynamic { })
	@:overload(function(property:ItemToRendererKindFunc):haxe.Constraints.Function { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LayoutPriorityFunction):haxe.Constraints.Function { })
	@:overload(function(property:LiveLayout):Bool { })
	@:overload(function(property:MaxHours):Float { })
	@:overload(function(property:MinColumnWidth):Float { })
	@:overload(function(property:MinDurationSteps):Float { })
	@:overload(function(property:MinDurationUnit):String { })
	@:overload(function(property:MinHours):Float { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PercentOverlap):Float { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:RenderData):Dynamic { })
	@:overload(function(property:RendererList):Array<Dynamic> { })
	@:overload(function(property:RendererPool):Array<Dynamic> { })
	@:overload(function(property:ResizeCursor):String { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:RowHeaderFirstLabelOffset):Float { })
	@:overload(function(property:RowHeaderGridSlotDuration):Float { })
	@:overload(function(property:RowHeaderLabelOffset):Float { })
	@:overload(function(property:RowHeaderLabelSlotDuration):Float { })
	@:overload(function(property:RowHeaderTimePattern):String { })
	@:overload(function(property:Scrollable):Bool { })
	@:overload(function(property:ScrollBarRTLPosition):String { })
	@:overload(function(property:ScrollMethod):String { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SecondarySheetProps):Dynamic { })
	@:overload(function(property:SelectedItem):Dynamic { })
	@:overload(function(property:SelectedItems):Dynamic { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:ShowTimeIndicator):Bool { })
	@:overload(function(property:SnapSteps):Float { })
	@:overload(function(property:SnapUnit):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartDate):Date { })
	@:overload(function(property:StartTimeAttr):String { })
	@:overload(function(property:StartTimeOfDay):Dynamic { })
	@:overload(function(property:StayInView):Bool { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:StyleGridCellFunc):haxe.Constraints.Function { })
	@:overload(function(property:SubColumnAttr):String { })
	@:overload(function(property:SubColumns):Dynamic { })
	@:overload(function(property:SummaryAttr):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:TimeIndicatorRefreshInterval):Float { })
	@:overload(function(property:TimeSlotDuration):Float { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:VerticalRenderer):Dynamic { })
	@:overload(function(property:ViewKind):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AllDayAttr):String;
	@:overload(function(property:AllowResizeLessThan24H, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowStartEndSwap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowSubColumnMove, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnHeaderDatePattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateOnGridClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssClassFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DecodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedItemsInvalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoubleTapDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EncodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatItemTimeFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HeaderPadding, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HorizontalGap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HourSize, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HoveredItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRendererKindFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LayoutPriorityFunction, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LiveLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxHours, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinColumnWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinHours, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PercentOverlap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RenderData, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererList, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererPool, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeCursor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeaderFirstLabelOffset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeaderGridSlotDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeaderLabelOffset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeaderLabelSlotDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeaderTimePattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scrollable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollBarRTLPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollMethod, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SecondarySheetProps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowTimeIndicator, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeOfDay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StayInView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StyleGridCellFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumnAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumns, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SummaryAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TimeIndicatorRefreshInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TimeSlotDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VerticalRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewKind, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllDayAttr, callback:{ }):{ function unwatch():Void; };
	var allowResizeLessThan24H : Bool;
	var allowStartEndSwap : Bool;
	var allowSubColumnMove : Bool;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoScroll : Bool;
	var baseClass : String;
	var class : String;
	var columnCount : Float;
	var columnHeaderDatePattern : String;
	var containerNode : HTMLElement;
	var createOnGridClick : Bool;
	var cssClassFunc : haxe.Constraints.Function;
	var datePackage : Dynamic;
	var decodeDate : Dynamic;
	var dir : String;
	var displayedItemsInvalidated : Bool;
	var domNode : HTMLElement;
	var doubleTapDelay : Float;
	var editable : Bool;
	var encodeDate : Dynamic;
	var endTimeAttr : String;
	var focused : Bool;
	var formatItemTimeFunc : haxe.Constraints.Function;
	var headerPadding : Float;
	var horizontalGap : Float;
	var hourSize : Float;
	var hoveredItem : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var itemToRenderer : Dynamic;
	var itemToRendererKindFunc : haxe.Constraints.Function;
	var lang : String;
	var layoutPriorityFunction : haxe.Constraints.Function;
	var liveLayout : Bool;
	var maxHours : Float;
	var minColumnWidth : Float;
	var minDurationSteps : Float;
	var minDurationUnit : String;
	var minHours : Float;
	var moveEnabled : Bool;
	var ownerDocument : Dynamic;
	var percentOverlap : Float;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var renderData : Dynamic;
	var rendererList : Array<Dynamic>;
	var rendererPool : Array<Dynamic>;
	var resizeCursor : String;
	var resizeEnabled : Bool;
	var rowHeaderFirstLabelOffset : Float;
	var rowHeaderGridSlotDuration : Float;
	var rowHeaderLabelOffset : Float;
	var rowHeaderLabelSlotDuration : Float;
	var rowHeaderTimePattern : String;
	var scrollable : Bool;
	var scrollBarRTLPosition : String;
	var scrollMethod : String;
	var searchContainerNode : Bool;
	var secondarySheetProps : Dynamic;
	var selectedItem : Dynamic;
	var selectedItems : Dynamic;
	var selectionMode : String;
	var showTimeIndicator : Bool;
	var snapSteps : Float;
	var snapUnit : String;
	var srcNodeRef : HTMLElement;
	var startDate : Date;
	var startTimeAttr : String;
	var startTimeOfDay : Dynamic;
	var stayInView : Bool;
	var store : Dynamic;
	var style : String;
	var styleGridCellFunc : haxe.Constraints.Function;
	var subColumnAttr : String;
	var subColumns : Dynamic;
	var summaryAttr : String;
	var templatePath : String;
	var templateString : String;
	var timeIndicatorRefreshInterval : Float;
	var timeSlotDuration : Float;
	var title : String;
	var tooltip : String;
	var verticalRenderer : Dynamic;
	var viewKind : String;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function afterActivate():Void;
	function afterDeactivate():Void;
	function applyRendererZIndex(item:Dynamic, renderer:Dynamic, hovered:Bool, selected:Bool, edited:Bool, focused:Bool):Void;
	function beforeActivate():Void;
	function beforeDeactivate():Void;
	function buildRendering():Void;
	function computeOverlapping(layoutItems:Array<Dynamic>, func:Dynamic):Dynamic;
	function computeProjectionOnDate(renderData:Dynamic, refDate:Date, date:Array<Date>, max:Float):Dynamic;
	function computeRangeOverlap(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createItemFunc(view:dojox.calendar.ViewBase, d:Date, e:MouseEvent):Void;
	function defaultStyleGridCell(node:HTMLElement, date:Date, hours:Float, minutes:Float, renderData:Dynamic):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Dynamic):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchChange(oldSelectedItem:Dynamic, newSelectedItem:Dynamic, renderer:Dynamic, triggerEvent:Event):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function ensureMinimalDuration(renderData:Dynamic, item:Dynamic, unit:String, steps:Float, editKind:String):Void;
	@:overload(function(start:Date, end:Date, visibilityTarget:String, margin:Float, duration:Float):Void { })
	function ensureVisibility(start:Date, end:Date, margin:Float, visibilityTarget:String, duration:Float):Void;
	function floorDate(date:Date, unit:String, steps:Float, reuse:Bool):Dynamic;
	function floorToDay(date:Date, reuse:Bool):Dynamic;
	function floorToMonth(date:Date, reuse:Bool):Dynamic;
	function getChildren():Array<Dynamic>;
	function getCSSPrefix():String;
	function getIdentity(item:Dynamic):Dynamic;
	function getItemStoreState(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRenderers(item:Dynamic):Dynamic;
	function getSecondarySheet():Dynamic;
	function getSubColumn(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getSubColumnIndex(value:String):Float;
	function getTime(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getTimeOfDay(pos:Float, rd:Dynamic):Dynamic;
	function getWeekNumberLabel(date:Date):Dynamic;
	function invalidateRendering():Void;
	function isAscendantHasClass(node:HTMLElement, ancestor:HTMLElement, className:String):Dynamic;
	function isFocusable():Dynamic;
	function isItemBeingEdited(item:Dynamic):Dynamic;
	function isItemEditable(item:Dynamic, rendererKind:String):Dynamic;
	function isItemFocused(item:Dynamic):Dynamic;
	function isItemHovered(item:Dynamic):Dynamic;
	function isItemMoveEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemResizeEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemSelected(item:Dynamic):Dynamic;
	function isLeftToRight():Dynamic;
	function isOverlapping(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	function isSameDay(date1:Date, date2:Date):Dynamic;
	function isStartOfDay(d:Date):Dynamic;
	function isToday(date:Date):Dynamic;
	function isWeekEnd(date:Date):Dynamic;
	function itemToRenderItem(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	function newDate(obj:Dynamic):Dynamic;
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
	function postscript():Void;
	function refreshRendering():Void;
	function renderItemToItem(renderItem:Dynamic, store:dojo.store.api.Store):Dynamic;
	function resizeSecondarySheet(height:Float):Void;
	function scrollView(dir:Float):Void;
	function scrollViewHorizontal(dir:Float):Void;
	function secondarySheetClass():Void;
	function selectFromEvent(e:Dynamic, item:Dynamic, renderer:Dynamic, dispatch:Dynamic):Void;
	function setItemSelected(item:Dynamic, value:Dynamic):Void;
	function startup():Void;
	function styleColumnHeaderCell(node:HTMLElement, date:Date, renderData:Dynamic):Void;
	function styleGridCell(node:HTMLElement, date:Date, hours:Dynamic, minutes:Dynamic, renderData:Dynamic):Void;
	function styleRowHeaderCell(node:HTMLElement, h:Float, m:Dynamic, renderData:Dynamic):Void;
	function styleSubColumnHeaderCell(node:HTMLElement, date:Dynamic, renderData:Dynamic):Void;
	function subColumnLabelFunc(value:Dynamic):Dynamic;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRenderers(obj:Dynamic, stateOnly:Dynamic):Void;
	function validateRendering():Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange():Void;
	function onColumnHeaderClick(e:Dynamic):Void;
	function onFocus():Void;
	function onGridClick(e:Dynamic):Void;
	function onGridDoubleClick(e:Dynamic):Void;
	function onItemClick(e:Dynamic):Void;
	function onItemContextMenu(e:Dynamic):Void;
	function onItemDoubleClick(e:Dynamic):Void;
	function onItemEditBegin(e:Dynamic):Void;
	function onItemEditBeginGesture(e:Dynamic):Void;
	function onItemEditEnd(e:Dynamic):Void;
	function onItemEditEndGesture(e:Dynamic):Void;
	function onItemEditMoveGesture(e:Dynamic):Void;
	function onItemEditResizeGesture(e:Dynamic):Void;
	function onRendererCreated(e:Dynamic):Void;
	function onRendererDestroyed(e:Dynamic):Void;
	function onRendererRecycled(e:Dynamic):Void;
	function onRendererReused(e:Dynamic):Void;
	function onRenderersLayoutDone(view:Dynamic):Void;
	function onRowHeaderClick(e:Dynamic):Void;
}
extern class MatrixView extends dojox.calendar.ViewBase {
	function new():Void;
	var allDayAttr : String;
	@:overload(function(property:AllowResizeLessThan24H, value:Bool):Void { })
	@:overload(function(property:AllowStartEndSwap, value:Bool):Void { })
	@:overload(function(property:AllowSubColumnMove, value:Bool):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoScroll, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:CellHeaderLongPattern, value:String):Void { })
	@:overload(function(property:CellHeaderShortPattern, value:String):Void { })
	@:overload(function(property:CellPaddingTop, value:Float):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColumnCount, value:Float):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CreateOnGridClick, value:Bool):Void { })
	@:overload(function(property:CssClassFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:DatePackage, value:Dynamic):Void { })
	@:overload(function(property:DecodeDate, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DisplayedItemsInvalidated, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DoubleTapDelay, value:Float):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EncodeDate, value:Dynamic):Void { })
	@:overload(function(property:EndTimeAttr, value:String):Void { })
	@:overload(function(property:ExpandDuration, value:Float):Void { })
	@:overload(function(property:ExpandEasing, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:ExpandRenderer, value:Dynamic):Void { })
	@:overload(function(property:ExpandRendererHeight, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatItemTimeFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:HorizontalRenderer, value:Dynamic):Void { })
	@:overload(function(property:HorizontalRendererHeight, value:Float):Void { })
	@:overload(function(property:HoveredItem, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:ItemToRenderer, value:Dynamic):Void { })
	@:overload(function(property:ItemToRendererKindFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:LabelRenderer, value:Dynamic):Void { })
	@:overload(function(property:LabelRendererHeight, value:Float):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LayoutDuringResize, value:Bool):Void { })
	@:overload(function(property:LayoutPriorityFunction, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:LiveLayout, value:Bool):Void { })
	@:overload(function(property:MinDurationSteps, value:Float):Void { })
	@:overload(function(property:MinDurationUnit, value:String):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:NaturalRowsHeight, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PercentOverlap, value:Float):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:RefEndTime, value:Dynamic):Void { })
	@:overload(function(property:RefStartTime, value:Dynamic):Void { })
	@:overload(function(property:RenderData, value:Dynamic):Void { })
	@:overload(function(property:RendererList, value:Array<Dynamic>):Void { })
	@:overload(function(property:RendererPool, value:Array<Dynamic>):Void { })
	@:overload(function(property:ResizeAnimationDuration, value:Float):Void { })
	@:overload(function(property:ResizeCursor, value:String):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:RoundToDay, value:Bool):Void { })
	@:overload(function(property:RowCount, value:Float):Void { })
	@:overload(function(property:Scrollable, value:Bool):Void { })
	@:overload(function(property:ScrollMethod, value:String):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectedItem, value:Dynamic):Void { })
	@:overload(function(property:SelectedItems, value:Dynamic):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:ShowCellLabel, value:Bool):Void { })
	@:overload(function(property:SnapSteps, value:Float):Void { })
	@:overload(function(property:SnapUnit, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartDate, value:Date):Void { })
	@:overload(function(property:StartTimeAttr, value:String):Void { })
	@:overload(function(property:StayInView, value:Bool):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:StyleGridCellFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:SubColumnAttr, value:String):Void { })
	@:overload(function(property:SummaryAttr, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TriggerExtent, value:Float):Void { })
	@:overload(function(property:VerticalGap, value:Float):Void { })
	@:overload(function(property:ViewKind, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AllDayAttr, value:String):Void;
	@:overload(function(property:AllowResizeLessThan24H):Bool { })
	@:overload(function(property:AllowStartEndSwap):Bool { })
	@:overload(function(property:AllowSubColumnMove):Bool { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoScroll):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:CellHeaderLongPattern):String { })
	@:overload(function(property:CellHeaderShortPattern):String { })
	@:overload(function(property:CellPaddingTop):Float { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColumnCount):Float { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CreateOnGridClick):Bool { })
	@:overload(function(property:CssClassFunc):haxe.Constraints.Function { })
	@:overload(function(property:DatePackage):Dynamic { })
	@:overload(function(property:DecodeDate):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DisplayedItemsInvalidated):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DoubleTapDelay):Float { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EncodeDate):Dynamic { })
	@:overload(function(property:EndTimeAttr):String { })
	@:overload(function(property:ExpandDuration):Float { })
	@:overload(function(property:ExpandEasing):haxe.Constraints.Function { })
	@:overload(function(property:ExpandRenderer):Dynamic { })
	@:overload(function(property:ExpandRendererHeight):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatItemTimeFunc):haxe.Constraints.Function { })
	@:overload(function(property:HorizontalRenderer):Dynamic { })
	@:overload(function(property:HorizontalRendererHeight):Float { })
	@:overload(function(property:HoveredItem):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:ItemToRenderer):Dynamic { })
	@:overload(function(property:ItemToRendererKindFunc):haxe.Constraints.Function { })
	@:overload(function(property:LabelRenderer):Dynamic { })
	@:overload(function(property:LabelRendererHeight):Float { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LayoutDuringResize):Bool { })
	@:overload(function(property:LayoutPriorityFunction):haxe.Constraints.Function { })
	@:overload(function(property:LiveLayout):Bool { })
	@:overload(function(property:MinDurationSteps):Float { })
	@:overload(function(property:MinDurationUnit):String { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:NaturalRowsHeight):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PercentOverlap):Float { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:RefEndTime):Dynamic { })
	@:overload(function(property:RefStartTime):Dynamic { })
	@:overload(function(property:RenderData):Dynamic { })
	@:overload(function(property:RendererList):Array<Dynamic> { })
	@:overload(function(property:RendererPool):Array<Dynamic> { })
	@:overload(function(property:ResizeAnimationDuration):Float { })
	@:overload(function(property:ResizeCursor):String { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:RoundToDay):Bool { })
	@:overload(function(property:RowCount):Float { })
	@:overload(function(property:Scrollable):Bool { })
	@:overload(function(property:ScrollMethod):String { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectedItem):Dynamic { })
	@:overload(function(property:SelectedItems):Dynamic { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:ShowCellLabel):Bool { })
	@:overload(function(property:SnapSteps):Float { })
	@:overload(function(property:SnapUnit):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartDate):Date { })
	@:overload(function(property:StartTimeAttr):String { })
	@:overload(function(property:StayInView):Bool { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:StyleGridCellFunc):haxe.Constraints.Function { })
	@:overload(function(property:SubColumnAttr):String { })
	@:overload(function(property:SummaryAttr):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TriggerExtent):Float { })
	@:overload(function(property:VerticalGap):Float { })
	@:overload(function(property:ViewKind):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AllDayAttr):String;
	@:overload(function(property:AllowResizeLessThan24H, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowStartEndSwap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowSubColumnMove, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellHeaderLongPattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellHeaderShortPattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellPaddingTop, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateOnGridClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssClassFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DecodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedItemsInvalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoubleTapDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EncodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExpandDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExpandEasing, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExpandRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExpandRendererHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatItemTimeFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HorizontalRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HorizontalRendererHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HoveredItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRendererKindFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelRendererHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LayoutDuringResize, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LayoutPriorityFunction, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LiveLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NaturalRowsHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PercentOverlap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RefEndTime, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RefStartTime, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RenderData, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererList, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererPool, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeAnimationDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeCursor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RoundToDay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scrollable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollMethod, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowCellLabel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StayInView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StyleGridCellFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumnAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SummaryAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TriggerExtent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VerticalGap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewKind, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllDayAttr, callback:{ }):{ function unwatch():Void; };
	var allowResizeLessThan24H : Bool;
	var allowStartEndSwap : Bool;
	var allowSubColumnMove : Bool;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoScroll : Bool;
	var baseClass : String;
	var cellHeaderLongPattern : String;
	var cellHeaderShortPattern : String;
	var cellPaddingTop : Float;
	var class : String;
	var columnCount : Float;
	var containerNode : HTMLElement;
	var createOnGridClick : Bool;
	var cssClassFunc : haxe.Constraints.Function;
	var datePackage : Dynamic;
	var decodeDate : Dynamic;
	var dir : String;
	var displayedItemsInvalidated : Bool;
	var domNode : HTMLElement;
	var doubleTapDelay : Float;
	var editable : Bool;
	var encodeDate : Dynamic;
	var endTimeAttr : String;
	var expandDuration : Float;
	var expandEasing : haxe.Constraints.Function;
	var expandRenderer : Dynamic;
	var expandRendererHeight : Float;
	var focused : Bool;
	var formatItemTimeFunc : haxe.Constraints.Function;
	var horizontalRenderer : Dynamic;
	var horizontalRendererHeight : Float;
	var hoveredItem : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var itemToRenderer : Dynamic;
	var itemToRendererKindFunc : haxe.Constraints.Function;
	var labelRenderer : Dynamic;
	var labelRendererHeight : Float;
	var lang : String;
	var layoutDuringResize : Bool;
	var layoutPriorityFunction : haxe.Constraints.Function;
	var liveLayout : Bool;
	var minDurationSteps : Float;
	var minDurationUnit : String;
	var moveEnabled : Bool;
	var naturalRowsHeight : Dynamic;
	var ownerDocument : Dynamic;
	var percentOverlap : Float;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var refEndTime : Dynamic;
	var refStartTime : Dynamic;
	var renderData : Dynamic;
	var rendererList : Array<Dynamic>;
	var rendererPool : Array<Dynamic>;
	var resizeAnimationDuration : Float;
	var resizeCursor : String;
	var resizeEnabled : Bool;
	var roundToDay : Bool;
	var rowCount : Float;
	var scrollable : Bool;
	var scrollMethod : String;
	var searchContainerNode : Bool;
	var selectedItem : Dynamic;
	var selectedItems : Dynamic;
	var selectionMode : String;
	var showCellLabel : Bool;
	var snapSteps : Float;
	var snapUnit : String;
	var srcNodeRef : HTMLElement;
	var startDate : Date;
	var startTimeAttr : String;
	var stayInView : Bool;
	var store : Dynamic;
	var style : String;
	var styleGridCellFunc : haxe.Constraints.Function;
	var subColumnAttr : String;
	var summaryAttr : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var triggerExtent : Float;
	var verticalGap : Float;
	var viewKind : String;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function afterActivate():Void;
	function afterDeactivate():Void;
	function beforeActivate():Void;
	function beforeDeactivate():Void;
	function buildRendering():Void;
	function collapseRow(duration:Float, easing:haxe.Constraints.Function, apply:Dynamic):Void;
	function computeOverlapping(layoutItems:Array<Dynamic>, func:Dynamic):Dynamic;
	function computeProjectionOnDate(renderData:Dynamic, refDate:Date, date:Array<Date>, max:Float):Dynamic;
	function computeRangeOverlap(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createItemFunc(view:dojox.calendar.ViewBase, d:Date, e:MouseEvent):Void;
	function defaultStyleGridCell(node:HTMLElement, date:Date, renderData:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Dynamic):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchChange(oldSelectedItem:Dynamic, newSelectedItem:Dynamic, renderer:Dynamic, triggerEvent:Event):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function ensureMinimalDuration(renderData:Dynamic, item:Dynamic, unit:String, steps:Float, editKind:String):Void;
	function ensureVisibility(start:Date, end:Date, margin:Float, visibilityTarget:String, duration:Float):Void;
	function expandRendererClickHandler(e:Event, renderer:Dynamic):Void;
	function expandRow(rowIndex:Float, colIndex:Float, duration:Float, easing:haxe.Constraints.Function, apply:Dynamic):Float;
	function floorDate(date:Date, unit:String, steps:Float, reuse:Bool):Dynamic;
	function floorToDay(date:Date, reuse:Bool):Dynamic;
	function floorToMonth(date:Date, reuse:Bool):Dynamic;
	function getChildren():Array<Dynamic>;
	function getCSSPrefix():String;
	function getExpandedRowIndex():Float;
	function getIdentity(item:Dynamic):Dynamic;
	function getItemStoreState(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRenderers(item:Dynamic):Dynamic;
	function getSubColumn(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getSubColumnIndex(value:String):Float;
	function getTime(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getWeekNumberLabel(date:Date):Dynamic;
	function invalidateLayout():Void;
	function invalidateRendering():Void;
	function isAscendantHasClass(node:HTMLElement, ancestor:HTMLElement, className:String):Dynamic;
	function isFocusable():Dynamic;
	function isItemBeingEdited(item:Dynamic):Dynamic;
	function isItemEditable(item:Dynamic, rendererKind:String):Dynamic;
	function isItemFocused(item:Dynamic):Dynamic;
	function isItemHovered(item:Dynamic):Dynamic;
	function isItemMoveEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemResizeEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemSelected(item:Dynamic):Dynamic;
	function isLeftToRight():Dynamic;
	function isOverlapping(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	function isSameDay(date1:Date, date2:Date):Dynamic;
	function isStartOfDay(d:Date):Dynamic;
	function isToday(date:Date):Dynamic;
	function isWeekEnd(date:Date):Dynamic;
	function itemToRenderItem(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	function newDate(obj:Dynamic):Dynamic;
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
	function renderItemToItem(renderItem:Dynamic, store:dojo.store.api.Store):Dynamic;
	function resize(?e:Dynamic):Void;
	function scrollView(dir:Float):Void;
	function selectFromEvent(e:Dynamic, item:Dynamic, renderer:Dynamic, dispatch:Dynamic):Void;
	function setItemSelected(item:Dynamic, value:Dynamic):Void;
	function startup():Void;
	function styleColumnHeaderCell(node:HTMLElement, date:Date, renderData:Dynamic):Void;
	function styleGridCell(node:HTMLElement, date:Date, renderData:Dynamic):Void;
	function styleRowHeaderCell(node:HTMLElement, date:Date, renderData:Dynamic):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRenderers(obj:Dynamic, stateOnly:Bool):Void;
	function validateRendering():Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange():Void;
	function onExpandAnimationEnd(expand:Bool):Void;
	function onExpandRendererClick(e:Dynamic):Void;
	function onFocus():Void;
	function onGridClick(e:Dynamic):Void;
	function onGridDoubleClick(e:Dynamic):Void;
	function onItemClick(e:Dynamic):Void;
	function onItemContextMenu(e:Dynamic):Void;
	function onItemDoubleClick(e:Dynamic):Void;
	function onItemEditBegin(e:Dynamic):Void;
	function onItemEditBeginGesture(e:Dynamic):Void;
	function onItemEditEnd(e:Dynamic):Void;
	function onItemEditEndGesture(e:Dynamic):Void;
	function onItemEditMoveGesture(e:Dynamic):Void;
	function onItemEditResizeGesture(e:Dynamic):Void;
	function onRendererCreated(e:Dynamic):Void;
	function onRendererDestroyed(e:Dynamic):Void;
	function onRendererRecycled(e:Dynamic):Void;
	function onRendererReused(e:Dynamic):Void;
	function onRenderersLayoutDone(view:Dynamic):Void;
	function onRowHeaderClick(e:Dynamic):Void;
}
extern class MonthColumnView extends dojox.calendar.ViewBase {
	function new():Void;
	var allDayAttr : String;
	@:overload(function(property:AllowResizeLessThan24H, value:Bool):Void { })
	@:overload(function(property:AllowStartEndSwap, value:Bool):Void { })
	@:overload(function(property:AllowSubColumnMove, value:Bool):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoScroll, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColumnCount, value:Float):Void { })
	@:overload(function(property:ColumnHeaderFormatLength, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CreateOnGridClick, value:Bool):Void { })
	@:overload(function(property:CssClassFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:DatePackage, value:Dynamic):Void { })
	@:overload(function(property:DaySize, value:Float):Void { })
	@:overload(function(property:DecodeDate, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DisplayedItemsInvalidated, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DoubleTapDelay, value:Float):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EncodeDate, value:Dynamic):Void { })
	@:overload(function(property:EndTimeAttr, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatItemTimeFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:GridCellDatePattern, value:String):Void { })
	@:overload(function(property:HorizontalGap, value:Float):Void { })
	@:overload(function(property:HoveredItem, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:ItemToRenderer, value:Dynamic):Void { })
	@:overload(function(property:ItemToRendererKindFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LayoutPriorityFunction, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:LiveLayout, value:Bool):Void { })
	@:overload(function(property:MinDurationSteps, value:Float):Void { })
	@:overload(function(property:MinDurationUnit, value:String):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PercentOverlap, value:Float):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:RenderData, value:Dynamic):Void { })
	@:overload(function(property:RendererList, value:Array<Dynamic>):Void { })
	@:overload(function(property:RendererPool, value:Array<Dynamic>):Void { })
	@:overload(function(property:ResizeCursor, value:String):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:RoundToDay, value:Bool):Void { })
	@:overload(function(property:Scrollable, value:Bool):Void { })
	@:overload(function(property:ScrollBarRTLPosition, value:String):Void { })
	@:overload(function(property:ScrollMethod, value:String):Void { })
	@:overload(function(property:ScrollPosition, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectedItem, value:Dynamic):Void { })
	@:overload(function(property:SelectedItems, value:Dynamic):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:ShowCellLabel, value:Bool):Void { })
	@:overload(function(property:ShowHiddenItems, value:Bool):Void { })
	@:overload(function(property:SnapSteps, value:Float):Void { })
	@:overload(function(property:SnapUnit, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartDate, value:Date):Void { })
	@:overload(function(property:StartTimeAttr, value:String):Void { })
	@:overload(function(property:StayInView, value:Bool):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:StyleGridCellFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:SubColumnAttr, value:String):Void { })
	@:overload(function(property:SummaryAttr, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:VerticalRenderer, value:Dynamic):Void { })
	@:overload(function(property:ViewKind, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AllDayAttr, value:String):Void;
	@:overload(function(property:AllowResizeLessThan24H):Bool { })
	@:overload(function(property:AllowStartEndSwap):Bool { })
	@:overload(function(property:AllowSubColumnMove):Bool { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoScroll):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColumnCount):Float { })
	@:overload(function(property:ColumnHeaderFormatLength):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CreateOnGridClick):Bool { })
	@:overload(function(property:CssClassFunc):haxe.Constraints.Function { })
	@:overload(function(property:DatePackage):Dynamic { })
	@:overload(function(property:DaySize):Float { })
	@:overload(function(property:DecodeDate):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DisplayedItemsInvalidated):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DoubleTapDelay):Float { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EncodeDate):Dynamic { })
	@:overload(function(property:EndTimeAttr):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatItemTimeFunc):haxe.Constraints.Function { })
	@:overload(function(property:GridCellDatePattern):String { })
	@:overload(function(property:HorizontalGap):Float { })
	@:overload(function(property:HoveredItem):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:ItemToRenderer):Dynamic { })
	@:overload(function(property:ItemToRendererKindFunc):haxe.Constraints.Function { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LayoutPriorityFunction):haxe.Constraints.Function { })
	@:overload(function(property:LiveLayout):Bool { })
	@:overload(function(property:MinDurationSteps):Float { })
	@:overload(function(property:MinDurationUnit):String { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PercentOverlap):Float { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:RenderData):Dynamic { })
	@:overload(function(property:RendererList):Array<Dynamic> { })
	@:overload(function(property:RendererPool):Array<Dynamic> { })
	@:overload(function(property:ResizeCursor):String { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:RoundToDay):Bool { })
	@:overload(function(property:Scrollable):Bool { })
	@:overload(function(property:ScrollBarRTLPosition):String { })
	@:overload(function(property:ScrollMethod):String { })
	@:overload(function(property:ScrollPosition):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectedItem):Dynamic { })
	@:overload(function(property:SelectedItems):Dynamic { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:ShowCellLabel):Bool { })
	@:overload(function(property:ShowHiddenItems):Bool { })
	@:overload(function(property:SnapSteps):Float { })
	@:overload(function(property:SnapUnit):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartDate):Date { })
	@:overload(function(property:StartTimeAttr):String { })
	@:overload(function(property:StayInView):Bool { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:StyleGridCellFunc):haxe.Constraints.Function { })
	@:overload(function(property:SubColumnAttr):String { })
	@:overload(function(property:SummaryAttr):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:VerticalRenderer):Dynamic { })
	@:overload(function(property:ViewKind):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AllDayAttr):String;
	@:overload(function(property:AllowResizeLessThan24H, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowStartEndSwap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowSubColumnMove, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnHeaderFormatLength, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateOnGridClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssClassFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DaySize, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DecodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedItemsInvalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoubleTapDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EncodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatItemTimeFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:GridCellDatePattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HorizontalGap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HoveredItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRendererKindFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LayoutPriorityFunction, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LiveLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PercentOverlap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RenderData, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererList, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererPool, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeCursor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RoundToDay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scrollable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollBarRTLPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollMethod, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowCellLabel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowHiddenItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StayInView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StyleGridCellFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumnAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SummaryAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VerticalRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewKind, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllDayAttr, callback:{ }):{ function unwatch():Void; };
	var allowResizeLessThan24H : Bool;
	var allowStartEndSwap : Bool;
	var allowSubColumnMove : Bool;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoScroll : Bool;
	var baseClass : String;
	var class : String;
	var columnCount : Float;
	var columnHeaderFormatLength : String;
	var containerNode : HTMLElement;
	var createOnGridClick : Bool;
	var cssClassFunc : haxe.Constraints.Function;
	var datePackage : Dynamic;
	var daySize : Float;
	var decodeDate : Dynamic;
	var dir : String;
	var displayedItemsInvalidated : Bool;
	var domNode : HTMLElement;
	var doubleTapDelay : Float;
	var editable : Bool;
	var encodeDate : Dynamic;
	var endTimeAttr : String;
	var focused : Bool;
	var formatItemTimeFunc : haxe.Constraints.Function;
	var gridCellDatePattern : String;
	var horizontalGap : Float;
	var hoveredItem : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var itemToRenderer : Dynamic;
	var itemToRendererKindFunc : haxe.Constraints.Function;
	var lang : String;
	var layoutPriorityFunction : haxe.Constraints.Function;
	var liveLayout : Bool;
	var minDurationSteps : Float;
	var minDurationUnit : String;
	var moveEnabled : Bool;
	var ownerDocument : Dynamic;
	var percentOverlap : Float;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var renderData : Dynamic;
	var rendererList : Array<Dynamic>;
	var rendererPool : Array<Dynamic>;
	var resizeCursor : String;
	var resizeEnabled : Bool;
	var roundToDay : Bool;
	var scrollable : Bool;
	var scrollBarRTLPosition : String;
	var scrollMethod : String;
	var scrollPosition : Float;
	var searchContainerNode : Bool;
	var selectedItem : Dynamic;
	var selectedItems : Dynamic;
	var selectionMode : String;
	var showCellLabel : Bool;
	var showHiddenItems : Bool;
	var snapSteps : Float;
	var snapUnit : String;
	var srcNodeRef : HTMLElement;
	var startDate : Date;
	var startTimeAttr : String;
	var stayInView : Bool;
	var store : Dynamic;
	var style : String;
	var styleGridCellFunc : haxe.Constraints.Function;
	var subColumnAttr : String;
	var summaryAttr : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var verticalRenderer : Dynamic;
	var viewKind : String;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function afterActivate():Void;
	function afterDeactivate():Void;
	function applyRendererZIndex(item:Dynamic, renderer:Dynamic, hovered:Bool, selected:Bool, edited:Bool, focused:Bool):Void;
	function beforeActivate():Void;
	function beforeDeactivate():Void;
	function computeOverlapping(layoutItems:Array<Dynamic>, func:Dynamic):Dynamic;
	function computeProjectionOnDate(renderData:Dynamic, refDate:Date, date:Array<Date>, max:Float):Dynamic;
	function computeRangeOverlap(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createItemFunc(view:dojox.calendar.ViewBase, d:Date, e:MouseEvent):Void;
	function defaultStyleGridCell(node:HTMLElement, date:Date, col:Float, row:Float, renderData:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Dynamic):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchChange(oldSelectedItem:Dynamic, newSelectedItem:Dynamic, renderer:Dynamic, triggerEvent:Event):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function ensureMinimalDuration(renderData:Dynamic, item:Dynamic, unit:String, steps:Float, editKind:String):Void;
	@:overload(function(start:Date, end:Date, visibilityTarget:String, margin:Float, duration:Float):Void { })
	function ensureVisibility(start:Date, end:Date, margin:Float, visibilityTarget:String, duration:Float):Void;
	function floorDate(date:Date, unit:String, steps:Float, reuse:Bool):Dynamic;
	function floorToDay(date:Date, reuse:Bool):Dynamic;
	function floorToMonth(date:Date, reuse:Bool):Dynamic;
	function getChildren():Array<Dynamic>;
	function getCSSPrefix():String;
	function getIdentity(item:Dynamic):Dynamic;
	function getItemStoreState(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRenderers(item:Dynamic):Dynamic;
	function getSubColumn(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getSubColumnIndex(value:String):Float;
	function getTime(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getWeekNumberLabel(date:Date):Dynamic;
	function invalidateLayout():Void;
	function invalidateRendering():Void;
	function isAscendantHasClass(node:HTMLElement, ancestor:HTMLElement, className:String):Dynamic;
	function isFocusable():Dynamic;
	function isItemBeingEdited(item:Dynamic):Dynamic;
	function isItemEditable(item:Dynamic, rendererKind:String):Dynamic;
	function isItemFocused(item:Dynamic):Dynamic;
	function isItemHovered(item:Dynamic):Dynamic;
	function isItemMoveEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemResizeEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemSelected(item:Dynamic):Dynamic;
	function isLeftToRight():Dynamic;
	function isOverlapping(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	function isSameDay(date1:Date, date2:Date):Dynamic;
	function isStartOfDay(d:Date):Dynamic;
	function isToday(date:Date):Dynamic;
	function isWeekEnd(date:Date):Dynamic;
	function itemToRenderItem(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	function newDate(obj:Dynamic):Dynamic;
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
	function postscript():Void;
	function refreshRendering():Void;
	function renderItemToItem(renderItem:Dynamic, store:dojo.store.api.Store):Dynamic;
	function resize():Void;
	function scrollView(dir:Float):Void;
	function selectFromEvent(e:Dynamic, item:Dynamic, renderer:Dynamic, dispatch:Dynamic):Void;
	function setItemSelected(item:Dynamic, value:Dynamic):Void;
	function startup():Void;
	function styleColumnHeaderCell(node:HTMLElement, date:Date, renderData:Dynamic):Void;
	function styleGridCell(node:HTMLElement, date:Date, col:Float, row:Float, renderData:Dynamic):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRenderers(obj:Dynamic, stateOnly:Bool):Void;
	function validateRendering():Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange():Void;
	function onColumnHeaderClick(e:Dynamic):Void;
	function onFocus():Void;
	function onGridClick(e:Dynamic):Void;
	function onGridDoubleClick(e:Dynamic):Void;
	function onItemClick(e:Dynamic):Void;
	function onItemContextMenu(e:Dynamic):Void;
	function onItemDoubleClick(e:Dynamic):Void;
	function onItemEditBegin(e:Dynamic):Void;
	function onItemEditBeginGesture(e:Dynamic):Void;
	function onItemEditEnd(e:Dynamic):Void;
	function onItemEditEndGesture(e:Dynamic):Void;
	function onItemEditMoveGesture(e:Dynamic):Void;
	function onItemEditResizeGesture(e:Dynamic):Void;
	function onRendererCreated(e:Dynamic):Void;
	function onRendererDestroyed(e:Dynamic):Void;
	function onRendererRecycled(e:Dynamic):Void;
	function onRendererReused(e:Dynamic):Void;
	function onRenderersLayoutDone(view:Dynamic):Void;
}
extern class SimpleColumnView extends dojox.calendar.ViewBase {
	function new():Void;
	var allDayAttr : String;
	@:overload(function(property:AllowResizeLessThan24H, value:Bool):Void { })
	@:overload(function(property:AllowStartEndSwap, value:Bool):Void { })
	@:overload(function(property:AllowSubColumnMove, value:Bool):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoScroll, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ColumnCount, value:Float):Void { })
	@:overload(function(property:ColumnHeaderDatePattern, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CreateOnGridClick, value:Bool):Void { })
	@:overload(function(property:CssClassFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:DatePackage, value:Dynamic):Void { })
	@:overload(function(property:DecodeDate, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DisplayedItemsInvalidated, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DoubleTapDelay, value:Float):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:EncodeDate, value:Dynamic):Void { })
	@:overload(function(property:EndTimeAttr, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatItemTimeFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:HorizontalGap, value:Float):Void { })
	@:overload(function(property:HourSize, value:Float):Void { })
	@:overload(function(property:HoveredItem, value:Dynamic):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InvalidatingProperties, value:Dynamic):Void { })
	@:overload(function(property:InvalidRendering, value:Bool):Void { })
	@:overload(function(property:ItemToRenderer, value:Dynamic):Void { })
	@:overload(function(property:ItemToRendererKindFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LayoutPriorityFunction, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:LiveLayout, value:Bool):Void { })
	@:overload(function(property:MaxHours, value:Float):Void { })
	@:overload(function(property:MinColumnWidth, value:Float):Void { })
	@:overload(function(property:MinDurationSteps, value:Float):Void { })
	@:overload(function(property:MinDurationUnit, value:String):Void { })
	@:overload(function(property:MinHours, value:Float):Void { })
	@:overload(function(property:MoveEnabled, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PercentOverlap, value:Float):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:RenderData, value:Dynamic):Void { })
	@:overload(function(property:RendererList, value:Array<Dynamic>):Void { })
	@:overload(function(property:RendererPool, value:Array<Dynamic>):Void { })
	@:overload(function(property:ResizeCursor, value:String):Void { })
	@:overload(function(property:ResizeEnabled, value:Bool):Void { })
	@:overload(function(property:RowHeaderFirstLabelOffset, value:Float):Void { })
	@:overload(function(property:RowHeaderGridSlotDuration, value:Float):Void { })
	@:overload(function(property:RowHeaderLabelOffset, value:Float):Void { })
	@:overload(function(property:RowHeaderLabelSlotDuration, value:Float):Void { })
	@:overload(function(property:RowHeaderTimePattern, value:String):Void { })
	@:overload(function(property:Scrollable, value:Bool):Void { })
	@:overload(function(property:ScrollBarRTLPosition, value:String):Void { })
	@:overload(function(property:ScrollMethod, value:String):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectedItem, value:Dynamic):Void { })
	@:overload(function(property:SelectedItems, value:Dynamic):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:ShowTimeIndicator, value:Bool):Void { })
	@:overload(function(property:SnapSteps, value:Float):Void { })
	@:overload(function(property:SnapUnit, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:StartDate, value:Date):Void { })
	@:overload(function(property:StartTimeAttr, value:String):Void { })
	@:overload(function(property:StartTimeOfDay, value:Dynamic):Void { })
	@:overload(function(property:StayInView, value:Bool):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:StyleGridCellFunc, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:SubColumnAttr, value:String):Void { })
	@:overload(function(property:SubColumns, value:Dynamic):Void { })
	@:overload(function(property:SummaryAttr, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:TimeIndicatorRefreshInterval, value:Float):Void { })
	@:overload(function(property:TimeSlotDuration, value:Float):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:VerticalRenderer, value:Dynamic):Void { })
	@:overload(function(property:ViewKind, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AllDayAttr, value:String):Void;
	@:overload(function(property:AllowResizeLessThan24H):Bool { })
	@:overload(function(property:AllowStartEndSwap):Bool { })
	@:overload(function(property:AllowSubColumnMove):Bool { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoScroll):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ColumnCount):Float { })
	@:overload(function(property:ColumnHeaderDatePattern):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CreateOnGridClick):Bool { })
	@:overload(function(property:CssClassFunc):haxe.Constraints.Function { })
	@:overload(function(property:DatePackage):Dynamic { })
	@:overload(function(property:DecodeDate):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DisplayedItemsInvalidated):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DoubleTapDelay):Float { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:EncodeDate):Dynamic { })
	@:overload(function(property:EndTimeAttr):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatItemTimeFunc):haxe.Constraints.Function { })
	@:overload(function(property:HorizontalGap):Float { })
	@:overload(function(property:HourSize):Float { })
	@:overload(function(property:HoveredItem):Dynamic { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InvalidatingProperties):Dynamic { })
	@:overload(function(property:InvalidRendering):Bool { })
	@:overload(function(property:ItemToRenderer):Dynamic { })
	@:overload(function(property:ItemToRendererKindFunc):haxe.Constraints.Function { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LayoutPriorityFunction):haxe.Constraints.Function { })
	@:overload(function(property:LiveLayout):Bool { })
	@:overload(function(property:MaxHours):Float { })
	@:overload(function(property:MinColumnWidth):Float { })
	@:overload(function(property:MinDurationSteps):Float { })
	@:overload(function(property:MinDurationUnit):String { })
	@:overload(function(property:MinHours):Float { })
	@:overload(function(property:MoveEnabled):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PercentOverlap):Float { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:RenderData):Dynamic { })
	@:overload(function(property:RendererList):Array<Dynamic> { })
	@:overload(function(property:RendererPool):Array<Dynamic> { })
	@:overload(function(property:ResizeCursor):String { })
	@:overload(function(property:ResizeEnabled):Bool { })
	@:overload(function(property:RowHeaderFirstLabelOffset):Float { })
	@:overload(function(property:RowHeaderGridSlotDuration):Float { })
	@:overload(function(property:RowHeaderLabelOffset):Float { })
	@:overload(function(property:RowHeaderLabelSlotDuration):Float { })
	@:overload(function(property:RowHeaderTimePattern):String { })
	@:overload(function(property:Scrollable):Bool { })
	@:overload(function(property:ScrollBarRTLPosition):String { })
	@:overload(function(property:ScrollMethod):String { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectedItem):Dynamic { })
	@:overload(function(property:SelectedItems):Dynamic { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:ShowTimeIndicator):Bool { })
	@:overload(function(property:SnapSteps):Float { })
	@:overload(function(property:SnapUnit):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:StartDate):Date { })
	@:overload(function(property:StartTimeAttr):String { })
	@:overload(function(property:StartTimeOfDay):Dynamic { })
	@:overload(function(property:StayInView):Bool { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:StyleGridCellFunc):haxe.Constraints.Function { })
	@:overload(function(property:SubColumnAttr):String { })
	@:overload(function(property:SubColumns):Dynamic { })
	@:overload(function(property:SummaryAttr):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:TimeIndicatorRefreshInterval):Float { })
	@:overload(function(property:TimeSlotDuration):Float { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:VerticalRenderer):Dynamic { })
	@:overload(function(property:ViewKind):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AllDayAttr):String;
	@:overload(function(property:AllowResizeLessThan24H, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowStartEndSwap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AllowSubColumnMove, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnHeaderDatePattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CreateOnGridClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssClassFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DecodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedItemsInvalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoubleTapDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EncodeDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EndTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatItemTimeFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HorizontalGap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HourSize, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HoveredItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidatingProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidRendering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ItemToRendererKindFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LayoutPriorityFunction, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LiveLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxHours, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinColumnWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinDurationUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinHours, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PercentOverlap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RenderData, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererList, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RendererPool, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeCursor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ResizeEnabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeaderFirstLabelOffset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeaderGridSlotDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeaderLabelOffset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeaderLabelSlotDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeaderTimePattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scrollable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollBarRTLPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollMethod, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectedItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowTimeIndicator, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapSteps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SnapUnit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartDate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StartTimeOfDay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StayInView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StyleGridCellFunc, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumnAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubColumns, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SummaryAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TimeIndicatorRefreshInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TimeSlotDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VerticalRenderer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewKind, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AllDayAttr, callback:{ }):{ function unwatch():Void; };
	var allowResizeLessThan24H : Bool;
	var allowStartEndSwap : Bool;
	var allowSubColumnMove : Bool;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoScroll : Bool;
	var baseClass : String;
	var class : String;
	var columnCount : Float;
	var columnHeaderDatePattern : String;
	var containerNode : HTMLElement;
	var createOnGridClick : Bool;
	var cssClassFunc : haxe.Constraints.Function;
	var datePackage : Dynamic;
	var decodeDate : Dynamic;
	var dir : String;
	var displayedItemsInvalidated : Bool;
	var domNode : HTMLElement;
	var doubleTapDelay : Float;
	var editable : Bool;
	var encodeDate : Dynamic;
	var endTimeAttr : String;
	var focused : Bool;
	var formatItemTimeFunc : haxe.Constraints.Function;
	var horizontalGap : Float;
	var hourSize : Float;
	var hoveredItem : Dynamic;
	var id : String;
	var invalidatingProperties : Dynamic;
	var invalidRendering : Bool;
	var itemToRenderer : Dynamic;
	var itemToRendererKindFunc : haxe.Constraints.Function;
	var lang : String;
	var layoutPriorityFunction : haxe.Constraints.Function;
	var liveLayout : Bool;
	var maxHours : Float;
	var minColumnWidth : Float;
	var minDurationSteps : Float;
	var minDurationUnit : String;
	var minHours : Float;
	var moveEnabled : Bool;
	var ownerDocument : Dynamic;
	var percentOverlap : Float;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var renderData : Dynamic;
	var rendererList : Array<Dynamic>;
	var rendererPool : Array<Dynamic>;
	var resizeCursor : String;
	var resizeEnabled : Bool;
	var rowHeaderFirstLabelOffset : Float;
	var rowHeaderGridSlotDuration : Float;
	var rowHeaderLabelOffset : Float;
	var rowHeaderLabelSlotDuration : Float;
	var rowHeaderTimePattern : String;
	var scrollable : Bool;
	var scrollBarRTLPosition : String;
	var scrollMethod : String;
	var searchContainerNode : Bool;
	var selectedItem : Dynamic;
	var selectedItems : Dynamic;
	var selectionMode : String;
	var showTimeIndicator : Bool;
	var snapSteps : Float;
	var snapUnit : String;
	var srcNodeRef : HTMLElement;
	var startDate : Date;
	var startTimeAttr : String;
	var startTimeOfDay : Dynamic;
	var stayInView : Bool;
	var store : Dynamic;
	var style : String;
	var styleGridCellFunc : haxe.Constraints.Function;
	var subColumnAttr : String;
	var subColumns : Dynamic;
	var summaryAttr : String;
	var templatePath : String;
	var templateString : String;
	var timeIndicatorRefreshInterval : Float;
	var timeSlotDuration : Float;
	var title : String;
	var tooltip : String;
	var verticalRenderer : Dynamic;
	var viewKind : String;
	function addInvalidatingProperties(properties:Array<String>):Void;
	function afterActivate():Void;
	function afterDeactivate():Void;
	function applyRendererZIndex(item:Dynamic, renderer:Dynamic, hovered:Bool, selected:Bool, edited:Bool, focused:Bool):Void;
	function beforeActivate():Void;
	function beforeDeactivate():Void;
	function buildRendering():Void;
	function computeOverlapping(layoutItems:Array<Dynamic>, func:Dynamic):Dynamic;
	function computeProjectionOnDate(renderData:Dynamic, refDate:Date, date:Array<Date>, max:Float):Dynamic;
	function computeRangeOverlap(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createItemFunc(view:dojox.calendar.ViewBase, d:Date, e:MouseEvent):Void;
	function defaultStyleGridCell(node:HTMLElement, date:Date, hours:Float, minutes:Float, renderData:Dynamic):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Dynamic):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchChange(oldSelectedItem:Dynamic, newSelectedItem:Dynamic, renderer:Dynamic, triggerEvent:Event):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function ensureMinimalDuration(renderData:Dynamic, item:Dynamic, unit:String, steps:Float, editKind:String):Void;
	@:overload(function(start:Date, end:Date, visibilityTarget:String, margin:Float, duration:Float):Void { })
	function ensureVisibility(start:Date, end:Date, margin:Float, visibilityTarget:String, duration:Float):Void;
	function floorDate(date:Date, unit:String, steps:Float, reuse:Bool):Dynamic;
	function floorToDay(date:Date, reuse:Bool):Dynamic;
	function floorToMonth(date:Date, reuse:Bool):Dynamic;
	function getChildren():Array<Dynamic>;
	function getCSSPrefix():String;
	function getIdentity(item:Dynamic):Dynamic;
	function getItemStoreState(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRenderers(item:Dynamic):Dynamic;
	function getSubColumn(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getSubColumnIndex(value:String):Float;
	function getTime(e:Event, x:Float, y:Float, touchIndex:Float):Dynamic;
	function getTimeOfDay(pos:Float, rd:Dynamic):Dynamic;
	function getWeekNumberLabel(date:Date):Dynamic;
	function invalidateLayout():Void;
	function invalidateRendering():Void;
	function isAscendantHasClass(node:HTMLElement, ancestor:HTMLElement, className:String):Dynamic;
	function isFocusable():Dynamic;
	function isItemBeingEdited(item:Dynamic):Dynamic;
	function isItemEditable(item:Dynamic, rendererKind:String):Dynamic;
	function isItemFocused(item:Dynamic):Dynamic;
	function isItemHovered(item:Dynamic):Dynamic;
	function isItemMoveEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemResizeEnabled(item:Dynamic, rendererKind:String):Dynamic;
	function isItemSelected(item:Dynamic):Dynamic;
	function isLeftToRight():Dynamic;
	function isOverlapping(renderData:Dynamic, start1:Date, end1:Date, start2:Date, end2:Date, includeLimits:Bool):Dynamic;
	function isSameDay(date1:Date, date2:Date):Dynamic;
	function isStartOfDay(d:Date):Dynamic;
	function isToday(date:Date):Dynamic;
	function isWeekEnd(date:Date):Dynamic;
	function itemToRenderItem(item:Dynamic, store:dojo.store.api.Store):Dynamic;
	function newDate(obj:Dynamic):Dynamic;
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
	function postscript():Void;
	function refreshRendering():Void;
	function renderItemToItem(renderItem:Dynamic, store:dojo.store.api.Store):Dynamic;
	function resize(?e:Dynamic):Void;
	function scrollView(dir:Float):Void;
	function scrollViewHorizontal(dir:Float):Void;
	function selectFromEvent(e:Dynamic, item:Dynamic, renderer:Dynamic, dispatch:Dynamic):Void;
	function setItemSelected(item:Dynamic, value:Dynamic):Void;
	function startup():Void;
	function styleColumnHeaderCell(node:HTMLElement, date:Date, renderData:Dynamic):Void;
	function styleGridCell(node:HTMLElement, date:Date, hours:Dynamic, minutes:Dynamic, renderData:Dynamic):Void;
	function styleRowHeaderCell(node:HTMLElement, h:Float, m:Dynamic, renderData:Dynamic):Void;
	function styleSubColumnHeaderCell(node:HTMLElement, date:Dynamic, renderData:Dynamic):Void;
	function subColumnLabelFunc(value:Dynamic):Dynamic;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function updateRenderers(obj:Dynamic, stateOnly:Bool):Void;
	function validateRendering():Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange():Void;
	function onColumnHeaderClick(e:Dynamic):Void;
	function onFocus():Void;
	function onGridClick(e:Dynamic):Void;
	function onGridDoubleClick(e:Dynamic):Void;
	function onItemClick(e:Dynamic):Void;
	function onItemContextMenu(e:Dynamic):Void;
	function onItemDoubleClick(e:Dynamic):Void;
	function onItemEditBegin(e:Dynamic):Void;
	function onItemEditBeginGesture(e:Dynamic):Void;
	function onItemEditEnd(e:Dynamic):Void;
	function onItemEditEndGesture(e:Dynamic):Void;
	function onItemEditMoveGesture(e:Dynamic):Void;
	function onItemEditResizeGesture(e:Dynamic):Void;
	function onRendererCreated(e:Dynamic):Void;
	function onRendererDestroyed(e:Dynamic):Void;
	function onRendererRecycled(e:Dynamic):Void;
	function onRendererReused(e:Dynamic):Void;
	function onRenderersLayoutDone(view:Dynamic):Void;
}
typedef Time = {
	function floor(date:Date, unit:String, steps:Float, reuse:Bool, dateClassObj:Dynamic):Date;
	function floorToDay(d:Dynamic, reuse:Bool, dateClassObj:Dynamic):Date;
	function floorToMonth(d:Dynamic, reuse:Bool, dateClassObj:Dynamic):Date;
	function floorToWeek(d:Date, dateClassObj:Dynamic, dateModule:Dynamic, firstDayOfWeek:Float, locale:String):Dynamic;
	function isStartOfDay(d:Date, dateClassObj:Dynamic, dateModule:Dynamic):Bool;
	function isToday(d:Date, dateClassObj:Dynamic):Bool;
	function newDate(obj:Dynamic, dateClassObj:Dynamic):Dynamic;
};
