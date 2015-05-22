extern class _MonthDropDown extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:Months, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:Months):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Months, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var months : Dynamic;
	var ownerDocument : Dynamic;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
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
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(month:Float):Void;
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
extern class _MonthDropDownButton extends dijit.form.DropDownButton {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:Alt, value:String):Void { })
	@:overload(function(property:Aria-label, value:String):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoWidth, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:DropDown, value:Dynamic):Void { })
	@:overload(function(property:DropDownPosition, value:Dynamic):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:ForceWidth, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:IconClass, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IntermediateChanges, value:Bool):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MaxHeight, value:Float):Void { })
	@:overload(function(property:Name, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ScrollOnFocus, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:ShowLabel, value:Bool):Void { })
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
	@:overload(function(property:AutoWidth):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:DropDown):Dynamic { })
	@:overload(function(property:DropDownPosition):Dynamic { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:ForceWidth):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:IconClass):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IntermediateChanges):Bool { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MaxHeight):Float { })
	@:overload(function(property:Name):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ScrollOnFocus):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:ShowLabel):Bool { })
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
	@:overload(function(property:AutoWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDown, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DropDownPosition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ForceWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IntermediateChanges, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollOnFocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShowLabel, callback:{ }):{ function unwatch():Void; } { })
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
	var autoWidth : Bool;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var dir : String;
	var disabled : Bool;
	var domNode : HTMLElement;
	var dropDown : Dynamic;
	var dropDownPosition : Dynamic;
	var focused : Bool;
	var forceWidth : Bool;
	var hovering : Bool;
	var iconClass : String;
	var id : String;
	var intermediateChanges : Bool;
	var label : String;
	var lang : String;
	var maxHeight : Float;
	var name : String;
	var ownerDocument : Dynamic;
	var scrollOnFocus : Bool;
	var searchContainerNode : Bool;
	var showLabel : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var type : String;
	var value : String;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
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
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getParent():Dynamic;
	function getValue():Dynamic;
	function hasChildren():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function isLoaded():Bool;
	function loadAndOpenDropDown():Dynamic;
	function loadDropDown(callback:haxe.Constraints.Function):Void;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function openDropDown():Dynamic;
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
	function setDisabled(disabled:Bool):Void;
	function setLabel(content:String):Void;
	function setValue(value:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toggleDropDown():Void;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(newValue:Dynamic):Void;
	function onClick(event:Dynamic):Bool;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onMonthSelect():Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onShow():Void;
}
extern class CheckedMenuItem extends dijit.MenuItem {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var accelKey : String;
	@:overload(function(property:Active, value:Bool):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Checked, value:Bool):Void { })
	@:overload(function(property:CheckedChar, value:String):Void { })
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
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:Role, value:String):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:ShortcutKey, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AccelKey, value:String):Void;
	@:overload(function(property:Active):Bool { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Checked):Bool { })
	@:overload(function(property:CheckedChar):String { })
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
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:Role):String { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:ShortcutKey):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AccelKey):String;
	@:overload(function(property:Active, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Checked, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CheckedChar, callback:{ }):{ function unwatch():Void; } { })
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
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Role, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ShortcutKey, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AccelKey, callback:{ }):{ function unwatch():Void; };
	var active : Bool;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var baseClass : String;
	var checked : Bool;
	var checkedChar : String;
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
	var label : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var role : String;
	var searchContainerNode : Bool;
	var shortcutKey : String;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
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
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
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
	function setDisabled(disabled:Bool):Void;
	function setLabel(content:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onChange(checked:Bool):Void;
	function onClick():Void;
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
extern class DialogUnderlay extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DialogId, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DialogId):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DialogId, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var containerNode : HTMLElement;
	var dialogId : String;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
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
	function destroy():Void;
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getParent():Dynamic;
	function hide():Void;
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
	@:overload(function(attrs:Dynamic, zIndex:Float):Void { })
	function show():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function getCachedTemplate():Dynamic;
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
extern class _ConfirmDialogMixin extends dijit._WidgetsInTemplateMixin {
	function new():Void;
	var actionBarTemplate : Dynamic;
	var buttonCancel : String;
	var buttonOk : String;
	var contextRequire : haxe.Constraints.Function;
	var widgetsInTemplate : Bool;
	function startup():Void;
}
extern class ConfirmDialog extends dijit.Dialog {
	function new(params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var okButton : dijit.form.Button;
	var cancelButon : dijit.form.Button;
	var actionBarTemplate : String;
	@:overload(function(property:Active, value:Bool):Void { })
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:Autofocus, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:ButtonCancel, value:String):Void { })
	@:overload(function(property:ButtonOk, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Closable, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Content, value:String):Void { })
	@:overload(function(property:ContextRequire, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DoLayout, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Draggable, value:Bool):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:ErrorMessage, value:String):Void { })
	@:overload(function(property:ExtractContent, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IoArgs, value:Dynamic):Void { })
	@:overload(function(property:IsLayoutContainer, value:Bool):Void { })
	@:overload(function(property:IsLoaded, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LoadingMessage, value:String):Void { })
	@:overload(function(property:MaxRatio, value:Float):Void { })
	@:overload(function(property:OnLoadDeferred, value:Dynamic):Void { })
	@:overload(function(property:Open, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParseOnLoad, value:Bool):Void { })
	@:overload(function(property:ParserScope, value:String):Void { })
	@:overload(function(property:Preload, value:Bool):Void { })
	@:overload(function(property:PreventCache, value:Bool):Void { })
	@:overload(function(property:Refocus, value:Bool):Void { })
	@:overload(function(property:RefreshOnShow, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:State, value:String):Void { })
	@:overload(function(property:StopParser, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:WidgetsInTemplate, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:ActionBarTemplate, value:String):Void;
	@:overload(function(property:Active):Bool { })
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:Autofocus):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:ButtonCancel):String { })
	@:overload(function(property:ButtonOk):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Closable):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Content):String { })
	@:overload(function(property:ContextRequire):haxe.Constraints.Function { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DoLayout):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Draggable):Bool { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:ErrorMessage):String { })
	@:overload(function(property:ExtractContent):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IoArgs):Dynamic { })
	@:overload(function(property:IsLayoutContainer):Bool { })
	@:overload(function(property:IsLoaded):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LoadingMessage):String { })
	@:overload(function(property:MaxRatio):Float { })
	@:overload(function(property:OnLoadDeferred):Dynamic { })
	@:overload(function(property:Open):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParseOnLoad):Bool { })
	@:overload(function(property:ParserScope):String { })
	@:overload(function(property:Preload):Bool { })
	@:overload(function(property:PreventCache):Bool { })
	@:overload(function(property:Refocus):Bool { })
	@:overload(function(property:RefreshOnShow):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:State):String { })
	@:overload(function(property:StopParser):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:WidgetsInTemplate):Bool { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:ActionBarTemplate):String;
	@:overload(function(property:Active, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Autofocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ButtonCancel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ButtonOk, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Closable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Content, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContextRequire, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Draggable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrorMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExtractContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IoArgs, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLayoutContainer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLoaded, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LoadingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxRatio, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OnLoadDeferred, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Open, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParseOnLoad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParserScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Preload, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PreventCache, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Refocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RefreshOnShow, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:State, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StopParser, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:WidgetsInTemplate, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:ActionBarTemplate, callback:{ }):{ function unwatch():Void; };
	var active : Bool;
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autofocus : Bool;
	var baseClass : String;
	var buttonCancel : String;
	var buttonOk : String;
	var class : String;
	var closable : Bool;
	var containerNode : HTMLElement;
	var content : String;
	var contextRequire : haxe.Constraints.Function;
	var cssStateNodes : Dynamic;
	var dir : String;
	var doLayout : Bool;
	var domNode : HTMLElement;
	var draggable : Bool;
	var duration : Float;
	var errorMessage : String;
	var extractContent : Bool;
	var focused : Bool;
	var hovering : Bool;
	var href : String;
	var id : String;
	var ioArgs : Dynamic;
	var isLayoutContainer : Bool;
	var isLoaded : Bool;
	var lang : String;
	var loadingMessage : String;
	var maxRatio : Float;
	var onLoadDeferred : Dynamic;
	var open : Bool;
	var ownerDocument : Dynamic;
	var parseOnLoad : Bool;
	var parserScope : String;
	var preload : Bool;
	var preventCache : Bool;
	var refocus : Bool;
	var refreshOnShow : Bool;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var state : String;
	var stopParser : Bool;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var widgetsInTemplate : Bool;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function cancel():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function connectChildren(inStartup:Bool):Void;
	function create(params:Dynamic, srcNodeRef:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function disconnectChildren():Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function execute(formContents:Dynamic):Void;
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getParent():Dynamic;
	function getValues():Dynamic;
	function hasChildren():Bool;
	function hide():Dynamic;
	function ioMethod(args:Dynamic):Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	var isValid : { };
	function markupFactory(params:Dynamic, node:Dynamic, ctor:Dynamic):Dynamic;
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
	function refresh():Dynamic;
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
	function reset():Void;
	function resize(changeSize:Dynamic, resultSize:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	@:overload(function(data:HTMLElement):Void { })
	@:overload(function(data:NodeList):Void { })
	function setContent(data:String):Void;
	@:overload(function(href:URL):Dynamic { })
	function setHref(href:String):Dynamic;
	function setValues(val:Dynamic):Dynamic;
	function show():Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validate():Dynamic;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onCancel():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onContentError(error:Error):Void;
	function onDblClick(event:Dynamic):Void;
	function onDownloadEnd():Void;
	function onDownloadError(error:Error):Dynamic;
	function onDownloadStart():Dynamic;
	function onExecute():Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onLoad(data:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onShow():Void;
	function onUnload():Void;
	function onValidStateChange(isValid:Bool):Void;
}
extern class Dialog extends dijit.layout.ContentPane {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:Autofocus, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Closable, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Content, value:String):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DoLayout, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Draggable, value:Bool):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:ErrorMessage, value:String):Void { })
	@:overload(function(property:ExtractContent, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:IoArgs, value:Dynamic):Void { })
	@:overload(function(property:IsLayoutContainer, value:Bool):Void { })
	@:overload(function(property:IsLoaded, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LoadingMessage, value:String):Void { })
	@:overload(function(property:MaxRatio, value:Float):Void { })
	@:overload(function(property:OnLoadDeferred, value:Dynamic):Void { })
	@:overload(function(property:Open, value:Bool):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParseOnLoad, value:Bool):Void { })
	@:overload(function(property:ParserScope, value:String):Void { })
	@:overload(function(property:Preload, value:Bool):Void { })
	@:overload(function(property:PreventCache, value:Bool):Void { })
	@:overload(function(property:Refocus, value:Bool):Void { })
	@:overload(function(property:RefreshOnShow, value:Bool):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:State, value:String):Void { })
	@:overload(function(property:StopParser, value:Bool):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:Autofocus):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Closable):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Content):String { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DoLayout):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Draggable):Bool { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:ErrorMessage):String { })
	@:overload(function(property:ExtractContent):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:IoArgs):Dynamic { })
	@:overload(function(property:IsLayoutContainer):Bool { })
	@:overload(function(property:IsLoaded):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LoadingMessage):String { })
	@:overload(function(property:MaxRatio):Float { })
	@:overload(function(property:OnLoadDeferred):Dynamic { })
	@:overload(function(property:Open):Bool { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParseOnLoad):Bool { })
	@:overload(function(property:ParserScope):String { })
	@:overload(function(property:Preload):Bool { })
	@:overload(function(property:PreventCache):Bool { })
	@:overload(function(property:Refocus):Bool { })
	@:overload(function(property:RefreshOnShow):Bool { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:State):String { })
	@:overload(function(property:StopParser):Bool { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Autofocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Closable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Content, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DoLayout, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Draggable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrorMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExtractContent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IoArgs, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLayoutContainer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLoaded, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LoadingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MaxRatio, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OnLoadDeferred, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Open, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParseOnLoad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParserScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Preload, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PreventCache, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Refocus, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RefreshOnShow, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:State, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StopParser, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autofocus : Bool;
	var baseClass : String;
	var class : String;
	var closable : Bool;
	var containerNode : HTMLElement;
	var content : String;
	var cssStateNodes : Dynamic;
	var dir : String;
	var doLayout : Bool;
	var domNode : HTMLElement;
	var draggable : Bool;
	var duration : Float;
	var errorMessage : String;
	var extractContent : Bool;
	var focused : Bool;
	var hovering : Bool;
	var href : String;
	var id : String;
	var ioArgs : Dynamic;
	var isLayoutContainer : Bool;
	var isLoaded : Bool;
	var lang : String;
	var loadingMessage : String;
	var maxRatio : Float;
	var onLoadDeferred : Dynamic;
	var open : Bool;
	var ownerDocument : Dynamic;
	var parseOnLoad : Bool;
	var parserScope : String;
	var preload : Bool;
	var preventCache : Bool;
	var refocus : Bool;
	var refreshOnShow : Bool;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var state : String;
	var stopParser : Bool;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function cancel():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function connectChildren(inStartup:Bool):Void;
	function create(params:Dynamic, srcNodeRef:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(?preserveDom:Bool):Void;
	function destroyRecursive(?preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function disconnectChildren():Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function execute(formContents:Dynamic):Void;
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getParent():Dynamic;
	function getValues():Dynamic;
	function hasChildren():Bool;
	function hide():Dynamic;
	function ioMethod(args:Dynamic):Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	var isValid : { };
	function markupFactory(params:Dynamic, node:Dynamic, ctor:Dynamic):Dynamic;
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
	function refresh():Dynamic;
	@:overload(function(widget:Float):Void { })
	function removeChild(widget:dijit._WidgetBase):Void;
	function reset():Void;
	function resize(changeSize:Dynamic, resultSize:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	@:overload(function(data:HTMLElement):Void { })
	@:overload(function(data:NodeList):Void { })
	function setContent(data:String):Void;
	@:overload(function(href:URL):Dynamic { })
	function setHref(href:String):Dynamic;
	function setValues(val:Dynamic):Dynamic;
	function show():Dynamic;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function validate():Dynamic;
	function getCachedTemplate():Dynamic;
	function onBlur():Void;
	function onCancel():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onContentError(error:Error):Void;
	function onDblClick(event:Dynamic):Void;
	function onDownloadEnd():Void;
	function onDownloadError(error:Error):Dynamic;
	function onDownloadStart():Dynamic;
	function onExecute():Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onLoad(data:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onShow():Void;
	function onUnload():Void;
	function onValidStateChange(isValid:Bool):Void;
}
