typedef _templateCache = { };
extern class _Templated extends dijit._TemplatedMixin {
	function new():Void;
	var attachScope : Dynamic;
	var contextRequire : haxe.Constraints.Function;
	var searchContainerNode : Bool;
	var templatePath : String;
	var templateString : String;
	var widgetsInTemplate : Bool;
	function buildRendering():Void;
	function destroyRendering():Void;
	function startup():Void;
	function getCachedTemplate():Dynamic;
}
extern class _MenuBase extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var activated : Bool;
	@:overload(function(property:Active, value:Bool):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoFocus, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FocusedChild, value:Dynamic):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MultiCharSearchDuration, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParentMenu, value:Dynamic):Void { })
	@:overload(function(property:PassivePopupDelay, value:Float):Void { })
	@:overload(function(property:PopupDelay, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selected, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Activated, value:Bool):Void;
	@:overload(function(property:Active):Bool { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoFocus):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FocusedChild):Dynamic { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MultiCharSearchDuration):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParentMenu):Dynamic { })
	@:overload(function(property:PassivePopupDelay):Float { })
	@:overload(function(property:PopupDelay):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selected):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Activated):Bool;
	@:overload(function(property:Active, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FocusedChild, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MultiCharSearchDuration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParentMenu, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PassivePopupDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PopupDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Activated, callback:{ }):{ function unwatch():Void; };
	var active : Bool;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoFocus : Bool;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var focusedChild : Dynamic;
	var hovering : Bool;
	var id : String;
	var lang : String;
	var multiCharSearchDuration : Float;
	var ownerDocument : Dynamic;
	var parentMenu : Dynamic;
	var passivePopupDelay : Float;
	var popupDelay : Float;
	var searchContainerNode : Bool;
	var selected : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function childSelector(node:HTMLElement):Dynamic;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function connectKeyNavHandlers(prevKeyCodes:dojo.Keys, nextKeyCodes:dojo.Keys):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function focus():Void;
	function focusChild(widget:dijit._WidgetBase, last:Bool):Void;
	function focusFirstChild():Void;
	function focusLastChild():Void;
	function focusNext():Void;
	function focusPrev():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getParent():Dynamic;
	function hasChildren():Bool;
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
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function startup():Void;
	function startupKeyNavChildren():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onCancel(closeAll:Bool):Void;
	function onClick(event:Dynamic):Void;
	function onDblClick(event:Dynamic):Void;
	function onExecute():Void;
	function onFocus():Void;
	function onHide():Void;
	function onItemHover(item:dijit.MenuItem):Void;
	function onItemUnhover(item:dijit.MenuItem):Void;
	function onKeyboardSearch(item:dijit.MenuItem, evt:Event, searchString:String, numMatches:Float):Void;
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
extern class _WidgetsInTemplateMixin {
	function new():Void;
	var contextRequire : haxe.Constraints.Function;
	var widgetsInTemplate : Bool;
	function startup():Void;
}
extern class _WidgetBase extends dojo.Stateful {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:Dynamic):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):Dynamic { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : Dynamic;
	var title : String;
	var tooltip : String;
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
	function emit(type:String, ?eventObj:Dynamic, ?callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getParent():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	var isValid : Dynamic;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):{ var remove : { }; } { })
	function on(type:String, func:haxe.Constraints.Function):{ var remove : { }; };
	function own(handle:Dynamic):Dynamic;
	@:overload(function(reference:HTMLElement, ?position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, ?position:String):Dynamic { })
	@:overload(function(reference:String, ?position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, ?position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, ?position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	function postCreate():Void;
	function postMixInProperties():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onFocus():Void;
}
extern class _Widget extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var a11yclick : Dynamic;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DndType, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SlideFrom, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:Dynamic):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DndType):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SlideFrom):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):Dynamic { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DndType, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SlideFrom, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var dndType : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var observer : String;
	var ownerDocument : Dynamic;
	var slideFrom : String;
	var srcNodeRef : HTMLElement;
	var style : Dynamic;
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
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
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
extern class _TimePicker extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ClickableIncrement, value:String):Void { })
	@:overload(function(property:Constraints, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FilterString, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Selected, value:HTMLElement):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(property:VisibleIncrement, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ClickableIncrement):String { })
	@:overload(function(property:Constraints):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FilterString):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Selected):HTMLElement { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):String { })
	@:overload(function(property:VisibleIncrement):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ClickableIncrement, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Constraints, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FilterString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:VisibleIncrement, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var clickableIncrement : String;
	var constraints : Dynamic;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var filterString : String;
	var focused : Bool;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var selected : HTMLElement;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	var value : String;
	var visibleIncrement : String;
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
	function getChildren():Array<Dynamic>;
	function getParent():Dynamic;
	function handleKey(e:Event):Dynamic;
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
	function selectFirstNode():Void;
	function selectLastNode():Void;
	function selectNextNode():Void;
	function selectPreviousNode():Void;
	function serialize(dateObject:Date, options:Dynamic):Dynamic;
	function setValue(value:Date):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onChange(time:Date):Void;
	function onClick(node:HTMLElement):Void;
	function onDeselect(node:HTMLElement):Void;
	function onFocus():Void;
	function onHover(node:HTMLElement):Void;
	function onOpen():Void;
	function onSelect(node:HTMLElement):Void;
	function onUnhover(node:HTMLElement):Void;
}
