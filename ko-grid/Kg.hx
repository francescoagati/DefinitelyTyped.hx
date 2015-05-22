typedef DomUtilityService = {
	function UpdateGridLayout(grid:Grid<Dynamic>):Void;
	function BuildStyles(grid:Grid<Dynamic>):Void;
};
typedef Row<EntityType> = {
	var selected : KnockoutObservable<Bool>;
	var entity : EntityType;
};
typedef RowFactory<EntityType> = {
	var rowCache : Array<Row<EntityType>>;
};
typedef SelectionService<EntityType> = {
	function setSelection(row:Row<EntityType>, selected:Bool):Void;
	var multi : Bool;
	var lastClickedRow : Row<EntityType>;
};
typedef Grid<EntityType> = {
	function configureColumnWidths():Void;
	var rowFactory : RowFactory<EntityType>;
	var config : GridOptions<EntityType>;
	var $$selectionPhase : Bool;
	var selectionService : SelectionService<EntityType>;
};
typedef Plugin<EntityType> = {
	function onGridInit(grid:Grid<EntityType>):Void;
};
typedef GridOptions<EntityType> = {
	@:optional
	function afterSelectionChange(row:Row<EntityType>):Void;
	@:optional
	var beforeSelectionChange : haxe.Constraints.Function;
	@:optional
	var columnDefs : Array<ColumnDef>;
	@:optional
	var columnWidth : Float;
	@:optional
	var data : KnockoutObservableArray<EntityType>;
	var displaySelectionCheckbox : Bool;
	@:optional
	var enableColumnResize : Bool;
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
	var filterOptions : FilterOptions;
	@:optional
	var footerRowHeight : Float;
	@:optional
	var footerVisible : Bool;
	@:optional
	var groups : Array<String>;
	@:optional
	var headerRowHeight : Float;
	@:optional
	var headerRowTemplate : Dynamic;
	@:optional
	var jqueryUIDraggable : Bool;
	@:optional
	var jqueryUITheme : Bool;
	@:optional
	var keepLastSelected : Bool;
	@:optional
	var maintainColumnRatios : Dynamic;
	@:optional
	var multiSelect : Bool;
	@:optional
	var pagingOptions : PagingOptions;
	@:optional
	var plugins : Array<Plugin<EntityType>>;
	@:optional
	var rowHeight : Float;
	@:optional
	var rowTemplate : Dynamic;
	@:optional
	var selectedItems : KnockoutObservableArray<Dynamic>;
	@:optional
	var selectWithCheckboxOnly : Bool;
	@:optional
	var showColumnMenu : Bool;
	@:optional
	var showFilter : Bool;
	@:optional
	var showGroupPanel : Bool;
	@:optional
	var sortInfo : Dynamic;
	@:optional
	var tabIndex : Float;
	@:optional
	var useExternalSorting : Bool;
};
typedef ColumnDef = {
	var field : String;
	@:optional
	var displayName : String;
	@:optional
	var width : String;
};
typedef FilterOptions = {
	@:optional
	var filterText : String;
	@:optional
	var useExternalFilter : Bool;
};
typedef PagingOptions = {
	@:optional
	var pageSizes : Array<Float>;
	@:optional
	var pageSize : Float;
	@:optional
	var totalServerItems : Float;
	@:optional
	var currentPage : Float;
};
extern class KgTopLevel {
	static var domUtilityService : DomUtilityService;
}
