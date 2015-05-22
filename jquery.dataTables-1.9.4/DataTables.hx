typedef DataTable = {
	@:overload(function(selector:Array<Node>, ?opts:RowParams):JQuery { })
	@:overload(function(selector:JQuery, ?opts:RowParams):JQuery { })
	function $(selector:String, ?opts:RowParams):JQuery;
	@:overload(function(selector:Array<Node>, ?opts:RowParams):Array<Dynamic> { })
	@:overload(function(selector:JQuery, ?opts:RowParams):Array<Dynamic> { })
	function _(selector:String, ?opts:RowParams):Array<Dynamic>;
	function fnAddData(data:Dynamic, ?redraw:Bool):Array<Float>;
	function fnAdjustColumnSizing(?redraw:Bool):Void;
	function fnClearTable(?redraw:Bool):Void;
	function fnClose(node:Node):Float;
	@:overload(function(tr:Node, ?callback:Void -> Void, ?redraw:Bool):Array<Dynamic> { })
	function fnDeleteRow(index:Float, ?callback:Void -> Void, ?redraw:Bool):Array<Dynamic>;
	function fnDestroy(?remove:Bool):Void;
	function fnDraw(?complete:Bool):Void;
	function fnFilter(input:String, ?column:Float, ?regex:Bool, ?smart:Bool, ?showGlobal:Bool, ?caseInsensitive:Bool):Void;
	@:overload(function(?row:Float, ?col:Float):Dynamic { })
	function fnGetData(?row:Node, ?col:Float):Dynamic;
	function fnGetNodes(?row:Float):Dynamic;
	function fnGetPosition(node:Node):Dynamic;
	function fnIsOpen(tr:Node):Bool;
	@:overload(function(node:Node, html:Node, clazz:String):Node { })
	@:overload(function(node:Node, html:JQuery, clazz:String):Node { })
	function fnOpen(node:Node, html:String, clazz:String):Node;
	@:overload(function(page:Float, ?redraw:Bool):Void { })
	function fnPageChange(action:String, ?redraw:Bool):Void;
	function fnSetColumnVis(column:Float, show:Bool, ?redraw:Bool):Void;
	function fnSettings():Settings;
	@:overload(function(col:Array<Array<Dynamic>>):Void { })
	function fnSort(col:Float):Void;
	function fnSortListener(node:Node, column:Float, ?callback:Void -> Void):Void;
	@:overload(function(data:Dynamic, dataIndex:Float, ?column:Float, ?redraw:Bool, ?action:Bool):Float { })
	function fnUpdate(data:Dynamic, row:Node, ?column:Float, ?redraw:Bool, ?action:Bool):Float;
	function fnVersionCheck(version:String):Bool;
};
typedef Static = {
	function fnVersionCheck(version:String):Bool;
	function fnIsDataTable(table:Node):Bool;
	function fnTables(?visible:Bool):Array<Node>;
};
typedef RowParams = {
	@:optional
	var filter : String;
	@:optional
	var order : String;
	@:optional
	var page : String;
};
typedef Options = {
	@:optional
	var aaData : Array<Dynamic>;
	@:optional
	var aaSorting : Array<Dynamic>;
	@:optional
	var aaSortingFixed : Array<Dynamic>;
	@:optional
	var ajax : Dynamic;
	@:optional
	var aLengthMenu : Array<Dynamic>;
	@:optional
	var aoColumns : Array<ColumnOptions>;
	@:optional
	var aoColumnDefs : Array<ColumnDef>;
	@:optional
	var aoSearchCols : Array<Dynamic>;
	@:optional
	var asStripClasses : Array<String>;
	@:optional
	var bAutoWidth : Bool;
	@:optional
	var bDeferRender : Bool;
	@:optional
	var bDestroy : Bool;
	@:optional
	var bFilter : Bool;
	@:optional
	var bInfo : Bool;
	@:optional
	var bJQueryUI : Bool;
	@:optional
	var bLengthChange : Bool;
	@:optional
	var bPaginate : Bool;
	@:optional
	var bProcessing : Bool;
	@:optional
	var bRetrieve : Bool;
	@:optional
	var bScrollAutoCss : Bool;
	@:optional
	var bScrollCollapse : Bool;
	@:optional
	var bScrollInfinite : Bool;
	@:optional
	var bServerSide : Bool;
	@:optional
	var bSort : Bool;
	@:optional
	var bSortCellsTop : Bool;
	@:optional
	var bSortClasses : Bool;
	@:optional
	var bStateSave : Bool;
	@:optional
	var fnCookieCallback : CookieCallback;
	@:optional
	var fnCreatedRow : RowCreatedCallback;
	@:optional
	var fnDrawCallback : DrawCallback;
	@:optional
	var fnFooterCallback : FooterCallback;
	@:optional
	var fnFormatNumber : FormatNumber;
	@:optional
	var fnHeaderCallback : HeaderCallback;
	@:optional
	var fnInfoCallback : InfoCallback;
	@:optional
	var fnInitComplete : InitComplete;
	@:optional
	var fnPreDrawCallback : PreDrawCallback;
	@:optional
	var fnRowCallback : RowCallback;
	@:optional
	var fnStateLoadCallback : StateLoadCallback;
	@:optional
	var fnStateLoadParams : StateLoadParams;
	@:optional
	var fnStateLoaded : StateLoaded;
	@:optional
	var fnStateSaveCallback : StateSaveCallback;
	@:optional
	var fnStateSaveParams : StateSaveParams;
	@:optional
	var iCookieDuration : Float;
	@:optional
	var iDeferLoading : Dynamic;
	@:optional
	var iDisplayLength : Float;
	@:optional
	var iDisplayStart : Float;
	@:optional
	var iScrollLoadGap : Float;
	@:optional
	var iTabIndex : Float;
	@:optional
	var oLanguage : LanguageOptions;
	@:optional
	var oSearch : Dynamic;
	@:optional
	var sAjaxDataProp : String;
	@:optional
	var sAjaxSource : String;
	@:optional
	var sCookiePrefix : String;
	@:optional
	var sDom : String;
	@:optional
	var sPaginationType : String;
	@:optional
	var sScrollX : String;
	@:optional
	var sScrollXInner : String;
	@:optional
	var sScrollY : String;
	@:optional
	var sServerMethod : String;
};
typedef LanguageOptions = {
	@:optional
	var oAria : AriaOptions;
	@:optional
	var oPaginate : PaginateOptions;
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
typedef AriaOptions = {
	@:optional
	var sSortAscending : String;
	@:optional
	var sSortDescending : String;
};
typedef PaginateOptions = {
	@:optional
	var sFirst : String;
	@:optional
	var sLast : String;
	@:optional
	var sNext : String;
	@:optional
	var sPrevious : String;
};
typedef ColumnOptions = {
	@:optional
	var aDataSort : Array<Float>;
	@:optional
	var asSorting : Array<String>;
	@:optional
	var bSearchable : Bool;
	@:optional
	var bSortable : Bool;
	@:optional
	var bVisible : Bool;
	@:optional
	var _bAutoType : Bool;
	@:optional
	var fnCreatedCell : CreatedCell;
	@:optional
	var iDataSort : Float;
	@:optional
	var mData : Dynamic;
	@:optional
	var mRender : Dynamic;
	@:optional
	var sCellType : String;
	@:optional
	var sClass : String;
	@:optional
	var sContentPadding : String;
	@:optional
	var sDefaultContent : String;
	@:optional
	var sName : String;
	@:optional
	var sSortDataType : String;
	@:optional
	var sSortingClass : String;
	@:optional
	var sTitle : String;
	@:optional
	var sType : String;
	@:optional
	var sWidth : String;
};
typedef ColumnDef = {
	>ColumnOptions,
	var aTargets : Array<Dynamic>;
};
typedef Settings = {
	var oFeatures : Features;
	var oScroll : ScrollingSettings;
	var oLanguage : { var fnInfoCallback : InfoCallback; };
	var oBrowser : { var bScrollOversize : Bool; };
	var aanFeatures : Array<Array<Node>>;
	var aoData : Array<Row>;
	var aiDisplay : Array<Float>;
	var aiDisplayMaster : Array<Float>;
	var aoColumns : Array<Column>;
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
	var aoRowCallback : Array<RowCallback>;
	var aoHeaderCallback : Array<HeaderCallback>;
	var aoFooterCallback : Array<FooterCallback>;
	var aoDrawCallback : Array<DrawCallback>;
	var aoRowCreatedCallback : Array<RowCreatedCallback>;
	var aoPreDrawCallback : Array<PreDrawCallback>;
	var aoInitComplete : Array<InitComplete>;
	var aoStateSaveParams : Array<StateSaveParams>;
	var aoStateLoadParams : Array<StateLoadParams>;
	var aoStateLoaded : Array<StateLoaded>;
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
	var fnCookieCallback : CookieCallback;
	var aoStateSave : Array<StateSaveCallback>;
	var aoStateLoad : Array<StateLoadCallback>;
	var oLoadedState : Dynamic;
	var sAjaxSource : String;
	var sAjaxDataProp : String;
	var bAjaxDataGet : Bool;
	var jqXHR : Dynamic;
	var fnServerData : Dynamic;
	var aoServerParams : Array<Dynamic>;
	var sServerMethod : String;
	var fnFormatNumber : FormatNumber;
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
typedef Features = {
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
typedef ScrollingSettings = {
	var bAutoCss : Bool;
	var bCollapse : Bool;
	var bInfinite : Bool;
	var iBarWidth : Float;
	var iLoadGap : Float;
	var sX : String;
	var sY : String;
};
typedef Row = {
	var nTr : Node;
	var _aData : Dynamic;
	var _aSortData : Array<Dynamic>;
	var _anHidden : Array<Node>;
	var _sRowStripe : String;
};
typedef Column = {
	var aDataSort : Dynamic;
	var asSorting : Array<String>;
	var bSearchable : Bool;
	var bSortable : Bool;
	var bVisible : Bool;
	var _bAutoType : Bool;
	var fnCreatedCell : CreatedCell;
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
typedef CookieCallback = { };
typedef RowCreatedCallback = { };
typedef DrawCallback = { };
typedef FooterCallback = { };
typedef FormatNumber = { };
typedef HeaderCallback = { };
typedef InfoCallback = { };
typedef InitComplete = { };
typedef PreDrawCallback = { };
typedef RowCallback = { };
typedef StateLoadCallback = { };
typedef StateLoadParams = { };
typedef StateLoaded = { };
typedef StateSaveCallback = { };
typedef StateSaveParams = { };
typedef CreatedCell = { };
