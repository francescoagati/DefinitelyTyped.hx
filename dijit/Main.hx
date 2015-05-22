extern class _Calendar extends dijit.CalendarLite {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var a11yclick : Dynamic;
	var active : Bool;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:CurrentFocus, value:Date):Void { })
	@:overload(function(property:DatePackage, value:String):Void { })
	@:overload(function(property:DateTemplateString, value:String):Void { })
	@:overload(function(property:DayWidth, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DndType, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DowTemplateString, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SlideFrom, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:Date):Void { })
	@:overload(function(property:WeekTemplateString, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:CurrentFocus):Date { })
	@:overload(function(property:DatePackage):String { })
	@:overload(function(property:DateTemplateString):String { })
	@:overload(function(property:DayWidth):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DndType):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DowTemplateString):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SlideFrom):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):Date { })
	@:overload(function(property:WeekTemplateString):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CurrentFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DateTemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DayWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DndType, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DowTemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SlideFrom, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:WeekTemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var currentFocus : Date;
	var datePackage : String;
	var dateTemplateString : String;
	var dayWidth : String;
	var dir : String;
	var dndType : String;
	var domNode : HTMLElement;
	var dowTemplateString : String;
	var focused : Bool;
	var hovering : Bool;
	var id : String;
	var lang : String;
	var observer : String;
	var ownerDocument : Dynamic;
	var searchContainerNode : Bool;
	var slideFrom : String;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var value : Date;
	var weekTemplateString : String;
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
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getClassForDate(dateObject:Date, locale:String):String;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function goToToday():Void;
	function handleKey(evt:Event):Dynamic;
	function isDisabledDate(dateObject:Date, locale:String):Bool;
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
	function setValue(value:Date):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(value:Dynamic):Void;
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
	function onValueSelected(date:Date):Void;
}
typedef Place = {
	@:overload(function(node:HTMLElement, anchor:dijit.place.__Rectangle, positions:Array<String>, leftToRight:Bool, layoutNode:haxe.Constraints.Function):Dynamic { })
	function around(node:HTMLElement, anchor:HTMLElement, positions:Array<String>, leftToRight:Bool, layoutNode:haxe.Constraints.Function):Dynamic;
	function at(node:HTMLElement, pos:dijit.place.__Position, corners:Array<String>, padding:dijit.place.__Position, layoutNode:Dynamic):Dynamic;
};
typedef Registry = {
	var length : Float;
	function add(widget:dijit._WidgetBase):Void;
	@:overload(function(id:dijit._WidgetBase):dijit._WidgetBase { })
	function byId(id:String):dijit._WidgetBase;
	function byNode(node:HTMLElement):Dynamic;
	function findWidgets(root:HTMLElement, skipNode:HTMLElement):Array<Dynamic>;
	function getEnclosingWidget(node:HTMLElement):Dynamic;
	function getUniqueId(widgetType:String):String;
	function remove(id:String):Void;
	function toArray():Array<Dynamic>;
};
typedef Typematic = {
	function addKeyListener(node:HTMLElement, keyObject:Dynamic, _this:Dynamic, callback:haxe.Constraints.Function, subsequentDelay:Float, initialDelay:Float, minDelay:Float):Dynamic;
	function addListener(mouseNode:HTMLElement, keyNode:HTMLElement, keyObject:Dynamic, _this:Dynamic, callback:haxe.Constraints.Function, subsequentDelay:Float, initialDelay:Float, minDelay:Float):Dynamic;
	function addMouseListener(node:HTMLElement, _this:Dynamic, callback:haxe.Constraints.Function, subsequentDelay:Float, initialDelay:Float, minDelay:Float):Dynamic;
	function stop():Void;
	function trigger(evt:Event, _this:Dynamic, node:HTMLElement, callback:haxe.Constraints.Function, obj:Dynamic, subsequentDelay:Float, initialDelay:Float, minDelay:Float):Void;
};
typedef Place = {
	@:overload(function(node:HTMLElement, anchor:dijit.place.__Rectangle, positions:Array<String>, leftToRight:Bool, layoutNode:haxe.Constraints.Function):Dynamic { })
	function around(node:HTMLElement, anchor:HTMLElement, positions:Array<String>, leftToRight:Bool, layoutNode:haxe.Constraints.Function):Dynamic;
	function at(node:HTMLElement, pos:dijit.place.__Position, corners:Array<String>, padding:dijit.place.__Position, layoutNode:Dynamic):Dynamic;
};
