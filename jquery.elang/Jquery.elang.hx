typedef IPageResource = {
	@:optional
	var lang : IPageLangItems;
	@:optional
	var selectedLang : String;
};
typedef IPageLangItems = {
	@:optional
	var en : IPageLabels;
	@:optional
	var hu : IPageLabels;
};
typedef IPageLabels = {
	@:optional
	var lblTitle : String;
	@:optional
	var lblPageHeader : String;
	@:optional
	var lblSearchField : String;
	@:optional
	var lblEditKeyField : String;
	@:optional
	var lblEditValueField : String;
	@:optional
	var lblFindedExpressionsHead : String;
	@:optional
	var lblEditedExpressionsHead : String;
	@:optional
	var lblFindHead : String;
	@:optional
	var lblEditHead : String;
	@:optional
	var lblFind : String;
	@:optional
	var lblAdd : String;
	@:optional
	var lblModify : String;
	@:optional
	var lblRemove : String;
	@:optional
	var lblSearchInExpressions : String;
	@:optional
	var lblSearchInMeanings : String;
	@:optional
	var lblSearchInExpressionsHlp : String;
	@:optional
	var lblSearchInMeaningsHlp : String;
	@:optional
	var lblTestHead : String;
	@:optional
	var lblOrderedTest : String;
	@:optional
	var lblRandomlyTest : String;
	@:optional
	var lblTypedTest : String;
	@:optional
	var lblSelectedTest : String;
	@:optional
	var lblWrittedTest : String;
	@:optional
	var lblVoicedTest : String;
	@:optional
	var lblStartTest : String;
	@:optional
	var lblStopTest : String;
	@:optional
	var lblTypedTestHlp : String;
	@:optional
	var lblSelectedTestHlp : String;
	@:optional
	var lblOrderedTestHlp : String;
	@:optional
	var lblRandomlyTestHlp : String;
	@:optional
	var lblWrittedTestHlp : String;
	@:optional
	var lblVoicedTestHlp : String;
};
typedef ELangCommonStatic = {
	var resource : IPageResource;
	function getLabel(labelid:String, ?langid:String):String;
	function setLang(langid:String, ?node:JQuery):Void;
};
typedef IELangDBOptions = {
	var autocompleteRows : Float;
};
typedef IELangDBDelegates = {
	var selectHandler : haxe.Constraints.Function;
	var insertHandler : haxe.Constraints.Function;
	var modifyHandler : haxe.Constraints.Function;
	var removeHandler : haxe.Constraints.Function;
};
typedef IELangDBEvents = {
	var select : JQueryDeferred<Dynamic>;
	var insert : JQueryDeferred<Dynamic>;
	var modify : JQueryDeferred<Dynamic>;
	var remove : JQueryDeferred<Dynamic>;
};
typedef IELangDB = {
	@:optional
	var cache : Dynamic;
	@:optional
	var delegates : IELangDBDelegates;
	@:optional
	var events : IELangDBEvents;
	@:optional
	var isInitialized : Bool;
	@:optional
	var options : IELangDBOptions;
	@:optional
	var name : String;
	@:optional
	var description : String;
	function initialize(?options:IELangDBOptions):Void;
	function _onSelect(id:String, ?callback:haxe.Constraints.Function):Void;
	function _onInsert(id:String, value:String, ?callback:haxe.Constraints.Function):Void;
	function _onModify(id:String, value:String, ?callback:haxe.Constraints.Function):Void;
	function _onRemove(id:String, ?callback:haxe.Constraints.Function):Void;
	function select(id:String, ?callback:haxe.Constraints.Function):Void;
	function insert(id:String, value:String, ?callback:haxe.Constraints.Function):Void;
	function modify(id:String, value:String, ?callback:haxe.Constraints.Function):Void;
	function remove(id:String, ?callback:haxe.Constraints.Function):Void;
	function sort():Void;
	function setOptions(options:IELangDBOptions):Void;
	function getIndexHash(id:String):String;
	function getOptions():IELangDBOptions;
};
typedef ELangStatic = {
	function getInstance(?options:IELangDBOptions):IELangDB;
};
typedef IELangBaseDefaults = {
	var contentCSS : String;
	var contentInnerCSS : String;
	var resultCSS : String;
	var resultHeadCSS : String;
	var contentInnerHtml : String;
	var fluidRowHtml : String;
	var radioGroupHtml : String;
	var radioButtonHtml : String;
	var submitButtonHtml : String;
	var headLabelHtml : String;
	var resultHeadLabelHtml : String;
	var resultHtml : String;
	var headLabel : String;
	var resultHeadLabel : String;
};
typedef IELangBase = {
	var name : String;
	var description : String;
	var delegates : Dynamic;
	var element : JQuery;
	var events : Dynamic;
	var options : Dynamic;
	var defaults : IELangBaseDefaults;
	function initialize(target:HTMLElement, options:Dynamic):Void;
	function createContent():Void;
	function createRadioGroup(node:JQuery, isMethodAppend:Bool, buttonNumber:Float, defaultButton:Float, btnLabels:Array<String>, clickHandler:haxe.Constraints.Function, ?btnTooltips:Array<String>):Void;
	function appendAsLastChild(node:JQuery, element:JQuery):JQuery;
	function getLastChild(node:JQuery):JQuery;
	function isRdoChecked(eSrc:HTMLElement, rdoId:String):Bool;
	function processCommand(command:String):JQuery;
	function setOptions(options:Dynamic):Void;
};
typedef IELangSearchDefaults = {
	>IELangBaseDefaults,
	var expressionsLabel : String;
	var expressionsTooltip : String;
	var meaningsLabel : String;
	var meaningsTooltip : String;
	var searchFormHtml : String;
	var searchFieldHtml : String;
	var searchButtonLabel : String;
};
typedef IELangSearchDelegates = {
	var selectHandler : haxe.Constraints.Function;
	var selectCallback : haxe.Constraints.Function;
	var langDirectionHandler : haxe.Constraints.Function;
	var langDirectionClickHandler : haxe.Constraints.Function;
	var searchHandler : haxe.Constraints.Function;
	var searchClickHandler : haxe.Constraints.Function;
};
typedef IELangSearchEvents = {
	var select : JQueryDeferred<Dynamic>;
};
typedef IELangSearch = {
	>IELangBase,
	var defaults : IELangSearchDefaults;
	var delegates : IELangSearchDelegates;
	var events : IELangSearchEvents;
	var isSearchInExp : Bool;
	function initialize(target:HTMLElement, options:Dynamic):Void;
	function createContent():Void;
	function _onDirectionClick(eSrc:HTMLElement):Void;
	function _onSelect(eSrc:HTMLInputElement):Void;
	function _onSelectCallback():Void;
	function _select(eSrc:HTMLInputElement):Void;
};
typedef IELangEditDelegates = {
	var insertHandler : haxe.Constraints.Function;
	var modifyHandler : haxe.Constraints.Function;
	var removeHandler : haxe.Constraints.Function;
	var selectHandler : haxe.Constraints.Function;
	var btnAddHandler : haxe.Constraints.Function;
	var btnAddClickHandler : haxe.Constraints.Function;
	var insertCallback : haxe.Constraints.Function;
	var modifyCallback : haxe.Constraints.Function;
	var removeCallback : haxe.Constraints.Function;
	var selectCallback : haxe.Constraints.Function;
};
typedef IELangEditEvents = {
	var insert : JQueryDeferred<Dynamic>;
	var modify : JQueryDeferred<Dynamic>;
	var remove : JQueryDeferred<Dynamic>;
	var select : JQueryDeferred<Dynamic>;
};
typedef IELangEditDefaults = {
	>IELangBaseDefaults,
	var editFormHtml : String;
	var editFieldHtml : String;
	var addButtonHtml : String;
	var addButtonLabel : String;
	var editKeyLabel : String;
	var editValueLabel : String;
};
typedef IELangEdit = {
	>IELangBase,
	var defaults : IELangEditDefaults;
	var delegates : IELangEditDelegates;
	var events : IELangEditEvents;
	function initialize(target:HTMLElement, options:Dynamic):Void;
	function createContent():Void;
	function _onAddClick(key:HTMLInputElement, value:HTMLInputElement):Void;
	function _onInsert():Void;
	function _onInsertCallback():Void;
	function _onModify():Void;
	function _onModifyCallback():Void;
	function _onRemove():Void;
	function _onRemoveCallback():Void;
	function _onSelect():Void;
	function _onSelectCallback():Void;
	function _insert():Void;
	function _modify():Void;
	function _remove():Void;
	function _select():Void;
};
typedef IELangTestDefaults = {
	>IELangBaseDefaults,
	var formHtml : String;
	var startButtonLabel : String;
	var stopButtonLabel : String;
	var rdoTypedLabel : String;
	var rdoSelectedLabel : String;
	var rdoOrderedLabel : String;
	var rdoRandomlyLabel : String;
	var rdoWrittedLabel : String;
	var rdoVoicedLabel : String;
	var rdoTypedTooltip : String;
	var rdoSelectedTooltip : String;
	var rdoOrderedTooltip : String;
	var rdoRandomlyTooltip : String;
	var rdoWrittedTooltip : String;
	var rdoVoicedTooltip : String;
};
typedef IELangTestDelegates = {
	var startStopHandler : haxe.Constraints.Function;
	var rdoVariantHandler : haxe.Constraints.Function;
	var rdoModeHandler : haxe.Constraints.Function;
	var rdoQuestionHandler : haxe.Constraints.Function;
	var rdoVariantClickHandler : haxe.Constraints.Function;
	var rdoModeClickHandler : haxe.Constraints.Function;
	var rdoQuestionClickHandler : haxe.Constraints.Function;
};
typedef IELangTest = {
	>IELangBase,
	var defaults : IELangTestDefaults;
	var delegates : IELangTestDelegates;
	function initialize(target:HTMLElement, options:Dynamic):Void;
	function createContent():Void;
	function _onRdoVariantClick(eSrc:HTMLElement):Void;
	function _onRdoModeClick(eSrc:HTMLElement):Void;
	function _onRdoQuestionClick(eSrc:HTMLElement):Void;
	function _onStartStopClick():Void;
};
typedef IFnNewInstance = {
	function createInstance(el:HTMLElement, options:Dynamic, pluginName:String):JQuery;
};
typedef IFnJQuery = {
	function fnPlugin(context:JQuery, options:Dynamic, command:String, pluginName:String, pluginDataAttribute:String):JQuery;
};
