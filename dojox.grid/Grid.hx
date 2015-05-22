extern class _EditManager {
	function new(inGrid:dojox.grid._Grid):Void;
	var info : Dynamic;
	function apply():Void;
	function applyCellEdit(inValue:Dynamic, inCell:Dynamic, inRowIndex:Dynamic):Void;
	function applyRowEdit():Void;
	function cancel():Void;
	function cellFocus(inCell:Dynamic, inRowIndex:Float):Void;
	function destroy():Void;
	function dispatchEvent(e:Dynamic):Float;
	function editorApply():Void;
	function editorCancel():Void;
	function focusEditor():Void;
	function isEditCell(inRowIndex:Float, inCellIndex:Float):Dynamic;
	function isEditing():Dynamic;
	function isEditRow(inRowIndex:Float):Dynamic;
	function restore(inView:Dynamic, inRowIndex:Float):Void;
	function rowClick(e:Dynamic):Void;
	function save(inRowIndex:Float, inView:Dynamic):Void;
	function setEditCell(inCell:Dynamic, inRowIndex:Float):Void;
	function start(inCell:Dynamic, inRowIndex:Dynamic, inEditing:Dynamic):Void;
	function styleRow(inRow:Dynamic):Void;
}
extern class _Layout {
	function new(inGrid:Dynamic):Void;
	var cells : Array<Dynamic>;
	var defaultWidth : String;
	var structure : Dynamic;
	function addCellDef(inRowIndex:Dynamic, inCellIndex:Dynamic, inDef:Dynamic):Dynamic;
	function addRowDef(inRowIndex:Dynamic, inDef:Dynamic):Array<Dynamic>;
	function addRowsDef(inDef:Dynamic):Array<Dynamic>;
	function addViewDef(inDef:Dynamic):Dynamic;
	function moveColumn(sourceViewIndex:Dynamic, destViewIndex:Dynamic, cellIndex:Dynamic, targetIndex:Dynamic, before:Dynamic):Void;
	function setColumnVisibility(columnIndex:Dynamic, visible:Dynamic):Bool;
	function setStructure(inStructure:Dynamic):Void;
}
extern class _FocusManager {
	function new(inGrid:Dynamic):Void;
	var focusClass : String;
	var focusView : Dynamic;
	var tabbingOut : Bool;
	function blurHeader():Void;
	function colSizeAdjust(e:Dynamic, colIdx:Dynamic, delta:Dynamic):Void;
	function destroy():Void;
	function doBlur(e:Dynamic):Void;
	function doColHeaderBlur(e:Dynamic):Void;
	function doColHeaderFocus(e:Dynamic):Void;
	function doContextMenu(e:Dynamic):Void;
	function doFocus(e:Dynamic):Void;
	function doLastNodeBlur(e:Dynamic):Void;
	function doLastNodeFocus(e:Dynamic):Void;
	function findAndFocusGridCell():Dynamic;
	function focusGrid(inSkipFocusCell:Dynamic):Void;
	function focusGridView():Void;
	function focusHeader():Void;
	function getHeaderIndex():Dynamic;
	function initFocusView():Void;
	function isFirstFocusCell():Bool;
	function isFocusCell(inCell:Dynamic, inRowIndex:Float):Dynamic;
	function isLastFocusCell():Bool;
	function isNavHeader():Dynamic;
	function isNoFocusCell():Bool;
	function move(inRowDelta:Float, inColDelta:Float):Void;
	function next():Void;
	function nextKey(e:Dynamic):Void;
	function previous():Void;
	function previousKey(e:Dynamic):Void;
	function scrollIntoView():Dynamic;
	function setFocusCell(inCell:Dynamic, inRowIndex:Float):Void;
	function setFocusIndex(inRowIndex:Float, inCellIndex:Float):Void;
	function styleRow(inRow:Dynamic):Void;
	function tabOut(inFocusNode:Dynamic):Void;
}
extern class _Events {
	function new():Void;
	var cellOverClass : String;
	function onApplyCellEdit(inValue:String, inRowIndex:Float, inFieldIndex:Float):Void;
	function onApplyEdit(inRowIndex:Float):Void;
	function onCancelEdit(inRowIndex:Float):Void;
	function onCanDeselect(inRowIndex:Float):Dynamic;
	function onCanSelect(inRowIndex:Float):Dynamic;
	function onCellClick(e:Event):Void;
	function onCellContextMenu(e:Event):Void;
	function onCellDblClick(e:Event):Void;
	function onCellFocus(inCell:Dynamic, inRowIndex:Float):Void;
	function onCellMouseDown(e:Event):Void;
	function onCellMouseOut(e:Event):Void;
	function onCellMouseOver(e:Event):Void;
	function onContentEvent(e:Dynamic):Void;
	function onDeselected(inRowIndex:Float):Void;
	function onHeaderCellClick(e:Event):Void;
	function onHeaderCellContextMenu(e:Event):Void;
	function onHeaderCellDblClick(e:Event):Void;
	function onHeaderCellMouseDown(e:Event):Void;
	function onHeaderCellMouseOut(e:Event):Void;
	function onHeaderCellMouseOver(e:Event):Void;
	function onHeaderClick(e:Event):Void;
	function onHeaderContextMenu(e:Event):Void;
	function onHeaderDblClick(e:Event):Void;
	function onHeaderEvent(e:Dynamic):Void;
	function onHeaderMouseOut(e:Event):Void;
	function onHeaderMouseOver(e:Event):Void;
	function onKeyDown(e:Dynamic):Void;
	function onKeyEvent(e:Dynamic):Void;
	function onMouseDown(e:Event):Void;
	function onMouseDownRow(e:Event):Void;
	function onMouseOut(e:Event):Void;
	function onMouseOutRow(e:Event):Void;
	function onMouseOver(e:Event):Void;
	function onMouseOverRow(e:Event):Void;
	function onRowClick(e:Event):Void;
	function onRowContextMenu(e:Event):Void;
	function onRowDblClick(e:Event):Void;
	function onRowMouseDown(e:Event):Void;
	function onRowMouseOut(e:Event):Void;
	function onRowMouseOver(e:Event):Void;
	function onSelected(inRowIndex:Float):Void;
	function onSelectionChanged():Void;
	function onStartEdit(inCell:Dynamic, inRowIndex:Float):Void;
	function onStyleRow(inRow:Dynamic):Void;
}
extern class _RowManager {
	function new(inGrid:Dynamic):Void;
	var linesToEms : Float;
	var overRow : Float;
	function applyStyles(inRow:Dynamic):Void;
	function isOver(inRowIndex:Dynamic):Bool;
	function prepareStylingRow(inRowIndex:Dynamic, inRowNode:Dynamic):Dynamic;
	function setOverRow(inRowIndex:Dynamic):Void;
	function styleRowNode(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function updateStyles(inRowIndex:Dynamic):Void;
}
extern class _SelectionPreserver {
	function new(selection:Dynamic):Void;
	function destroy():Void;
	function reset():Void;
}
extern class _Scroller {
	function new(inContentNodes:Dynamic):Void;
	var averageRowHeight : Float;
	var contentNode : Dynamic;
	var defaultPageHeight : Float;
	var defaultRowHeight : Float;
	var dummy : Float;
	var firstVisibleRow : Float;
	var keepPages : Float;
	var keepRows : Float;
	var lastVisibleRow : Float;
	var pacifying : Bool;
	var pacifyTicks : Float;
	var page : Float;
	var pageCount : Float;
	var pageTop : Float;
	var rowCount : Float;
	var scrollboxNode : Dynamic;
	var windowHeight : Float;
	function buildPage(inPageIndex:Dynamic, inReuseNode:Dynamic, inPos:Dynamic):Void;
	function calcLastPageHeight():Float;
	function createPageNode():Dynamic;
	function destroy():Void;
	function destroyPage(inPageIndex:Dynamic):Void;
	function doPacify():Bool;
	function endPacify():Void;
	function findPage(inTop:Dynamic):Void;
	function findScrollTop(inRow:Dynamic):Float;
	function findTopRow(inScrollTop:Dynamic):Float;
	function getDefaultNodes():Dynamic;
	function getDefaultPageNode(inPageIndex:Dynamic):Dynamic;
	function getFirstVisibleRow(inPage:Dynamic, inPageTop:Float, inScrollTop:Dynamic):Dynamic;
	function getLastPageRow(inPage:Dynamic):Float;
	function getLastVisibleRow(inPage:Dynamic, inBottom:Float, inScrollBottom:Dynamic):Float;
	function getPageHeight(inPageIndex:Dynamic):Dynamic;
	function getPageNodePosition(inNode:Dynamic):Dynamic;
	function getPageRow(inPage:Dynamic):Float;
	function getScrollBottom(inTop:Dynamic):Float;
	function init(inRowCount:Dynamic, inKeepRows:Dynamic, inRowsPerPage:Dynamic):Void;
	function installPage(inPageIndex:Dynamic):Void;
	function invalidate():Void;
	function invalidateNodes():Void;
	function invalidatePageNode(inPageIndex:Dynamic, inNodes:Dynamic):Dynamic;
	function measurePage(inPageIndex:Dynamic):Dynamic;
	function needPage(inPageIndex:Dynamic, inPos:Dynamic):Dynamic;
	function onscroll():Void;
	function pacify(inShouldPacify:Dynamic):Void;
	function pageExists(inPageIndex:Dynamic):Dynamic;
	function popPage():Dynamic;
	function positionPage(inPageIndex:Dynamic, inPos:Dynamic):Void;
	function positionPageNode(inNode:Dynamic, inPos:Dynamic):Void;
	function preparePage(inPageIndex:Dynamic, inReuseNode:Dynamic):Void;
	function processEvent(e:Dynamic):Dynamic;
	function processNodeEvent(e:Dynamic, inNode:Dynamic):Bool;
	function pushPage(inPageIndex:Dynamic):Dynamic;
	function removePage(inPageIndex:Dynamic):Void;
	function removeRow(inRowIndex:Dynamic):Void;
	function renderPage(inPageIndex:Dynamic):Void;
	function renderRow(inRowIndex:Dynamic, inPageNode:Dynamic):Void;
	function repositionPages(inPageIndex:Dynamic):Void;
	function resize():Void;
	function rowHeightChanged(inRowIndex:Dynamic, fromAsynRendering:Dynamic):Void;
	function scroll(inTop:Dynamic):Void;
	function setContentNodes(inNodes:Dynamic):Void;
	function setKeepInfo(inKeepRows:Dynamic):Void;
	function setPacifying(inPacifying:Dynamic):Void;
	function startPacify():Void;
	function updateContentHeight(inDh:Dynamic):Void;
	function updatePageHeight(inPageIndex:Dynamic, fromBuild:Dynamic, fromAsynRendering:Dynamic):Dynamic;
	function updateRowCount(inRowCount:Dynamic):Void;
}
extern class _Grid extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoHeight, value:Bool):Void { })
	@:overload(function(property:AutoRender, value:Bool):Void { })
	@:overload(function(property:AutoWidth, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:CellOverClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ClassTag, value:String):Void { })
	@:overload(function(property:ColumnReordering, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DefaultHeight, value:String):Void { })
	@:overload(function(property:DelayScroll, value:Bool):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:ElasticView, value:Float):Void { })
	@:overload(function(property:ErrorMessage, value:String):Void { })
	@:overload(function(property:EscapeHTMLInData, value:Bool):Void { })
	@:overload(function(property:FastScroll, value:Bool):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatterScope, value:Dynamic):Void { })
	@:overload(function(property:HeaderMenu, value:Dynamic):Void { })
	@:overload(function(property:Height, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InitialWidth, value:String):Void { })
	@:overload(function(property:Invalidated, value:Dynamic):Void { })
	@:overload(function(property:KeepRows, value:Float):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LoadingMessage, value:String):Void { })
	@:overload(function(property:NoDataMessage, value:String):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PlaceholderLabel, value:String):Void { })
	@:overload(function(property:RowCount, value:Float):Void { })
	@:overload(function(property:RowHeight, value:Float):Void { })
	@:overload(function(property:RowSelector, value:Bool):Void { })
	@:overload(function(property:RowsPerPage, value:Float):Void { })
	@:overload(function(property:ScrollRedrawThreshold, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selectable, value:Bool):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:SingleClickEdit, value:Bool):Void { })
	@:overload(function(property:SortInfo, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Structure, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Summary, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:Updating, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoHeight):Bool { })
	@:overload(function(property:AutoRender):Bool { })
	@:overload(function(property:AutoWidth):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:CellOverClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ClassTag):String { })
	@:overload(function(property:ColumnReordering):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DefaultHeight):String { })
	@:overload(function(property:DelayScroll):Bool { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:ElasticView):Float { })
	@:overload(function(property:ErrorMessage):String { })
	@:overload(function(property:EscapeHTMLInData):Bool { })
	@:overload(function(property:FastScroll):Bool { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatterScope):Dynamic { })
	@:overload(function(property:HeaderMenu):Dynamic { })
	@:overload(function(property:Height):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InitialWidth):String { })
	@:overload(function(property:Invalidated):Dynamic { })
	@:overload(function(property:KeepRows):Float { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LoadingMessage):String { })
	@:overload(function(property:NoDataMessage):String { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PlaceholderLabel):String { })
	@:overload(function(property:RowCount):Float { })
	@:overload(function(property:RowHeight):Float { })
	@:overload(function(property:RowSelector):Bool { })
	@:overload(function(property:RowsPerPage):Float { })
	@:overload(function(property:ScrollRedrawThreshold):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selectable):Bool { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:SingleClickEdit):Bool { })
	@:overload(function(property:SortInfo):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Structure):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Summary):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:Updating):Bool { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoRender, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellOverClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ClassTag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnReordering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DelayScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ElasticView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrorMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EscapeHTMLInData, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FastScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatterScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HeaderMenu, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InitialWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Invalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:KeepRows, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LoadingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoDataMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceholderLabel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowSelector, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowsPerPage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollRedrawThreshold, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selectable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SingleClickEdit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SortInfo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Structure, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Summary, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Updating, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var autoHeight : Bool;
	var autoRender : Bool;
	var autoWidth : Bool;
	var baseClass : String;
	var cellOverClass : String;
	var class : String;
	var classTag : String;
	var columnReordering : Bool;
	var containerNode : HTMLElement;
	var defaultHeight : String;
	var delayScroll : Bool;
	var dir : String;
	var domNode : HTMLElement;
	var editable : Bool;
	var elasticView : Float;
	var errorMessage : String;
	var escapeHTMLInData : Bool;
	var fastScroll : Bool;
	var focused : Bool;
	var formatterScope : Dynamic;
	var headerMenu : Dynamic;
	var height : String;
	var id : String;
	var initialWidth : String;
	var invalidated : Dynamic;
	var keepRows : Float;
	var lang : String;
	var loadingMessage : String;
	var noDataMessage : String;
	var observer : String;
	var ownerDocument : Dynamic;
	var placeholderLabel : String;
	var rowCount : Float;
	var rowHeight : Float;
	var rowSelector : Bool;
	var rowsPerPage : Float;
	var scrollRedrawThreshold : Float;
	var searchContainerNode : Bool;
	var selectable : Bool;
	var selectionMode : String;
	var singleClickEdit : Bool;
	var sortInfo : Float;
	var srcNodeRef : HTMLElement;
	var structure : Dynamic;
	var style : String;
	var summary : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var updating : Bool;
	function addRow():Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function beginUpdate():Void;
	function buildRendering():Void;
	function buildViews():Void;
	function canSort(inSortInfo:Float):Bool;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createLayout():Void;
	function createManagers():Void;
	function createScroller():Void;
	function createSelection():Void;
	function createView(inClass:Dynamic, idx:Dynamic):Dynamic;
	function createViews():Void;
	function defaultUpdate():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchContentEvent(e:Dynamic):Void;
	function dispatchHeaderEvent(e:Dynamic):Void;
	function dispatchKeyEvent(e:Dynamic):Void;
	function doApplyCellEdit(inValue:Dynamic, inRowIndex:Dynamic, inFieldIndex:Dynamic):Void;
	function doApplyEdit(inRowIndex:Dynamic):Void;
	function doCancelEdit(inRowIndex:Dynamic):Void;
	function doclick(e:Dynamic):Void;
	function docontextmenu(e:Dynamic):Void;
	function dodblclick(e:Dynamic):Void;
	function doheaderclick(e:Dynamic):Void;
	function doheadercontextmenu(e:Dynamic):Void;
	function doheaderdblclick(e:Dynamic):Void;
	function dokeydown(e:Dynamic):Void;
	function doKeyEvent(e:Dynamic):Void;
	function doStartEdit(inCell:Dynamic, inRowIndex:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function endUpdate():Void;
	function finishScrollJob():Void;
	function getCell(inIndex:Float):Dynamic;
	function getCellName(inCell:Dynamic):String;
	function getCellNodeTextDirection(inColIndex:Dynamic, inRowIndex:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getColumnTogglingItems():Dynamic;
	function getDescendants():Array<Dynamic>;
	function getItem(inRowIndex:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRowNode(inRowIndex:Dynamic):Dynamic;
	function getSortAsc(inSortInfo:Dynamic):Dynamic;
	function getSortIndex(inSortInfo:Dynamic):Float;
	function hasLayout():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function markupFactory(props:Dynamic, node:Dynamic, ctor:Dynamic, cellFunc:Dynamic):Void;
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
	function postrender():Void;
	function postresize():Void;
	function prerender():Void;
	function removeSelectedRows():Void;
	function render():Void;
	function resize(changeSize:Dynamic, resultSize:Dynamic):Void;
	function rowHeightChanged(inRowIndex:Float):Void;
	function scrollTo(inTop:Float):Void;
	function scrollToRow(inRowIndex:Float):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setCellNodeTextDirection(inColIndex:Dynamic, inRowIndex:Dynamic, textDir:Dynamic):Void;
	function setCellWidth(inIndex:Dynamic, inUnitWidth:Dynamic):Void;
	function setHeaderMenu(menu:dijit.Menu):Void;
	function setScrollTop(inTop:Dynamic):Void;
	function setSortIndex(inIndex:Float, inAsc:Bool):Void;
	function setSortInfo(inSortInfo:Dynamic):Void;
	@:overload(function(inStructure:Array<Dynamic>):Void { })
	function setStructure(inStructure:Dynamic):Void;
	function setupHeaderMenu():Void;
	function showMessage(message:Dynamic):Void;
	function sizeChange():Void;
	function sort():Void;
	function startup():Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function textSizeChanged():Void;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update():Void;
	function updateRow(inRowIndex:Float):Void;
	function updateRowCount(inRowCount:Float):Void;
	function updateRows(startIndex:Float, howMany:Float):Void;
	function updateRowStyles(inRowIndex:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onApplyCellEdit(inValue:String, inRowIndex:Float, inFieldIndex:Float):Void;
	function onApplyEdit(inRowIndex:Float):Void;
	function onBlur():Void;
	function onCancelEdit(inRowIndex:Float):Void;
	function onCanDeselect(inRowIndex:Float):Dynamic;
	function onCanSelect(inRowIndex:Float):Dynamic;
	function onCellClick(e:Event):Void;
	function onCellContextMenu(e:Event):Void;
	function onCellDblClick(e:Event):Void;
	function onCellFocus(inCell:Dynamic, inRowIndex:Float):Void;
	function onCellMouseDown(e:Event):Void;
	function onCellMouseOut(e:Event):Void;
	function onCellMouseOver(e:Event):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onContentEvent(e:Dynamic):Void;
	function onDblClick(event:Dynamic):Void;
	function onDeselected(inRowIndex:Float):Void;
	function onFocus():Void;
	function onHeaderCellClick(e:Event):Void;
	function onHeaderCellContextMenu(e:Event):Void;
	function onHeaderCellDblClick(e:Event):Void;
	function onHeaderCellMouseDown(e:Event):Void;
	function onHeaderCellMouseOut(e:Event):Void;
	function onHeaderCellMouseOver(e:Event):Void;
	function onHeaderClick(e:Event):Void;
	function onHeaderContextMenu(e:Event):Void;
	function onHeaderDblClick(e:Event):Void;
	function onHeaderEvent(e:Dynamic):Void;
	function onHeaderMouseOut(e:Event):Void;
	function onHeaderMouseOver(e:Event):Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyEvent(e:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseDownRow(e:Event):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOutRow(e:Event):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseOverRow(e:Event):Void;
	function onMouseUp(event:Dynamic):Void;
	function onMoveColumn():Void;
	function onResizeColumn(cellIdx:Float):Void;
	function onRowClick(e:Event):Void;
	function onRowContextMenu(e:Event):Void;
	function onRowDblClick(e:Event):Void;
	function onRowMouseDown(e:Event):Void;
	function onRowMouseOut(e:Event):Void;
	function onRowMouseOver(e:Event):Void;
	function onSelected(inRowIndex:Float):Void;
	function onSelectionChanged():Void;
	function onShow():Void;
	function onStartEdit(inCell:Dynamic, inRowIndex:Float):Void;
	function onStyleRow(inRow:Dynamic):Void;
}
extern class _ViewManager {
	function new(inGrid:Dynamic):Void;
	var defaultWidth : Float;
	var views : Array<Dynamic>;
	function addView(inView:Dynamic):Void;
	function arrange(l:Float, w:Float):Float;
	function destroyViews():Void;
	function findClient(inAutoWidth:Dynamic):Dynamic;
	function forEach(inCallback:Dynamic):Void;
	function getContentNodes():Array<Dynamic>;
	function getFirstScrollingView():Dynamic;
	function getViewWidth(inIndex:Dynamic):Dynamic;
	function measureContent():Float;
	function measureHeader():Float;
	function normalizeHeaderNodeHeight():Void;
	function normalizeRowNodeHeights(inRowNodes:Dynamic):Void;
	function render():Void;
	function renderRow(inRowIndex:Dynamic, inNodes:Dynamic, skipRenorm:Dynamic):Void;
	function renormalizeRow(inRowIndex:Dynamic):Void;
	function resetHeaderNodeHeight():Void;
	function resize():Void;
	function rowRemoved(inRowIndex:Dynamic):Void;
	function setScrollTop(inTop:Dynamic):Dynamic;
	function updateRow(inRowIndex:Dynamic, skipRenorm:Dynamic):Void;
	function updateRowStyles(inRowIndex:Dynamic):Void;
	function onEach(inMethod:Dynamic, inArgs:Dynamic):Void;
}
extern class _TreeView extends dojox.grid._View {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ClassTag, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DefaultWidth, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FirstScroll, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LastTop, value:Float):Void { })
	@:overload(function(property:MarginBottom, value:Float):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:RowPad, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:ViewWidth, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ClassTag):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DefaultWidth):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FirstScroll):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LastTop):Float { })
	@:overload(function(property:MarginBottom):Float { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:RowPad):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:ViewWidth):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ClassTag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FirstScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LastTop, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MarginBottom, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowPad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var classTag : String;
	var containerNode : HTMLElement;
	var defaultWidth : String;
	var dir : String;
	var domNode : HTMLElement;
	var firstScroll : Float;
	var focused : Bool;
	var id : String;
	var lang : String;
	var lastTop : Float;
	var marginBottom : Float;
	var observer : String;
	var ownerDocument : Dynamic;
	var rowPad : Float;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var viewWidth : String;
	function adaptHeight(minusScroll:Dynamic):Void;
	function adaptWidth():Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function buildRow(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function buildRowContent(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function convertColPctToFixed():Bool;
	function createRowNode(inRowIndex:Dynamic):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchContentEvent(e:Dynamic):Dynamic;
	function dispatchHeaderEvent(e:Dynamic):Dynamic;
	function doContentEvent(e:Dynamic):Void;
	function doHeaderEvent(e:Dynamic):Void;
	function doscroll(inEvent:Dynamic):Void;
	function doStyleRowNode(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function focus():Void;
	function getCellNode(inRowIndex:Dynamic, inCellIndex:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getColumnsWidth():Float;
	function getContentWidth():String;
	function getDescendants():Array<Dynamic>;
	function getHeaderCellNode(inCellIndex:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRowNode(inRowIndex:Dynamic):Dynamic;
	function getScrollbarWidth():Dynamic;
	function getWidth():String;
	function hasHScrollbar(reset:Dynamic):Bool;
	function hasVScrollbar(reset:Dynamic):Bool;
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
	function render():Void;
	function renderHeader():Void;
	function renderRow(inRowIndex:Dynamic):Dynamic;
	function resize():Void;
	function rowRemoved(inRowIndex:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setColumnsWidth(width:Dynamic):Void;
	function setColWidth(inIndex:Dynamic, inWidth:Dynamic):Void;
	function setScrollTop(inTop:Dynamic):Dynamic;
	function setSize(w:Dynamic, h:Dynamic):Void;
	function setStructure(inStructure:Dynamic):Void;
	function startup():Void;
	function styleRow(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function styleRowNode(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function testFlexCells():Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update():Void;
	function updateRow(inRowIndex:Dynamic):Dynamic;
	function updateRowStyles(inRowIndex:Dynamic):Void;
	function updateStructure():Void;
	function getCachedTemplate():Dynamic;
	function onAfterRow(inRowIndex:Dynamic, cells:Dynamic, inRowNode:Dynamic):Void;
	function onBeforeRow(inRowIndex:Dynamic, cells:Dynamic):Void;
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
extern class _Selector extends dojox.grid._View {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ClassTag, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DefaultWidth, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FirstScroll, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InputType, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LastTop, value:Float):Void { })
	@:overload(function(property:MarginBottom, value:Float):Void { })
	@:overload(function(property:Noscroll, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PadBorderWidth, value:Float):Void { })
	@:overload(function(property:RowPad, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:ViewWidth, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ClassTag):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DefaultWidth):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FirstScroll):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InputType):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LastTop):Float { })
	@:overload(function(property:MarginBottom):Float { })
	@:overload(function(property:Noscroll):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PadBorderWidth):Float { })
	@:overload(function(property:RowPad):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:ViewWidth):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ClassTag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FirstScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InputType, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LastTop, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MarginBottom, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Noscroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PadBorderWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowPad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var classTag : String;
	var containerNode : HTMLElement;
	var defaultWidth : String;
	var dir : String;
	var domNode : HTMLElement;
	var firstScroll : Float;
	var focused : Bool;
	var id : String;
	var inputType : String;
	var lang : String;
	var lastTop : Float;
	var marginBottom : Float;
	var noscroll : Bool;
	var observer : String;
	var ownerDocument : Dynamic;
	var padBorderWidth : Float;
	var rowPad : Float;
	var searchContainerNode : Bool;
	var selectionMode : String;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var viewWidth : String;
	function adaptHeight(minusScroll:Dynamic):Void;
	function adaptWidth():Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function buildRow(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function buildRowContent(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function convertColPctToFixed():Bool;
	function createRowNode(inRowIndex:Dynamic):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchContentEvent(e:Dynamic):Dynamic;
	function dispatchHeaderEvent(e:Dynamic):Dynamic;
	function doContentEvent(e:Dynamic):Void;
	function doHeaderEvent(e:Dynamic):Void;
	function doscroll(inEvent:Dynamic):Void;
	function doStyleRowNode(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function focus():Void;
	function getCellNode(inRowIndex:Dynamic, inCellIndex:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getColumnsWidth():Float;
	function getContentWidth():String;
	function getDescendants():Array<Dynamic>;
	function getHeaderCellNode(inCellIndex:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRowNode(inRowIndex:Dynamic):Dynamic;
	function getScrollbarWidth():Dynamic;
	function getWidth():Dynamic;
	function hasHScrollbar(reset:Dynamic):Bool;
	function hasVScrollbar(reset:Dynamic):Bool;
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
	function render():Void;
	function renderHeader():Void;
	function renderRow(inRowIndex:Dynamic):Dynamic;
	function resize():Void;
	function rowRemoved(inRowIndex:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setColumnsWidth(width:Dynamic):Void;
	function setColWidth(inIndex:Dynamic, inWidth:Dynamic):Void;
	function setScrollTop(inTop:Dynamic):Dynamic;
	function setSize(w:Dynamic, h:Dynamic):Void;
	function setStructure(s:Dynamic):Void;
	function startup():Void;
	function styleRow(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function styleRowNode(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function testFlexCells():Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update():Void;
	function updateRow(inRowIndex:Dynamic):Dynamic;
	function updateRowStyles(inRowIndex:Dynamic):Void;
	function updateStructure():Void;
	function getCachedTemplate():Dynamic;
	function onAfterRow(inRowIndex:Dynamic, cells:Array<Dynamic>, inRowNode:Dynamic):Void;
	function onBeforeRow(inRowIndex:Dynamic, cells:Dynamic):Void;
	function onBlur():Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onDblClick(event:Dynamic):Void;
	function onDeselected(inIndex:Dynamic):Void;
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
	function onSelected(inIndex:Dynamic):Void;
	function onShow():Void;
}
extern class _RowSelector extends dojox.grid._View {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ClassTag, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DefaultWidth, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FirstScroll, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LastTop, value:Float):Void { })
	@:overload(function(property:MarginBottom, value:Float):Void { })
	@:overload(function(property:Noscroll, value:Bool):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PadBorderWidth, value:Float):Void { })
	@:overload(function(property:RowPad, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:ViewWidth, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ClassTag):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DefaultWidth):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FirstScroll):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LastTop):Float { })
	@:overload(function(property:MarginBottom):Float { })
	@:overload(function(property:Noscroll):Bool { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PadBorderWidth):Float { })
	@:overload(function(property:RowPad):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:ViewWidth):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ClassTag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FirstScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LastTop, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MarginBottom, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Noscroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PadBorderWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowPad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var classTag : String;
	var containerNode : HTMLElement;
	var defaultWidth : String;
	var dir : String;
	var domNode : HTMLElement;
	var firstScroll : Float;
	var focused : Bool;
	var id : String;
	var lang : String;
	var lastTop : Float;
	var marginBottom : Float;
	var noscroll : Bool;
	var observer : String;
	var ownerDocument : Dynamic;
	var padBorderWidth : Float;
	var rowPad : Float;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var viewWidth : String;
	function adaptHeight(minusScroll:Dynamic):Void;
	function adaptWidth():Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function buildRow(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function buildRowContent(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function convertColPctToFixed():Bool;
	function createRowNode(inRowIndex:Dynamic):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchContentEvent(e:Dynamic):Dynamic;
	function dispatchHeaderEvent(e:Dynamic):Dynamic;
	function doContentEvent(e:Dynamic):Void;
	function doHeaderEvent(e:Dynamic):Void;
	function domouseout(e:Dynamic):Void;
	function domouseover(e:Dynamic):Void;
	function doscroll(inEvent:Dynamic):Void;
	function doStyleRowNode(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function focus():Void;
	function getCellNode(inRowIndex:Dynamic, inCellIndex:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getColumnsWidth():Float;
	function getContentWidth():String;
	function getDescendants():Array<Dynamic>;
	function getHeaderCellNode(inCellIndex:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRowNode(inRowIndex:Dynamic):Dynamic;
	function getScrollbarWidth():Dynamic;
	function getWidth():Dynamic;
	function hasHScrollbar(reset:Dynamic):Bool;
	function hasVScrollbar(reset:Dynamic):Bool;
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
	function render():Void;
	function renderHeader():Void;
	function renderRow(inRowIndex:Dynamic):Dynamic;
	function resize():Void;
	function rowRemoved(inRowIndex:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setColumnsWidth(width:Dynamic):Void;
	function setColWidth(inIndex:Dynamic, inWidth:Dynamic):Void;
	function setScrollTop(inTop:Dynamic):Dynamic;
	function setSize(w:Dynamic, h:Dynamic):Void;
	function setStructure(inStructure:Dynamic):Void;
	function startup():Void;
	function styleRow(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function styleRowNode(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function testFlexCells():Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update():Void;
	function updateRow():Void;
	function updateRowStyles(inRowIndex:Dynamic):Void;
	function updateStructure():Void;
	function getCachedTemplate():Dynamic;
	@:overload(function(inRowIndex:Dynamic, cells:Array<Array<Dynamic>>, inRowNode:Dynamic):Void { })
	function onAfterRow(inRowIndex:Dynamic, cells:Array<Dynamic>, inRowNode:Dynamic):Void;
	function onBeforeRow(inRowIndex:Dynamic, cells:Dynamic):Void;
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
extern class DataSelection extends dojox.grid.Selection {
	function new(grid:Dynamic):Void;
	var mode : String;
	var rangeStartIndex : Float;
	var selected : Dynamic;
	var selectedIndex : Float;
	var updating : Float;
	function addToSelection(inItemOrIndex:Dynamic):Void;
	function clear():Void;
	function clickSelect(inIndex:Dynamic, inCtrlKey:Dynamic, inShiftKey:Dynamic):Void;
	function clickSelectEvent(e:Dynamic):Void;
	function deselect(inItemOrIndex:Dynamic):Void;
	function deselectAll(inItemOrIndex:Dynamic):Void;
	function deselectRange(inFrom:Dynamic, inTo:Dynamic):Void;
	function destroy():Void;
	function getFirstSelected():Dynamic;
	function getNextSelected(inPrev:Dynamic):Dynamic;
	function getSelected():Array<Dynamic>;
	function getSelectedCount():Float;
	function insert(inIndex:Dynamic):Void;
	function isSelected(inIndex:Dynamic):Dynamic;
	function remove(inIndex:Dynamic):Void;
	function select(inIndex:Dynamic):Void;
	function selectRange(inFrom:Dynamic, inTo:Dynamic):Void;
	function setMode(mode:Dynamic):Void;
	function setSelected(inIndex:Dynamic, inSelect:Dynamic):Void;
	function toggleSelect(inIndex:Dynamic):Void;
	function onCanDeselect(inIndex:Dynamic):Dynamic;
	function onCanSelect(inIndex:Dynamic):Dynamic;
	function onChanged():Void;
	function onChanging():Void;
	function onDeselected(inIndex:Dynamic):Void;
	function onSelected(inIndex:Dynamic):Void;
}
extern class _View extends dijit._Widget {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ClassTag, value:String):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DefaultWidth, value:String):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:FirstScroll, value:Float):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LastTop, value:Float):Void { })
	@:overload(function(property:MarginBottom, value:Float):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:RowPad, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:ViewWidth, value:String):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ClassTag):String { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DefaultWidth):String { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:FirstScroll):Float { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LastTop):Float { })
	@:overload(function(property:MarginBottom):Float { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:RowPad):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:ViewWidth):String { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ClassTag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FirstScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LastTop, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:MarginBottom, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowPad, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ViewWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var baseClass : String;
	var class : String;
	var classTag : String;
	var containerNode : HTMLElement;
	var defaultWidth : String;
	var dir : String;
	var domNode : HTMLElement;
	var firstScroll : Float;
	var focused : Bool;
	var id : String;
	var lang : String;
	var lastTop : Float;
	var marginBottom : Float;
	var observer : String;
	var ownerDocument : Dynamic;
	var rowPad : Float;
	var searchContainerNode : Bool;
	var srcNodeRef : HTMLElement;
	var style : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var viewWidth : String;
	function adaptHeight(minusScroll:Dynamic):Void;
	function adaptWidth():Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function buildRendering():Void;
	function buildRow(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function buildRowContent(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function convertColPctToFixed():Bool;
	function createRowNode(inRowIndex:Dynamic):Dynamic;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchContentEvent(e:Dynamic):Dynamic;
	function dispatchHeaderEvent(e:Dynamic):Dynamic;
	function doContentEvent(e:Dynamic):Void;
	function doHeaderEvent(e:Dynamic):Void;
	function doscroll(inEvent:Dynamic):Void;
	function doStyleRowNode(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function focus():Void;
	function getCellNode(inRowIndex:Dynamic, inCellIndex:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getColumnsWidth():Float;
	function getContentWidth():String;
	function getDescendants():Array<Dynamic>;
	function getHeaderCellNode(inCellIndex:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRowNode(inRowIndex:Dynamic):Dynamic;
	function getScrollbarWidth():Dynamic;
	function getWidth():String;
	function hasHScrollbar(reset:Dynamic):Bool;
	function hasVScrollbar(reset:Dynamic):Bool;
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
	function render():Void;
	function renderHeader():Void;
	function renderRow(inRowIndex:Dynamic):Dynamic;
	function resize():Void;
	function rowRemoved(inRowIndex:Dynamic):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setColumnsWidth(width:Dynamic):Void;
	function setColWidth(inIndex:Dynamic, inWidth:Dynamic):Void;
	function setScrollTop(inTop:Dynamic):Dynamic;
	function setSize(w:Dynamic, h:Dynamic):Void;
	function setStructure(inStructure:Dynamic):Void;
	function startup():Void;
	function styleRow(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function styleRowNode(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function testFlexCells():Dynamic;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update():Void;
	function updateRow(inRowIndex:Dynamic):Dynamic;
	function updateRowStyles(inRowIndex:Dynamic):Void;
	function updateStructure():Void;
	function getCachedTemplate():Dynamic;
	@:overload(function(inRowIndex:Dynamic, cells:Array<Array<Dynamic>>, inRowNode:Dynamic):Void { })
	function onAfterRow(inRowIndex:Dynamic, cells:Array<Dynamic>, inRowNode:Dynamic):Void;
	function onBeforeRow(inRowIndex:Dynamic, cells:Dynamic):Void;
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
extern class LazyTreeGridStoreModel extends dijit.tree.ForestStoreModel {
	function new(args:Dynamic):Void;
	var childrenAttrs : Dynamic;
	var deferItemLoadingUntilExpand : Bool;
	var labelAttr : String;
	var newItemIdAttr : String;
	var query : String;
	var root : Dynamic;
	var rootId : String;
	var rootLabel : String;
	var serverStore : Bool;
	var store : Dynamic;
	function destroy():Void;
	function fetchItemByIdentity(keywordArgs:Dynamic):Void;
	function getChildren(parentItem:dojo.data.api.Item, onComplete:{ }, onError:haxe.Constraints.Function, ?queryObj:Dynamic):Void;
	function getIdentity(item:Dynamic):Dynamic;
	function getLabel(item:Dynamic):Dynamic;
	function getRoot(onItem:Dynamic, onError:Dynamic):Void;
	function isItem(something:Dynamic):Bool;
	function mayHaveChildren(item:dojo.data.api.Item):Dynamic;
	function newItem(args:dijit.tree.dndSource.__Item, parent:Dynamic, insertIndex:Float):Dynamic;
	function pasteItem(childItem:Dynamic, oldParentItem:Dynamic, newParentItem:Dynamic, bCopy:Bool, insertIndex:Float):Void;
	function onAddToRoot(item:Dynamic):Void;
	function onChange(item:dojo.data.api.Item):Void;
	function onChildrenChange(parent:dojo.data.api.Item, newChildrenList:Array<dojo.data.api.Item>):Void;
	function onDelete(item:dojo.data.api.Item):Void;
	function onDeleteItem(item:Dynamic):Void;
	function onLeaveRoot(item:Dynamic):Void;
	function onNewItem(item:Dynamic, parentInfo:Dynamic):Void;
	function onNewRootItem(args:dijit.tree.dndSource.__Item):Void;
	@:overload(function(item:Dynamic, attribute:String, oldValue:Array<Dynamic>, newValue:Dynamic):Void { })
	@:overload(function(item:Dynamic, attribute:String, oldValue:Dynamic, newValue:Array<Dynamic>):Void { })
	@:overload(function(item:Dynamic, attribute:String, oldValue:Array<Dynamic>, newValue:Array<Dynamic>):Void { })
	function onSetItem(item:Dynamic, attribute:String, oldValue:Dynamic, newValue:Dynamic):Void;
}
extern class Selection {
	function new(inGrid:Dynamic):Void;
	var mode : String;
	var rangeStartIndex : Float;
	var selected : Dynamic;
	var selectedIndex : Float;
	var updating : Float;
	function addToSelection(inIndex:Dynamic):Void;
	function clear():Void;
	function clickSelect(inIndex:Dynamic, inCtrlKey:Dynamic, inShiftKey:Dynamic):Void;
	function clickSelectEvent(e:Dynamic):Void;
	function deselect(inIndex:Dynamic):Void;
	function deselectAll(inExcept:Dynamic):Void;
	function deselectRange(inFrom:Dynamic, inTo:Dynamic):Void;
	function getFirstSelected():Float;
	function getNextSelected(inPrev:Dynamic):Float;
	function getSelected():Array<Dynamic>;
	function getSelectedCount():Float;
	function insert(inIndex:Dynamic):Void;
	function isSelected(inIndex:Dynamic):Dynamic;
	function remove(inIndex:Dynamic):Void;
	function select(inIndex:Dynamic):Void;
	function selectRange(inFrom:Dynamic, inTo:Dynamic):Void;
	function setMode(mode:Dynamic):Void;
	function setSelected(inIndex:Dynamic, inSelect:Dynamic):Void;
	function toggleSelect(inIndex:Dynamic):Void;
	function onCanDeselect(inIndex:Dynamic):Dynamic;
	function onCanSelect(inIndex:Dynamic):Dynamic;
	function onChanged():Void;
	function onChanging():Void;
	function onDeselected(inIndex:Dynamic):Void;
	function onSelected(inIndex:Dynamic):Void;
}
extern class TreeSelection extends dojox.grid.DataSelection {
	function new(grid:Dynamic):Void;
	var mode : String;
	var rangeStartIndex : Float;
	var selected : Dynamic;
	var selectedIndex : Float;
	var updating : Float;
	function addToSelection(inItemOrIndex:Dynamic):Void;
	function clear():Void;
	function clickSelect(inIndex:Dynamic, inCtrlKey:Dynamic, inShiftKey:Dynamic):Void;
	function clickSelectEvent(e:Dynamic):Void;
	function deselect(inItemOrIndex:Dynamic):Void;
	function deselectAll(inItemOrIndex:Dynamic):Void;
	function deselectRange(inFrom:Dynamic, inTo:Dynamic):Void;
	function destroy():Void;
	function getFirstSelected():Dynamic;
	function getNextSelected(inPrev:Dynamic):Dynamic;
	function getSelected():Array<Dynamic>;
	function getSelectedCount():Float;
	function insert(inIndex:Dynamic):Void;
	function isSelected(inIndex:Dynamic):Dynamic;
	function remove(inIndex:Dynamic):Void;
	function select(inIndex:Dynamic):Void;
	function selectRange(inFrom:Dynamic, inTo:Dynamic):Void;
	function setMode(mode:Dynamic):Void;
	function setSelected(inIndex:Dynamic, inSelect:Dynamic):Void;
	function toggleSelect(inIndex:Dynamic):Void;
	function onCanDeselect(inIndex:Dynamic):Dynamic;
	function onCanSelect(inIndex:Dynamic):Dynamic;
	function onChanged():Void;
	function onChanging():Void;
	function onDeselected(inIndex:Dynamic):Void;
	function onSelected(inIndex:Dynamic):Void;
}
extern class DataGrid extends dojox.grid._Grid {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoHeight, value:Bool):Void { })
	@:overload(function(property:AutoRender, value:Bool):Void { })
	@:overload(function(property:AutoWidth, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:CellOverClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ClassTag, value:String):Void { })
	@:overload(function(property:ColumnReordering, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DefaultHeight, value:String):Void { })
	@:overload(function(property:DelayScroll, value:Bool):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:ElasticView, value:Float):Void { })
	@:overload(function(property:ErrorMessage, value:String):Void { })
	@:overload(function(property:EscapeHTMLInData, value:Bool):Void { })
	@:overload(function(property:FastScroll, value:Bool):Void { })
	@:overload(function(property:FetchText, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatterScope, value:Dynamic):Void { })
	@:overload(function(property:HeaderMenu, value:Dynamic):Void { })
	@:overload(function(property:Height, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InitialWidth, value:String):Void { })
	@:overload(function(property:Invalidated, value:Dynamic):Void { })
	@:overload(function(property:Items, value:Dynamic):Void { })
	@:overload(function(property:KeepRows, value:Float):Void { })
	@:overload(function(property:KeepSelection, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LoadingMessage, value:String):Void { })
	@:overload(function(property:NoDataMessage, value:String):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PlaceholderLabel, value:String):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:RowCount, value:Float):Void { })
	@:overload(function(property:RowHeight, value:Float):Void { })
	@:overload(function(property:RowSelector, value:Bool):Void { })
	@:overload(function(property:RowsPerPage, value:Float):Void { })
	@:overload(function(property:ScrollRedrawThreshold, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selectable, value:Bool):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:SingleClickEdit, value:Bool):Void { })
	@:overload(function(property:SortFields, value:Dynamic):Void { })
	@:overload(function(property:SortInfo, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Structure, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Summary, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UpdateDelay, value:Float):Void { })
	@:overload(function(property:Updating, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoHeight):Bool { })
	@:overload(function(property:AutoRender):Bool { })
	@:overload(function(property:AutoWidth):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:CellOverClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ClassTag):String { })
	@:overload(function(property:ColumnReordering):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DefaultHeight):String { })
	@:overload(function(property:DelayScroll):Bool { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:ElasticView):Float { })
	@:overload(function(property:ErrorMessage):String { })
	@:overload(function(property:EscapeHTMLInData):Bool { })
	@:overload(function(property:FastScroll):Bool { })
	@:overload(function(property:FetchText):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatterScope):Dynamic { })
	@:overload(function(property:HeaderMenu):Dynamic { })
	@:overload(function(property:Height):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InitialWidth):String { })
	@:overload(function(property:Invalidated):Dynamic { })
	@:overload(function(property:Items):Dynamic { })
	@:overload(function(property:KeepRows):Float { })
	@:overload(function(property:KeepSelection):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LoadingMessage):String { })
	@:overload(function(property:NoDataMessage):String { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PlaceholderLabel):String { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:RowCount):Float { })
	@:overload(function(property:RowHeight):Float { })
	@:overload(function(property:RowSelector):Bool { })
	@:overload(function(property:RowsPerPage):Float { })
	@:overload(function(property:ScrollRedrawThreshold):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selectable):Bool { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:SingleClickEdit):Bool { })
	@:overload(function(property:SortFields):Dynamic { })
	@:overload(function(property:SortInfo):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Structure):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Summary):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UpdateDelay):Float { })
	@:overload(function(property:Updating):Bool { })
	@:overload(function(name:Dynamic):Dynamic { })
	@:overload(function(inRowIndex:Float, inItem:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoRender, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellOverClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ClassTag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnReordering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DelayScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ElasticView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrorMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EscapeHTMLInData, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FastScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FetchText, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatterScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HeaderMenu, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InitialWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Invalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Items, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:KeepRows, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:KeepSelection, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LoadingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoDataMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceholderLabel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowSelector, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowsPerPage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollRedrawThreshold, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selectable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SingleClickEdit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SortFields, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SortInfo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Structure, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Summary, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UpdateDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Updating, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var autoHeight : Bool;
	var autoRender : Bool;
	var autoWidth : Bool;
	var baseClass : String;
	var cellOverClass : String;
	var class : String;
	var classTag : String;
	var columnReordering : Bool;
	var containerNode : HTMLElement;
	var defaultHeight : String;
	var delayScroll : Bool;
	var dir : String;
	var domNode : HTMLElement;
	var editable : Bool;
	var elasticView : Float;
	var errorMessage : String;
	var escapeHTMLInData : Bool;
	var fastScroll : Bool;
	var fetchText : String;
	var focused : Bool;
	var formatterScope : Dynamic;
	var headerMenu : Dynamic;
	var height : String;
	var id : String;
	var initialWidth : String;
	var invalidated : Dynamic;
	var items : Dynamic;
	var keepRows : Float;
	var keepSelection : Bool;
	var lang : String;
	var loadingMessage : String;
	var noDataMessage : String;
	var observer : String;
	var ownerDocument : Dynamic;
	var placeholderLabel : String;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var rowCount : Float;
	var rowHeight : Float;
	var rowSelector : Bool;
	var rowsPerPage : Float;
	var scrollRedrawThreshold : Float;
	var searchContainerNode : Bool;
	var selectable : Bool;
	var selectionMode : String;
	var singleClickEdit : Bool;
	var sortFields : Dynamic;
	var sortInfo : Float;
	var srcNodeRef : HTMLElement;
	var store : Dynamic;
	var structure : Dynamic;
	var style : String;
	var summary : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var updateDelay : Float;
	var updating : Bool;
	function addRow():Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function beginUpdate():Void;
	function buildRendering():Void;
	function buildViews():Void;
	function canEdit(inCell:Dynamic, inRowIndex:Dynamic):Dynamic;
	function canSort():Bool;
	function cell_markupFactory(cellFunc:Dynamic, node:Dynamic, cellDef:Dynamic):Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createLayout():Void;
	function createManagers():Void;
	function createScroller():Void;
	function createSelection():Void;
	function createView(inClass:Dynamic, idx:Dynamic):Dynamic;
	function createViews():Void;
	function defaultUpdate():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchContentEvent(e:Dynamic):Void;
	function dispatchHeaderEvent(e:Dynamic):Void;
	function dispatchKeyEvent(e:Dynamic):Void;
	function doApplyCellEdit(inValue:Dynamic, inRowIndex:Dynamic, inAttrName:Dynamic):Void;
	function doApplyEdit(inRowIndex:Dynamic, ?inDataAttr:Dynamic):Void;
	function doCancelEdit(inRowIndex:Dynamic):Void;
	function doclick(e:Dynamic):Void;
	function docontextmenu(e:Dynamic):Void;
	function dodblclick(e:Dynamic):Void;
	function doheaderclick(e:Dynamic):Void;
	function doheadercontextmenu(e:Dynamic):Void;
	function doheaderdblclick(e:Dynamic):Void;
	function dokeydown(e:Dynamic):Void;
	function doKeyEvent(e:Dynamic):Void;
	function doStartEdit(inCell:Dynamic, inRowIndex:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function endUpdate():Void;
	function filter(query:Dynamic, reRender:Dynamic):Void;
	function finishScrollJob():Void;
	function getCell(inIndex:Float):Dynamic;
	function getCellName(inCell:Dynamic):Dynamic;
	function getCellNodeTextDirection(inColIndex:Dynamic, inRowIndex:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getColumnTogglingItems():Dynamic;
	function getDescendants():Array<Dynamic>;
	function getItem(idx:Dynamic):Dynamic;
	function getItemIndex(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRowNode(inRowIndex:Dynamic):Dynamic;
	function getSortAsc(inSortInfo:Dynamic):Dynamic;
	function getSortIndex(inSortInfo:Dynamic):Float;
	function getSortProps():Dynamic;
	function hasLayout():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function markupFactory(props:Dynamic, node:Dynamic, ctor:Dynamic, cellFunc:Dynamic):Void;
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
	function postrender():Void;
	function postresize():Void;
	function prerender():Void;
	function removeSelectedRows():Void;
	function render():Void;
	function resize(changeSize:Dynamic, resultSize:Dynamic):Void;
	function rowHeightChanged(inRowIndex:Float):Void;
	function scrollTo(inTop:Float):Void;
	function scrollToRow(inRowIndex:Float):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setCellNodeTextDirection(inColIndex:Dynamic, inRowIndex:Dynamic, textDir:Dynamic):Void;
	function setCellWidth(inIndex:Dynamic, inUnitWidth:Dynamic):Void;
	function setHeaderMenu(menu:dijit.Menu):Void;
	function setItems(items:Dynamic):Void;
	function setQuery(query:Dynamic, queryOptions:Dynamic):Void;
	function setScrollTop(inTop:Dynamic):Void;
	function setSortIndex(inIndex:Float, inAsc:Bool):Void;
	function setSortInfo(inSortInfo:Dynamic):Void;
	function setStore(store:Dynamic, query:Dynamic, queryOptions:Dynamic):Void;
	@:overload(function(inStructure:Array<Dynamic>):Void { })
	@:overload(function(inStructure:Array<Array<Dynamic>>):Void { })
	function setStructure(inStructure:Dynamic):Void;
	function setupHeaderMenu():Void;
	function showMessage(message:Dynamic):Void;
	function sizeChange():Void;
	function sort():Void;
	function startup():Void;
	function styleRowState(inRow:Dynamic):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function textSizeChanged():Void;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update():Void;
	function updateRow(inRowIndex:Float):Void;
	function updateRowCount(inRowCount:Float):Void;
	function updateRows(startIndex:Float, howMany:Float):Void;
	function updateRowStyles(inRowIndex:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onApplyCellEdit(inValue:String, inRowIndex:Float, inFieldIndex:Float):Void;
	function onApplyEdit(inRowIndex:Float):Void;
	function onBlur():Void;
	function onCancelEdit(inRowIndex:Float):Void;
	function onCanDeselect(inRowIndex:Float):Dynamic;
	function onCanSelect(inRowIndex:Float):Dynamic;
	function onCellClick(e:Event):Void;
	function onCellContextMenu(e:Event):Void;
	function onCellDblClick(e:Event):Void;
	function onCellFocus(inCell:Dynamic, inRowIndex:Float):Void;
	function onCellMouseDown(e:Event):Void;
	function onCellMouseOut(e:Event):Void;
	function onCellMouseOver(e:Event):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onContentEvent(e:Dynamic):Void;
	function onDblClick(event:Dynamic):Void;
	function onDeselected(inRowIndex:Float):Void;
	function onFetchError(err:Dynamic, req:Dynamic):Void;
	function onFocus():Void;
	function onHeaderCellClick(e:Event):Void;
	function onHeaderCellContextMenu(e:Event):Void;
	function onHeaderCellDblClick(e:Event):Void;
	function onHeaderCellMouseDown(e:Event):Void;
	function onHeaderCellMouseOut(e:Event):Void;
	function onHeaderCellMouseOver(e:Event):Void;
	function onHeaderClick(e:Event):Void;
	function onHeaderContextMenu(e:Event):Void;
	function onHeaderDblClick(e:Event):Void;
	function onHeaderEvent(e:Dynamic):Void;
	function onHeaderMouseOut(e:Event):Void;
	function onHeaderMouseOver(e:Event):Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyEvent(e:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseDownRow(e:Event):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOutRow(e:Event):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseOverRow(e:Event):Void;
	function onMouseUp(event:Dynamic):Void;
	function onMoveColumn():Void;
	function onResizeColumn(cellIdx:Float):Void;
	function onRowClick(e:Event):Void;
	function onRowContextMenu(e:Event):Void;
	function onRowDblClick(e:Event):Void;
	function onRowMouseDown(e:Event):Void;
	function onRowMouseOut(e:Event):Void;
	function onRowMouseOver(e:Event):Void;
	function onSelected(inRowIndex:Float):Void;
	function onSelectionChanged():Void;
	function onShow():Void;
	function onStartEdit(inCell:Dynamic, inRowIndex:Float):Void;
	function onStyleRow(inRow:Dynamic):Void;
}
extern class EnhancedGrid extends dojox.grid.DataGrid {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var attachScope : Dynamic;
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoHeight, value:Bool):Void { })
	@:overload(function(property:AutoRender, value:Bool):Void { })
	@:overload(function(property:AutoWidth, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:CellOverClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ClassTag, value:String):Void { })
	@:overload(function(property:ColumnReordering, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DefaultHeight, value:String):Void { })
	@:overload(function(property:DelayScroll, value:Bool):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:ElasticView, value:Float):Void { })
	@:overload(function(property:ErrorMessage, value:String):Void { })
	@:overload(function(property:EscapeHTMLInData, value:Bool):Void { })
	@:overload(function(property:FastScroll, value:Bool):Void { })
	@:overload(function(property:FetchText, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatterScope, value:Dynamic):Void { })
	@:overload(function(property:HeaderMenu, value:Dynamic):Void { })
	@:overload(function(property:Height, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InitialWidth, value:String):Void { })
	@:overload(function(property:Invalidated, value:Dynamic):Void { })
	@:overload(function(property:Items, value:Dynamic):Void { })
	@:overload(function(property:KeepRows, value:Float):Void { })
	@:overload(function(property:KeepSelection, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LoadingMessage, value:String):Void { })
	@:overload(function(property:NoDataMessage, value:String):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PlaceholderLabel, value:String):Void { })
	@:overload(function(property:PluginMgr, value:Dynamic):Void { })
	@:overload(function(property:Plugins, value:Dynamic):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:RowCount, value:Float):Void { })
	@:overload(function(property:RowHeight, value:Float):Void { })
	@:overload(function(property:RowSelector, value:Bool):Void { })
	@:overload(function(property:RowsPerPage, value:Float):Void { })
	@:overload(function(property:ScrollRedrawThreshold, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selectable, value:Bool):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:SingleClickEdit, value:Bool):Void { })
	@:overload(function(property:SortFields, value:Dynamic):Void { })
	@:overload(function(property:SortInfo, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Structure, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Summary, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:UpdateDelay, value:Float):Void { })
	@:overload(function(property:Updating, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:AttachScope, value:Dynamic):Void;
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoHeight):Bool { })
	@:overload(function(property:AutoRender):Bool { })
	@:overload(function(property:AutoWidth):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:CellOverClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ClassTag):String { })
	@:overload(function(property:ColumnReordering):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DefaultHeight):String { })
	@:overload(function(property:DelayScroll):Bool { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:ElasticView):Float { })
	@:overload(function(property:ErrorMessage):String { })
	@:overload(function(property:EscapeHTMLInData):Bool { })
	@:overload(function(property:FastScroll):Bool { })
	@:overload(function(property:FetchText):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatterScope):Dynamic { })
	@:overload(function(property:HeaderMenu):Dynamic { })
	@:overload(function(property:Height):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InitialWidth):String { })
	@:overload(function(property:Invalidated):Dynamic { })
	@:overload(function(property:Items):Dynamic { })
	@:overload(function(property:KeepRows):Float { })
	@:overload(function(property:KeepSelection):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LoadingMessage):String { })
	@:overload(function(property:NoDataMessage):String { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PlaceholderLabel):String { })
	@:overload(function(property:PluginMgr):Dynamic { })
	@:overload(function(property:Plugins):Dynamic { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:RowCount):Float { })
	@:overload(function(property:RowHeight):Float { })
	@:overload(function(property:RowSelector):Bool { })
	@:overload(function(property:RowsPerPage):Float { })
	@:overload(function(property:ScrollRedrawThreshold):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selectable):Bool { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:SingleClickEdit):Bool { })
	@:overload(function(property:SortFields):Dynamic { })
	@:overload(function(property:SortInfo):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Structure):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Summary):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:UpdateDelay):Float { })
	@:overload(function(property:Updating):Bool { })
	@:overload(function(inRowIndex:Float, inItem:Dynamic):Dynamic { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:AttachScope):Dynamic;
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoRender, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellOverClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ClassTag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnReordering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DelayScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ElasticView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrorMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EscapeHTMLInData, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FastScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FetchText, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatterScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HeaderMenu, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InitialWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Invalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Items, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:KeepRows, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:KeepSelection, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LoadingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoDataMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceholderLabel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PluginMgr, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Plugins, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowSelector, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowsPerPage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollRedrawThreshold, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selectable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SingleClickEdit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SortFields, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SortInfo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Structure, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Summary, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UpdateDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Updating, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:AttachScope, callback:{ }):{ function unwatch():Void; };
	var attributeMap : Dynamic;
	var autoHeight : Bool;
	var autoRender : Bool;
	var autoWidth : Bool;
	var baseClass : String;
	var cellOverClass : String;
	var class : String;
	var classTag : String;
	var columnReordering : Bool;
	var containerNode : HTMLElement;
	var defaultHeight : String;
	var delayScroll : Bool;
	var dir : String;
	var domNode : HTMLElement;
	var editable : Bool;
	var elasticView : Float;
	var errorMessage : String;
	var escapeHTMLInData : Bool;
	var fastScroll : Bool;
	var fetchText : String;
	var focused : Bool;
	var formatterScope : Dynamic;
	var headerMenu : Dynamic;
	var height : String;
	var id : String;
	var initialWidth : String;
	var invalidated : Dynamic;
	var items : Dynamic;
	var keepRows : Float;
	var keepSelection : Bool;
	var lang : String;
	var loadingMessage : String;
	var noDataMessage : String;
	var observer : String;
	var ownerDocument : Dynamic;
	var placeholderLabel : String;
	var pluginMgr : Dynamic;
	var plugins : Dynamic;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var rowCount : Float;
	var rowHeight : Float;
	var rowSelector : Bool;
	var rowsPerPage : Float;
	var scrollRedrawThreshold : Float;
	var searchContainerNode : Bool;
	var selectable : Bool;
	var selectionMode : String;
	var singleClickEdit : Bool;
	var sortFields : Dynamic;
	var sortInfo : Float;
	var srcNodeRef : HTMLElement;
	var store : Dynamic;
	var structure : Dynamic;
	var style : String;
	var summary : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var updateDelay : Float;
	var updating : Bool;
	function addRow():Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function beginUpdate():Void;
	function buildRendering():Void;
	function buildViews():Void;
	function canEdit(inCell:Dynamic, inRowIndex:Dynamic):Dynamic;
	function canSort(?colIndex:Dynamic, ?field:Dynamic):Bool;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createLayout():Void;
	function createManagers():Void;
	function createScroller():Void;
	function createSelection():Void;
	function createView():Dynamic;
	function createViews():Void;
	function defaultUpdate():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchContentEvent(e:Dynamic):Void;
	function dispatchHeaderEvent(e:Dynamic):Void;
	function dispatchKeyEvent(e:Dynamic):Void;
	function doApplyCellEdit(inValue:Dynamic, inRowIndex:Dynamic, inAttrName:Dynamic):Void;
	function doApplyEdit(inRowIndex:Dynamic, inDataAttr:Dynamic):Void;
	function doCancelEdit(inRowIndex:Dynamic):Void;
	function doclick(e:Dynamic):Void;
	function docontextmenu(e:Dynamic):Void;
	function dodblclick(e:Dynamic):Void;
	function doheaderclick(e:Dynamic):Void;
	function doheadercontextmenu(e:Dynamic):Void;
	function doheaderdblclick(e:Dynamic):Void;
	function dokeydown(e:Dynamic):Void;
	function doKeyEvent(e:Dynamic):Void;
	function doStartEdit(inCell:Dynamic, inRowIndex:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function endUpdate():Void;
	function filter(query:Dynamic, reRender:Dynamic):Void;
	function finishScrollJob():Void;
	function getCell(inIndex:Float):Dynamic;
	function getCellByField(field:Dynamic):Dynamic;
	function getCellName(inCell:Dynamic):Dynamic;
	function getCellNodeTextDirection(inColIndex:Dynamic, inRowIndex:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getColumnTogglingItems():Dynamic;
	function getDescendants():Array<Dynamic>;
	function getItem(idx:Dynamic):Dynamic;
	function getItemIndex(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRowNode(inRowIndex:Dynamic):Dynamic;
	function getSortAsc(inSortInfo:Dynamic):Dynamic;
	function getSortIndex(inSortInfo:Dynamic):Float;
	function getSortProps():Dynamic;
	function hasLayout():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function markupFactory(props:Dynamic, node:Dynamic, ctor:Dynamic, cellFunc:Dynamic):Void;
	function mixin(target:Dynamic, source:Dynamic):Void;
	@:overload(function(type:haxe.Constraints.Function, func:haxe.Constraints.Function):Dynamic { })
	function on(type:String, func:haxe.Constraints.Function):Dynamic;
	function own():Dynamic;
	@:overload(function(reference:HTMLElement, position:String):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:String):Dynamic { })
	@:overload(function(reference:String, position:Float):Dynamic { })
	@:overload(function(reference:HTMLElement, position:Float):Dynamic { })
	@:overload(function(reference:dijit._WidgetBase, position:Float):Dynamic { })
	function placeAt(reference:String, position:String):Dynamic;
	function plugin(name:String):Dynamic;
	function postCreate():Void;
	function postMixInProperties():Void;
	function postrender():Void;
	function postresize():Void;
	function prerender():Void;
	function registerPlugin(clazz:Dynamic, props:Dynamic):Void;
	function removeSelectedRows():Void;
	function render():Void;
	function resize(changeSize:Dynamic, resultSize:Dynamic):Void;
	function rowHeightChanged(inRowIndex:Float):Void;
	function scrollTo(inTop:Float):Void;
	function scrollToRow(inRowIndex:Float):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setCellNodeTextDirection(inColIndex:Dynamic, inRowIndex:Dynamic, textDir:Dynamic):Void;
	function setCellWidth(inIndex:Dynamic, inUnitWidth:Dynamic):Void;
	function setHeaderMenu(menu:dijit.Menu):Void;
	function setItems(items:Dynamic):Void;
	function setQuery(query:Dynamic, queryOptions:Dynamic):Void;
	function setScrollTop(inTop:Dynamic):Void;
	function setSortIndex(inIndex:Float, inAsc:Bool):Void;
	function setSortInfo(inSortInfo:Dynamic):Void;
	function setStore(store:Dynamic, query:Dynamic, queryOptions:Dynamic):Void;
	@:overload(function(inStructure:Array<Dynamic>):Void { })
	@:overload(function(inStructure:Array<Array<Dynamic>>):Void { })
	function setStructure(inStructure:Dynamic):Void;
	function setupHeaderMenu():Void;
	function showMessage(message:Dynamic):Void;
	function sizeChange():Void;
	function sort():Void;
	function startup():Void;
	function styleRowState(inRow:Dynamic):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function textSizeChanged():Void;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update():Void;
	function updateRow(inRowIndex:Float):Void;
	function updateRowCount(inRowCount:Float):Void;
	function updateRows(startIndex:Float, howMany:Float):Void;
	function updateRowStyles(inRowIndex:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onApplyCellEdit(inValue:String, inRowIndex:Float, inFieldIndex:Float):Void;
	function onApplyEdit(inRowIndex:Float):Void;
	function onBlur():Void;
	function onCancelEdit(inRowIndex:Float):Void;
	function onCanDeselect(inRowIndex:Float):Dynamic;
	function onCanSelect(inRowIndex:Float):Dynamic;
	function onCellClick(e:Event):Void;
	function onCellContextMenu(e:Event):Void;
	function onCellDblClick(e:Event):Void;
	function onCellFocus(inCell:Dynamic, inRowIndex:Float):Void;
	function onCellMouseDown(e:Event):Void;
	function onCellMouseOut(e:Event):Void;
	function onCellMouseOver(e:Event):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onContentEvent(e:Dynamic):Void;
	function onDblClick(event:Dynamic):Void;
	function onDeselected(inRowIndex:Float):Void;
	function onFetchError(err:Dynamic, req:Dynamic):Void;
	function onFocus():Void;
	function onHeaderCellClick(e:Event):Void;
	function onHeaderCellContextMenu(e:Event):Void;
	function onHeaderCellDblClick(e:Event):Void;
	function onHeaderCellMouseDown(e:Event):Void;
	function onHeaderCellMouseOut(e:Event):Void;
	function onHeaderCellMouseOver(e:Event):Void;
	function onHeaderClick(e:Event):Void;
	function onHeaderContextMenu(e:Event):Void;
	function onHeaderDblClick(e:Event):Void;
	function onHeaderEvent(e:Dynamic):Void;
	function onHeaderMouseOut(e:Event):Void;
	function onHeaderMouseOver(e:Event):Void;
	function onHide():Void;
	function onKeyDown(event:Dynamic):Void;
	function onKeyEvent(e:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseDownRow(e:Event):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOutRow(e:Event):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseOverRow(e:Event):Void;
	function onMouseUp(e:Dynamic):Void;
	function onMoveColumn():Void;
	function onResizeColumn(cellIdx:Float):Void;
	function onRowClick(e:Event):Void;
	function onRowContextMenu(e:Event):Void;
	function onRowDblClick(e:Event):Void;
	function onRowMouseDown(e:Event):Void;
	function onRowMouseOut(e:Event):Void;
	function onRowMouseOver(e:Event):Void;
	function onSelected(inRowIndex:Float):Void;
	function onSelectionChanged():Void;
	function onShow():Void;
	function onStartEdit(inCell:Dynamic, inRowIndex:Float):Void;
	function onStyleRow(inRow:Dynamic):Void;
}
extern class TreeGrid extends dojox.grid.DataGrid {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var aggregator : Dynamic;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoHeight, value:Bool):Void { })
	@:overload(function(property:AutoRender, value:Bool):Void { })
	@:overload(function(property:AutoWidth, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:CellOverClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ClassTag, value:String):Void { })
	@:overload(function(property:ColumnReordering, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DefaultHeight, value:String):Void { })
	@:overload(function(property:DefaultOpen, value:Bool):Void { })
	@:overload(function(property:DelayScroll, value:Bool):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:ElasticView, value:Float):Void { })
	@:overload(function(property:ErrorMessage, value:String):Void { })
	@:overload(function(property:EscapeHTMLInData, value:Bool):Void { })
	@:overload(function(property:ExpandoCell, value:Float):Void { })
	@:overload(function(property:FastScroll, value:Bool):Void { })
	@:overload(function(property:FetchText, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatterScope, value:Dynamic):Void { })
	@:overload(function(property:HeaderMenu, value:Dynamic):Void { })
	@:overload(function(property:Height, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InitialWidth, value:String):Void { })
	@:overload(function(property:Invalidated, value:Dynamic):Void { })
	@:overload(function(property:Items, value:Dynamic):Void { })
	@:overload(function(property:KeepRows, value:Float):Void { })
	@:overload(function(property:KeepSelection, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LoadingMessage, value:String):Void { })
	@:overload(function(property:NoDataMessage, value:String):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OpenAtLevels, value:Array<Dynamic>):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PlaceholderLabel, value:String):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:RowCount, value:Float):Void { })
	@:overload(function(property:RowHeight, value:Float):Void { })
	@:overload(function(property:RowSelector, value:Bool):Void { })
	@:overload(function(property:RowsPerPage, value:Float):Void { })
	@:overload(function(property:ScrollRedrawThreshold, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selectable, value:Bool):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:SingleClickEdit, value:Bool):Void { })
	@:overload(function(property:SortChildItems, value:Bool):Void { })
	@:overload(function(property:SortFields, value:Dynamic):Void { })
	@:overload(function(property:SortInfo, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Structure, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Summary, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TreeModel, value:Dynamic):Void { })
	@:overload(function(property:UpdateDelay, value:Float):Void { })
	@:overload(function(property:Updating, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Aggregator, value:Dynamic):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoHeight):Bool { })
	@:overload(function(property:AutoRender):Bool { })
	@:overload(function(property:AutoWidth):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:CellOverClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ClassTag):String { })
	@:overload(function(property:ColumnReordering):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DefaultHeight):String { })
	@:overload(function(property:DefaultOpen):Bool { })
	@:overload(function(property:DelayScroll):Bool { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:ElasticView):Float { })
	@:overload(function(property:ErrorMessage):String { })
	@:overload(function(property:EscapeHTMLInData):Bool { })
	@:overload(function(property:ExpandoCell):Float { })
	@:overload(function(property:FastScroll):Bool { })
	@:overload(function(property:FetchText):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatterScope):Dynamic { })
	@:overload(function(property:HeaderMenu):Dynamic { })
	@:overload(function(property:Height):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InitialWidth):String { })
	@:overload(function(property:Invalidated):Dynamic { })
	@:overload(function(property:Items):Dynamic { })
	@:overload(function(property:KeepRows):Float { })
	@:overload(function(property:KeepSelection):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LoadingMessage):String { })
	@:overload(function(property:NoDataMessage):String { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OpenAtLevels):Array<Dynamic> { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PlaceholderLabel):String { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:RowCount):Float { })
	@:overload(function(property:RowHeight):Float { })
	@:overload(function(property:RowSelector):Bool { })
	@:overload(function(property:RowsPerPage):Float { })
	@:overload(function(property:ScrollRedrawThreshold):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selectable):Bool { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:SingleClickEdit):Bool { })
	@:overload(function(property:SortChildItems):Bool { })
	@:overload(function(property:SortFields):Dynamic { })
	@:overload(function(property:SortInfo):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Structure):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Summary):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TreeModel):Dynamic { })
	@:overload(function(property:UpdateDelay):Float { })
	@:overload(function(property:Updating):Bool { })
	@:overload(function(inRowIndex:Float, inItem:Dynamic):Dynamic { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Aggregator):Dynamic;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoRender, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellOverClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ClassTag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnReordering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultOpen, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DelayScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ElasticView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrorMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EscapeHTMLInData, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExpandoCell, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FastScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FetchText, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatterScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HeaderMenu, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InitialWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Invalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Items, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:KeepRows, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:KeepSelection, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LoadingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoDataMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OpenAtLevels, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceholderLabel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowSelector, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowsPerPage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollRedrawThreshold, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selectable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SingleClickEdit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SortChildItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SortFields, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SortInfo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Structure, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Summary, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TreeModel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UpdateDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Updating, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Aggregator, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoHeight : Bool;
	var autoRender : Bool;
	var autoWidth : Bool;
	var baseClass : String;
	var cellOverClass : String;
	var class : String;
	var classTag : String;
	var columnReordering : Bool;
	var containerNode : HTMLElement;
	var defaultHeight : String;
	var defaultOpen : Bool;
	var delayScroll : Bool;
	var dir : String;
	var domNode : HTMLElement;
	var editable : Bool;
	var elasticView : Float;
	var errorMessage : String;
	var escapeHTMLInData : Bool;
	var expandoCell : Float;
	var fastScroll : Bool;
	var fetchText : String;
	var focused : Bool;
	var formatterScope : Dynamic;
	var headerMenu : Dynamic;
	var height : String;
	var id : String;
	var initialWidth : String;
	var invalidated : Dynamic;
	var items : Dynamic;
	var keepRows : Float;
	var keepSelection : Bool;
	var lang : String;
	var loadingMessage : String;
	var noDataMessage : String;
	var observer : String;
	var openAtLevels : Array<Dynamic>;
	var ownerDocument : Dynamic;
	var placeholderLabel : String;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var rowCount : Float;
	var rowHeight : Float;
	var rowSelector : Bool;
	var rowsPerPage : Float;
	var scrollRedrawThreshold : Float;
	var searchContainerNode : Bool;
	var selectable : Bool;
	var selectionMode : String;
	var singleClickEdit : Bool;
	var sortChildItems : Bool;
	var sortFields : Dynamic;
	var sortInfo : Float;
	var srcNodeRef : HTMLElement;
	var store : Dynamic;
	var structure : Dynamic;
	var style : String;
	var summary : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var treeModel : Dynamic;
	var updateDelay : Float;
	var updating : Bool;
	function addRow():Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function beginUpdate():Void;
	function buildRendering():Void;
	function buildViews():Void;
	function canEdit(inCell:Dynamic, inRowIndex:Dynamic):Dynamic;
	function canSort():Bool;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createLayout():Void;
	function createManagers():Void;
	function createScroller():Void;
	function createSelection():Void;
	function createView(inClass:Dynamic, idx:Dynamic):Dynamic;
	function createViews():Void;
	function defaultUpdate():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchContentEvent(e:Dynamic):Void;
	function dispatchHeaderEvent(e:Dynamic):Void;
	function dispatchKeyEvent(e:Dynamic):Void;
	function doApplyCellEdit(inValue:Dynamic, inRowIndex:Dynamic, inAttrName:Dynamic):Void;
	function doApplyEdit(inRowIndex:Dynamic, inDataAttr:Dynamic):Void;
	function doCancelEdit(inRowIndex:Dynamic):Void;
	function doclick(e:Dynamic):Void;
	function docontextmenu(e:Dynamic):Void;
	function dodblclick(e:Dynamic):Void;
	function doheaderclick(e:Dynamic):Void;
	function doheadercontextmenu(e:Dynamic):Void;
	function doheaderdblclick(e:Dynamic):Void;
	function dokeydown(e:Dynamic):Void;
	function doKeyEvent(e:Dynamic):Void;
	function doStartEdit(inCell:Dynamic, inRowIndex:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function endUpdate():Void;
	function filter(query:Dynamic, reRender:Dynamic):Void;
	function finishScrollJob():Void;
	function getCell(inIndex:Float):Dynamic;
	function getCellName(inCell:Dynamic):Dynamic;
	function getCellNodeTextDirection(inColIndex:Dynamic, inRowIndex:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getColumnTogglingItems():Dynamic;
	function getDefaultOpenState(cellDef:Dynamic, item:Dynamic):Dynamic;
	function getDescendants():Array<Dynamic>;
	@:overload(function(idx:Array<Dynamic>):Dynamic { })
	@:overload(function(idx:String):Dynamic { })
	function getItem(idx:Float):Dynamic;
	function getItemIndex(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRowNode(inRowIndex:Dynamic):Dynamic;
	function getSortAsc(inSortInfo:Dynamic):Dynamic;
	function getSortIndex(inSortInfo:Dynamic):Float;
	function getSortProps():Dynamic;
	function hasLayout():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function markupFactory(props:Dynamic, node:Dynamic, ctor:Dynamic, cellFunc:Dynamic):Void;
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
	function postrender():Void;
	function postresize():Void;
	function prerender():Void;
	function removeSelectedRows():Void;
	function render():Void;
	function resize(changeSize:Dynamic, resultSize:Dynamic):Void;
	function rowHeightChanged(inRowIndex:Float):Void;
	function scrollTo(inTop:Float):Void;
	function scrollToRow(inRowIndex:Float):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setCellNodeTextDirection(inColIndex:Dynamic, inRowIndex:Dynamic, textDir:Dynamic):Void;
	function setCellWidth(inIndex:Dynamic, inUnitWidth:Dynamic):Void;
	function setHeaderMenu(menu:dijit.Menu):Void;
	function setItems(items:Dynamic):Void;
	function setModel(treeModel:Dynamic):Void;
	function setQuery(query:Dynamic, queryOptions:Dynamic):Void;
	function setScrollTop(inTop:Dynamic):Void;
	function setSortIndex(inIndex:Float, inAsc:Bool):Void;
	function setSortInfo(inSortInfo:Dynamic):Void;
	function setStore(store:Dynamic, query:Dynamic, queryOptions:Dynamic):Void;
	@:overload(function(inStructure:Array<Dynamic>):Void { })
	@:overload(function(inStructure:Array<Array<Dynamic>>):Void { })
	function setStructure(inStructure:Dynamic):Void;
	function setupHeaderMenu():Void;
	function showMessage(message:Dynamic):Void;
	function sizeChange():Void;
	function sort():Void;
	function startup():Void;
	function styleRowNode(inRowIndex:Dynamic, inRowNode:Dynamic):Void;
	function styleRowState(inRow:Dynamic):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function textSizeChanged():Void;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update():Void;
	function updateRow(inRowIndex:Float):Void;
	function updateRowCount(inRowCount:Float):Void;
	function updateRows(startIndex:Float, howMany:Float):Void;
	function updateRowStyles(inRowIndex:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onApplyCellEdit(inValue:String, inRowIndex:Float, inFieldIndex:Float):Void;
	function onApplyEdit(inRowIndex:Float):Void;
	function onBlur():Void;
	function onCancelEdit(inRowIndex:Float):Void;
	function onCanDeselect(inRowIndex:Float):Dynamic;
	function onCanSelect(inRowIndex:Dynamic):Dynamic;
	function onCellClick(e:Event):Void;
	function onCellContextMenu(e:Event):Void;
	function onCellDblClick(e:Event):Void;
	function onCellFocus(inCell:Dynamic, inRowIndex:Float):Void;
	function onCellMouseDown(e:Event):Void;
	function onCellMouseOut(e:Event):Void;
	function onCellMouseOver(e:Event):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onContentEvent(e:Dynamic):Void;
	function onDblClick(event:Dynamic):Void;
	function onDeselected(inRowIndex:Float):Void;
	function onFetchError(err:Dynamic, req:Dynamic):Void;
	function onFocus():Void;
	function onHeaderCellClick(e:Event):Void;
	function onHeaderCellContextMenu(e:Event):Void;
	function onHeaderCellDblClick(e:Event):Void;
	function onHeaderCellMouseDown(e:Event):Void;
	function onHeaderCellMouseOut(e:Event):Void;
	function onHeaderCellMouseOver(e:Event):Void;
	function onHeaderClick(e:Event):Void;
	function onHeaderContextMenu(e:Event):Void;
	function onHeaderDblClick(e:Event):Void;
	function onHeaderEvent(e:Dynamic):Void;
	function onHeaderMouseOut(e:Event):Void;
	function onHeaderMouseOver(e:Event):Void;
	function onHide():Void;
	function onKeyDown(e:Dynamic):Void;
	function onKeyEvent(e:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseDownRow(e:Event):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOutRow(e:Event):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseOverRow(e:Event):Void;
	function onMouseUp(event:Dynamic):Void;
	function onMoveColumn():Void;
	function onResizeColumn(cellIdx:Float):Void;
	function onRowClick(e:Event):Void;
	function onRowContextMenu(e:Event):Void;
	function onRowDblClick(e:Event):Void;
	function onRowMouseDown(e:Event):Void;
	function onRowMouseOut(e:Event):Void;
	function onRowMouseOver(e:Event):Void;
	function onSelected(inRowIndex:Float):Void;
	function onSelectionChanged():Void;
	function onShow():Void;
	function onStartEdit(inCell:Dynamic, inRowIndex:Float):Void;
	function onStyleRow(row:Dynamic):Void;
}
extern class LazyTreeGrid extends dojox.grid.TreeGrid {
	function new(?params:Dynamic, ?srcNodeRef:HTMLElement):Void;
	var aggregator : Dynamic;
	@:overload(function(property:AttachScope, value:Dynamic):Void { })
	@:overload(function(property:AttributeMap, value:Dynamic):Void { })
	@:overload(function(property:AutoHeight, value:Bool):Void { })
	@:overload(function(property:AutoRender, value:Bool):Void { })
	@:overload(function(property:AutoWidth, value:Bool):Void { })
	@:overload(function(property:BaseClass, value:String):Void { })
	@:overload(function(property:CellOverClass, value:String):Void { })
	@:overload(function(property:Class, value:String):Void { })
	@:overload(function(property:ClassTag, value:String):Void { })
	@:overload(function(property:ColSpans, value:Dynamic):Void { })
	@:overload(function(property:ColumnReordering, value:Bool):Void { })
	@:overload(function(property:ContainerNode, value:HTMLElement):Void { })
	@:overload(function(property:DefaultHeight, value:String):Void { })
	@:overload(function(property:DefaultOpen, value:Bool):Void { })
	@:overload(function(property:DefaultState, value:Dynamic):Void { })
	@:overload(function(property:DelayScroll, value:Bool):Void { })
	@:overload(function(property:Dir, value:String):Void { })
	@:overload(function(property:DomNode, value:HTMLElement):Void { })
	@:overload(function(property:Editable, value:Bool):Void { })
	@:overload(function(property:ElasticView, value:Float):Void { })
	@:overload(function(property:ErrorMessage, value:String):Void { })
	@:overload(function(property:EscapeHTMLInData, value:Bool):Void { })
	@:overload(function(property:ExpandoCell, value:Float):Void { })
	@:overload(function(property:FastScroll, value:Bool):Void { })
	@:overload(function(property:FetchText, value:String):Void { })
	@:overload(function(property:Focused, value:Bool):Void { })
	@:overload(function(property:FormatterScope, value:Dynamic):Void { })
	@:overload(function(property:HeaderMenu, value:Dynamic):Void { })
	@:overload(function(property:Height, value:String):Void { })
	@:overload(function(property:Id, value:String):Void { })
	@:overload(function(property:InitialWidth, value:String):Void { })
	@:overload(function(property:Invalidated, value:Dynamic):Void { })
	@:overload(function(property:Items, value:Dynamic):Void { })
	@:overload(function(property:KeepRows, value:Float):Void { })
	@:overload(function(property:KeepSelection, value:Bool):Void { })
	@:overload(function(property:Lang, value:String):Void { })
	@:overload(function(property:LoadingMessage, value:String):Void { })
	@:overload(function(property:NoDataMessage, value:String):Void { })
	@:overload(function(property:Observer, value:String):Void { })
	@:overload(function(property:OpenAtLevels, value:Array<Dynamic>):Void { })
	@:overload(function(property:OwnerDocument, value:Dynamic):Void { })
	@:overload(function(property:PlaceholderLabel, value:String):Void { })
	@:overload(function(property:Query, value:Dynamic):Void { })
	@:overload(function(property:QueryOptions, value:Dynamic):Void { })
	@:overload(function(property:RowCount, value:Float):Void { })
	@:overload(function(property:RowHeight, value:Float):Void { })
	@:overload(function(property:RowSelector, value:Bool):Void { })
	@:overload(function(property:RowsPerPage, value:Float):Void { })
	@:overload(function(property:ScrollRedrawThreshold, value:Float):Void { })
	@:overload(function(property:SearchContainerNode, value:Bool):Void { })
	@:overload(function(property:Selectable, value:Bool):Void { })
	@:overload(function(property:SelectionMode, value:String):Void { })
	@:overload(function(property:SingleClickEdit, value:Bool):Void { })
	@:overload(function(property:SortChildItems, value:Bool):Void { })
	@:overload(function(property:SortFields, value:Dynamic):Void { })
	@:overload(function(property:SortInfo, value:Float):Void { })
	@:overload(function(property:SrcNodeRef, value:HTMLElement):Void { })
	@:overload(function(property:Store, value:Dynamic):Void { })
	@:overload(function(property:Structure, value:Dynamic):Void { })
	@:overload(function(property:Style, value:String):Void { })
	@:overload(function(property:Summary, value:String):Void { })
	@:overload(function(property:TemplatePath, value:String):Void { })
	@:overload(function(property:TemplateString, value:String):Void { })
	@:overload(function(property:Title, value:String):Void { })
	@:overload(function(property:Tooltip, value:String):Void { })
	@:overload(function(property:TreeModel, value:Dynamic):Void { })
	@:overload(function(property:UpdateDelay, value:Float):Void { })
	@:overload(function(property:Updating, value:Bool):Void { })
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function set(property:Aggregator, value:Dynamic):Void;
	@:overload(function(property:AttachScope):Dynamic { })
	@:overload(function(property:AttributeMap):Dynamic { })
	@:overload(function(property:AutoHeight):Bool { })
	@:overload(function(property:AutoRender):Bool { })
	@:overload(function(property:AutoWidth):Bool { })
	@:overload(function(property:BaseClass):String { })
	@:overload(function(property:CellOverClass):String { })
	@:overload(function(property:Class):String { })
	@:overload(function(property:ClassTag):String { })
	@:overload(function(property:ColSpans):Dynamic { })
	@:overload(function(property:ColumnReordering):Bool { })
	@:overload(function(property:ContainerNode):HTMLElement { })
	@:overload(function(property:DefaultHeight):String { })
	@:overload(function(property:DefaultOpen):Bool { })
	@:overload(function(property:DefaultState):Dynamic { })
	@:overload(function(property:DelayScroll):Bool { })
	@:overload(function(property:Dir):String { })
	@:overload(function(property:DomNode):HTMLElement { })
	@:overload(function(property:Editable):Bool { })
	@:overload(function(property:ElasticView):Float { })
	@:overload(function(property:ErrorMessage):String { })
	@:overload(function(property:EscapeHTMLInData):Bool { })
	@:overload(function(property:ExpandoCell):Float { })
	@:overload(function(property:FastScroll):Bool { })
	@:overload(function(property:FetchText):String { })
	@:overload(function(property:Focused):Bool { })
	@:overload(function(property:FormatterScope):Dynamic { })
	@:overload(function(property:HeaderMenu):Dynamic { })
	@:overload(function(property:Height):String { })
	@:overload(function(property:Id):String { })
	@:overload(function(property:InitialWidth):String { })
	@:overload(function(property:Invalidated):Dynamic { })
	@:overload(function(property:Items):Dynamic { })
	@:overload(function(property:KeepRows):Float { })
	@:overload(function(property:KeepSelection):Bool { })
	@:overload(function(property:Lang):String { })
	@:overload(function(property:LoadingMessage):String { })
	@:overload(function(property:NoDataMessage):String { })
	@:overload(function(property:Observer):String { })
	@:overload(function(property:OpenAtLevels):Array<Dynamic> { })
	@:overload(function(property:OwnerDocument):Dynamic { })
	@:overload(function(property:PlaceholderLabel):String { })
	@:overload(function(property:Query):Dynamic { })
	@:overload(function(property:QueryOptions):Dynamic { })
	@:overload(function(property:RowCount):Float { })
	@:overload(function(property:RowHeight):Float { })
	@:overload(function(property:RowSelector):Bool { })
	@:overload(function(property:RowsPerPage):Float { })
	@:overload(function(property:ScrollRedrawThreshold):Float { })
	@:overload(function(property:SearchContainerNode):Bool { })
	@:overload(function(property:Selectable):Bool { })
	@:overload(function(property:SelectionMode):String { })
	@:overload(function(property:SingleClickEdit):Bool { })
	@:overload(function(property:SortChildItems):Bool { })
	@:overload(function(property:SortFields):Dynamic { })
	@:overload(function(property:SortInfo):Float { })
	@:overload(function(property:SrcNodeRef):HTMLElement { })
	@:overload(function(property:Store):Dynamic { })
	@:overload(function(property:Structure):Dynamic { })
	@:overload(function(property:Style):String { })
	@:overload(function(property:Summary):String { })
	@:overload(function(property:TemplatePath):String { })
	@:overload(function(property:TemplateString):String { })
	@:overload(function(property:Title):String { })
	@:overload(function(property:Tooltip):String { })
	@:overload(function(property:TreeModel):Dynamic { })
	@:overload(function(property:UpdateDelay):Float { })
	@:overload(function(property:Updating):Bool { })
	@:overload(function(inRowIndex:Float, inItem:Dynamic):Dynamic { })
	@:overload(function(name:Dynamic):Dynamic { })
	function get(property:Aggregator):Dynamic;
	@:overload(function(property:AttachScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AttributeMap, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoRender, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:AutoWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:BaseClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:CellOverClass, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Class, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ClassTag, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColSpans, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ColumnReordering, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultOpen, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DefaultState, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DelayScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Dir, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:DomNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Editable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ElasticView, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ErrorMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:EscapeHTMLInData, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ExpandoCell, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FastScroll, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FetchText, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Focused, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:FormatterScope, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:HeaderMenu, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Height, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Id, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:InitialWidth, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Invalidated, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Items, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:KeepRows, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:KeepSelection, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Lang, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:LoadingMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:NoDataMessage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Observer, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OpenAtLevels, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:OwnerDocument, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:PlaceholderLabel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Query, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:QueryOptions, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowCount, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowHeight, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowSelector, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:RowsPerPage, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:ScrollRedrawThreshold, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SearchContainerNode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Selectable, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SelectionMode, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SingleClickEdit, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SortChildItems, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SortFields, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SortInfo, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:SrcNodeRef, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Store, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Structure, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Style, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Summary, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplatePath, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TemplateString, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Title, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Tooltip, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:TreeModel, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:UpdateDelay, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:Updating, callback:{ }):{ function unwatch():Void; } { })
	@:overload(function(property:String, callback:{ }):{ function unwatch():Void; } { })
	function watch(property:Aggregator, callback:{ }):{ function unwatch():Void; };
	var attachScope : Dynamic;
	var attributeMap : Dynamic;
	var autoHeight : Bool;
	var autoRender : Bool;
	var autoWidth : Bool;
	var baseClass : String;
	var cellOverClass : String;
	var class : String;
	var classTag : String;
	var colSpans : Dynamic;
	var columnReordering : Bool;
	var containerNode : HTMLElement;
	var defaultHeight : String;
	var defaultOpen : Bool;
	var defaultState : Dynamic;
	var delayScroll : Bool;
	var dir : String;
	var domNode : HTMLElement;
	var editable : Bool;
	var elasticView : Float;
	var errorMessage : String;
	var escapeHTMLInData : Bool;
	var expandoCell : Float;
	var fastScroll : Bool;
	var fetchText : String;
	var focused : Bool;
	var formatterScope : Dynamic;
	var headerMenu : Dynamic;
	var height : String;
	var id : String;
	var initialWidth : String;
	var invalidated : Dynamic;
	var items : Dynamic;
	var keepRows : Float;
	var keepSelection : Bool;
	var lang : String;
	var loadingMessage : String;
	var noDataMessage : String;
	var observer : String;
	var openAtLevels : Array<Dynamic>;
	var ownerDocument : Dynamic;
	var placeholderLabel : String;
	var query : Dynamic;
	var queryOptions : Dynamic;
	var rowCount : Float;
	var rowHeight : Float;
	var rowSelector : Bool;
	var rowsPerPage : Float;
	var scrollRedrawThreshold : Float;
	var searchContainerNode : Bool;
	var selectable : Bool;
	var selectionMode : String;
	var singleClickEdit : Bool;
	var sortChildItems : Bool;
	var sortFields : Dynamic;
	var sortInfo : Float;
	var srcNodeRef : HTMLElement;
	var store : Dynamic;
	var structure : Dynamic;
	var style : String;
	var summary : String;
	var templatePath : String;
	var templateString : String;
	var title : String;
	var tooltip : String;
	var treeModel : Dynamic;
	var updateDelay : Float;
	var updating : Bool;
	function addRow():Void;
	@:overload(function(name:Dynamic, value:Dynamic):Dynamic { })
	function attr(name:String, value:Dynamic):Dynamic;
	function beginUpdate():Void;
	function buildRendering():Void;
	function buildViews():Void;
	function canEdit(inCell:Dynamic, inRowIndex:Dynamic):Dynamic;
	function canSort():Bool;
	function collapse(itemId:String):Void;
	@:overload(function(obj:Dynamic, event:String, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:String):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:String, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	@:overload(function(obj:Dynamic, event:haxe.Constraints.Function, method:haxe.Constraints.Function):Dynamic { })
	function connect(obj:Dynamic, event:String, method:String):Dynamic;
	function createLayout():Void;
	function createManagers():Void;
	function createScroller():Void;
	function createSelection():Void;
	function createView(inClass:Dynamic, idx:Dynamic):Dynamic;
	function createViews():Void;
	function defaultUpdate():Void;
	function defer(fcn:haxe.Constraints.Function, delay:Float):Dynamic;
	function destroy():Void;
	function destroyDescendants(preserveDom:Bool):Void;
	function destroyRecursive(preserveDom:Bool):Void;
	function destroyRendering(?preserveDom:Bool):Void;
	function disconnect(handle:Dynamic):Void;
	function dispatchContentEvent(e:Dynamic):Void;
	function dispatchHeaderEvent(e:Dynamic):Void;
	function dispatchKeyEvent(e:Dynamic):Void;
	function doApplyCellEdit(inValue:Dynamic, inRowIndex:Dynamic, inAttrName:Dynamic):Void;
	function doApplyEdit(inRowIndex:Dynamic, inDataAttr:Dynamic):Void;
	function doCancelEdit(inRowIndex:Dynamic):Void;
	function doclick(e:Dynamic):Void;
	function docontextmenu(e:Dynamic):Void;
	function dodblclick(e:Dynamic):Void;
	function doheaderclick(e:Dynamic):Void;
	function doheadercontextmenu(e:Dynamic):Void;
	function doheaderdblclick(e:Dynamic):Void;
	function dokeydown(e:Dynamic):Void;
	function doKeyEvent(e:Dynamic):Void;
	function doStartEdit(inCell:Dynamic, inRowIndex:Dynamic):Void;
	function emit(type:String, eventObj:Dynamic, callbackArgs:Array<Dynamic>):Dynamic;
	function endUpdate():Void;
	function expand(itemId:String):Void;
	function expandoFetch(rowIndex:Dynamic, open:Dynamic):Void;
	function filter(query:Dynamic, reRender:Dynamic):Void;
	function finishScrollJob():Void;
	function getCell(inIndex:Float):Dynamic;
	function getCellName(inCell:Dynamic):Dynamic;
	function getCellNodeTextDirection(inColIndex:Dynamic, inRowIndex:Dynamic):Dynamic;
	function getChildren():Array<Dynamic>;
	function getColumnTogglingItems():Dynamic;
	function getDefaultOpenState(cellDef:Dynamic, item:Dynamic):Dynamic;
	function getDescendants():Array<Dynamic>;
	@:overload(function(idx:Array<Dynamic>):Dynamic { })
	@:overload(function(idx:String):Dynamic { })
	function getItem(idx:Float):Dynamic;
	function getItemIndex(item:Dynamic):Dynamic;
	function getParent():Dynamic;
	function getRowNode(inRowIndex:Dynamic):Dynamic;
	function getSortAsc(inSortInfo:Dynamic):Dynamic;
	function getSortIndex(inSortInfo:Dynamic):Float;
	function getSortProps():Dynamic;
	function getState():Dynamic;
	function hasLayout():Dynamic;
	function isFocusable():Dynamic;
	function isLeftToRight():Dynamic;
	function markupFactory(props:Dynamic, node:Dynamic, ctor:Dynamic, cellFunc:Dynamic):Void;
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
	function postrender():Void;
	function postresize():Void;
	function prerender():Void;
	function refresh(keepState:Bool):Void;
	function removeSelectedRows():Void;
	function render():Void;
	function resize(changeSize:Dynamic, resultSize:Dynamic):Void;
	function rowHeightChanged(inRowIndex:Float):Void;
	function scrollTo(inTop:Float):Void;
	function scrollToRow(inRowIndex:Float):Void;
	function setAttribute(attr:String, value:Dynamic):Void;
	function setCellNodeTextDirection(inColIndex:Dynamic, inRowIndex:Dynamic, textDir:Dynamic):Void;
	function setCellWidth(inIndex:Dynamic, inUnitWidth:Dynamic):Void;
	function setHeaderMenu(menu:dijit.Menu):Void;
	function setItems(items:Dynamic):Void;
	function setModel(treeModel:Dynamic):Void;
	function setQuery(query:Dynamic, queryOptions:Dynamic):Void;
	function setScrollTop(inTop:Dynamic):Void;
	function setSortIndex(inIndex:Dynamic, inAsc:Dynamic):Void;
	function setSortInfo(inSortInfo:Dynamic):Void;
	function setStore(store:Dynamic, query:Dynamic, queryOptions:Dynamic):Void;
	@:overload(function(inStructure:Array<Dynamic>):Void { })
	@:overload(function(inStructure:Array<Array<Dynamic>>):Void { })
	function setStructure(inStructure:Dynamic):Void;
	function setupHeaderMenu():Void;
	function showMessage(message:Dynamic):Void;
	function sizeChange():Void;
	function sort():Void;
	function startup():Void;
	function styleRowNode(rowIndex:Dynamic, rowNode:Dynamic):Void;
	function styleRowState(inRow:Dynamic):Void;
	function subscribe(t:String, method:haxe.Constraints.Function):Dynamic;
	function textSizeChanged():Void;
	function toString():String;
	function uninitialize():Bool;
	function unsubscribe(handle:Dynamic):Void;
	function update():Void;
	function updateRow(inRowIndex:Float):Void;
	function updateRowCount(inRowCount:Float):Void;
	function updateRows(startIndex:Float, howMany:Float):Void;
	function updateRowStyles(inRowIndex:Dynamic):Void;
	function getCachedTemplate():Dynamic;
	function onApplyCellEdit(inValue:String, inRowIndex:Float, inFieldIndex:Float):Void;
	function onApplyEdit(inRowIndex:Float):Void;
	function onBlur():Void;
	function onCancelEdit(inRowIndex:Float):Void;
	function onCanDeselect(inRowIndex:Float):Dynamic;
	function onCanSelect(inRowIndex:Dynamic):Dynamic;
	function onCellClick(e:Event):Void;
	function onCellContextMenu(e:Event):Void;
	function onCellDblClick(e:Event):Void;
	function onCellFocus(inCell:Dynamic, inRowIndex:Float):Void;
	function onCellMouseDown(e:Event):Void;
	function onCellMouseOut(e:Event):Void;
	function onCellMouseOver(e:Event):Void;
	function onClick(event:Dynamic):Void;
	function onClose():Bool;
	function onContentEvent(e:Dynamic):Void;
	function onDblClick(event:Dynamic):Void;
	function onDeselected(inRowIndex:Float):Void;
	function onFetchError(err:Dynamic, req:Dynamic):Void;
	function onFocus():Void;
	function onHeaderCellClick(e:Event):Void;
	function onHeaderCellContextMenu(e:Event):Void;
	function onHeaderCellDblClick(e:Event):Void;
	function onHeaderCellMouseDown(e:Event):Void;
	function onHeaderCellMouseOut(e:Event):Void;
	function onHeaderCellMouseOver(e:Event):Void;
	function onHeaderClick(e:Event):Void;
	function onHeaderContextMenu(e:Event):Void;
	function onHeaderDblClick(e:Event):Void;
	function onHeaderEvent(e:Dynamic):Void;
	function onHeaderMouseOut(e:Event):Void;
	function onHeaderMouseOver(e:Event):Void;
	function onHide():Void;
	function onKeyDown(e:Dynamic):Void;
	function onKeyEvent(e:Dynamic):Void;
	function onKeyPress(event:Dynamic):Void;
	function onKeyUp(event:Dynamic):Void;
	function onMouseDown(event:Dynamic):Void;
	function onMouseDownRow(e:Event):Void;
	function onMouseEnter(event:Dynamic):Void;
	function onMouseLeave(event:Dynamic):Void;
	function onMouseMove(event:Dynamic):Void;
	function onMouseOut(event:Dynamic):Void;
	function onMouseOutRow(e:Event):Void;
	function onMouseOver(event:Dynamic):Void;
	function onMouseOverRow(e:Event):Void;
	function onMouseUp(event:Dynamic):Void;
	function onMoveColumn():Void;
	function onResizeColumn(cellIdx:Float):Void;
	function onRowClick(e:Event):Void;
	function onRowContextMenu(e:Event):Void;
	function onRowDblClick(e:Event):Void;
	function onRowMouseDown(e:Event):Void;
	function onRowMouseOut(e:Event):Void;
	function onRowMouseOver(e:Event):Void;
	function onSelected(inRowIndex:Float):Void;
	function onSelectionChanged():Void;
	function onSetState():Void;
	function onShow():Void;
	function onStartEdit(inCell:Dynamic, inRowIndex:Float):Void;
	function onStyleRow(row:Dynamic):Void;
}
