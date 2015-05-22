extern class _ComboBoxMenu extends dijit._WidgetBase {
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
	@:overload(function(property:Selected, value:HTMLElement):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
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
	@:overload(function(property:Selected):HTMLElement { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
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
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
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
	var selected : HTMLElement;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	function buildRendering():Void;
	function clearResultList():Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createOptions(results:Dynamic, options:Dynamic, labelFunc:Dynamic):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering():Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getHighlightedOption():Dynamic;
	function getParent():Dynamic;
	function highlightFirstOption():Void;
	function highlightLastOption():Void;
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
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onChange(direction:Float):Void;
	function onClick(node:HTMLElement):Void;
	function onClose():Void;
	function onDeselect(node:HTMLElement):Void;
	function onFocus():Void;
	function onOpen():Void;
	function onPage(direction:Float):Void;
	function onSelect(node:HTMLElement):Void;
}
extern class _ContentPaneMixin extends dojox.mobile._ExecScriptMixin {
	function new():Void;
	var content : String;
	var executeScripts : Bool;
	var href : String;
	var lazy : String;
	var parseOnLoad : Bool;
	var prog : Bool;
	function errorHandler(err:Dynamic):Void;
	function execScript(html:String):Dynamic;
	function load():Void;
	function loadHandler(response:String):Void;
	function onLoad():Bool;
}
extern class _DataMixin {
	function new():Void;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var store : Dynamic;
	function refresh():Dynamic;
	@:overload(function(query:Dynamic, queryOptions:Dynamic):Dynamic { })
	function setQuery(query:dojo.data.api.Request, queryOptions:Dynamic):Dynamic;
	@:overload(function(store:dojo.data.api.Read, query:Dynamic, queryOptions:Dynamic):Dynamic { })
	function setStore(store:dojo.data.api.Read, query:dojo.data.api.Request, queryOptions:Dynamic):Dynamic;
}
extern class _DataListMixin extends dojox.mobile._DataMixin {
	function new():Void;
	var append : Bool;
	var itemMap : Dynamic;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var store : Dynamic;
	function buildRendering():Void;
	function createListItem(item:Dynamic):Dynamic;
	function generateList(items:Array<Dynamic>, dataObject:Dynamic):Void;
	function itemRenderer():Void;
	function refresh():Dynamic;
	@:overload(function(query:Dynamic, queryOptions:Dynamic):Dynamic { })
	function setQuery(query:dojo.data.api.Request, queryOptions:Dynamic):Dynamic;
	@:overload(function(store:dojo.data.api.Read, query:Dynamic, queryOptions:Dynamic):Dynamic { })
	function setStore(store:dojo.data.api.Read, query:dojo.data.api.Request, queryOptions:Dynamic):Dynamic;
	function onComplete(items:Array<Dynamic>, request:Dynamic):Void;
	function onDelete(deletedItem:Dynamic):Void;
	function onError(errorData:Dynamic, request:Dynamic):Void;
	function onNew(newItem:Dynamic, parentInfo:Dynamic):Void;
	@:overload(function(item:Dynamic, attribute:String, oldValue:Array<Dynamic>, newValue:Dynamic):Void { })
	@:overload(function(item:Dynamic, attribute:String, oldValue:Dynamic, newValue:Array<Dynamic>):Void { })
	@:overload(function(item:Dynamic, attribute:String, oldValue:Array<Dynamic>, newValue:Array<Dynamic>):Void { })
	function onSet(item:Dynamic, attribute:String, oldValue:Dynamic, newValue:Dynamic):Void;
	function onStoreClose(request:Dynamic):Void;
}
extern class _DatePickerMixin {
	function new():Void;
	var dayPattern : String;
	var monthPattern : String;
	var value : String;
	var yearPattern : String;
	function initSlots():Void;
	function reorderSlots():Void;
	function reset():Void;
	function onDaySet():Void;
	function onMonthSet():Void;
	function onYearSet():Void;
}
extern class _EditableIconMixin {
	function new():Void;
	var deleteIconForEdit : String;
	var threshold : Float;
	function deleteIconClicked(e:Event):Void;
	function deleteItem(item:dijit._WidgetBase):Void;
	function destroy():Void;
	function endEdit():Void;
	@:overload(function(widget:Float, insertIndex:Float):Void { })
	function moveChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
	@:overload(function(widget:Float, insertIndex:Float):Void { })
	function moveChildWithAnimation(widget:dijit._WidgetBase, insertIndex:Float):Void;
	@:overload(function(widget:Float):Void { })
	function removeChildWithAnimation(widget:dijit._WidgetBase):Void;
	function scaleItem(widget:dijit._WidgetBase, ratio:Float):Void;
	function startEdit():Void;
	function onDeleteItem(item:dijit._WidgetBase):Void;
	function onEndEdit():Void;
	function onMoveItem(item:dijit._WidgetBase, from:Float, to:Float):Void;
	function onStartEdit():Void;
}
extern class _ExecScriptMixin {
	function new():Void;
	function execScript(html:String):Dynamic;
}
extern class _EditableListMixin {
	function new():Void;
	var deleteIconForEdit : String;
	var isEditing : Bool;
	var rightIconForEdit : String;
	function destroy():Void;
	function endEdit():Void;
	function startEdit():Void;
	function onClick(e:Event):Void;
	function onDeleteItem(item:dijit._WidgetBase):Void;
	function onEndEdit():Void;
	function onMoveItem(item:dijit._WidgetBase, from:Float, to:Float):Void;
	function onStartEdit():Void;
}
extern class _IconItemPane extends dojox.mobile.Pane {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:CloseIcon, value:String):Void { })
	@:overload(function(property:CloseIconRole, value:String):Void { })
	@:overload(function(property:CloseIconTitle, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:CloseIcon):String { })
	@:overload(function(property:CloseIconRole):String { })
	@:overload(function(property:CloseIconTitle):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CloseIcon, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CloseIconRole, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CloseIconTitle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var closeIcon : String;
	var closeIconRole : String;
	var closeIconTitle : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var iconPos : String;
	var id : String;
	var label : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
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
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function hide():Void;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function isOpen(e:Dynamic):Bool;
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
	function resize():Void;
	function show():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onFocus():Void;
}
extern class _ListTouchMixin extends dijit.form._ListBase {
	function new():Void;
	var selected : HTMLElement;
	function postCreate():Void;
	function selectFirstNode():Void;
	function selectLastNode():Void;
	function selectNextNode():Void;
	function selectPreviousNode():Void;
}
extern class _ItemBase extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var alt : String;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:Back, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Callback, value:haxe.Constraints.Function):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Clickable, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Href, value:String):Void { })
	@:overload(function(property:HrefTarget, value:String):Void { })
	@:overload(function(property:Icon, value:String):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Label, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MoveTo, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:ParamsToInherit, value:String):Void { })
	@:overload(function(property:Scene, value:String):Void { })
	@:overload(function(property:Selected, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TabIndex, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Toggle, value:Bool):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Transition, value:String):Void { })
	@:overload(function(property:TransitionDir, value:Float):Void { })
	@:overload(function(property:TransitionOptions, value:Dynamic):Void { })
	@:overload(function(property:Url, value:String):Void { })
	@:overload(function(property:UrlTarget, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Alt, value:String):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:Back):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Callback):haxe.Constraints.Function { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Clickable):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Href):String { })
	@:overload(function(property:HrefTarget):String { })
	@:overload(function(property:Icon):String { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Label):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MoveTo):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:ParamsToInherit):String { })
	@:overload(function(property:Scene):String { })
	@:overload(function(property:Selected):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TabIndex):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Toggle):Bool { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Transition):String { })
	@:overload(function(property:TransitionDir):Float { })
	@:overload(function(property:TransitionOptions):Dynamic { })
	@:overload(function(property:Url):String { })
	@:overload(function(property:UrlTarget):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Alt):String;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Back, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Callback, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Clickable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Href, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HrefTarget, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Icon, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Label, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MoveTo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ParamsToInherit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Scene, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selected, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TabIndex, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Toggle, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Transition, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TransitionDir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TransitionOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Url, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UrlTarget, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Alt, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var back : Bool;
	var baseClass : String;
	var callback : haxe.Constraints.Function;
	var class : String;
	var clickable : Bool;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var href : String;
	var hrefTarget : String;
	var icon : String;
	var iconPos : String;
	var id : String;
	var label : String;
	var lang : String;
	var moveTo : String;
	var ownerDocument : Dynamic;
	var paramsToInherit : String;
	var scene : String;
	var selected : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var tabIndex : String;
	var title : String;
	var toggle : Bool;
	var tooltip : String;
	var transition : String;
	var transitionDir : Float;
	var transitionOptions : Dynamic;
	var url : String;
	var urlTarget : String;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
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
	function defaultClickAction(e:Event):Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function getChildren():Array<Dynamic>;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function getTransOpts():String;
	function handleSelection(e:Event):Void;
	function hasChildren():Bool;
	function inheritParams():Bool;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function makeTransition(e:Event):Void;
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
	function setTransitionPos(e:Dynamic):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	@:overload(function(moveTo:Dynamic, href:String, url:String, scene:String):Void { })
	function transitionTo(moveTo:String, href:String, url:String, scene:String):Void;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function userClickAction(e:Event):Void;
	function onBlur():Void;
	function onFocus():Void;
	function onTouchStart(e:Event):Void;
}
extern class _PickerBase extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attributeMap : Dynamic;
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:Colors, value:Array<Dynamic>):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SlotClasses, value:Array<Dynamic>):Void { })
	@:overload(function(property:SlotOrder, value:Array<Dynamic>):Void { })
	@:overload(function(property:SlotProps, value:Array<Dynamic>):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Values, value:Array<Dynamic>):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttributeMap, value:Dynamic):Void;
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:Colors):Array<Dynamic> { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SlotClasses):Array<Dynamic> { })
	@:overload(function(property:SlotOrder):Array<Dynamic> { })
	@:overload(function(property:SlotProps):Array<Dynamic> { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Values):Array<Dynamic> { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttributeMap):Dynamic;
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Colors, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SlotClasses, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SlotOrder, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SlotProps, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Values, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttributeMap, callback:{ }):{ function unwatch():Void; };
	var baseClass : String;
	var class : String;
	var colors : Array<Dynamic>;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var focused : Bool;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var slotClasses : Array<Dynamic>;
	var slotOrder : Array<Dynamic>;
	var slotProps : Array<Dynamic>;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	var values : Array<Dynamic>;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
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
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function getSlots():Dynamic;
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
	function reset():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onFocus():Void;
}
extern class _StoreListMixin extends dojox.mobile._StoreMixin {
	function new():Void;
	var append : Bool;
	var childrenProperty : String;
	var itemMap : Dynamic;
	var labelProperty : String;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var store : Dynamic;
	function buildRendering():Void;
	function createListItem(item:Dynamic):Dynamic;
	function destroy():Void;
	function generateList(items:Array<Dynamic>):Void;
	function itemRenderer():Void;
	function refresh():Dynamic;
	function setQuery(query:String, queryOptions:Dynamic):Dynamic;
	function setStore(store:dojo.store.api.Store, query:String, queryOptions:Dynamic):Dynamic;
	function onAdd(item:Dynamic, insertedInto:Float):Void;
	function onComplete(items:Array<Dynamic>):Void;
	function onDelete(item:Dynamic, removedFrom:Float):Void;
	function onError(errorData:Dynamic):Void;
	function onUpdate(item:Dynamic, insertedInto:Float):Void;
}
extern class _ScrollableMixin extends dojox.mobile.Scrollable {
	function new():Void;
	var allowNestedScrolls : Bool;
	var appBars : Bool;
	var constraint : Bool;
	var dirLock : Bool;
	var disableFlashScrollBar : Bool;
	var fadeScrollBar : Bool;
	var fixedFooter : String;
	var fixedFooterHeight : Float;
	var fixedHeader : String;
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
	function resetScrollBar():Void;
	function resize(e:Dynamic):Void;
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
extern class _StoreMixin {
	function new():Void;
	var childrenProperty : String;
	var labelProperty : String;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var store : Dynamic;
	function destroy():Void;
	function refresh():Dynamic;
	function setQuery(query:String, queryOptions:Dynamic):Dynamic;
	function setStore(store:dojo.store.api.Store, query:String, queryOptions:Dynamic):Dynamic;
	function onAdd(item:Dynamic, insertedInto:Dynamic):Void;
	function onComplete(items:Dynamic):Void;
	function onDelete(item:Dynamic, removedFrom:Dynamic):Void;
	function onError(errorData:Dynamic):Void;
	function onUpdate(item:Dynamic, insertedInto:Dynamic):Void;
}
extern class _TimePickerMixin {
	function new():Void;
	var date : Date;
	function reset():Void;
}
extern class Accordion extends dijit._WidgetBase {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var animation : Bool;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:ChildWidgetProperties, value:Dynamic):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Duration, value:Float):Void { })
	@:overload(function(property:FixedHeight, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:IconBase, value:String):Void { })
	@:overload(function(property:IconPos, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:RoundRect, value:Bool):Void { })
	@:overload(function(property:SingleOpen, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Animation, value:Bool):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:ChildWidgetProperties):Dynamic { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Duration):Float { })
	@:overload(function(property:FixedHeight):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:IconBase):String { })
	@:overload(function(property:IconPos):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:RoundRect):Bool { })
	@:overload(function(property:SingleOpen):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Animation):Bool;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ChildWidgetProperties, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Duration, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FixedHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconBase, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IconPos, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RoundRect, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SingleOpen, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Animation, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var ChildWidgetProperties : Dynamic;
	var class : String;
	var containerNode : HTMLElement;
	var dir : String;
	var domNode : HTMLElement;
	var duration : Float;
	var fixedHeight : Bool;
	var focused : Bool;
	var iconBase : String;
	var iconPos : String;
	var id : String;
	var lang : String;
	var ownerDocument : Dynamic;
	var roundRect : Bool;
	var singleOpen : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var title : String;
	var tooltip : String;
	function addChild(widget:dijit._WidgetBase, insertIndex:Float):Void;
	function buildRendering():Void;
	function collapse(pane:dijit._WidgetBase, noAnimation:Bool):Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function deselect(pane:dijit._WidgetBase):Void;
	function destroy(?preserveDom:Bool):Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function expand(pane:dijit._WidgetBase, noAnimation:Bool):Void;
	function getChildren():Dynamic;
	function getIndexInParent():Dynamic;
	function getIndexOfChild(child:dijit._WidgetBase):Dynamic;
	function getNextSibling():Dynamic;
	function getParent():Dynamic;
	function getPreviousSibling():Dynamic;
	function getSelectedPanes():Dynamic;
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
	function resize():Void;
	function select(pane:dijit._WidgetBase):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onFocus():Void;
}
