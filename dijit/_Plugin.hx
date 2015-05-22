typedef Registry = {
	function bold(args:Dynamic):Dynamic;
	function colorTableCell(args:Dynamic):Void;
	function copy(args:Dynamic):Dynamic;
	function createLink():Void;
	function cut(args:Dynamic):Dynamic;
	function delete(args:Dynamic):Dynamic;
	function deleteTableColumn(args:Dynamic):Dynamic;
	function deleteTableRow(args:Dynamic):Dynamic;
	function foreColor():Void;
	function fullScreen(args:Dynamic):Void;
	function fullscreen(args:Dynamic):Void;
	function hiliteColor():Void;
	function indent(args:Dynamic):Dynamic;
	function insertHorizontalRule(args:Dynamic):Dynamic;
	function insertImage():Void;
	function insertOrderedList(args:Dynamic):Dynamic;
	function insertTable(args:Dynamic):Void;
	function insertTableColumnAfter(args:Dynamic):Dynamic;
	function insertTableColumnBefore(args:Dynamic):Dynamic;
	function insertTableRowAfter(args:Dynamic):Dynamic;
	function insertTableRowBefore(args:Dynamic):Dynamic;
	function insertUnorderedList(args:Dynamic):Dynamic;
	function italic(args:Dynamic):Dynamic;
	function justifyCenter(args:Dynamic):Dynamic;
	function justifyFull(args:Dynamic):Dynamic;
	function justifyLeft(args:Dynamic):Dynamic;
	function justifyRight(args:Dynamic):Dynamic;
	function LocalImage(args:Dynamic):Dynamic;
	function localImage(args:Dynamic):Dynamic;
	function localimage(args:Dynamic):Dynamic;
	function modifyTable(args:Dynamic):Void;
	function newPage(args:Dynamic):Void;
	function newpage(args:Dynamic):Void;
	function outdent(args:Dynamic):Dynamic;
	function paste(args:Dynamic):Dynamic;
	function print():Void;
	function redo(args:Dynamic):Dynamic;
	function removeFormat(args:Dynamic):Dynamic;
	function selectAll(args:Dynamic):Dynamic;
	function strikethrough(args:Dynamic):Dynamic;
	function subscript(args:Dynamic):Dynamic;
	function superscript(args:Dynamic):Dynamic;
	function tabIndent():Void;
	function tableContextMenu(args:Dynamic):Void;
	function toggleDir():Void;
	function underline(args:Dynamic):Dynamic;
	function undo(args:Dynamic):Dynamic;
	function unlink(args:Dynamic):Dynamic;
	function viewSource(args:Dynamic):Void;
	function viewsource(args:Dynamic):Void;
};
extern class RichText extends dijit._Widget {
	function new(params:Dynamic, srcNodeRef:HTMLElement):Void;
	var active : Bool;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:CaptureEvents, value:Dynamic):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:CssStateNodes, value:Dynamic):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:Disabled, value:Bool):Void { })
	@:overload(function(property:DisableSpellCheck, value:Bool):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FocusOnLoad, value:Bool):Void { })
	@:overload(function(property:Height, value:String):Void { })
	@:overload(function(property:Hovering, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InheritWidth, value:Bool):Void { })
	@:overload(function(property:IsClosed, value:Bool):Void { })
	@:overload(function(property:IsLoaded, value:Bool):Void { })
	@:overload(function(property:IsTabIndent, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:MinHeight, value:String):Void { })
	@:overload(function(property:Name, value:Dynamic):Void { })
	@:overload(function(property:OnLoadDeferred, value:Dynamic):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:StyleSheets, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UpdateInterval, value:Float):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Active, value:Bool):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:CaptureEvents):Dynamic { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:CssStateNodes):Dynamic { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:Disabled):Bool { })
	@:overload(function(property:DisableSpellCheck):Bool { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FocusOnLoad):Bool { })
	@:overload(function(property:Height):String { })
	@:overload(function(property:Hovering):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InheritWidth):Bool { })
	@:overload(function(property:IsClosed):Bool { })
	@:overload(function(property:IsLoaded):Bool { })
	@:overload(function(property:IsTabIndent):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:MinHeight):String { })
	@:overload(function(property:Name):Dynamic { })
	@:overload(function(property:OnLoadDeferred):Dynamic { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:StyleSheets):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UpdateInterval):Float { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Active):Bool;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CaptureEvents, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CssStateNodes, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Disabled, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DisableSpellCheck, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FocusOnLoad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Hovering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InheritWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsClosed, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsLoaded, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:IsTabIndent, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MinHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Name, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OnLoadDeferred, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:StyleSheets, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UpdateInterval, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Active, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var captureEvents : Dynamic;
	var class : String;
	var containerNode : HTMLElement;
	var cssStateNodes : Dynamic;
	var dir : String;
	var disabled : Bool;
	var disableSpellCheck : Bool;
	var domNode : HTMLElement;
	var focused : Bool;
	var focusOnLoad : Bool;
	var height : String;
	var hovering : Bool;
	var id : String;
	var inheritWidth : Bool;
	var isClosed : Bool;
	var isLoaded : Bool;
	var isTabIndent : Bool;
	var lang : String;
	var minHeight : String;
	var name : Dynamic;
	var onLoadDeferred : Dynamic;
	var ownerDocument : Dynamic;
	var srcNodeRef : HTMLElement;
	var style : String;
	var styleSheets : String;
	var title : String;
	var tooltip : String;
	var updateInterval : Float;
	@:overload(function(key:Float, ctrl:Bool, shift:Bool, handler:haxe.Constraints.Function):Void { })
	function addKeyHandler(key:String, ctrl:Bool, shift:Bool, handler:haxe.Constraints.Function):Void;
	function addStyleSheet(uri:dojo._base.Url):Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function blur():Void;
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
	function execCommand(command:String, argument:Dynamic):Dynamic;
	function focus():Void;
	function getChildren():Array<Dynamic>;
	function getDescendants():Array<Dynamic>;
	function getFooterHeight():Dynamic;
	function getHeaderHeight():Dynamic;
	function getNodeChildrenHtml(dom:HTMLElement):Dynamic;
	function getNodeHtml(node:HTMLElement):Dynamic;
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
	function queryCommandEnabled(command:String):Dynamic;
	function queryCommandState(command:Dynamic):Dynamic;
	function queryCommandValue(command:Dynamic):Dynamic;
	function removeStyleSheet(uri:dojo._base.Url):Void;
	function replaceValue(html:String):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setDisabled(disabled:Bool):Void;
	function setupDefaultShortcuts():Void;
	function setValue(html:String):Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function onBlur():Void;
	function onChange(newContent:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onFocus():Void;
	function onHide():Void;
	function onKeyDown(e:Event):Bool;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(e:Dynamic):Void;
	function onLoad(html:String):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseUp(event:Dynamic):Void;
	function onShow():Void;
}
