extern class _SelectionPreserver extends dojox.grid._SelectionPreserver {
	function new(selection:Dynamic):Void;
	function destroy():Void;
	function reset():Void;
	function onSelectedById(id:Dynamic, rowIndex:Dynamic, value:Dynamic):Void;
}
extern class _RowMapLayer {
	function new(grid:Dynamic):Void;
	var layerFuncName : String;
	var tags : Array<Dynamic>;
	function clearMapping():Void;
	function enabled(toEnable:Bool):Bool;
	function initialize(store:Dynamic):Void;
	function invalidate():Void;
	function name():Dynamic;
	function originFetch():Dynamic;
	function setMapping(mapping:Dynamic):Void;
	function uninitialize():Void;
}
extern class AutoScroll extends dojox.grid.enhanced._Plugin {
	function new(grid:Dynamic, args:Dynamic):Void;
	var autoScrollInterval : Float;
	var autoScrollMargin : Float;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function init():Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class Cookie extends dojox.grid.enhanced._Plugin {
	function new(grid:Dynamic, args:Dynamic):Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function addCookieHandler(args:Dynamic):Void;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function getCookieEnabled(cookieName:String):Dynamic;
	function init():Void;
	function removeCookie():Void;
	function setCookieEnabled(cookieName:String, enabled:Bool):Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class CellMerge extends dojox.grid.enhanced._Plugin {
	function new(grid:Dynamic, args:Dynamic):Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function getMergedCells():Dynamic;
	function getMergedCellsByRow(rowIndex:Dynamic):Dynamic;
	function init():Void;
	function mergeCells(rowTester:Dynamic, startColumnIndex:Float, endColumnIndex:Float, majorColumnIndex:Float):Dynamic;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unmergeCells(mergeHandler:Dynamic):Void;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class Exporter extends dojox.grid.enhanced._Plugin {
	function new(grid:dojox.grid.EnhancedGrid, args:Dynamic):Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	var writerNames : String;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function exportGrid(type:String, args:Dynamic, onExported:Dynamic):Void;
	function exportSelected(type:String, writerArgs:Dynamic, onExported:Dynamic):Dynamic;
	function init():Void;
	function registerWriter(fileType:String, writerClsName:String):Void;
	function setExportFormatter(formatter:Dynamic):Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class DnD extends dojox.grid.enhanced._Plugin {
	function new(grid:Dynamic, args:Dynamic):Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function copyOnly(isCopyOnly:Dynamic):Bool;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function init():Void;
	function setupConfig(config:Dynamic):Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onDraggingOut(sourcePlugin:Dynamic):Void;
	function onDraggingOver(sourcePlugin:Dynamic):Void;
	function onDragIn(sourcePlugin:Dynamic, isCopy:Dynamic):Void;
	function onDragOut(isMove:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class Filter extends dojox.grid.enhanced._Plugin {
	function new(grid:Dynamic, args:Dynamic):Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function init():Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class Dialog extends dijit.Dialog {
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
	@:overload(function(property:RefNode, value:Dynamic):Void { })
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
	@:overload(function(property:RefNode):Dynamic { })
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
	@:overload(function(property:RefNode, callback:{ }):{ function unwatch():Void; } { })
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
	var refNode : Dynamic;
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
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
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
extern class IndirectSelection extends dojox.grid.enhanced._Plugin {
	function new():Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function addRowSelectCell(option:Dynamic):Void;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function init():Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class GridSource extends dojo.dnd.Source {
	function new(node:HTMLElement, ?params:Dynamic):Void;
	var accept : Array<Dynamic>;
	var allowNested : Bool;
	var autoSync : Bool;
	var copyOnly : Bool;
	var current : HTMLElement;
	var delay : Float;
	var generateText : Bool;
	var horizontal : Bool;
	var insertNodesForGrid : Bool;
	var isSource : Bool;
	var map : Dynamic;
	var selection : Dynamic;
	var selfAccept : Bool;
	var selfCopy : Bool;
	var singular : Bool;
	var skipForm : Bool;
	var withHandles : Bool;
	function checkAcceptance(source:Dynamic, nodes:Dynamic):Dynamic;
	function clearItems():Void;
	function copyState(keyPressed:Bool, self:Bool):Dynamic;
	function creator():Void;
	function deleteSelectedNodes():haxe.Constraints.Function;
	function delItem(key:String):Void;
	function destroy():Void;
	function emit(type:Dynamic, event:Dynamic):Dynamic;
	function forInItems(f:haxe.Constraints.Function, o:Dynamic):String;
	function forInSelectedItems(f:haxe.Constraints.Function, o:Dynamic):Void;
	function getAllNodes():Dynamic;
	function getCellContent(grid:Dynamic, leftTopCell:Dynamic, rightBottomCell:Dynamic):Void;
	function getColumnContent(grid:Dynamic, colIndexes:Dynamic):Void;
	function getItem(key:String):Dynamic;
	function getRowContent(grid:Dynamic, rowIndexes:Dynamic):Void;
	function getSelectedNodes():Dynamic;
	@:overload(function(addSelected:Bool, data:Array<Dynamic>, before:Bool, anchor:HTMLElement):haxe.Constraints.Function { })
	function insertNodes(data:Dynamic, before:Bool, anchor:HTMLElement):haxe.Constraints.Function;
	function markupFactory(params:Dynamic, node:Dynamic):Dynamic;
	function on(type:Dynamic, listener:Dynamic):Dynamic;
	function selectAll():Dynamic;
	function selectNone():Dynamic;
	function setItem(key:String, data:Dynamic):Void;
	function startup():Void;
	function sync():haxe.Constraints.Function;
	function onDndCancel():Void;
	function onDndDrop(source:Dynamic, nodes:Array<Dynamic>, copy:Bool, target:Dynamic):Void;
	function onDndSourceOver(source:Dynamic):Void;
	function onDndStart(source:Dynamic, nodes:Array<Dynamic>, copy:Bool):Void;
	function onDraggingOut():Void;
	function onDraggingOver():Void;
	function onDrop(source:Dynamic, nodes:Array<Dynamic>, copy:Bool):Void;
	function onDropExternal(source:Dynamic, nodes:Dynamic, copy:Dynamic):Void;
	function onDropGridCells(grid:Dynamic, leftTopCell:Dynamic, rightBottomCell:Dynamic):Void;
	function onDropGridColumns(grid:Dynamic, colIndexes:Dynamic):Void;
	function onDropGridRows(grid:Dynamic, rowIndexes:Dynamic):Void;
	function onDropInternal(nodes:Array<Dynamic>, copy:Bool):Void;
	function onMouseDown(e:Event):Void;
	function onMouseMove(e:Event):Void;
	function onMouseOut(e:Event):Void;
	function onMouseOver(e:Event):Void;
	function onMouseUp(e:Event):Void;
	function onOutEvent():Void;
	function onOverEvent():Void;
	function onSelectStart(e:Event):Void;
}
extern class Menu extends dojox.grid.enhanced._Plugin {
	function new():Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	var types : Dynamic;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function init():Void;
	function showMenu(e:Event):Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class Pagination extends dojox.grid.enhanced._Plugin {
	function new(inGrid:dojox.grid.EnhancedGrid, option:Dynamic):Void;
	var defaultPage : Float;
	var defaultPageSize : Float;
	var description : Bool;
	var gotoButton : Bool;
	var grid : Dynamic;
	var maxPageStep : Float;
	var name : String;
	var option : Dynamic;
	var pageSizes : Array<Dynamic>;
	var pageStepper : Bool;
	var position : Dynamic;
	var privates : Dynamic;
	var sizeSwitch : Bool;
	function changePageSize(size:Dynamic):Void;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function currentPage(page:Float):Dynamic;
	@:overload(function(size:Dynamic):Dynamic { })
	function currentPageSize(size:Float):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function firstPage():Void;
	function getTotalPageNum():Dynamic;
	function getTotalRowCount():Dynamic;
	function gotoFirstPage():Void;
	function gotoLastPage():Void;
	function gotoPage(page:Dynamic):Void;
	function init():Void;
	function lastPage():Void;
	function nextPage():Void;
	function prevPage():Void;
	function removeSelectedRows():Void;
	function scrollToRow(inRowIndex:Float):Dynamic;
	function showGotoPageButton(flag:Bool):Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class NestedSorting extends dojox.grid.enhanced._Plugin {
	function new():Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function clearSort():Void;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function getSortProps():Dynamic;
	function init():Void;
	function initCookieHandler():Void;
	function isAsc(cellIndex:Dynamic):Bool;
	function isDesc(cellIndex:Dynamic):Bool;
	function removeSortData(cellIdx:Dynamic):Void;
	function setSortData(cellIdx:Dynamic, attr:Dynamic, value:Dynamic):Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class Printer extends dojox.grid.enhanced._Plugin {
	function new(grid:Dynamic):Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function exportSelectedToHTML(args:Dynamic, onExported:Dynamic):Void;
	function exportToHTML(args:Dynamic, onExported:Dynamic):Void;
	function init():Void;
	function normalizeRowHeight(doc:Dynamic):Void;
	function printGrid(args:Dynamic):Void;
	function printSelected(args:Dynamic):Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class Rearrange extends dojox.grid.enhanced._Plugin {
	function new(grid:Dynamic, args:Dynamic):Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function changeCells(sourceGrid:Dynamic, cellsToMove:Dynamic, target:Dynamic):Void;
	function clearCells(cellsToClear:Dynamic):Void;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function copyCells(cellsToMove:Dynamic, target:Dynamic):Void;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function init():Void;
	function insertRows(sourceGrid:Dynamic, rowsToMove:Dynamic, targetPos:Dynamic):Void;
	function moveCells(cellsToMove:Dynamic, target:Dynamic):Void;
	function moveColumns(colsToMove:Array<Float>, targetPos:Float):Void;
	function moveRows(rowsToMove:Array<Float>, targetPos:Float):Void;
	function removeRows(rowsToRemove:Dynamic):Void;
	function setArgs(args:Dynamic):Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class Search extends dojox.grid.enhanced._Plugin {
	function new(grid:Dynamic, args:Dynamic):Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function init():Void;
	@:overload(function(searchArgs:js.RegExp, onSearched:{ }):Void { })
	@:overload(function(searchArgs:String, onSearched:{ }):Void { })
	function searchRow(searchArgs:Dynamic, onSearched:{ }):Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore(store:Dynamic):Void;
	function onStartUp():Void;
}
extern class Selector extends dojox.grid.enhanced._Plugin {
	function new(grid:Dynamic, args:Dynamic):Void;
	var grid : Dynamic;
	var name : String;
	var option : Dynamic;
	var privates : Dynamic;
	function clear(type:String):Void;
	function connect(obj:Dynamic, event:Dynamic, method:Dynamic):Dynamic;
	function deselect(type:Dynamic, rowIndex:Dynamic, colIndex:Dynamic):Void;
	function destroy():Void;
	function disconnect(handle:Dynamic):Void;
	function getLastSelectedRange(type:Dynamic):Dynamic;
	function getSelected(type:String, includeExceptions:Bool):Dynamic;
	function getSelectedCount(type:String, includeExceptions:Bool):Dynamic;
	function getSelectedType():Dynamic;
	function init():Void;
	function isSelected(type:String, rowIndex:Float, colIndex:Float):Dynamic;
	function isSelecting(type:String):Dynamic;
	function select(type:String, rowIndex:Float, colIndex:Float):Void;
	function selectEnabled(toEnable:Bool):Dynamic;
	@:overload(function(type:String, start:Dynamic, end:Float, toSelect:Dynamic):Void { })
	@:overload(function(type:String, start:Float, end:Dynamic, toSelect:Dynamic):Void { })
	@:overload(function(type:String, start:Dynamic, end:Dynamic, toSelect:Dynamic):Void { })
	function selectRange(type:String, start:Float, end:Float, toSelect:Dynamic):Void;
	function setupConfig(config:Dynamic):Void;
	function subscribe(topic:Dynamic, method:Dynamic):Dynamic;
	function toggleSelect(type:Dynamic, rowIndex:Dynamic, colIndex:Dynamic):Void;
	function unsubscribe(handle:Dynamic):Void;
	function onPostInit():Void;
	function onPreInit():Void;
	function onSetStore():Void;
	function onStartUp():Void;
}
