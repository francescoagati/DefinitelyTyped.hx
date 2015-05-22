extern class OverridesTopLevel {
	static function overrideDeleteConfirmation(listId:String, overrideText:String):Void;
	static function RegisterModuleInit(scriptFileName:String, initFunc:Void -> Void):Void;
	static function STSHtmlEncode(value:String):String;
	static function AddEvtHandler(element:HTMLElement, event:String, func:EventListener):Void;
	static function GetUrlKeyValue(key:String):String;
	static var ajaxNavigate : AjaxNavigate;
	static var browseris : Browseris;
	static function GetCurrentCtx():ContextInfo;
}
extern class JSRequest {
	static var QueryString : { };
	static function EnsureSetup():Void;
	static var FileName : String;
	static var PathName : String;
}
extern class _spPageContextInfo {
	static var alertsEnabled : Bool;
	static var allowSilverlightPrompt : String;
	static var clientServerTimeDelta : Float;
	static var crossDomainPhotosEnabled : Bool;
	static var currentCultureName : String;
	static var currentLanguage : Float;
	static var currentUICultureName : String;
	static var layoutsUrl : String;
	static var pageListId : String;
	static var pagePersonalizationScope : String;
	static var serverRequestPath : String;
	static var siteAbsoluteUrl : String;
	static var siteClientTag : String;
	static var siteServerRelativeUrl : String;
	static var systemUserKey : String;
	static var tenantAppVersion : String;
	static var userId : Float;
	static var webAbsoluteUrl : String;
	static var webLanguage : Float;
	static var webLogoUrl : String;
	static var webPermMasks : { var High : Float; var Low : Float; };
	static var webServerRelativeUrl : String;
	static var webTemplate : String;
	static var webTitle : String;
	static var webUIVersion : Float;
}
extern class AjaxNavigate {
	function update(url:String, updateParts:Dynamic, fullNavigate:Bool, anchorName:String):Void;
	function add_navigate(handler:haxe.Constraints.Function):Void;
	function remove_navigate(handler:haxe.Constraints.Function):Void;
	function submit(formToSubmit:HTMLFormElement):Void;
	function getParam(paramName:String):String;
	function getSavedFormAction():String;
	function get_href():String;
	function get_hash():String;
	function get_search():String;
	function convertMDSURLtoRegularURL(mdsPath:String):String;
}
extern class Browseris {
	var firefox : Bool;
	var firefox36up : Bool;
	var firefox3up : Bool;
	var firefox4up : Bool;
	var ie : Bool;
	var ie55up : Bool;
	var ie5up : Bool;
	var ie7down : Bool;
	var ie8down : Bool;
	var ie9down : Bool;
	var ie8standard : Bool;
	var ie8standardUp : Bool;
	var ie9standardUp : Bool;
	var ipad : Bool;
	var windowsphone : Bool;
	var chrome : Bool;
	var chrome7up : Bool;
	var chrome8up : Bool;
	var chrome9up : Bool;
	var iever : Bool;
	var mac : Bool;
	var major : Bool;
	var msTouch : Bool;
	var isTouch : Bool;
	var nav : Bool;
	var nav6 : Bool;
	var nav6up : Bool;
	var nav7up : Bool;
	var osver : Bool;
	var safari : Bool;
	var safari125up : Bool;
	var safari3up : Bool;
	var verIEFull : Bool;
	var w3c : Bool;
	var webKit : Bool;
	var win : Bool;
	var win8AppHost : Bool;
	var win32 : Bool;
	var win64bit : Bool;
	var winnt : Bool;
	var armProcessor : Bool;
}
typedef ContextInfo = {
	>SPClientTemplates.RenderContext,
	var AllowGridMode : Bool;
	var BasePermissions : Dynamic;
	var BaseViewID : Dynamic;
	var CascadeDeleteWarningMessage : String;
	var ContentTypesEnabled : Bool;
	var CurrentSelectedItems : Bool;
	var CurrentUserId : Float;
	var EnableMinorVersions : Bool;
	var ExternalDataList : Bool;
	var HasRelatedCascadeLists : Bool;
	var HttpPath : String;
	var HttpRoot : String;
	var LastSelectableRowIdx : Float;
	var LastSelectedItemIID : Float;
	var LastRowIndexSelected : Float;
	var RowFocusTimerID : Float;
	var ListData : Dynamic;
	var ListSchema : SPClientTemplates.ListSchema;
	var ModerationStatus : Float;
	var PortalUrl : String;
	var RecycleBinEnabled : Float;
	var SelectAllCbx : HTMLElement;
	var SendToLocationName : String;
	var SendToLocationUrl : String;
	var StateInitDone : Bool;
	var TableCbxFocusHandler : haxe.Constraints.Function;
	var TableMouseoverHandler : haxe.Constraints.Function;
	var TotalListItems : Float;
	var WorkflowsAssociated : Bool;
	var clvp : Dynamic;
	var ctxId : Float;
	var ctxType : Dynamic;
	var dictSel : Dynamic;
	var displayFormUrl : String;
	var editFormUrl : String;
	var imagesPath : String;
	var inGridMode : Bool;
	var inGridFullRender : Bool;
	var isForceCheckout : Bool;
	var isModerated : Bool;
	var isPortalTemplate : Bool;
	var isVersions : Bool;
	var isWebEditorPreview : Bool;
	var leavingGridMode : Bool;
	var loadingAsyncData : Bool;
	var listBaseType : Float;
	var listName : String;
	var listTemplate : String;
	var listUrlDir : String;
	var newFormUrl : String;
	var onRefreshFailed : haxe.Constraints.Function;
	var overrideDeleteConfirmation : String;
	var overrideFilterQstring : String;
	var recursiveView : Bool;
	var rootFolderForDisplay : String;
	var serverUrl : String;
	var verEnabled : Bool;
	var view : String;
	var queryString : String;
	var IsClientRendering : Bool;
	var wpq : String;
	var rootFolder : String;
	var IsAppWeb : Bool;
	var NewWOPIDocumentEnabled : Bool;
	var NewWOPIDocumentUrl : String;
	var AllowCreateFolder : Bool;
	var CanShareLinkForNewDocument : Bool;
	var noGroupCollapse : Bool;
	var SiteTemplateId : Float;
	var ExcludeFromOfflineClient : Bool;
};