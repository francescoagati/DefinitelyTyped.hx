extern class _Menu extends dijit.DropDownMenu {
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
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
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
extern class FileInput extends dijit.form._FormWidget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:CancelText, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:CancelText):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CancelText, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var cancelText : String;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var dir : String;
	var disabled : Bool;
	var domNode : HTMLElement;
	var focused : Bool;
	var hovering : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var label : String;
	var lang : String;
	var name : String;
	var ownerDocument : Dynamic;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : String;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function getValue():Dynamic;
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
	function reset(e:Event):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setLabel(label:String, cssClass:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
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
extern class FileInputAuto extends dojox.form.FileInput {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:BlurDelay, value:Float):Void { })
	@:overload(function(property:CancelText, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TriggerEvent, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:UploadMessage, value:String):Void { })
	@:overload(function(property:Url, value:String):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:BlurDelay):Float { })
	@:overload(function(property:CancelText):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TriggerEvent):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:UploadMessage):String { })
	@:overload(function(property:Url):String { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BlurDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CancelText, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TriggerEvent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UploadMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Url, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var blurDelay : Float;
	var cancelText : String;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var dir : String;
	var disabled : Bool;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var hovering : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var label : String;
	var lang : String;
	var name : String;
	var ownerDocument : Dynamic;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var triggerEvent : String;
	var type : String;
	var uploadMessage : String;
	var url : String;
	var value : String;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function getValue():Dynamic;
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
	function reset(e:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setLabel(label:String, cssClass:String):Void;
	function setMessage(title:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBeforeSend():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onComplete(data:Dynamic, ioArgs:Dynamic, widgetRef:Dynamic):Void;
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
extern class FileInputBlind extends dojox.form.FileInput {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:BlurDelay, value:Float):Void { })
	@:overload(function(property:CancelText, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TriggerEvent, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:UploadMessage, value:String):Void { })
	@:overload(function(property:Url, value:String):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:BlurDelay):Float { })
	@:overload(function(property:CancelText):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TriggerEvent):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:UploadMessage):String { })
	@:overload(function(property:Url):String { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BlurDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CancelText, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TriggerEvent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UploadMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Url, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var blurDelay : Float;
	var cancelText : String;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var dir : String;
	var disabled : Bool;
	var domNode : HTMLElement;
	var duration : Float;
	var focused : Bool;
	var hovering : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var label : String;
	var lang : String;
	var name : String;
	var ownerDocument : Dynamic;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var triggerEvent : String;
	var type : String;
	var uploadMessage : String;
	var url : String;
	var value : String;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function getValue():Dynamic;
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
	function reset(e:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setLabel(label:String, cssClass:String):Void;
	function setMessage(title:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBeforeSend():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onComplete(data:Dynamic, ioArgs:Dynamic, widgetRef:Dynamic):Void;
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
extern class FileUploader extends dijit._Widget {
	function new():Void;
	var activeClass : String;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DeferredUploading, value:Float):Void { })
	@:overload(function(property:DevMode, value:Bool):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DisabledClass, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FileListId, value:String):Void { })
	@:overload(function(property:FileMask, value:Dynamic):Void { })
	@:overload(function(property:FlashFieldName, value:String):Void { })
	@:overload(function(property:FlashMovie, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:FlashObject, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Force, value:String):Void { })
	@:overload(function(property:HoverClass, value:String):Void { })
	@:overload(function(property:HtmlFieldName, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InsideNode, value:Dynamic):Void { })
	@:overload(function(property:IsDebug, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MinFlashVersion, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ProgressBackgroundColor, value:String):Void { })
	@:overload(function(property:ProgressBackgroundUrl, value:String):Void { })
	@:overload(function(property:ProgressMessage, value:String):Void { })
	@:overload(function(property:ProgressWidgetId, value:String):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectMultipleFiles, value:Bool):Void { })
	@:overload(function(property:ServerTimeout, value:Float):Void { })
	@:overload(function(property:ShowProgress, value:Bool):Void { })
	@:overload(function(property:SkipServerCheck, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:SwfPath, value:Dynamic):Void { })
	@:overload(function(property:TabIndex, value:Float):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UploaderType, value:String):Void { })
	@:overload(function(property:UploadOnChange, value:Bool):Void { })
	@:overload(function(property:UploadUrl, value:String):Void { })
	@:overload(function(property:Version, value:Dynamic):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:ActiveClass, value:String):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DeferredUploading):Float { })
	@:overload(function(property:DevMode):Bool { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DisabledClass):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FileListId):String { })
	@:overload(function(property:FileMask):Dynamic { })
	@:overload(function(property:FlashFieldName):String { })
	@:overload(function(property:FlashMovie):haxe.Constraints.Function { })
	@:overload(function(property:FlashObject):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Force):String { })
	@:overload(function(property:HoverClass):String { })
	@:overload(function(property:HtmlFieldName):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InsideNode):Dynamic { })
	@:overload(function(property:IsDebug):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MinFlashVersion):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ProgressBackgroundColor):String { })
	@:overload(function(property:ProgressBackgroundUrl):String { })
	@:overload(function(property:ProgressMessage):String { })
	@:overload(function(property:ProgressWidgetId):String { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectMultipleFiles):Bool { })
	@:overload(function(property:ServerTimeout):Float { })
	@:overload(function(property:ShowProgress):Bool { })
	@:overload(function(property:SkipServerCheck):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:SwfPath):Dynamic { })
	@:overload(function(property:TabIndex):Float { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UploaderType):String { })
	@:overload(function(property:UploadOnChange):Bool { })
	@:overload(function(property:UploadUrl):String { })
	@:overload(function(property:Version):Dynamic { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:ActiveClass):String;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DeferredUploading, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DevMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisabledClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FileListId, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FileMask, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FlashFieldName, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FlashMovie, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FlashObject, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Force, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HoverClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HtmlFieldName, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InsideNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsDebug, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinFlashVersion, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ProgressBackgroundColor, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ProgressBackgroundUrl, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ProgressMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ProgressWidgetId, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectMultipleFiles, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ServerTimeout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowProgress, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SkipServerCheck, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SwfPath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UploaderType, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UploadOnChange, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UploadUrl, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Version, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:ActiveClass, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var deferredUploading : Float;
	var devMode : Bool;
	var dir : String;
	var disabledClass : String;
	var domNode : HTMLElement;
	var fileListId : String;
	var fileMask : Dynamic;
	var flashFieldName : String;
	var flashMovie : haxe.Constraints.Function;
	var flashObject : Dynamic;
	var focused : Bool;
	var force : String;
	var hoverClass : String;
	var htmlFieldName : String;
	var id : String;
	var insideNode : Dynamic;
	var isDebug : Bool;
	var lang : String;
	var minFlashVersion : Float;
	var ownerDocument : Dynamic;
	var progressBackgroundColor : String;
	var progressBackgroundUrl : String;
	var progressMessage : String;
	var progressWidgetId : String;
	var searchContainerNode : Bool;
	var selectMultipleFiles : Bool;
	var serverTimeout : Float;
	var showProgress : Bool;
	var skipServerCheck : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var swfPath : Dynamic;
	var tabIndex : Float;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var uploaderType : String;
	var uploadOnChange : Bool;
	var uploadUrl : String;
	var version : Dynamic;
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
	function createFlashUploader():Void;
	function createHtmlUploader():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getButtonStyle():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getHiddenNode(node:HTMLElement):Dynamic;
	function getIndexInParent():Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function getStyle(node:Dynamic):Dynamic;
	function getTempNodeStyle(node:Dynamic, _class:Dynamic, isDijitButton:Dynamic):Dynamic;
	function getText(node:Dynamic):Dynamic;
	function getTextStyle(node:Dynamic):Dynamic;
	function isButton(node:Dynamic):Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function log():Void;
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
	function removeFile(name:String, noListEdit:Bool):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setButtonStyle():Void;
	function startup():Void;
	function submit(form:HTMLFormElement):Bool;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function upload(data:Dynamic):Bool;
	function uploadFlash():Void;
	function uploadHTML():Void;
	function urlencode(url:Dynamic):Dynamic;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onCancel():Void;
	function onChange(dataArray:Dynamic):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onComplete(dataArray:Dynamic):Void;
	function onDblClick(event:Dynamic):Void;
	@:overload(function(evtObject:String):Void { })
	function onError(evtObject:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onLoad(uploader:dojox.form.FileUploader):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onProgress(dataArray:Dynamic):Void;
	function onReady(uploader:dojox.form.FileUploader):Void;
	function onShow():Void;
}
extern class ListInput extends dijit.form._FormValueWidget {
	function new():Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Constraints, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Delimiter, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:EasingIn, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:EasingOut, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InputClass, value:String):Void { })
	@:overload(function(property:InputHandler, value:String):Void { })
	@:overload(function(property:InputProperties, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MaxItems, value:Float):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:ReadOnlyInput, value:Bool):Void { })
	@:overload(function(property:ReadOnlyItem, value:Bool):Void { })
	@:overload(function(property:js.RegExp, value:String):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:ShowCloseButtonWhenInvalid, value:Bool):Void { })
	@:overload(function(property:ShowCloseButtonWhenValid, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:SubmitOnlyValidValue, value:Bool):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:UseAnim, value:Bool):Void { })
	@:overload(function(property:UseArrowForEdit, value:Bool):Void { })
	@:overload(function(property:UseOnBlur, value:Bool):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Constraints):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Delimiter):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:EasingIn):haxe.Constraints.Function { })
	@:overload(function(property:EasingOut):haxe.Constraints.Function { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InputClass):String { })
	@:overload(function(property:InputHandler):String { })
	@:overload(function(property:InputProperties):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MaxItems):Float { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:ReadOnlyInput):Bool { })
	@:overload(function(property:ReadOnlyItem):Bool { })
	@:overload(function(property:js.RegExp):String { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:ShowCloseButtonWhenInvalid):Bool { })
	@:overload(function(property:ShowCloseButtonWhenValid):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:SubmitOnlyValidValue):Bool { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:UseAnim):Bool { })
	@:overload(function(property:UseArrowForEdit):Bool { })
	@:overload(function(property:UseOnBlur):Bool { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Constraints, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Delimiter, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EasingIn, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EasingOut, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InputClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InputHandler, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InputProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnlyInput, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnlyItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:js.RegExp, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowCloseButtonWhenInvalid, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowCloseButtonWhenValid, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SubmitOnlyValidValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseAnim, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseArrowForEdit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UseOnBlur, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var constraints : Dynamic;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var delimiter : String;
	var dir : String;
	var disabled : Bool;
	var domNode : HTMLElement;
	var duration : Float;
	var easingIn : haxe.Constraints.Function;
	var easingOut : haxe.Constraints.Function;
	var focused : Bool;
	var hovering : Bool;
	var id : String;
	var inputClass : String;
	var inputHandler : String;
	var inputProperties : String;
	var intermediateChanges : Bool;
	var lang : String;
	var maxItems : Float;
	var name : String;
	var ownerDocument : Dynamic;
	var readOnly : Bool;
	var readOnlyInput : Bool;
	var readOnlyItem : Bool;
	var regExp : String;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var showCloseButtonWhenInvalid : Bool;
	var showCloseButtonWhenValid : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var submitOnlyValidValue : Bool;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var useAnim : Bool;
	var useArrowForEdit : Bool;
	var useOnBlur : Bool;
	var value : String;
	@:overload(function(values:Array<Dynamic>):Void { })
	function add(values:String):Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function compare(val1:Array<Dynamic>, val2:Array<Dynamic>):Float;
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
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function getValue():Dynamic;
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
	function regExpGen(constraints:Dynamic):Dynamic;
	function reset():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function undo():Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
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
extern class FilePickerTextBox extends dijit.form.ValidationTextBox {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoWidth, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Constraints, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DisplayedValue, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DropDown, value:Dynamic):Void { })
	@:overload(function(property:DropDownPosition, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:ForceWidth, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:InvalidMessage, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Lowercase, value:Bool):Void { })
	@:overload(function(property:MaxHeight, value:Float):Void { })
	@:overload(function(property:MaxLength, value:String):Void { })
	@:overload(function(property:Message, value:String):Void { })
	@:overload(function(property:MissingMessage, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:NumPanes, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Pattern, value:String):Void { })
	@:overload(function(property:PlaceHolder, value:String):Void { })
	@:overload(function(property:PromptMessage, value:String):Void { })
	@:overload(function(property:Propercase, value:Bool):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:js.RegExp, value:String):Void { })
	@:overload(function(property:Required, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SearchDelay, value:Float):Void { })
	@:overload(function(property:SelectOnClick, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:State, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TooltipPosition, value:Dynamic):Void { })
	@:overload(function(property:Trim, value:Bool):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Uppercase, value:Bool):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(property:ValueItem, value:Dynamic):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoWidth):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Constraints):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DisplayedValue):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DropDown):Dynamic { })
	@:overload(function(property:DropDownPosition):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:ForceWidth):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:InvalidMessage):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Lowercase):Bool { })
	@:overload(function(property:MaxHeight):Float { })
	@:overload(function(property:MaxLength):String { })
	@:overload(function(property:Message):String { })
	@:overload(function(property:MissingMessage):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:NumPanes):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Pattern):String { })
	@:overload(function(property:PlaceHolder):String { })
	@:overload(function(property:PromptMessage):String { })
	@:overload(function(property:Propercase):Bool { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:js.RegExp):String { })
	@:overload(function(property:Required):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SearchDelay):Float { })
	@:overload(function(property:SelectOnClick):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:State):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TooltipPosition):Dynamic { })
	@:overload(function(property:Trim):Bool { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Uppercase):Bool { })
	@:overload(function(property:Value):String { })
	@:overload(function(property:ValueItem):Dynamic { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Constraints, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDown, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDownPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ForceWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lowercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxLength, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Message, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MissingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NumPanes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Pattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceHolder, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PromptMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Propercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:js.RegExp, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Required, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectOnClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:State, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TooltipPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Trim, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Uppercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ValueItem, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoWidth : Bool;
	var baseClass : String;
	var class : String;
	var constraints : Dynamic;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var dir : String;
	var disabled : Bool;
	var displayedValue : String;
	var domNode : HTMLElement;
	var dropDown : Dynamic;
	var dropDownPosition : Dynamic;
	var focused : Bool;
	var forceWidth : Bool;
	var hovering : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var invalidMessage : String;
	var lang : String;
	var lowercase : Bool;
	var maxHeight : Float;
	var maxLength : String;
	var message : String;
	var missingMessage : String;
	var name : String;
	var numPanes : Float;
	var ownerDocument : Dynamic;
	var pattern : String;
	var placeHolder : String;
	var promptMessage : String;
	var propercase : Bool;
	var readOnly : Bool;
	var regExp : String;
	var required : Bool;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var searchDelay : Float;
	var selectOnClick : Bool;
	var srcNodeRef : HTMLElement;
	var state : String;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var tooltipPosition : Dynamic;
	var trim : Bool;
	var type : String;
	var uppercase : Bool;
	var value : String;
	var valueItem : Dynamic;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function closeDropDown(focus:Bool):Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function displayMessage(message:String):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function filter(val:Dynamic):Dynamic;
	function focus():Void;
	function format(value:String, constraints:Dynamic):String;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getDisplayedValue():Dynamic;
	function getErrorMessage(isFocused:Bool):Dynamic;
	function getParent():Dynamic;
	function getPromptMessage(isFocused:Bool):Dynamic;
	function getValue():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function isLoaded():Bool;
	var isValid : { };
	function loadAndOpenDropDown():Dynamic;
	function loadDropDown(loadCallback:haxe.Constraints.Function):Void;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function openDropDown():Void;
	function own():Dynamic;
	function parse(value:String, constraints:Dynamic):Dynamic;
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	function postCreate():Void;
	function postMixInProperties():Void;
	function regExpGen(constraints:Dynamic):Void;
	function reset():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setDisplayedValue(value:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toggleDropDown():Void;
	function toString():String;
	function undo():Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validate(isFocused:Bool):Dynamic;
	function validator(value:Dynamic, constraints:Dynamic):Dynamic;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onInput(event:Dynamic):Void;
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
extern class Manager extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var accept : String;
	@:overload(function(property:Accept-charset, value:String):Void { })
	@:overload(function(property:Action, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:ContextRequire, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:EncType, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Method, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Target, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Watching, value:Bool):Void { })
	@:overload(function(property:WidgetsInTemplate, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Accept, value:String):Void;
	@:overload(function(property:Accept-charset):String { })
	@:overload(function(property:Action):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:ContextRequire):haxe.Constraints.Function { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:EncType):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Method):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Target):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Watching):Bool { })
	@:overload(function(property:WidgetsInTemplate):Bool { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Accept):String;
	@:overload(function(property:Accept-charset, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Action, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContextRequire, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EncType, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Method, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Target, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Watching, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:WidgetsInTemplate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Accept, callback:{ }):{ function unwatch():Void; };
	var accept-charset : String;
	var action : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var contextRequire : haxe.Constraints.Function;
	var dir : String;
	var domNode : HTMLElement;
	var encType : String;
	var focused : Bool;
	var id : String;
	var lang : String;
	var method : String;
	var name : String;
	var observer : String;
	var ownerDocument : Dynamic;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var target : String;
	var title : String;
	var tooltip : String;
	var watching : Bool;
	var widgetsInTemplate : Bool;
	function addClass(className:String, names:Dynamic):haxe.Constraints.Function;
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
	function disable(state:Dynamic):Dynamic;
	function disconnect(handle:Dynamic):Void;
	function elementValue(name:String, value:Dynamic):Dynamic;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function enable(state:Dynamic, defaultState:Bool):haxe.Constraints.Function;
	@:overload(function(elem:HTMLElement, value:Dynamic):Dynamic { })
	@:overload(function(elem:Array<Dynamic>, value:Dynamic):Dynamic { })
	function formNodeValue(elem:String, value:Dynamic):Dynamic;
	@:overload(function(elem:Dynamic, value:Dynamic):Dynamic { })
	@:overload(function(elem:Array<Dynamic>, value:Dynamic):Dynamic { })
	function formPointValue(elem:String, value:Dynamic):Dynamic;
	@:overload(function(elem:Dynamic, value:Dynamic):Dynamic { })
	@:overload(function(elem:Array<Dynamic>, value:Dynamic):Dynamic { })
	function formWidgetValue(elem:String, value:Dynamic):Dynamic;
	function gatherClassState(className:String, names:Dynamic):Dynamic;
	function gatherDisplayState(names:Dynamic):Dynamic;
	function gatherEnableState(names:Dynamic):Dynamic;
	function gatherFormValues(names:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function hide(state:Dynamic):Dynamic;
	function inspect(inspector:haxe.Constraints.Function, state:Dynamic, defaultValue:Dynamic):Dynamic;
	function inspectAttachedPoints(inspector:haxe.Constraints.Function, state:Dynamic, defaultValue:Dynamic):Dynamic;
	function inspectFormNodes(inspector:haxe.Constraints.Function, state:Dynamic, defaultValue:Dynamic):Dynamic;
	function inspectFormWidgets(inspector:haxe.Constraints.Function, state:Dynamic, defaultValue:Dynamic):Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	var isValid : { };
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
	@:overload(function(node:HTMLElement):Dynamic { })
	function registerNode(node:String):Dynamic;
	@:overload(function(node:HTMLElement):Dynamic { })
	function registerNodeDescendants(node:String):Dynamic;
	@:overload(function(widget:HTMLElement):Dynamic { })
	@:overload(function(widget:dijit.form._FormWidget):Dynamic { })
	function registerWidget(widget:String):Dynamic;
	@:overload(function(widget:HTMLElement):Dynamic { })
	@:overload(function(widget:dijit._Widget):Dynamic { })
	function registerWidgetDescendants(widget:String):Dynamic;
	function removeClass(className:String, names:Dynamic):haxe.Constraints.Function;
	function reset():haxe.Constraints.Function;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setFormValues(values:Dynamic):haxe.Constraints.Function;
	function show(state:Dynamic, defaultState:Bool):haxe.Constraints.Function;
	function startup():Void;
	function submit():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unregisterNode(name:String):Dynamic;
	@:overload(function(node:HTMLElement):Dynamic { })
	function unregisterNodeDescendants(node:String):Dynamic;
	function unregisterWidget(name:String):Dynamic;
	@:overload(function(widget:HTMLElement):Dynamic { })
	@:overload(function(widget:dijit._Widget):Dynamic { })
	function unregisterWidgetDescendants(widget:String):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function validate():Bool;
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
	function onReset():Bool;
	function onShow():Void;
	function onSubmit():Dynamic;
}
extern class RangeSlider {
	function new():Void;
	var value : Array<Dynamic>;
	function destroy():Void;
	function postCreate():Void;
	function postMixInProperties():Void;
}
extern class Rating extends dijit.form._FormWidget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:NumStars, value:Float):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Required, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:NumStars):Float { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Required):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NumStars, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Required, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var dir : String;
	var disabled : Bool;
	var domNode : HTMLElement;
	var focused : Bool;
	var hovering : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var lang : String;
	var name : String;
	var numStars : Float;
	var ownerDocument : Dynamic;
	var required : Bool;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : Float;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering(?params:Dynamic):Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function getValue():Dynamic;
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
	function setAttribute(key:String, value:Float):Void;
	function setDisabled(disabled:Bool):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
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
	function onMouseOver(evt:Dynamic, ?value:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onShow():Void;
	function onStarClick(evt:Event):Void;
}
extern class TriStateCheckBox extends dijit.form.Button {
	function new():Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Checked, value:Bool):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:IconClass, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:ShowLabel, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:States, value:Array<Dynamic>):Void { })
	@:overload(function(property:StateValue, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Checked):Bool { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:IconClass):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:ShowLabel):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:States):Array<Dynamic> { })
	@:overload(function(property:StateValue):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Checked, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowLabel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:States, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StateValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var checked : Bool;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var dir : String;
	var disabled : Bool;
	var domNode : HTMLElement;
	var focused : Bool;
	var hovering : Bool;
	var iconClass : String;
	var id : String;
	var intermediateChanges : Bool;
	var label : String;
	var lang : String;
	var name : String;
	var ownerDocument : Dynamic;
	var readOnly : Bool;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var showLabel : Bool;
	var srcNodeRef : HTMLElement;
	var states : Array<Dynamic>;
	var stateValue : Dynamic;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var value : String;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function click():Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function fixState():Void;
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function getValue():Dynamic;
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
	function reset():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	@:overload(function(checked:Bool):Void { })
	function setChecked(checked:String):Void;
	function setDisabled(disabled:Bool):Void;
	function setLabel(content:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onClick(event:Event):Bool;
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
extern class MonthTextBox extends dojox.form.DateTextBox {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoWidth, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Constraints, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:DatePackage, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DisplayedValue, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DropDown, value:Dynamic):Void { })
	@:overload(function(property:DropDownDefaultValue, value:Date):Void { })
	@:overload(function(property:DropDownPosition, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:ForceWidth, value:Bool):Void { })
	@:overload(function(property:HasDownArrow, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:InvalidMessage, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Lowercase, value:Bool):Void { })
	@:overload(function(property:MaxHeight, value:Float):Void { })
	@:overload(function(property:MaxLength, value:String):Void { })
	@:overload(function(property:Message, value:String):Void { })
	@:overload(function(property:MissingMessage, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PlaceHolder, value:String):Void { })
	@:overload(function(property:PromptMessage, value:String):Void { })
	@:overload(function(property:Propercase, value:Bool):Void { })
	@:overload(function(property:RangeMessage, value:String):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:js.RegExp, value:String):Void { })
	@:overload(function(property:Required, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectOnClick, value:Bool):Void { })
	@:overload(function(property:Selector, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:State, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TooltipPosition, value:Dynamic):Void { })
	@:overload(function(property:Trim, value:Bool):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Uppercase, value:Bool):Void { })
	@:overload(function(property:Value, value:Date):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoWidth):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Constraints):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:DatePackage):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DisplayedValue):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DropDown):Dynamic { })
	@:overload(function(property:DropDownDefaultValue):Date { })
	@:overload(function(property:DropDownPosition):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:ForceWidth):Bool { })
	@:overload(function(property:HasDownArrow):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:InvalidMessage):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Lowercase):Bool { })
	@:overload(function(property:MaxHeight):Float { })
	@:overload(function(property:MaxLength):String { })
	@:overload(function(property:Message):String { })
	@:overload(function(property:MissingMessage):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PlaceHolder):String { })
	@:overload(function(property:PromptMessage):String { })
	@:overload(function(property:Propercase):Bool { })
	@:overload(function(property:RangeMessage):String { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:js.RegExp):String { })
	@:overload(function(property:Required):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectOnClick):Bool { })
	@:overload(function(property:Selector):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:State):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TooltipPosition):Dynamic { })
	@:overload(function(property:Trim):Bool { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Uppercase):Bool { })
	@:overload(function(property:Value):Date { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Constraints, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDown, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDownDefaultValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDownPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ForceWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HasDownArrow, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lowercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxLength, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Message, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MissingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceHolder, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PromptMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Propercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RangeMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:js.RegExp, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Required, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectOnClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selector, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:State, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TooltipPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Trim, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Uppercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoWidth : Bool;
	var baseClass : String;
	var class : String;
	var constraints : Dynamic;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var datePackage : String;
	var dir : String;
	var disabled : Bool;
	var displayedValue : String;
	var domNode : HTMLElement;
	var dropDown : Dynamic;
	var dropDownDefaultValue : Date;
	var dropDownPosition : Dynamic;
	var focused : Bool;
	var forceWidth : Bool;
	var hasDownArrow : Bool;
	var hovering : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var invalidMessage : String;
	var lang : String;
	var lowercase : Bool;
	var maxHeight : Float;
	var maxLength : String;
	var message : String;
	var missingMessage : String;
	var name : String;
	var ownerDocument : Dynamic;
	var placeHolder : String;
	var promptMessage : String;
	var propercase : Bool;
	var rangeMessage : String;
	var readOnly : Bool;
	var regExp : String;
	var required : Bool;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var selectOnClick : Bool;
	var selector : String;
	var srcNodeRef : HTMLElement;
	var state : String;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var tooltipPosition : Dynamic;
	var trim : Bool;
	var type : String;
	var uppercase : Bool;
	var value : Date;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function closeDropDown(focus:Bool):Void;
	function compare(val1:Date, val2:Date):Dynamic;
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
	function displayMessage(message:String):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function filter(val:Dynamic):Dynamic;
	function focus():Void;
	function format(value:Dynamic):Float;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getDisplayedValue():Dynamic;
	function getErrorMessage(isFocused:Bool):Dynamic;
	function getParent():Dynamic;
	function getPromptMessage(isFocused:Bool):Dynamic;
	function getValue():Dynamic;
	function isFocusable():Dynamic;
	function isInRange(isFocused:Bool):Dynamic;
	function isLeftToRight():Dynamic;
	function isLoaded():Bool;
	var isValid : { };
	function loadAndOpenDropDown():Dynamic;
	function loadDropDown(loadCallback:haxe.Constraints.Function):Void;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function openDropDown():Void;
	function own():Dynamic;
	function parse(value:Dynamic, constraints:Dynamic):Float;
	var pattern : { };
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	var popupClass : { };
	function postCreate():Void;
	function postMixInProperties():Void;
	function rangeCheck(primitive:Float, constraints:dijit.form.RangeBoundTextBox.__Constraints):Bool;
	function regExpGen(constraints:Dynamic):Void;
	function reset():Void;
	function serialize(value:Dynamic, constraints:Dynamic):Dynamic;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setDisplayedValue(value:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toggleDropDown():Void;
	function toString():String;
	function undo():Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validate():Dynamic;
	function validator(value:Dynamic):Bool;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onInput(event:Dynamic):Void;
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
extern class PasswordValidator extends dijit.form._FormValueWidget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OldName, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:Required, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OldName):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:Required):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OldName, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Required, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var dir : String;
	var disabled : Bool;
	var domNode : HTMLElement;
	var focused : Bool;
	var hovering : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var lang : String;
	var name : String;
	var oldName : Dynamic;
	var ownerDocument : Dynamic;
	var readOnly : Bool;
	var required : Bool;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : String;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function getValue():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	var isValid : { };
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
	function pwCheck(password:String):Bool;
	function reset():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function undo():Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validate(isFocused:Bool):Dynamic;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
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
extern class TimeSpinner extends dijit.form._Spinner {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Constraints, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:DefaultTimeout, value:Float):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DisplayedValue, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:InvalidMessage, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LargeDelta, value:Float):Void { })
	@:overload(function(property:Lowercase, value:Bool):Void { })
	@:overload(function(property:MaxLength, value:String):Void { })
	@:overload(function(property:Message, value:String):Void { })
	@:overload(function(property:MinimumTimeout, value:Float):Void { })
	@:overload(function(property:MissingMessage, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Pattern, value:String):Void { })
	@:overload(function(property:PlaceHolder, value:String):Void { })
	@:overload(function(property:PromptMessage, value:String):Void { })
	@:overload(function(property:Propercase, value:Bool):Void { })
	@:overload(function(property:RangeMessage, value:String):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:js.RegExp, value:String):Void { })
	@:overload(function(property:Required, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectOnClick, value:Bool):Void { })
	@:overload(function(property:SmallDelta, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:State, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:TimeoutChangeRate, value:Float):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TooltipPosition, value:Dynamic):Void { })
	@:overload(function(property:Trim, value:Bool):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Uppercase, value:Bool):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Constraints):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:DefaultTimeout):Float { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DisplayedValue):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:InvalidMessage):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LargeDelta):Float { })
	@:overload(function(property:Lowercase):Bool { })
	@:overload(function(property:MaxLength):String { })
	@:overload(function(property:Message):String { })
	@:overload(function(property:MinimumTimeout):Float { })
	@:overload(function(property:MissingMessage):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Pattern):String { })
	@:overload(function(property:PlaceHolder):String { })
	@:overload(function(property:PromptMessage):String { })
	@:overload(function(property:Propercase):Bool { })
	@:overload(function(property:RangeMessage):String { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:js.RegExp):String { })
	@:overload(function(property:Required):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectOnClick):Bool { })
	@:overload(function(property:SmallDelta):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:State):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:TimeoutChangeRate):Float { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TooltipPosition):Dynamic { })
	@:overload(function(property:Trim):Bool { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Uppercase):Bool { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Constraints, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultTimeout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LargeDelta, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lowercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxLength, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Message, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinimumTimeout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MissingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Pattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceHolder, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PromptMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Propercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RangeMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:js.RegExp, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Required, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectOnClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SmallDelta, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:State, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TimeoutChangeRate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TooltipPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Trim, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Uppercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var constraints : Dynamic;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var defaultTimeout : Float;
	var dir : String;
	var disabled : Bool;
	var displayedValue : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var hovering : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var invalidMessage : String;
	var lang : String;
	var largeDelta : Float;
	var lowercase : Bool;
	var maxLength : String;
	var message : String;
	var minimumTimeout : Float;
	var missingMessage : String;
	var name : String;
	var ownerDocument : Dynamic;
	var pattern : String;
	var placeHolder : String;
	var promptMessage : String;
	var propercase : Bool;
	var rangeMessage : String;
	var readOnly : Bool;
	var regExp : String;
	var required : Bool;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var selectOnClick : Bool;
	var smallDelta : Float;
	var srcNodeRef : HTMLElement;
	var state : String;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var timeoutChangeRate : Float;
	var title : String;
	var tooltip : String;
	var tooltipPosition : Dynamic;
	var trim : Bool;
	var type : String;
	var uppercase : Bool;
	var value : String;
	function adjust(val:Dynamic, delta:Float):Dynamic;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function displayMessage(message:String):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function filter(val:Dynamic):Dynamic;
	function focus():Void;
	function format(time:Dynamic, locale:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getDisplayedValue():Dynamic;
	function getErrorMessage(isFocused:Bool):Dynamic;
	function getParent():Dynamic;
	function getPromptMessage(isFocused:Bool):Dynamic;
	function getValue():Dynamic;
	function isFocusable():Dynamic;
	function isInRange(isFocused:Bool):Dynamic;
	function isLeftToRight():Dynamic;
	var isValid : { };
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function own():Dynamic;
	function parse(time:Dynamic, locale:Dynamic):Dynamic;
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	function postCreate():Void;
	function postMixInProperties():Void;
	function rangeCheck(primitive:Float, constraints:dijit.form.RangeBoundTextBox.__Constraints):Bool;
	function regExpGen(constraints:Dynamic):Void;
	function reset():Void;
	function serialize(dateObject:Date, options:Dynamic):Dynamic;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setDisplayedValue(value:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function undo():Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validate():Dynamic;
	function validator(value:Dynamic, constraints:Dynamic):Dynamic;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onInput(event:Dynamic):Void;
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
extern class MultiComboBox extends dijit.form.ValidationTextBox {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoComplete, value:Bool):Void { })
	@:overload(function(property:AutoWidth, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Constraints, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Delimiter, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DisplayedValue, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DropDown, value:Dynamic):Void { })
	@:overload(function(property:DropDownPosition, value:Dynamic):Void { })
	@:overload(function(property:FetchProperties, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:ForceWidth, value:Bool):Void { })
	@:overload(function(property:HasDownArrow, value:Bool):Void { })
	@:overload(function(property:HighlightMatch, value:String):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IgnoreCase, value:Bool):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:InvalidMessage, value:String):Void { })
	@:overload(function(property:Item, value:Dynamic):Void { })
	@:overload(function(property:LabelAttr, value:Dynamic):Void { })
	@:overload(function(property:LabelType, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Lowercase, value:Bool):Void { })
	@:overload(function(property:MaxHeight, value:Float):Void { })
	@:overload(function(property:MaxLength, value:String):Void { })
	@:overload(function(property:Message, value:String):Void { })
	@:overload(function(property:MissingMessage, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PageSize, value:Float):Void { })
	@:overload(function(property:Pattern, value:String):Void { })
	@:overload(function(property:PlaceHolder, value:String):Void { })
	@:overload(function(property:PromptMessage, value:String):Void { })
	@:overload(function(property:Propercase, value:Bool):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryExpr, value:String):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:js.RegExp, value:String):Void { })
	@:overload(function(property:Required, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchAttr, value:String):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SearchDelay, value:Float):Void { })
	@:overload(function(property:SelectOnClick, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:State, value:String):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TooltipPosition, value:Dynamic):Void { })
	@:overload(function(property:Trim, value:Bool):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Uppercase, value:Bool):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoComplete):Bool { })
	@:overload(function(property:AutoWidth):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Constraints):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Delimiter):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DisplayedValue):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DropDown):Dynamic { })
	@:overload(function(property:DropDownPosition):Dynamic { })
	@:overload(function(property:FetchProperties):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:ForceWidth):Bool { })
	@:overload(function(property:HasDownArrow):Bool { })
	@:overload(function(property:HighlightMatch):String { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IgnoreCase):Bool { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:InvalidMessage):String { })
	@:overload(function(property:Item):Dynamic { })
	@:overload(function(property:LabelAttr):Dynamic { })
	@:overload(function(property:LabelType):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Lowercase):Bool { })
	@:overload(function(property:MaxHeight):Float { })
	@:overload(function(property:MaxLength):String { })
	@:overload(function(property:Message):String { })
	@:overload(function(property:MissingMessage):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PageSize):Float { })
	@:overload(function(property:Pattern):String { })
	@:overload(function(property:PlaceHolder):String { })
	@:overload(function(property:PromptMessage):String { })
	@:overload(function(property:Propercase):Bool { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryExpr):String { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:js.RegExp):String { })
	@:overload(function(property:Required):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchAttr):String { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SearchDelay):Float { })
	@:overload(function(property:SelectOnClick):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:State):String { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TooltipPosition):Dynamic { })
	@:overload(function(property:Trim):Bool { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Uppercase):Bool { })
	@:overload(function(property:Value):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoComplete, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Constraints, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Delimiter, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDown, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDownPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FetchProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ForceWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HasDownArrow, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HighlightMatch, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IgnoreCase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Item, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LabelType, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lowercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxLength, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Message, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MissingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PageSize, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Pattern, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceHolder, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PromptMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Propercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryExpr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:js.RegExp, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Required, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchAttr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectOnClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:State, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TooltipPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Trim, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Uppercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoComplete : Bool;
	var autoWidth : Bool;
	var baseClass : String;
	var class : String;
	var constraints : Dynamic;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var delimiter : String;
	var dir : String;
	var disabled : Bool;
	var displayedValue : String;
	var domNode : HTMLElement;
	var dropDown : Dynamic;
	var dropDownPosition : Dynamic;
	var fetchProperties : Dynamic;
	var focused : Bool;
	var forceWidth : Bool;
	var hasDownArrow : Bool;
	var highlightMatch : String;
	var hovering : Bool;
	var id : String;
	var ignoreCase : Bool;
	var intermediateChanges : Bool;
	var invalidMessage : String;
	var item : Dynamic;
	var labelAttr : Dynamic;
	var labelType : String;
	var lang : String;
	var lowercase : Bool;
	var maxHeight : Float;
	var maxLength : String;
	var message : String;
	var missingMessage : String;
	var name : String;
	var ownerDocument : Dynamic;
	var pageSize : Float;
	var pattern : String;
	var placeHolder : String;
	var promptMessage : String;
	var propercase : Bool;
	var query : Dynamic;
	var queryExpr : String;
	var readOnly : Bool;
	var regExp : String;
	var required : Bool;
	var scrollOnFocus : Bool;
	var searchAttr : String;
	var searchContainerNode : Bool;
	var searchDelay : Float;
	var selectOnClick : Bool;
	var srcNodeRef : HTMLElement;
	var state : String;
	var store : Dynamic;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var tooltipPosition : Dynamic;
	var trim : Bool;
	var type : String;
	var uppercase : Bool;
	var value : String;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function closeDropDown(focus:Bool):Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
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
	function displayMessage(message:String):Void;
	function doHighlight(label:String, find:String):Dynamic;
	function dropDownClass():Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function filter(val:Dynamic):Dynamic;
	function focus():Void;
	function format(value:String, constraints:Dynamic):String;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getDisplayedValue():Dynamic;
	function getErrorMessage(isFocused:Bool):Dynamic;
	function getParent():Dynamic;
	function getPromptMessage(isFocused:Bool):Dynamic;
	function getValue():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function isLoaded():Bool;
	var isValid : { };
	function loadAndOpenDropDown():Dynamic;
	function loadDropDown(loadCallback:haxe.Constraints.Function):Void;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function openDropDown():Dynamic;
	function own():Dynamic;
	function parse(value:String, constraints:Dynamic):String;
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	function postCreate():Void;
	function postMixInProperties():Void;
	function regExpGen(constraints:Dynamic):Void;
	function reset():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setDisplayedValue(value:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toggleDropDown():Void;
	function toString():String;
	function undo():Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validate(isFocused:Bool):Dynamic;
	function validator(value:Dynamic, constraints:Dynamic):Dynamic;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onInput(event:Dynamic):Void;
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
	function onSearch(results:Dynamic, query:Dynamic, options:Dynamic):Void;
	function onShow():Void;
}
extern class Uploader extends dojox.form.uploader._Base {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:ContextRequire, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:DeferredUploading, value:Float):Void { })
	@:overload(function(property:DevMode, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:ErrMsg, value:String):Void { })
	@:overload(function(property:FlashFieldName, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FocusedClass, value:String):Void { })
	@:overload(function(property:Force, value:String):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:IconClass, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:IsDebug, value:Bool):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Multiple, value:Bool):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PreventCache, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:ServerTimeout, value:Float):Void { })
	@:overload(function(property:ShowInput, value:String):Void { })
	@:overload(function(property:ShowLabel, value:Bool):Void { })
	@:overload(function(property:SkipServerCheck, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:SwfPath, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:UploadOnSelect, value:Bool):Void { })
	@:overload(function(property:UploadType, value:String):Void { })
	@:overload(function(property:Url, value:String):Void { })
	@:overload(function(property:Value, value:String):Void { })
	@:overload(function(property:WidgetsInTemplate, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:ContextRequire):haxe.Constraints.Function { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:DeferredUploading):Float { })
	@:overload(function(property:DevMode):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:ErrMsg):String { })
	@:overload(function(property:FlashFieldName):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FocusedClass):String { })
	@:overload(function(property:Force):String { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:IconClass):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:IsDebug):Bool { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Multiple):Bool { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PreventCache):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:ServerTimeout):Float { })
	@:overload(function(property:ShowInput):String { })
	@:overload(function(property:ShowLabel):Bool { })
	@:overload(function(property:SkipServerCheck):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:SwfPath):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:UploadOnSelect):Bool { })
	@:overload(function(property:UploadType):String { })
	@:overload(function(property:Url):String { })
	@:overload(function(property:Value):String { })
	@:overload(function(property:WidgetsInTemplate):Bool { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContextRequire, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DeferredUploading, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DevMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrMsg, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FlashFieldName, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FocusedClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Force, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsDebug, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Multiple, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PreventCache, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ServerTimeout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowInput, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowLabel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SkipServerCheck, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SwfPath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UploadOnSelect, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UploadType, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Url, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:WidgetsInTemplate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var contextRequire : haxe.Constraints.Function;
	var cssStateNodes : Dynamic;
	var deferredUploading : Float;
	var devMode : Dynamic;
	var dir : String;
	var disabled : Bool;
	var domNode : HTMLElement;
	var errMsg : String;
	var flashFieldName : String;
	var focused : Bool;
	var focusedClass : String;
	var force : String;
	var hovering : Bool;
	var iconClass : String;
	var id : String;
	var intermediateChanges : Bool;
	var isDebug : Bool;
	var label : String;
	var lang : String;
	var multiple : Bool;
	var name : String;
	var observer : String;
	var ownerDocument : Dynamic;
	var preventCache : Bool;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var serverTimeout : Float;
	var showInput : String;
	var showLabel : Bool;
	var skipServerCheck : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var swfPath : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var uploadOnSelect : Bool;
	var uploadType : String;
	var url : String;
	var value : String;
	var widgetsInTemplate : Bool;
	function addDropTarget(node:Dynamic, onlyConnectDrop:Bool):Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function compare(val1:Dynamic, val2:Dynamic):Float;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function connectForm():Void;
	function convertBytes(bytes:Dynamic):Dynamic;
	function create():Void;
	function createXhr():Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function flashReset():Void;
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getFileList():Array<Dynamic>;
	function getFileType(name:String):Dynamic;
	function getFlashFileList():Dynamic;
	function getForm():HTMLElement;
	function getMimeType():String;
	function getParent():Dynamic;
	function getUrl():Dynamic;
	function getValue():Dynamic;
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
	function reset():Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setLabel(content:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function submit(form:HTMLFormElement):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function supports(what:Dynamic):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function upload(formData:Dynamic):Void;
	function uploadIFrame(data:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onAbort():Void;
	function onBegin(dataArray:Array<Dynamic>):Void;
	function onBlur():Void;
	function onCancel():Void;
	function onChange(fileArray:Array<Dynamic>):Void;
	function onClick(event:Event):Bool;
	function onClose():Bool;
	function onComplete(customEvent:Dynamic):Void;
	function onDblClick(event:Dynamic):Void;
	@:overload(function(evtObject:String):Void { })
	function onError(evtObject:Dynamic):Void;
	function onFileChange(fileArray:Dynamic):Void;
	function onFileProgress(fileArray:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onLoad(uploader:dojox.form.FileUploader):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onProgress(customEvent:Dynamic):Void;
	function onReady(uploader:dojox.form.FileUploader):Void;
	function onShow():Void;
}
extern class YearTextBox extends dojox.form.DateTextBox {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoWidth, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Constraints, value:Dynamic):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:DatePackage, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DisplayedValue, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DropDown, value:Dynamic):Void { })
	@:overload(function(property:DropDownDefaultValue, value:Date):Void { })
	@:overload(function(property:DropDownPosition, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:ForceWidth, value:Bool):Void { })
	@:overload(function(property:HasDownArrow, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:InvalidMessage, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Lowercase, value:Bool):Void { })
	@:overload(function(property:MaxHeight, value:Float):Void { })
	@:overload(function(property:MaxLength, value:String):Void { })
	@:overload(function(property:Message, value:String):Void { })
	@:overload(function(property:MissingMessage, value:String):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PlaceHolder, value:String):Void { })
	@:overload(function(property:PromptMessage, value:String):Void { })
	@:overload(function(property:Propercase, value:Bool):Void { })
	@:overload(function(property:RangeMessage, value:String):Void { })
	@:overload(function(property:ReadOnly, value:Bool):Void { })
	@:overload(function(property:js.RegExp, value:String):Void { })
	@:overload(function(property:Required, value:Bool):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectOnClick, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:State, value:String):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TooltipPosition, value:Dynamic):Void { })
	@:overload(function(property:Trim, value:Bool):Void { })
	@:overload(function(property:Type, value:String):Void { })
	@:overload(function(property:Uppercase, value:Bool):Void { })
	@:overload(function(property:Value, value:Date):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:Alt):String { })
	@:overload(function(property:Aria-label):String { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoWidth):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Constraints):Dynamic { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:DatePackage):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DisplayedValue):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DropDown):Dynamic { })
	@:overload(function(property:DropDownDefaultValue):Date { })
	@:overload(function(property:DropDownPosition):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:ForceWidth):Bool { })
	@:overload(function(property:HasDownArrow):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:InvalidMessage):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Lowercase):Bool { })
	@:overload(function(property:MaxHeight):Float { })
	@:overload(function(property:MaxLength):String { })
	@:overload(function(property:Message):String { })
	@:overload(function(property:MissingMessage):String { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PlaceHolder):String { })
	@:overload(function(property:PromptMessage):String { })
	@:overload(function(property:Propercase):Bool { })
	@:overload(function(property:RangeMessage):String { })
	@:overload(function(property:ReadOnly):Bool { })
	@:overload(function(property:js.RegExp):String { })
	@:overload(function(property:Required):Bool { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectOnClick):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:State):String { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TooltipPosition):Dynamic { })
	@:overload(function(property:Trim):Bool { })
	@:overload(function(property:Type):String { })
	@:overload(function(property:Uppercase):Bool { })
	@:overload(function(property:Value):Date { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:Alt, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Aria-label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Constraints, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DatePackage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisplayedValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDown, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDownDefaultValue, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDownPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ForceWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HasDownArrow, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InvalidMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lowercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxLength, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Message, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MissingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceHolder, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PromptMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Propercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RangeMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ReadOnly, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:js.RegExp, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Required, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectOnClick, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:State, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TooltipPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Trim, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Type, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Uppercase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Value, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var alt : String;
	var aria-label : String;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoWidth : Bool;
	var baseClass : String;
	var class : String;
	var constraints : Dynamic;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var datePackage : String;
	var dir : String;
	var disabled : Bool;
	var displayedValue : String;
	var domNode : HTMLElement;
	var dropDown : Dynamic;
	var dropDownDefaultValue : Date;
	var dropDownPosition : Dynamic;
	var focused : Bool;
	var forceWidth : Bool;
	var hasDownArrow : Bool;
	var hovering : Bool;
	var id : String;
	var intermediateChanges : Bool;
	var invalidMessage : String;
	var lang : String;
	var lowercase : Bool;
	var maxHeight : Float;
	var maxLength : String;
	var message : String;
	var missingMessage : String;
	var name : String;
	var ownerDocument : Dynamic;
	var placeHolder : String;
	var promptMessage : String;
	var propercase : Bool;
	var rangeMessage : String;
	var readOnly : Bool;
	var regExp : String;
	var required : Bool;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var selectOnClick : Bool;
	var srcNodeRef : HTMLElement;
	var state : String;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var tooltipPosition : Dynamic;
	var trim : Bool;
	var type : String;
	var uppercase : Bool;
	var value : Date;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function closeDropDown(focus:Bool):Void;
	function compare(val1:Date, val2:Date):Dynamic;
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
	function displayMessage(message:String):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function filter(val:Dynamic):Dynamic;
	function focus():Void;
	function format(value:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getDisplayedValue():Dynamic;
	function getErrorMessage(isFocused:Bool):Dynamic;
	function getParent():Dynamic;
	function getPromptMessage(isFocused:Bool):Dynamic;
	function getValue():Dynamic;
	function isFocusable():Dynamic;
	function isInRange(isFocused:Bool):Dynamic;
	function isLeftToRight():Dynamic;
	function isLoaded():Bool;
	var isValid : { };
	function loadAndOpenDropDown():Dynamic;
	function loadDropDown(loadCallback:haxe.Constraints.Function):Void;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function openDropDown():Void;
	function own():Dynamic;
	function parse(value:String, constraints:dojo.date.locale.__FormatOptions):String;
	var pattern : { };
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	var popupClass : { };
	function postCreate():Void;
	function postMixInProperties():Void;
	function rangeCheck(primitive:Float, constraints:dijit.form.RangeBoundTextBox.__Constraints):Bool;
	function regExpGen(constraints:Dynamic):Void;
	function reset():Void;
	function serialize(val:Dynamic, options:Dynamic):Dynamic;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setDisplayedValue(value:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toggleDropDown():Void;
	function toString():String;
	function undo():Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validate():Dynamic;
	function validator(value:Dynamic):Bool;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onInput(event:Dynamic):Void;
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
