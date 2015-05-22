typedef IDomAccessProvider = {
	var previousColumn : IColumn;
	var grid : IGridInstance;
	function changeUserSelect(elm:angular.IAugmentedJQuery, value:String):Void;
	function focusCellElement($scope:IGridScope, index:Float):Void;
	function selectionHandlers($scope:IGridScope, elm:angular.IAugmentedJQuery):Void;
};
typedef IStyleProviderStatic = {
	function new($scope:IGridScope, grid:IGridInstance):IStyleProvider;
};
typedef IStyleProvider = { };
typedef ISearchProviderStatic = {
	function new($scope:IGridScope, grid:IGridInstance, $filter:angular.IFilterService):ISearchProvider;
};
typedef ISearchProvider = {
	var fieldMap : Dynamic;
	var extFilter : Bool;
	function evalFilter():Void;
};
typedef ISelectionProviderStatic = {
	function new(grid:IGridInstance, $scope:IGridScope, $parse:angular.IParseService):ISelectionProvider;
};
typedef ISelectionProvider = {
	var multi : Bool;
	var selectedItems : Array<Dynamic>;
	var selectedIndex : Float;
	var lastClickedRow : Dynamic;
	var ignoreSelectedItemChanges : Bool;
	var pKeyParser : angular.ICompiledExpression;
	function ChangeSelection(rowItem:Dynamic, event:Dynamic):Void;
	function getSelection(entity:Dynamic):Float;
	function getSelectionIndex(entity:Dynamic):Float;
	function setSelection(rowItem:IRow, isSelected:Bool):Void;
	function toggleSelectAll(checkAll:Bool, bypass:Bool, selectFiltered:Bool):Void;
};
typedef IEventProviderStatic = {
	function new(grid:IGridInstance, $scope:IGridScope, domUtilityService:service.IDomUtilityService, $timeout:angular.ITimeoutService):IEventProvider;
};
typedef IEventProvider = {
	var colToMove : IColumn;
	var groupToMove : Dynamic;
	function assignEvents():Void;
	function assignGridEventHandlers():Void;
	function dragStart(event:Dynamic):Void;
	function dragOver(event:Dynamic):Void;
	function setDraggables():Void;
	function onGroupMouseDown(event:Dynamic):Void;
	function onGroupDrop(event:Dynamic):Void;
	function onHeaderMouseDown(event:Dynamic):Void;
	function onHeaderDrop(event:Dynamic):Void;
};
typedef IAggregateStatic = {
	function new(aggEntity:Dynamic, rowFactory:IRowFactory, rowHeight:Float, groupInitState:Bool):IAggregate;
};
typedef IAggregate = {
	var rowIndex : Float;
	var offsetTop : Float;
	var entity : Dynamic;
	var label : String;
	var field : String;
	var depth : Float;
	var parent : Dynamic;
	var children : Array<Dynamic>;
	var aggChildren : Array<Dynamic>;
	var aggIndex : Float;
	var collapsed : Bool;
	var groupInitState : Bool;
	var rowFactory : IRowFactory;
	var rowHeight : Float;
	var isAggRow : Bool;
	var offsetLeft : Float;
	var aggLabelFilter : Dynamic;
};
typedef IRowConfig = {
	var enableCellSelection : Bool;
	var enableRowSelection : Bool;
	var jqueryUITheme : Bool;
	var rowClasses : Array<String>;
	var rowHeight : Float;
	var selectWithCheckboxOnly : Bool;
	var selectedItems : Array<Dynamic>;
	function afterSelectionChangeCallback():Void;
	function beforeSelectionChangeCallback():Void;
};
typedef IRenderedRangeStatic = {
	function new(top:Float, bottom:Float):IRenderedRange;
};
typedef IRenderedRange = {
	var bottomRow : Float;
	var topRow : Float;
};
typedef IRowFactory = {
	var aggCache : Dynamic;
	var dataChanged : Bool;
	var groupedData : Dynamic;
	var numberOfAggregates : Float;
	var parentCache : Array<Dynamic>;
	var parsedData : Array<Dynamic>;
	var renderedRange : IRenderedRange;
	var rowConfig : IRowConfig;
	var rowHeight : Float;
	var selectionProvider : ISelectionProvider;
	function UpdateViewableRange(newRange:IRenderedRange):Void;
	function buildAggregateRow(aggEntity:Dynamic, rowIndex:Float):IAggregate;
	function buildEntityRow(entity:Dynamic, rowIndex:Float):IRow;
	function filteredRowsChanged():Void;
	function fixRowCache():Void;
	function getGrouping(groups:Dynamic):Void;
	function parseGroupData(groupData:Dynamic):Void;
	function renderedChange():Void;
	function renderedChangeNoGroups():Void;
};
typedef IDimensionStatic = {
	function new(options:Dynamic):IDimension;
};
typedef IDimension = {
	@:optional
	var outerHeight : Float;
	@:optional
	var outerWidth : Float;
	@:optional
	var autoFitHeight : Bool;
};
typedef IElementDimension = {
	@:optional
	var rootMaxH : Float;
	@:optional
	var rootMaxW : Float;
	@:optional
	var rowIndexCellW : Float;
	@:optional
	var rowSelectedCellW : Float;
	@:optional
	var scrollH : Float;
	@:optional
	var scrollW : Float;
};
typedef IRowStatic = {
	function new(entity:Dynamic, config:IRowConfig, selectionProvider:ISelectionProvider, rowIndex:Float, $utils:Dynamic):IRow;
};
typedef IRow = {
	var entity : Dynamic;
	var config : IRowConfig;
	var selectionProvider : ISelectionProvider;
	var rowIndex : Float;
	var utils : Dynamic;
	var selected : Bool;
	var cursor : String;
	var offsetTop : Float;
	var rowDisplayIndex : Float;
	function afterSelectionChange():Void;
	function beforeSelectionChange():Void;
	function setSelection(isSelected:Bool):Void;
	function continueSelection(event:Dynamic):Void;
	function ensureEntity(expected:Dynamic):Void;
	function toggleSelected(event:Dynamic):Bool;
	function alternatingRowClass():Void;
	function getProperty(path:String):Dynamic;
	function copy():IRow;
	function setVars(fromRow:IRow):Void;
};
typedef IColumnStatic = {
	function new(config:IGridOptions, $scope:IGridScope, grid:IGridInstance, domUtilityService:service.IDomUtilityService, $templateCache:angular.ITemplateCacheService, $utils:Dynamic):IColumn;
};
typedef IColumn = {
	var colDef : IColumnDef;
	var width : Float;
	var groupIndex : Float;
	var isGroupedBy : Bool;
	var minWidth : Float;
	var maxWidth : Float;
	var enableCellEdit : Bool;
	var cellEditableCondition : Dynamic;
	var headerRowHeight : Float;
	var displayName : String;
	var index : Float;
	var isAggCol : Bool;
	var cellClass : String;
	var sortPriority : Float;
	var cellFilter : Dynamic;
	var field : String;
	var aggLabelFilter : Dynamic;
	var visible : Bool;
	var sortable : Bool;
	var resizable : Bool;
	var pinnable : Bool;
	var pinned : Bool;
	var originalIndex : Float;
	var groupable : Bool;
	var sortDirection : String;
	var sortingAlgorithm : haxe.Constraints.Function;
	var headerClass : String;
	var cursor : String;
	var headerCellTemplate : String;
	var cellTemplate : String;
	function groupedByClass():String;
	function toggleVisible():Void;
	function showSortButtonUp():Bool;
	function showSortButtonDown():Bool;
	function noSortVisible():Bool;
	function sort(event:Dynamic):Bool;
	function gripClick():Dynamic;
	function gripOnMouseDown(event:Dynamic):Dynamic;
	function onMouseMove(event:Dynamic):Void;
	function gripOnMouseUp(event:Dynamic):Void;
	function copy():IColumn;
	function setVars(fromCol:IColumn):Void;
};
typedef IGridScope = {
	>angular.IScope,
	var elementsNeedMeasuring : Bool;
	var columns : Array<Dynamic>;
	var renderedRows : Array<Dynamic>;
	var renderedColumns : Array<Dynamic>;
	var headerRow : Dynamic;
	var rowHeight : Float;
	var jqueryUITheme : Dynamic;
	var showSelectionCheckbox : Bool;
	var enableCellSelection : Bool;
	var enableCellEditOnFocus : Bool;
	var footer : IFooter;
	var selectedItems : Array<Dynamic>;
	var multiSelect : Bool;
	var showFooter : Bool;
	var footerRowHeight : Float;
	var showColumnMenu : Bool;
	var forceSyncScrolling : Bool;
	var showMenu : Bool;
	var configGroups : Array<Dynamic>;
	var gridId : String;
	var enablePaging : Bool;
	var pagingOptions : IPagingOptions;
	var i18n : Dynamic;
	var selectionProvider : ISelectionProvider;
	function adjustScrollLeft(scrollLeft:Float):Void;
	function adjustScrollTop(scrollTop:Float, force:Bool):Void;
	function toggleShowMenu():Void;
	function toggleSelectAll():Void;
	function totalFilteredItemsLength():Float;
	function showGroupPanel():Dynamic;
	function topPanelHeight():Float;
	function viewportDimHeight():Float;
	function groupBy(col:IColumn):Void;
	function removeGroup(index:Float):Void;
	function togglePin(col:IColumn):Void;
	function totalRowWidth():Float;
	function headerScrollerDim():Dynamic;
};
typedef IGridInstance = {
	var $canvas : angular.IAugmentedJQuery;
	var $viewport : angular.IAugmentedJQuery;
	var $groupPanel : angular.IAugmentedJQuery;
	var $footerPanel : angular.IAugmentedJQuery;
	var $headerScroller : angular.IAugmentedJQuery;
	var $headerContainer : angular.IAugmentedJQuery;
	var $headers : angular.IAugmentedJQuery;
	var $topPanel : angular.IAugmentedJQuery;
	var $root : angular.IAugmentedJQuery;
	var config : IGridOptions;
	var data : Dynamic;
	var elementDims : IElementDimension;
	var eventProvider : IEventProvider;
	var filteredRows : Array<IRow>;
	var footerController : Dynamic;
	var gridId : String;
	var lastSortedColumns : Array<IColumn>;
	var lateBindColumns : Bool;
	var maxCanvasHt : Float;
	var prevScrollIndex : Float;
	var prevScrollTop : Float;
	var rootDim : IDimension;
	var rowCache : Array<IRow>;
	var rowFactory : IRowFactory;
	var rowMap : Array<IRow>;
	var searchProvider : ISearchProvider;
	var styleProvider : IStyleProvider;
	function buildColumnDefsFromData():Void;
	function buildColumns():Void;
	function calcMaxCanvasHeight():Void;
	function clearSortingData():Void;
	function configureColumnWidths():Void;
	function fixColumnIndexes():Void;
	function fixGroupIndexes():Void;
	function getTemplate(key:String):angular.IPromise<Dynamic>;
	function init():angular.IPromise<Dynamic>;
	function initTemplates():angular.IPromise<Dynamic>;
	function minRowsToRender():Void;
	function refreshDomSizes():Void;
	function resizeOnData(col:IColumn):Void;
	function setRenderedRows(newRows:Array<IRow>):Void;
	function sortActual():Void;
	function sortColumnsInit():Void;
	function sortData(col:IColumn, event:Dynamic):Void;
};
typedef IFooterStatic = {
	function new($scope:IGridScope, grid:IGridInstance):IFooter;
};
typedef IFooter = { };
typedef IGridOptions = {
	@:optional
	var aggregateTemplate : String;
	@:optional
	var afterSelectionChange : ?IRow -> ?Dynamic -> Void;
	@:optional
	var beforeSelectionChange : ?IRow -> ?Dynamic -> Bool;
	@:optional
	var checkboxCellTemplate : String;
	@:optional
	var checkboxHeaderTemplate : String;
	@:optional
	var columnDefs : Array<IColumnDef>;
	@:optional
	var data : Dynamic;
	@:optional
	var dataUpdated : haxe.Constraints.Function;
	@:optional
	var enableCellEdit : Bool;
	@:optional
	var enableCellSelection : Bool;
	@:optional
	var enableColumnResize : Bool;
	@:optional
	var enableColumnReordering : Bool;
	@:optional
	var enableColumnHeavyVirt : Bool;
	@:optional
	var enablePaging : Bool;
	@:optional
	var enablePinning : Bool;
	@:optional
	var enableRowReordering : Bool;
	@:optional
	var enableRowSelection : Bool;
	@:optional
	var enableSorting : Bool;
	@:optional
	var excludeProperties : Dynamic;
	@:optional
	var filterOptions : IFilterOptions;
	@:optional
	var footerRowHeight : Float;
	@:optional
	var groups : Array<String>;
	@:optional
	var headerRowHeight : Float;
	@:optional
	var headerRowTemplate : String;
	@:optional
	var jqueryUIDraggable : Bool;
	@:optional
	var jqueryUITheme : Bool;
	@:optional
	var keepLastSelected : Bool;
	@:optional
	var maintainColumnRatios : Bool;
	@:optional
	var multiSelect : Bool;
	@:optional
	var pagingOptions : IPagingOptions;
	@:optional
	var pinSelectionCheckbox : Bool;
	@:optional
	var plugins : Array<Dynamic>;
	@:optional
	var rowHeight : Float;
	@:optional
	var rowTemplate : String;
	@:optional
	var selectedItems : Array<Dynamic>;
	@:optional
	var selectItem : Float -> Bool -> Dynamic;
	@:optional
	var selectWithCheckboxOnly : Bool;
	@:optional
	var showColumnMenu : Bool;
	@:optional
	var showFilter : Bool;
	@:optional
	var showFooter : Bool;
	@:optional
	var showGroupPanel : Bool;
	@:optional
	var showSelectionCheckbox : Bool;
	@:optional
	var sortInfo : Dynamic;
	@:optional
	var tabIndex : Float;
	@:optional
	var useExternalSorting : Bool;
	@:optional
	var i18n : String;
	@:optional
	var virtualizationThreshold : Float;
	@:optional
	var enableHighlighting : Bool;
};
typedef IColumnDef = {
	@:optional
	var width : Dynamic;
	@:optional
	var minWidth : Dynamic;
	@:optional
	var visible : Bool;
	@:optional
	var field : String;
	@:optional
	var displayName : String;
	@:optional
	var sortable : Bool;
	@:optional
	var resizable : Bool;
	@:optional
	var groupable : Bool;
	@:optional
	var pinnable : Bool;
	@:optional
	var editableCellTemplate : String;
	@:optional
	var enableCellEdit : Bool;
	@:optional
	var cellEditableCondition : String;
	@:optional
	var sortFn : Dynamic -> Dynamic -> Float;
	@:optional
	var cellTemplate : String;
	@:optional
	var cellClass : String;
	@:optional
	var headerClass : String;
	@:optional
	var headerCellTemplate : String;
	@:optional
	var cellFilter : String;
	@:optional
	var aggLabelFilter : String;
	@:optional
	var pinned : Bool;
};
typedef IFilterOptions = {
	@:optional
	var filterText : String;
	@:optional
	var useExternalFilter : Bool;
};
typedef IPagingOptions = {
	@:optional
	var pageSizes : Array<Float>;
	@:optional
	var pageSize : Float;
	@:optional
	var totalServerItems : Float;
	@:optional
	var currentPage : Float;
};
typedef IPlugin = {
	function init(childScope:IGridScope, gridInstance:IGridInstance, services:Dynamic):Void;
};
