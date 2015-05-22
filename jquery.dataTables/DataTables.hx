typedef DataTable = {
	>DataTableCore,
	function data():DataTable;
	var order : OrderMethods;
	@:overload(function(rowSelector:haxe.extern.EitherType<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>, Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>>>, cellSelector:haxe.extern.EitherType<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>, Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>>>, ?modifier:ObjectSelectorModifier):CellMethods { })
	function cell(cellSelector:haxe.extern.EitherType<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>, Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>>>, ?modifier:ObjectSelectorModifier):CellMethods;
	@:overload(function(cellSelector:haxe.extern.EitherType<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>, Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>>>, ?modifier:ObjectSelectorModifier):CellsMethods { })
	@:overload(function(rowSelector:haxe.extern.EitherType<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>, Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>>>, cellSelector:haxe.extern.EitherType<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>, Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>>>, ?modifier:ObjectSelectorModifier):CellsMethods { })
	function cells(?modifier:ObjectSelectorModifier):CellsMethods;
	var column : ColumnMethodsModel;
	var columns : ColumnsMethodsModel;
	var row : RowMethodsModel;
	var rows : RowsMethodsModel;
	function table(tableSelector:haxe.extern.EitherType<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>, Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>>>):TableMethods;
	@:overload(function(tableSelector:haxe.extern.EitherType<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>, Array<haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<haxe.Constraints.Function, haxe.extern.EitherType<JQuery, Dynamic>>>>>>):TablesMethods { })
	function tables():TablesMethods;
};
typedef DataTables = {
	>DataTableCore,
};
typedef ObjectSelectorModifier = {
	@:optional
	var order : String;
	@:optional
	var search : String;
	@:optional
	var page : String;
};
typedef DataTableCore = {
	>UtilityMethods,
	function $(selector:haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<Array<Node>, JQuery>>>, ?modifier:ObjectSelectorModifier):JQuery;
	var ajax : AjaxMethodModel;
	function clear():DataTable;
	function destroy(?remove:Bool):DataTable;
	function draw(?reset:Bool):DataTable;
	function off(event:String, ?callback:haxe.Constraints.Function):DataTable;
	function on(event:String, callback:haxe.Constraints.Function):DataTable;
	function one(event:String, callback:haxe.Constraints.Function):DataTable;
	var page : PageMethods;
	@:overload(function(input:String, ?regex:Bool, ?smart:Bool, ?caseInsen:Bool):DataTable { })
	function search():String;
	function settings():DataTable;
	var state : StateMethods;
};
typedef AjaxMethods = {
	>DataTable,
	function load(?callback:haxe.Constraints.Function, ?resetPaging:Bool):DataTable;
};
typedef AjaxMethodModel = {
	function json():Dynamic;
	function params():Dynamic;
	function reload(?callback:haxe.Constraints.Function, ?resetPaging:Bool):DataTable;
	@:overload(function(url:String):AjaxMethods { })
	function url():String;
};
typedef OrderMethods = {
	function listener(node:haxe.extern.EitherType<String, haxe.extern.EitherType<Node, JQuery>>, column:Float, callback:haxe.Constraints.Function):DataTable;
};
typedef PageMethods = {
	function info():PageMethodeModelInfoReturn;
	@:overload(function(length:Float):DataTable { })
	function len():Float;
};
typedef PageMethodeModelInfoReturn = {
	var page : Float;
	var pages : Float;
	var start : Float;
	var end : Float;
	var length : Float;
	var recordsTotal : Float;
	var recordsDisplay : Float;
};
typedef StateMethods = {
	function clear():DataTable;
	function loaded():StateReturnModel;
	function save():DataTable;
};
typedef StateReturnModel = {
	var time : Float;
	var start : Float;
	var length : Float;
	var order : Array<Array<haxe.extern.EitherType<String, Float>>>;
	var search : SearchSettings;
	var columns : Array<StateReturnModelColumns>;
};
typedef StateReturnModelColumns = {
	var search : SearchSettings;
	var visible : Bool;
};
typedef UtilityMethods = {
	function concat(a:Dynamic, b:haxe.extern.Rest<Dynamic>):DataTable;
	function each(fn:haxe.Constraints.Function):DataTable;
	function eq(idx:Float):DataTable;
	function filter(fn:haxe.Constraints.Function):DataTable;
	function flatten():DataTable;
	function indexOf(value:Dynamic):Float;
	function join(separator:String):String;
	function lastIndexOf(value:Dynamic):Float;
	var length : Float;
	function map(fn:haxe.Constraints.Function):DataTable;
	function pluck(property:haxe.extern.EitherType<Float, String>):DataTable;
	function pop():Dynamic;
	function push(value_1:haxe.extern.EitherType<Dynamic, Array<Dynamic>>, value_2:haxe.extern.Rest<Dynamic>):Float;
	function reduce(fn:haxe.Constraints.Function, ?initialValue:Dynamic):Dynamic;
	function reduceRight(fn:haxe.Constraints.Function, ?initialValue:Dynamic):Dynamic;
	function reverse():DataTable;
	function shift():Dynamic;
	function sort(?fn:haxe.Constraints.Function):DataTable;
	function splice(index:Float, howMany:Float, ?value_1:haxe.extern.EitherType<Dynamic, Array<Dynamic>>, value_2:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	function to$():JQuery;
	function toArray():Array<Dynamic>;
	function toJQuery():JQuery;
	function unique():DataTable;
	function unshift(value_1:haxe.extern.EitherType<Dynamic, Array<Dynamic>>, value_2:haxe.extern.Rest<Dynamic>):Float;
};
typedef CommonSubMethods = {
	function cache(t:String):DataTable;
};
typedef CommonCellMethods = {
	>CommonSubMethods,
	function invalidate(?source:String):DataTable;
	function render(t:String):Dynamic;
};
typedef CellMethods = {
	>DataTableCore,
	>CommonCellMethods,
	@:overload(function(data:Dynamic):DataTable { })
	function data():Dynamic;
	function index():CellIndexReturn;
	function node():Node;
};
typedef CellIndexReturn = {
	var row : Float;
	var column : Float;
	var columnVisible : Float;
};
typedef CellsMethods = {
	>DataTableCore,
	>CommonCellMethods,
	function data():DataTable;
	function indexes():DataTable;
	function nodes():DataTable;
};
typedef CommonColumnMethod = {
	>CommonSubMethods,
	function footer():Dynamic;
	function header():Node;
	function order(direction:String):DataTable;
	@:overload(function(show:Bool, ?redrawCalculations:Bool):DataTable { })
	function visible():Bool;
};
typedef ColumnMethodsModel = {
	function index(t:String, index:Float):Float;
};
typedef ColumnMethods = {
	>DataTableCore,
	>CommonColumnMethod,
	function data():DataTable;
	function dataSrc():haxe.extern.EitherType<Float, haxe.extern.EitherType<String, haxe.Constraints.Function>>;
	function index(?t:String):DataTable;
	function nodes():Array<DataTable>;
};
typedef ColumnsMethodsModel = {
	function adjust():DataTable;
};
typedef ColumnsMethods = {
	>DataTableCore,
	>CommonColumnMethod,
	function data():DataTable;
	function dataSrc():DataTable;
	function indexes(?t:String):DataTable;
	function nodes():Array<Array<DataTable>>;
};
typedef CommonRowMethod = {
	>CommonSubMethods,
	function invalidate(?source:String):DataTable;
};
typedef RowChildMethodModel = {
	function hide():DataTable;
	function isShown():DataTable;
	function remove():DataTable;
	function show():DataTable;
};
typedef RowChildMethods = {
	>DataTableCore,
	function hide():DataTable;
	function remove():DataTable;
	function show():DataTable;
};
typedef RowMethodsModel = {
	function add(data:haxe.extern.EitherType<Array<Dynamic>, Dynamic>):DataTable;
};
typedef RowMethods = {
	>DataTableCore,
	>CommonRowMethod,
	var child : RowChildMethodModel;
	@:overload(function(d:haxe.extern.EitherType<Array<Dynamic>, Dynamic>):DataTable { })
	function data():haxe.extern.EitherType<Array<Dynamic>, Dynamic>;
	function index():Float;
	function node():Node;
	function remove():Node;
};
typedef RowsMethodsModel = {
	function add(data:Array<Dynamic>):DataTable;
};
typedef RowsMethods = {
	>DataTableCore,
	>CommonRowMethod,
	@:overload(function(d:haxe.extern.EitherType<Array<Dynamic>, Dynamic>):DataTable { })
	function data():DataTable;
	function indexes():DataTable;
	function nodes():DataTable;
	function remove():DataTable;
};
typedef TableMethods = {
	>DataTableCore,
	function footer():Node;
	function header():Node;
	function body():Node;
	function container():Node;
	function node():Node;
};
typedef TablesMethods = {
	>DataTableCore,
	function footer():DataTable;
	function header():DataTable;
	function body():DataTable;
	function containers():DataTable;
	function nodes():DataTable;
};
typedef StaticFunctions = {
	function isDataTable(table:String):Bool;
	function tables(?visible:Bool):Array<DataTables.DataTable>;
	function versionCheck(version:String):Bool;
	var util : StaticUtilFunctions;
	function Api(selector:haxe.extern.EitherType<String, haxe.extern.EitherType<Node, haxe.extern.EitherType<Array<Node>, JQuery>>>):DataTables.DataTable;
};
typedef StaticUtilFunctions = {
	function escapeRegex(str:String):String;
	function throttle(fn:haxe.Constraints.Function, ?period:Float):haxe.Constraints.Function;
};
typedef Settings = {
	@:optional
	var autoWidth : Bool;
	@:optional
	var deferRender : Bool;
	@:optional
	var info : Bool;
	@:optional
	var jQueryUI : Bool;
	@:optional
	var lengthChange : Bool;
	@:optional
	var ordering : Bool;
	@:optional
	var paging : Bool;
	@:optional
	var processing : Bool;
	@:optional
	var scrollX : Bool;
	@:optional
	var scrollY : String;
	@:optional
	var searching : Bool;
	@:optional
	var serverSide : Bool;
	@:optional
	var stateSave : Bool;
	@:optional
	var ajax : haxe.extern.EitherType<String, haxe.extern.EitherType<AjaxSettings, FunctionAjax>>;
	@:optional
	var data : Dynamic;
	@:optional
	var columns : Array<ColumnSettings>;
	@:optional
	var columnDefs : Array<ColumnDefsSettings>;
	@:optional
	var deferLoading : haxe.extern.EitherType<Float, Array<Float>>;
	@:optional
	var destroy : Bool;
	@:optional
	var displayStart : Float;
	@:optional
	var dom : String;
	@:optional
	var lengthMenu : haxe.extern.EitherType<Array<haxe.extern.EitherType<Float, String>>, Array<Array<haxe.extern.EitherType<Float, String>>>>;
	@:optional
	var orderCellsTop : Bool;
	@:optional
	var orderClasses : Bool;
	@:optional
	var order : haxe.extern.EitherType<Array<haxe.extern.EitherType<String, Float>>, Array<Array<haxe.extern.EitherType<String, Float>>>>;
	@:optional
	var orderFixed : haxe.extern.EitherType<Array<haxe.extern.EitherType<String, Float>>, haxe.extern.EitherType<Array<Array<haxe.extern.EitherType<String, Float>>>, Dynamic>>;
	@:optional
	var orderMulti : Bool;
	@:optional
	var pageLength : Float;
	@:optional
	var pagingType : String;
	@:optional
	var retrieve : Bool;
	@:optional
	var renderer : haxe.extern.EitherType<String, RendererSettings>;
	@:optional
	var scrollCollapse : Bool;
	@:optional
	var search : SearchSettings;
	@:optional
	var searchCols : Array<SearchSettings>;
	@:optional
	var searchDelay : Float;
	@:optional
	var stateDuration : Float;
	@:optional
	var stripeClasses : Array<String>;
	@:optional
	var tabIndex : Float;
	@:optional
	var createdRow : FunctionCreateRow;
	@:optional
	var drawCallback : FunctionDrawCallback;
	@:optional
	var footerCallback : FunctionFooterCallback;
	@:optional
	var formatNumber : FunctionFormatNumber;
	@:optional
	var headerCallback : FunctionHeaderCallback;
	@:optional
	var infoCallback : FunctionInfoCallback;
	@:optional
	var initComplete : FunctionInitComplete;
	@:optional
	var preDrawCallback : FunctionPreDrawCallback;
	@:optional
	var rowCallback : FunctionRowCallback;
	@:optional
	var stateLoadCallback : FunctionStateLoadCallback;
	@:optional
	var stateLoaded : FunctionStateLoaded;
	@:optional
	var stateLoadParams : FunctionStateLoadParams;
	@:optional
	var stateSaveCallback : FunctionStateSaveCallback;
	@:optional
	var stateSaveParams : FunctionStateSaveParams;
	@:optional
	var language : LanguageSettings;
};
typedef AjaxDataRequest = {
	var draw : Float;
	var start : Float;
	var length : Float;
	var data : Dynamic;
	var order : Array<AjaxDataRequestOrder>;
	var columns : Array<AjaxDataRequestColumn>;
	var search : AjaxDataRequestSearch;
};
typedef AjaxDataRequestSearch = {
	var value : String;
	var regex : Bool;
};
typedef AjaxDataRequestOrder = {
	var column : Float;
	var dir : String;
};
typedef AjaxDataRequestColumn = {
	var data : haxe.extern.EitherType<String, Float>;
	var name : String;
	var searchable : Bool;
	var orderable : Bool;
	var search : AjaxDataRequestSearch;
};
typedef AjaxData = {
	var draw : Float;
	var recordsTotal : Float;
	var recordsFiltered : Float;
	var data : Dynamic;
	@:optional
	var error : String;
};
typedef AjaxSettings = {
	>JQueryAjaxSettings,
	@:optional
	var data : haxe.extern.EitherType<Dynamic, FunctionAjaxData>;
	@:optional
	var dataSrc : haxe.extern.EitherType<String, haxe.Constraints.Function>;
};
typedef FunctionAjax = { };
typedef FunctionAjaxData = { };
typedef ColumnSettings = {
	@:optional
	var cellType : String;
	@:optional
	var className : String;
	@:optional
	var contentPadding : String;
	@:optional
	var createdCell : FunctionColumnCreatedCell;
	@:optional
	var data : haxe.extern.EitherType<Float, haxe.extern.EitherType<String, haxe.extern.EitherType<ObjectColumnData, FunctionColumnData>>>;
	@:optional
	var defaultContent : String;
	@:optional
	var name : String;
	@:optional
	var orderable : Bool;
	@:optional
	var orderData : haxe.extern.EitherType<Float, Array<Float>>;
	@:optional
	var orderDataType : String;
	@:optional
	var orderSequence : Array<String>;
	@:optional
	var render : haxe.extern.EitherType<Float, haxe.extern.EitherType<String, haxe.extern.EitherType<ObjectColumnRender, FunctionColumnRender>>>;
	@:optional
	var searchable : Bool;
	@:optional
	var title : String;
	@:optional
	var type : String;
	@:optional
	var visible : Bool;
	@:optional
	var width : String;
};
typedef ColumnDefsSettings = {
	>ColumnSettings,
	var targets : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Array<haxe.extern.EitherType<Float, String>>>>;
};
typedef FunctionColumnCreatedCell = { };
typedef FunctionColumnData = { };
typedef ObjectColumnData = {
	var _ : String;
	@:optional
	var filter : String;
	@:optional
	var display : String;
	@:optional
	var type : String;
	@:optional
	var sort : String;
};
typedef ObjectColumnRender = {
	>ObjectColumnData,
};
typedef FunctionColumnRender = { };
typedef CellMetaSettings = {
	var row : Float;
	var col : Float;
	var settings : DataTables.Settings;
};
typedef RendererSettings = {
	@:optional
	var header : String;
	@:optional
	var pageButton : String;
};
typedef SearchSettings = {
	@:optional
	var caseInsensitive : Bool;
	@:optional
	var regex : Bool;
	@:optional
	var smart : Bool;
	@:optional
	var search : String;
};
typedef FunctionCreateRow = { };
typedef FunctionDrawCallback = { };
typedef FunctionFooterCallback = { };
typedef FunctionFormatNumber = { };
typedef FunctionHeaderCallback = { };
typedef FunctionInfoCallback = { };
typedef FunctionInitComplete = { };
typedef FunctionPreDrawCallback = { };
typedef FunctionRowCallback = { };
typedef FunctionStateLoadCallback = { };
typedef FunctionStateLoaded = { };
typedef FunctionStateLoadParams = { };
typedef FunctionStateSaveCallback = { };
typedef FunctionStateSaveParams = { };
typedef LanguageSettings = {
	var emptyTable : String;
	var info : String;
	var infoEmpty : String;
	var infoFiltered : String;
	var infoPostFix : String;
	var thousands : String;
	var lengthMenu : String;
	var loadingRecords : String;
	var processing : String;
	var search : String;
	var zeroRecords : String;
	var paginate : LanguagePaginateSettings;
	var aria : LanguageAriaSettings;
};
typedef LanguagePaginateSettings = {
	var first : String;
	var last : String;
	var next : String;
	var previous : String;
};
typedef LanguageAriaSettings = {
	var sortAscending : String;
	var sortDescending : String;
};
typedef ArrayStringNode = { };
typedef SettingsLegacy = {
	var ajax : Dynamic;
	var oApi : Dynamic;
	var oFeatures : FeaturesLegacy;
	var oScroll : ScrollingLegacy;
	var oLanguage : LanguageLegacy;
	var oBrowser : { var bScrollOversize : Bool; };
	var aanFeatures : Array<Array<ArrayStringNode>>;
	var aoData : Array<RowLegacy>;
	var aiDisplay : Array<Float>;
	var aiDisplayMaster : Array<Float>;
	var aoColumns : Array<ColumnLegacy>;
	var aoHeader : Array<Dynamic>;
	var aoFooter : Array<Dynamic>;
	var asDataSearch : Array<String>;
	var oPreviousSearch : Dynamic;
	var aoPreSearchCols : Array<Dynamic>;
	var aaSorting : Array<Array<Dynamic>>;
	var aaSortingFixed : Array<Array<Dynamic>>;
	var asStripeClasses : Array<String>;
	var asDestroyStripes : Array<String>;
	var sDestroyWidth : Float;
	var aoRowCallback : Array<FunctionRowCallback>;
	var aoHeaderCallback : Array<FunctionHeaderCallback>;
	var aoFooterCallback : Array<FunctionFooterCallback>;
	var aoDrawCallback : Array<FunctionDrawCallback>;
	var aoRowCreatedCallback : Array<FunctionCreateRow>;
	var aoPreDrawCallback : Array<FunctionPreDrawCallback>;
	var aoInitComplete : Array<FunctionInitComplete>;
	var aoStateSaveParams : Array<FunctionStateSaveParams>;
	var aoStateLoadParams : Array<FunctionStateLoadParams>;
	var aoStateLoaded : Array<FunctionStateLoaded>;
	var sTableId : String;
	var nTable : Node;
	var nTHead : Node;
	var nTFoot : Node;
	var nTBody : Node;
	var nTableWrapper : Node;
	var bDeferLoading : Bool;
	var bInitialized : Bool;
	var aoOpenRows : Array<Dynamic>;
	var sDom : String;
	var sPaginationType : String;
	var iCookieDuration : Float;
	var sCookiePrefix : String;
	var fnCookieCallback : CookieCallbackLegacy;
	var aoStateSave : Array<FunctionStateSaveCallback>;
	var aoStateLoad : Array<FunctionStateLoadCallback>;
	var oLoadedState : Dynamic;
	var sAjaxSource : String;
	var sAjaxDataProp : String;
	var bAjaxDataGet : Bool;
	var jqXHR : Dynamic;
	var fnServerData : Dynamic;
	var aoServerParams : Array<Dynamic>;
	var sServerMethod : String;
	var fnFormatNumber : FunctionFormatNumber;
	var aLengthMenu : Array<Dynamic>;
	var iDraw : Float;
	var bDrawing : Bool;
	var iDrawError : Float;
	var _iDisplayLength : Float;
	var _iDisplayStart : Float;
	var _iDisplayEnd : Float;
	var _iRecordsTotal : Float;
	var _iRecordsDisplay : Float;
	var bJUI : Bool;
	var oClasses : Dynamic;
	var bFiltered : Bool;
	var bSorted : Bool;
	var bSortCellsTop : Bool;
	var oInit : Dynamic;
	var aoDestroyCallback : Array<Dynamic>;
	var fnRecordsTotal : Void -> Float;
	var fnRecordsDisplay : Void -> Float;
	var fnDisplayEnd : Void -> Float;
	var oInstance : Dynamic;
	var sInstance : String;
	var iTabIndex : Float;
	var nScrollHead : Node;
	var nScrollFoot : Node;
};
typedef FeaturesLegacy = {
	var bAutoWidth : Bool;
	var bDeferRender : Bool;
	var bFilter : Bool;
	var bInfo : Bool;
	var bLengthChange : Bool;
	var bPaginate : Bool;
	var bProcessing : Bool;
	var bServerSide : Bool;
	var bSort : Bool;
	var bSortClasses : Bool;
	var bStateSave : Bool;
};
typedef ScrollingLegacy = {
	var bAutoCss : Bool;
	var bCollapse : Bool;
	var bInfinite : Bool;
	var iBarWidth : Float;
	var iLoadGap : Float;
	var sX : String;
	var sY : String;
};
typedef RowLegacy = {
	var nTr : Node;
	var _aData : Dynamic;
	var _aSortData : Array<Dynamic>;
	var _anHidden : Array<Node>;
	var _sRowStripe : String;
};
typedef ColumnLegacy = {
	var aDataSort : Dynamic;
	var asSorting : Array<String>;
	var bSearchable : Bool;
	var bSortable : Bool;
	var bVisible : Bool;
	var _bAutoType : Bool;
	var fnCreatedCell : FunctionColumnCreatedCell;
	var fnGetData : Dynamic -> String -> Dynamic;
	var fnSetData : Dynamic -> Dynamic -> Void;
	var mData : Dynamic;
	var mRender : Dynamic;
	var nTh : Node;
	var nIf : Node;
	var sClass : String;
	var sContentPadding : String;
	var sDefaultContent : String;
	var sName : String;
	var sSortDataType : String;
	var sSortingClass : String;
	var sSortingClassJUI : String;
	var sTitle : String;
	var sType : String;
	var sWidth : String;
	var sWidthOrig : String;
};
typedef CookieCallbackLegacy = { };
typedef LanguageLegacy = {
	@:optional
	var oAria : LanguageAriaLegacy;
	@:optional
	var oPaginate : LanguagePaginateLegacy;
	@:optional
	var sEmptyTable : String;
	@:optional
	var sInfo : String;
	@:optional
	var sInfoEmpty : String;
	@:optional
	var sInfoFiltered : String;
	@:optional
	var sInfoPostFix : String;
	@:optional
	var sInfoThousands : String;
	@:optional
	var sLengthMenu : String;
	@:optional
	var sLoadingRecords : String;
	@:optional
	var sProcessing : String;
	@:optional
	var sSearch : String;
	@:optional
	var sUrl : String;
	@:optional
	var sZeroRecords : String;
};
typedef LanguageAriaLegacy = {
	@:optional
	var sSortAscending : String;
	@:optional
	var sSortDescending : String;
};
typedef LanguagePaginateLegacy = {
	@:optional
	var sFirst : String;
	@:optional
	var sLast : String;
	@:optional
	var sNext : String;
	@:optional
	var sPrevious : String;
};
