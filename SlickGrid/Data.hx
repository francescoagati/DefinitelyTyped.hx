typedef DataViewOptions<T:(Slick.SlickData)> = {
	@:optional
	var groupItemMetadataProvider : GroupItemMetadataProvider<T>;
	@:optional
	var inlineFilters : Bool;
};
extern class DataView<T:(Slick.SlickData)> {
	function new(?options:DataViewOptions<T>):Void;
	function beginUpdate():Void;
	function endUpdate():Void;
	function setPagingOptions(args:PagingOptions):Void;
	function getPagingInfo():PagingOptions;
	function getItems():Array<T>;
	function setItems(data:Array<T>, ?objectIdProperty:String):Void;
	function setFilter(filterFn:T -> Dynamic -> Bool):Void;
	function sort(comparer:haxe.Constraints.Function, ascending:Bool):Void;
	@:overload(function(field:haxe.Constraints.Function, ascending:Bool):Void { })
	function fastSort(field:String, ascending:Bool):Void;
	function reSort():Void;
	@:overload(function(groupingInfo:GroupingOptions<T>):Void { })
	function setGrouping(groupingInfos:Array<GroupingOptions<T>>):Void;
	function getGrouping():Array<GroupingOptions<T>>;
	function groupBy(valueGetter:Dynamic, valueFormatter:Dynamic, sortComparer:Dynamic):Void;
	function setAggregators(groupAggregators:Dynamic, includeCollapsed:Dynamic):Void;
	function collapseAllGroups(?level:Float):Void;
	function expandAllGroups(?level:Float):Void;
	function collapseGroup(varArgs:haxe.extern.Rest<String>):Void;
	function expandGroup(varArgs:haxe.extern.Rest<String>):Void;
	function getGroups():Array<Group<T, Dynamic>>;
	function getIdxById(id:String):Float;
	function getRowById():T;
	function getItemById(id:Dynamic):T;
	function getItemByIdx():T;
	function mapRowsToIds(rowArray:Array<T>):Array<String>;
	function setRefreshHints(hints:RefreshHints):Void;
	function setFilterArgs(args:Dynamic):Void;
	function refresh():Void;
	function updateItem(id:String, item:T):Void;
	function insertItem(insertBefore:Float, item:T):Void;
	function addItem(item:T):Void;
	function deleteItem(id:String):Void;
	function syncGridSelection(grid:Grid<T>, preserveHidden:Bool):Void;
	function syncGridCellCssStyles(grid:Grid<T>, key:String):Void;
	function getLength():Float;
	function getItem(index:Float):T;
	function getItemMetadata():Void;
	var onRowCountChanged : Slick.Event<OnRowCountChangedEventData>;
	var onRowsChanged : Slick.Event<OnRowsChangedEventData>;
	var onPagingInfoChanged : Slick.Event<OnPagingInfoChangedEventData>;
}
typedef GroupingOptions<T> = {
	var getter : haxe.Constraints.Function;
	var formatter : Formatter<T>;
	var comparer : Dynamic -> Dynamic -> Dynamic;
	var predefinedValues : Array<Dynamic>;
	var aggregators : Array<Aggregators.Aggregator<T>>;
	var aggregateEmpty : Bool;
	var aggregateCollapsed : Bool;
	var aggregateChildGroups : Bool;
	var collapsed : Bool;
	var displayTotalsRow : Bool;
};
typedef PagingOptions = {
	@:optional
	var pageSize : Float;
	@:optional
	var pageNum : Float;
	@:optional
	var totalRows : Float;
	@:optional
	var totalPages : Float;
};
typedef RefreshHints = {
	@:optional
	var isFilterNarrowing : Bool;
	@:optional
	var isFilterExpanding : Bool;
	@:optional
	var isFilterUnchanged : Bool;
	@:optional
	var ignoreDiffsBefore : Bool;
	@:optional
	var ignoreDiffsAfter : Bool;
};
typedef OnRowCountChangedEventData = { };
typedef OnRowsChangedEventData = {
	var rows : Array<Float>;
};
typedef OnPagingInfoChangedEventData = {
	>PagingOptions,
};
