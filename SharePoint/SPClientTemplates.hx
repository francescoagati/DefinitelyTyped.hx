@:enum abstract FileSystemObjectType(Int) {
	var Invalid = 0;
	var File = 1;
	var Folder = 2;
	var Web = 3;
}
@:enum abstract ChoiceFormatType(Int) {
	var Dropdown = 0;
	var Radio = 1;
}
@:enum abstract ClientControlMode(Int) {
	var Invalid = 0;
	var DisplayForm = 1;
	var EditForm = 2;
	var NewForm = 3;
	var View = 4;
}
@:enum abstract RichTextMode(Int) {
	var Compatible = 0;
	var FullHtml = 1;
	var HtmlAsXml = 2;
	var ThemeHtml = 3;
}
@:enum abstract UrlFormatType(Int) {
	var Hyperlink = 0;
	var Image = 1;
}
@:enum abstract DateTimeDisplayFormat(Int) {
	var DateOnly = 0;
	var DateTime = 1;
	var TimeOnly = 2;
}
@:enum abstract DateTimeCalendarType(Int) {
	var None = 0;
	var Gregorian = 1;
	var Japan = 2;
	var Taiwan = 3;
	var Korea = 4;
	var Hijri = 5;
	var Thai = 6;
	var Hebrew = 7;
	var GregorianMEFrench = 8;
	var GregorianArabic = 9;
	var GregorianXLITEnglish = 10;
	var GregorianXLITFrench = 11;
	var KoreaJapanLunar = 12;
	var ChineseLunar = 13;
	var SakaEra = 14;
	var UmAlQura = 15;
}
@:enum abstract UserSelectionMode(Int) {
	var PeopleOnly = 0;
	var PeopleAndGroups = 1;
}
typedef FieldSchema_InForm_Choice = {
	>FieldSchema_InForm,
	var Choices : Array<String>;
	var FormatType : ChoiceFormatType;
};
typedef FieldSchema_InForm_Lookup = {
	>FieldSchema_InForm,
	var AllowMultipleValues : Bool;
	var BaseDisplayFormUrl : String;
	var DependentLookup : Bool;
	var Throttled : Bool;
	var MaxQueryResult : String;
	var Choices : Array<{ var LookupId : Float; var LookupValue : String; }>;
	var ChoiceCount : Float;
	var LookupListId : String;
};
typedef FieldSchema_InForm_DateTime = {
	>FieldSchema_InForm,
	var CalendarType : DateTimeCalendarType;
	var DisplayFormat : DateTimeDisplayFormat;
	var ShowWeekNumber : Bool;
	var TimeSeparator : String;
	var TimeZoneDifference : String;
	var FirstDayOfWeek : Float;
	var FirstWeekOfYear : Float;
	var HijriAdjustment : Float;
	var WorkWeek : String;
	var LocaleId : String;
	var LanguageId : String;
	var MinJDay : Float;
	var MaxJDay : Float;
	var HoursMode24 : Bool;
	var HoursOptions : Array<String>;
};
typedef FieldSchema_InForm_Geolocation = {
	>FieldSchema_InForm,
	var BingMapsKey : String;
	var IsBingMapBlockedInCurrentRegion : Bool;
};
typedef FieldSchema_InForm_MultiChoice = {
	>FieldSchema_InForm,
	var MultiChoices : Array<String>;
	var FillInChoice : Bool;
};
typedef FieldSchema_InForm_MultiLineText = {
	>FieldSchema_InForm,
	var RichText : Bool;
	var AppendOnly : Bool;
	var RichTextMode : RichTextMode;
	var NumberOfLines : Float;
	var AllowHyperlink : Bool;
	var ScriptEditorAdderId : String;
};
typedef FieldSchema_InForm_Number = {
	>FieldSchema_InForm,
	var ShowAsPercentage : Bool;
};
typedef FieldSchema_InForm_Text = {
	>FieldSchema_InForm,
	var MaxLength : Float;
};
typedef FieldSchema_InForm_Url = {
	>FieldSchema_InForm,
	var DisplayFormat : UrlFormatType;
};
typedef FieldSchema_InForm_User = {
	>FieldSchema_InForm,
	var Presence : Bool;
	var WithPicture : Bool;
	var DefaultRender : Bool;
	var WithPictureDetail : Bool;
	var ListFormUrl : String;
	var UserDisplayUrl : String;
	var EntitySeparator : String;
	var PictureOnly : Bool;
	var PictureSize : String;
};
typedef FieldSchema = {
	var AllowGridEditing : Bool;
	var FieldType : String;
	var Name : String;
	var Type : String;
};
typedef FieldSchema_InForm = {
	>FieldSchema,
	var Description : String;
	var Direction : String;
	var Hidden : Bool;
	var Id : String;
	var IMEMode : Dynamic;
	var ReadOnlyField : Bool;
	var Required : Bool;
	var RestrictedMode : Bool;
	var Title : String;
	var UseMinWidth : Bool;
};
typedef ListSchema = {
	var Field : Array<FieldSchema>;
};
typedef ListSchema_InForm = {
	>ListSchema,
	var Field : Array<FieldSchema_InForm>;
};
typedef ListData_InForm = {
	var Items : Array<Item>;
};
typedef RenderContext_FieldInForm = {
	>RenderContext_Form,
	var CurrentGroupIdx : Float;
	var CurrentGroup : Group;
	var CurrentItems : Array<Item>;
	var CurrentFieldSchema : FieldSchema_InForm;
	var CurrentFieldValue : Dynamic;
};
typedef RenderContext_Form = {
	>RenderContext,
	var CurrentItem : Item;
	var FieldControlModes : { };
	var FormContext : ClientFormContext;
	var FormUniqueId : String;
	var ListData : ListData_InForm;
	var ListSchema : ListSchema_InForm;
};
typedef FieldSchema_InView_LookupField = {
	>FieldSchema_InView,
	var AllowMultipleValues : String;
	var DispFormUrl : String;
	var HasPrefix : String;
};
typedef FieldSchema_InView_UserField = {
	>FieldSchema_InView,
	var AllowMultipleValues : String;
	var ImnHeader : String;
	var HasPrefix : String;
	var HasUserLink : String;
	var DefaultRender : String;
};
typedef FieldSchema_InView = {
	>FieldSchema,
	var CalloutMenu : String;
	var ClassInfo : String;
	var css : String;
	var DisplayName : String;
	var Explicit : String;
	var fieldRenderer : Dynamic;
	var FieldTitle : String;
	var Filterable : String;
	var GroupField : String;
	var GridActiveAndReadOnly : String;
	var ID : String;
	var listItemMenu : String;
	var RealFieldName : String;
	var ReadOnly : String;
	var ResultType : String;
	var Sortable : String;
};
typedef ListSchema_InView = {
	>ListSchema,
	var Aggregate : { };
	var Collapse : String;
	var DefaultItemOpen : String;
	var Direction : String;
	var EffectivePresenceEnabled : String;
	var FieldSortParam : String;
	var Filter : Dynamic;
	var ForceCheckout : String;
	var group1 : String;
	var group2 : String;
	var HasTitle : String;
	var HttpVDir : String;
	var InplaceSearchEnabled : String;
	var IsDocLib : String;
	var LCID : String;
	var ListRight_AddListItems : String;
	var NoListItem : String;
	var NoListItemHowTo : String;
	var PagePath : String;
	var ParentHierarchyDisplayField : String;
	var PresenceAlt : String;
	var PropertyBag : { };
	var RenderSaveAsNewViewButton : String;
	var RenderViewSelectorPivotMenu : String;
	var RenderViewSelectorPivotMenuAsync : String;
	var RootFolderParam : String;
	var SelectedID : String;
	var ShowWebPart : String;
	var StrikeThroughOnCompletedEnabled : String;
	var TabularView : String;
	var Toolbar : String;
	var UIVersion : String;
	var Userid : String;
	var UserVanilla : Dynamic;
	var UserDispUrl : String;
	var UseParentHierarchy : String;
	var View : String;
	var ViewSelectorPivotMenuOptions : String;
	var ViewSelector_ViewParameters : String;
};
typedef ListData_InView = {
	var FilterLink : String;
	var FilterFields : String;
	var FirstRow : Float;
	var ForceNoHierarchy : String;
	var HierarchyHasIndention : String;
	var PrevHref : String;
	var NextHref : String;
	var SortField : String;
	var SortDir : String;
	var LastRow : Float;
	var Row : Array<Item>;
};
typedef RenderContext_GroupInView = {
	>RenderContext_InView,
	var CurrentGroupIdx : Float;
	var CurrentGroup : Group;
	var CurrentItems : Array<Item>;
};
typedef RenderContext_InView = {
	>RenderContext,
	var AllowCreateFolder : Bool;
	var AllowGridMode : Bool;
	var BasePermissions : { };
	var bInitialRender : Bool;
	var CanShareLinkForNewDocument : Bool;
	var CascadeDeleteWarningMessage : String;
	var clvp : HTMLElement;
	var ContentTypesEnabled : Bool;
	var ctxId : Float;
	var ctxType : Dynamic;
	var CurrentUserId : Float;
	var CurrentUserIsSiteAdmin : Bool;
	var dictSel : Dynamic;
	var displayFormUrl : String;
	var editFormUrl : String;
	var EnableMinorVersions : Bool;
	var ExternalDataList : Bool;
	var enteringGridMode : Bool;
	var existingServerFilterHash : Dynamic;
	var HasRelatedCascadeLists : Float;
	var heroId : String;
	var HttpPath : String;
	var HttpRoot : String;
	var imagesPath : String;
	var inGridFullRender : Dynamic;
	var inGridMode : Bool;
	var IsAppWeb : Bool;
	var IsClientRendering : Bool;
	var isForceCheckout : Bool;
	var isModerated : Bool;
	var isPortalTemplate : Dynamic;
	var isWebEditorPreview : Float;
	var isVersions : Float;
	var isXslView : Bool;
	var LastRowIndexSelected : Dynamic;
	var LastSelectableRowIdx : Dynamic;
	var LastSelectedItemId : Dynamic;
	var leavingGridMode : Bool;
	var listBaseType : Float;
	var ListData : ListData_InView;
	var ListDataJSONItemsKey : String;
	var listName : String;
	var ListSchema : ListSchema_InView;
	var listTemplate : String;
	var ListTitle : String;
	var listUrlDir : String;
	var loadingAsyncData : Bool;
	var ModerationStatus : Float;
	var NavigateForFormsPages : Bool;
	var newFormUrl : String;
	var NewWOPIDocumentEnabled : Dynamic;
	var NewWOPIDocumentUrl : Dynamic;
	var noGroupCollapse : Bool;
	var OfficialFileName : String;
	var OfficialFileNames : String;
	var overrideDeleteConfirmation : String;
	var overrideFilterQstring : String;
	var PortalUrl : String;
	var queryString : Dynamic;
	var recursiveView : Bool;
	var RecycleBinEnabled : Float;
	var RegionalSettingsTimeZoneBias : String;
	var rootFolder : String;
	var rootFolderForDisplay : Dynamic;
	var RowFocusTimerID : Dynamic;
	var SelectAllCbx : Dynamic;
	var SendToLocationName : String;
	var SendToLocationUrl : String;
	var serverUrl : Dynamic;
	var SiteTitle : String;
	var StateInitDone : Bool;
	var TableCbxFocusHandler : Dynamic;
	var TableMouseOverHandler : Dynamic;
	var TotalListItems : Dynamic;
	var verEnabled : Float;
	var view : String;
	var viewTitle : String;
	var WorkflowAssociated : Bool;
	var wpq : String;
	var WriteSecurity : String;
};
typedef RenderContext_ItemInView = {
	>RenderContext_InView,
	var CurrentItem : Item;
	var CurrentItemIdx : Float;
};
typedef RenderContext_FieldInView = {
	>RenderContext_ItemInView,
	var CurrentFieldSchema : Dynamic;
	var CurrentFieldValue : Dynamic;
	var FieldControlsModes : { };
	var FormContext : Dynamic;
	var FormUniqueId : String;
};
typedef Item = { };
typedef Group = {
	var Items : Array<Item>;
};
typedef RenderContext = {
	@:optional
	var BaseViewID : Float;
	@:optional
	var ControlMode : ClientControlMode;
	@:optional
	var CurrentCultureName : String;
	@:optional
	var CurrentLanguage : Float;
	@:optional
	var CurrentSelectedItems : Dynamic;
	@:optional
	var CurrentUICultureName : String;
	@:optional
	var ListTemplateType : Float;
	@:optional
	var OnPostRender : Dynamic;
	@:optional
	var OnPreRender : Dynamic;
	@:optional
	var onRefreshFailed : Dynamic;
	@:optional
	var RenderBody : RenderContext -> String;
	@:optional
	var RenderFieldByName : RenderContext -> String -> String;
	@:optional
	var RenderFields : RenderContext -> String;
	@:optional
	var RenderFooter : RenderContext -> String;
	@:optional
	var RenderGroups : RenderContext -> String;
	@:optional
	var RenderHeader : RenderContext -> String;
	@:optional
	var RenderItems : RenderContext -> String;
	@:optional
	var RenderView : RenderContext -> String;
	@:optional
	var SiteClientTag : String;
	@:optional
	var Templates : Templates;
};
typedef SingleTemplateCallback = { };
typedef GroupCallback = { };
typedef ItemCallback = { };
typedef FieldCallback = { };
typedef FieldInFormCallback = { };
typedef FieldInViewCallback = { };
typedef FieldTemplateOverrides = {
	@:optional
	var DisplayForm : FieldInFormCallback;
	@:optional
	var EditForm : FieldInFormCallback;
	@:optional
	var NewForm : FieldInFormCallback;
	@:optional
	var View : FieldInViewCallback;
};
typedef FieldTemplates = { };
typedef Templates = {
	@:optional
	var View : Dynamic -> String;
	@:optional
	var Body : Dynamic -> String;
	@:optional
	var Group : GroupCallback;
	@:optional
	var Item : ItemCallback;
	@:optional
	var Header : SingleTemplateCallback;
	@:optional
	var Footer : SingleTemplateCallback;
	@:optional
	var Fields : FieldTemplates;
};
typedef FieldTemplateMap = { };
typedef TemplateOverrides = {
	@:optional
	var View : Dynamic -> String;
	@:optional
	var Body : Dynamic -> String;
	@:optional
	var Group : GroupCallback;
	@:optional
	var Item : ItemCallback;
	@:optional
	var Header : SingleTemplateCallback;
	@:optional
	var Footer : SingleTemplateCallback;
	@:optional
	var Fields : FieldTemplateMap;
};
typedef TemplateOverridesOptions = {
	@:optional
	var Templates : TemplateOverrides;
	@:optional
	var OnPreRender : Dynamic;
	@:optional
	var OnPostRender : Dynamic;
	@:optional
	var ViewStyle : Float;
	@:optional
	var ListTemplateType : Float;
	@:optional
	var BaseViewID : Dynamic;
};
extern class TemplateManager {
	static function RegisterTemplateOverrides(renderCtx:TemplateOverridesOptions):Void;
	static function GetTemplates(renderCtx:Dynamic):Templates;
}
typedef ClientUserValue = {
	var lookupId : Float;
	var lookupValue : String;
	var displayStr : String;
	var email : String;
	var sip : String;
	var title : String;
	var picture : String;
	var department : String;
	var jobTitle : String;
};
typedef ClientLookupValue = {
	var LookupId : Float;
	var LookupValue : String;
};
typedef ClientUrlValue = {
	var URL : String;
	var Description : String;
};
extern class Utility {
	static function ComputeRegisterTypeInfo(renderCtx:TemplateOverridesOptions):Dynamic;
	static function ControlModeToString(mode:SPClientTemplates.ClientControlMode):String;
	static function FileSystemObjectTypeToString(fileSystemObjectType:SPClientTemplates.FileSystemObjectType):String;
	static function ChoiceFormatTypeToString(fileSystemObjectType:SPClientTemplates.ChoiceFormatType):String;
	static function RichTextModeToString(fileSystemObjectType:SPClientTemplates.RichTextMode):String;
	static function IsValidControlMode(mode:Float):Bool;
	static function Trim(str:String):String;
	static function InitContext(webUrl:String):SP.ClientContext;
	static function GetControlOptions(control:HTMLElement):Dynamic;
	static function TryParseInitialUserValue(userStr:String):Array<ClientUserValue>;
	static function TryParseUserControlValue(userStr:String, separator:String):Array<Dynamic>;
	static function GetPropertiesFromPageContextInfo(context:RenderContext):Void;
	static function ReplaceUrlTokens(tokenUrl:String):String;
	static function ParseLookupValue(valueStr:String):ClientLookupValue;
	static function ParseMultiLookupValues(valueStr:String):Array<ClientLookupValue>;
	static function BuildLookupValuesAsString(choiceArray:Array<ClientLookupValue>, isMultiLookup:Bool, setGroupDesc:Bool):String;
	static function ParseURLValue(value:String):ClientUrlValue;
	static function GetFormContextForCurrentField(context:RenderContext_Form):ClientFormContext;
}
extern class ClientFormContext {
	var fieldValue : Dynamic;
	var fieldSchema : SPClientTemplates.FieldSchema_InForm;
	var fieldName : String;
	var controlMode : Float;
	var webAttributes : { var AllowScriptableWebParts : Bool; var CurrentUserId : Float; var EffectivePresenceEnabled : Bool; var LCID : String; var PermissionCustomizePages : Bool; var WebUrl : String; };
	var itemAttributes : { var ExternalListItem : Bool; var FsObjType : Float; var Id : Float; var Url : String; };
	var listAttributes : { var BaseType : Float; var DefaultItemOpen : Float; var Direction : String; var EnableVesioning : Bool; var Id : String; };
	function registerInitCallback(fieldname:String, callback:Void -> Void):Void;
	function registerFocusCallback(fieldname:String, callback:Void -> Void):Void;
	function registerValidationErrorCallback(fieldname:String, callback:Dynamic -> Void):Void;
	function registerGetValueCallback(fieldname:String, callback:Void -> Dynamic):Void;
	function updateControlValue(fieldname:String, value:Dynamic):Void;
	function registerClientValidator(fieldname:String, validator:SPClientForms.ClientValidation.ValidatorSet):Void;
	function registerHasValueChangedCallback(fieldname:String, callback:?Dynamic -> Void):Dynamic;
}
