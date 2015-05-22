extern class EventData {
	function new():Void;
	function stopPropagation():Void;
	function isPropagationStopped():Bool;
	function stopImmediatePropagation():Void;
	function isImmediatePropagationStopped():Bool;
}
extern class Event<T> {
	function new():Void;
	function subscribe(fn:EventData -> T -> Dynamic):Void;
	function unsubscribe(fn:EventData -> T -> Dynamic):Void;
	@:overload(function(?args:T, ?e:DOMEvent, ?scope:Dynamic):Dynamic { })
	function notify(?args:T, ?e:EventData, ?scope:Dynamic):Dynamic;
}
extern class EventHandler {
	function new():Void;
	function subscribe(event:EventData, handler:haxe.Constraints.Function):EventHandler;
	function unsubscribe(event:EventData, handler:haxe.Constraints.Function):EventHandler;
	function unsubscribeAll():EventHandler;
}
extern class Range {
	function new(fromRow:Float, fromCell:Float, ?toRow:Float, ?toCell:Float):Void;
	var fromRow : Float;
	var fromCell : Float;
	var toRow : Float;
	var toCell : Float;
	function isSingleRow():Bool;
	function isSingleCell():Bool;
	function contains(row:Float, cell:Float):Bool;
	function toString():String;
}
extern class NonDataRow {

}
extern class Group<T, R> extends NonDataRow {
	function new():Void;
	var level : Float;
	var count : Float;
	var value : T;
	var title : String;
	var collapsed : Bool;
	var totals : GroupTotals<T, R>;
	var rows : Array<R>;
	var groups : Array<Group<T, R>>;
	var groupingKey : Dynamic;
	function equals(group:Group<T, R>):Bool;
}
extern class GroupTotals<T, R> extends NonDataRow {
	function new():Void;
	var group : Group<T, R>;
}
extern class EditorLock<T:(Slick.SlickData)> {
	function new():Void;
	function isActive(editController:Editors.Editor<T>):Bool;
	function activate(editController:Editors.Editor<T>):Void;
	function deactivate(editController:Editors.Editor<T>):Void;
	function commitCurrentEdit():Bool;
	function cancelCurrentEdit():Bool;
}
typedef Column<T:(Slick.SlickData)> = {
	@:optional
	var asyncPostRender : Dynamic -> Dynamic -> Dynamic -> Dynamic -> Void;
	@:optional
	var behavior : Dynamic;
	@:optional
	var cannotTriggerInsert : Bool;
	@:optional
	var cssClass : String;
	@:optional
	var defaultSortAsc : Bool;
	@:optional
	var editor : Dynamic;
	@:optional
	var field : String;
	@:optional
	var focusable : Bool;
	@:optional
	var formatter : Formatter<T>;
	@:optional
	var headerCssClass : String;
	@:optional
	var id : String;
	@:optional
	var maxWidth : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var name : String;
	@:optional
	var rerenderOnResize : Bool;
	@:optional
	var resizable : Bool;
	@:optional
	var selectable : Bool;
	@:optional
	var sortable : Bool;
	@:optional
	var toolTip : String;
	@:optional
	var width : Float;
};
typedef EditorFactory = {
	function getEditor<T>(column:Column<T>):Editors.Editor<T>;
};
typedef FormatterFactory<T:(Slick.SlickData)> = {
	function getFormatter(column:Column<T>):Formatter<Dynamic>;
};
typedef GridOptions<T:(Slick.SlickData)> = {
	@:optional
	var asyncEditorLoading : Bool;
	@:optional
	var asyncEditorLoadDelay : Float;
	@:optional
	var asyncPostRenderDelay : Float;
	@:optional
	var autoEdit : Bool;
	@:optional
	var autoHeight : Bool;
	@:optional
	var cellFlashingCssClass : String;
	@:optional
	var cellHighlightCssClass : String;
	@:optional
	var dataItemColumnValueExtractor : Dynamic;
	@:optional
	var defaultColumnWidth : Float;
	@:optional
	var defaultFormatter : Formatter<T>;
	@:optional
	var editable : Bool;
	@:optional
	var editCommandHandler : Dynamic;
	@:optional
	var editorFactory : EditorFactory;
	@:optional
	var editorLock : EditorLock<T>;
	@:optional
	var enableAddRow : Bool;
	@:optional
	var enableAsyncPostRender : Bool;
	@:optional
	var enableCellRangeSelection : Dynamic;
	@:optional
	var enableCellNavigation : Bool;
	@:optional
	var enableColumnReorder : Bool;
	@:optional
	var enableRowReordering : Dynamic;
	@:optional
	var enableTextSelectionOnCells : Bool;
	@:optional
	var explicitInitialization : Bool;
	@:optional
	var forceFitColumns : Bool;
	@:optional
	var forceSyncScrolling : Bool;
	@:optional
	var formatterFactory : FormatterFactory<T>;
	@:optional
	var fullWidthRows : Bool;
	@:optional
	var headerRowHeight : Float;
	@:optional
	var leaveSpaceForNewRows : Bool;
	@:optional
	var multiColumnSort : Bool;
	@:optional
	var multiSelect : Bool;
	@:optional
	var rowHeight : Float;
	@:optional
	var selectedCellCssClass : String;
	@:optional
	var showHeaderRow : Bool;
	@:optional
	var syncColumnCellResize : Bool;
	@:optional
	var topPanelHeight : Float;
};
typedef DataProvider<T:(SlickData)> = {
	function getItem(index:Float):T;
	function getLength():Float;
};
typedef SlickData = { };
extern class SelectionModel<T:(SlickData), E> {
	function init(grid:Grid<T>):Void;
	function destroy():Void;
	var onSelectedRangesChanged : Slick.Event<E>;
}
extern class Grid<T:(SlickData)> {
	@:overload(function(container:HTMLElement, data:Array<T>, columns:Array<Column<T>>, options:GridOptions<T>):Void { })
	@:overload(function(container:String, data:DataProvider<T>, columns:Array<Column<T>>, options:GridOptions<T>):Void { })
	@:overload(function(container:HTMLElement, data:DataProvider<T>, columns:Array<Column<T>>, options:GridOptions<T>):Void { })
	function new(container:String, data:Array<T>, columns:Array<Column<T>>, options:GridOptions<T>):Void;
	function init():Void;
	function destroy():Void;
	function getData():Dynamic;
	function getDataItem(index:Float):T;
	@:overload(function(newData:DataProvider<T>, scrollToTop:Bool):Void { })
	function setData(newData:Array<T>, scrollToTop:Bool):Void;
	function getDataLength():Float;
	function getOptions():GridOptions<Dynamic>;
	function getSelectedRows():Array<Float>;
	function getSelectionModel():SelectionModel<Dynamic, Dynamic>;
	function setOptions(options:GridOptions<T>):Void;
	function setSelectedRows(rowsArray:Array<Float>):Void;
	function setSelectionModel(selectionModel:SelectionModel<T, Dynamic>):Void;
	function autosizeColumns():Void;
	function getColumnIndex(id:String):Float;
	function getColumns():Array<Column<T>>;
	function setColumns(columnDefinitions:Array<Column<T>>):Void;
	function setSortColumn(columnId:String, ascending:Bool):Void;
	function setSortColumns(cols:Array<{ var columnId : String; var sortAsc : Bool; }>):Void;
	function getSortColumns():Array<Column<T>>;
	function updateColumnHeader(columnId:String, ?title:String, ?toolTip:String):Void;
	function addCellCssStyles(key:String, hash:CellCssStylesHash):Void;
	function canCellBeActive(row:Float, col:Float):Bool;
	function canCellBeSelected(row:Float, col:Float):Bool;
	function editActiveCell(editor:Editors.Editor<T>):Void;
	function flashCell(row:Float, cell:Float, ?speed:Float):Void;
	function getActiveCell():Cell;
	function getActiveCellNode():HTMLElement;
	function getActiveCellPosition():CellPosition;
	function getCellCssStyles(key:String):CellCssStylesHash;
	function getCellEditor():Editors.Editor<Dynamic>;
	function getCellFromEvent<T>(e:Event<T>):Cell;
	function getCellFromPoint(x:Float, y:Float):Cell;
	function getCellNode(row:Float, cell:Float):HTMLElement;
	function getCellNodeBox(row:Float, cell:Float):CellPosition;
	function gotoCell(row:Float, cell:Float, ?forceEdit:Bool):Void;
	function getTopPanel():HTMLElement;
	function setTopPanelVisibility(visible:Bool):Void;
	function setHeaderRowVisibility(visible:Bool):Void;
	function getHeaderRow():HTMLElement;
	function getHeaderRowColumn(columnId:String):Column<Dynamic>;
	function getGridPosition():CellPosition;
	function navigateDown():Bool;
	function navigateLeft():Bool;
	function navigateNext():Bool;
	function navigatePrev():Bool;
	function navigateRight():Bool;
	function navigateUp():Bool;
	function removeCellCssStyles(key:String):Void;
	function resetActiveCell():Void;
	function setActiveCell(row:Float, cell:Float):Void;
	function setCellCssStyles(key:String, hash:CellCssStylesHash):Void;
	var onScroll : Slick.Event<OnScrollEventData>;
	var onSort : Slick.Event<OnSortEventData<T>>;
	var onHeaderMouseEnter : Slick.Event<OnHeaderMouseEventData<T>>;
	var onHeaderMouseLeave : Slick.Event<OnHeaderMouseEventData<T>>;
	var onHeaderContextMenu : Slick.Event<OnHeaderContextMenuEventData<T>>;
	var onHeaderClick : Slick.Event<OnHeaderClickEventData<T>>;
	var onHeaderCellRendered : Slick.Event<OnHeaderCellRenderedEventData<T>>;
	var onBeforeHeaderCellDestroy : Slick.Event<OnBeforeHeaderCellDestroyEventData<T>>;
	var onHeaderRowCellRendered : Slick.Event<OnHeaderRowCellRenderedEventData<T>>;
	var onBeforeHeaderRowCellDestroy : Slick.Event<OnBeforeHeaderRowCellDestroyEventData<T>>;
	var onMouseEnter : Slick.Event<OnMouseEnterEventData>;
	var onMouseLeave : Slick.Event<OnMouseLeaveEventData>;
	var onClick : Slick.Event<OnClickEventData>;
	var onDblClick : Slick.Event<OnDblClickEventData>;
	var onContextMenu : Slick.Event<OnContextMenuEventData>;
	var onKeyDown : Slick.Event<OnKeyDownEventData>;
	var onAddNewRow : Slick.Event<OnAddNewRowEventData<T>>;
	var onValidationError : Slick.Event<OnValidationErrorEventData<T>>;
	var onColumnsReordered : Slick.Event<OnColumnsReorderedEventData>;
	var onColumnsResized : Slick.Event<OnColumnsResizedEventData>;
	var onCellChange : Slick.Event<OnCellChangeEventData<T>>;
	var onBeforeEditCell : Slick.Event<OnBeforeEditCellEventData<T>>;
	var onBeforeCellEditorDestroy : Slick.Event<OnBeforeCellEditorDestroyEventData<T>>;
	var onBeforeDestroy : Slick.Event<OnBeforeDestroyEventData>;
	var onActiveCellChanged : Slick.Event<OnActiveCellChangedEventData>;
	var onActiveCellPositionChanged : Slick.Event<OnActiveCellPositionChangedEventData>;
	var onDragInit : Slick.Event<OnDragInitEventData>;
	var onDragStart : Slick.Event<OnDragStartEventData>;
	var onDrag : Slick.Event<OnDragEventData>;
	var onDragEnd : Slick.Event<OnDragEndEventData>;
	var onSelectedRowsChanged : Slick.Event<OnSelectedRowsChangedEventData>;
	var onCellCssStylesChanged : Slick.Event<OnCellCssStylesChangedEventData>;
	var onViewportChanged : Slick.Event<OnViewportChangedEventData>;
	function registerPlugin(plugin:Plugin<T>):Void;
	function unregisterPlugin(plugin:Plugin<T>):Void;
	function render():Void;
	function invalidate():Void;
	function invalidateRow(row:Float):Void;
	function invalidateRows(rows:Array<Float>):Void;
	function updateCell(row:Float, cell:Float):Void;
	function updateRow(row:Float):Void;
	function getViewport(?viewportTop:Float, ?viewportLeft:Float):Viewport;
	function getRenderedRange(viewportTop:Float, viewportLeft:Float):Viewport;
	function resizeCanvas():Void;
	function updateRowCount():Void;
	function scrollRowIntoView(row:Float, doPaging:Bool):Void;
	function scrollRowToTop(row:Float):Void;
	function scrollCellIntoView(row:Float, cell:Float, doPaging:Bool):Void;
	function getCanvasNode():HTMLCanvasElement;
	function focus():Void;
	function getEditorLock():EditorLock<Dynamic>;
	function getEditController():{ function commitCurrentEdit():Bool; function cancelCurrentEdit():Bool; };
}
typedef OnCellCssStylesChangedEventData = {
	var key : String;
	var hash : CellCssStylesHash;
};
typedef OnSelectedRowsChangedEventData = {
	var rows : Array<Float>;
};
typedef OnDragEndEventData = { };
typedef OnDragEventData = { };
typedef OnDragStartEventData = { };
typedef OnDragInitEventData = { };
typedef OnActiveCellPositionChangedEventData = { };
typedef OnActiveCellChangedEventData = {
	var row : Float;
	var cell : Float;
};
typedef OnBeforeDestroyEventData = { };
typedef OnBeforeCellEditorDestroyEventData<T:(Slick.SlickData)> = {
	var editor : Editors.Editor<T>;
};
typedef OnBeforeEditCellEventData<T:(SlickData)> = {
	var row : Float;
	var cell : Float;
	var item : T;
	var column : Column<T>;
};
typedef OnCellChangeEventData<T:(SlickData)> = {
	var row : Float;
	var cell : Float;
	var item : T;
};
typedef OnColumnsResizedEventData = { };
typedef OnColumnsReorderedEventData = { };
typedef OnValidationErrorEventData<T:(SlickData)> = {
	var editor : Editors.Editor<T>;
	var cellNode : HTMLElement;
	var validationResults : ValidateResults;
	var row : Float;
	var cell : Float;
	var column : Column<T>;
};
typedef OnAddNewRowEventData<T:(SlickData)> = {
	var item : T;
	var column : Column<T>;
};
typedef OnKeyDownEventData = {
	var row : Float;
	var cell : Float;
};
typedef OnContextMenuEventData = { };
typedef OnDblClickEventData = {
	var row : Float;
	var cell : Float;
};
typedef OnClickEventData = {
	var row : Float;
	var cell : Float;
};
typedef OnMouseLeaveEventData = { };
typedef OnMouseEnterEventData = { };
typedef OnBeforeHeaderRowCellDestroyEventData<T:(SlickData)> = {
	var node : HTMLElement;
	var column : Column<T>;
};
typedef OnHeaderRowCellRenderedEventData<T:(SlickData)> = {
	var node : HTMLElement;
	var column : Column<T>;
};
typedef OnBeforeHeaderCellDestroyEventData<T:(SlickData)> = {
	var node : HTMLElement;
	var column : Column<T>;
};
typedef OnHeaderCellRenderedEventData<T:(SlickData)> = {
	var node : HTMLElement;
	var column : Column<T>;
};
typedef OnHeaderClickEventData<T:(SlickData)> = {
	var column : Column<T>;
};
typedef OnHeaderContextMenuEventData<T:(SlickData)> = {
	var column : Column<T>;
};
typedef OnHeaderMouseEventData<T:(SlickData)> = {
	var column : Column<T>;
};
typedef Column<T:(SlickData)> = {
	@:optional
	var sortCol : Column<T>;
	@:optional
	var sortAsc : Bool;
};
typedef OnSortEventData<T:(SlickData)> = {
	var multiColumnSort : Bool;
	@:optional
	var sortCol : Column<T>;
	var sortCols : Array<Column<T>>;
	@:optional
	var sortAsc : Bool;
};
typedef OnScrollEventData = {
	var scrollLeft : Float;
	var scrollTop : Float;
};
typedef OnViewportChangedEventData = { };
typedef Cell = {
	var row : Float;
	var cell : Float;
};
typedef CellPosition = {
	>Position,
	var bottom : Float;
	var height : Float;
	var right : Float;
	var visible : Bool;
	var width : Float;
};
typedef Position = {
	var top : Float;
	var left : Float;
};
typedef CellCssStylesHash = { };
typedef Viewport = {
	var top : Float;
	var bottom : Float;
	var leftPx : Float;
	var rightPx : Float;
};
typedef ValidateResults = {
	var valid : Bool;
	var msg : String;
};
extern class SlickTopLevel {
	static var GlobalEditorLock : EditorLock<Slick.SlickData>;
}
