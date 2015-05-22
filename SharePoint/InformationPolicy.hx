extern class ProjectPolicy extends SP.ClientObject {
	function new(context:ClientRuntimeContext, objectPath:ObjectPath):Void;
	function get_description():String;
	function get_emailBody():String;
	function set_emailBody(value:String):String;
	function get_emailBodyWithTeamMailbox():String;
	function set_emailBodyWithTeamMailbox(value:String):String;
	function get_emailSubject():String;
	function set_emailSubject(value:String):String;
	function get_name():String;
	function savePolicy():Void;
	static function getProjectPolicies(context:ClientRuntimeContext, web:Web):ClientObjectList<ProjectPolicy>;
	static function getCurrentlyAppliedProject(context:ClientRuntimeContext, web:Web):ProjectPolicy;
	static function applyProjectPolicy(context:ClientRuntimeContext, web:Web, projectPolicy:ProjectPolicy):Void;
	static function openProject(context:ClientRuntimeContext, web:Web):Void;
	static function closeProject(context:ClientRuntimeContext, web:Web):Void;
	static function postponeProject(context:ClientRuntimeContext, web:Web):Void;
	static function doesProjectHavePolicy(context:ClientRuntimeContext, web:Web):SP.BooleanResult;
	static function isProjectClosed(context:ClientRuntimeContext, web:Web):SP.BooleanResult;
	static function getProjectCloseDate(context:ClientRuntimeContext, web:Web):SP.DateTimeResult;
	static function getProjectExpirationDate(context:ClientRuntimeContext, web:Web):SP.DateTimeResult;
}
extern class SPClientAutoFill {
	static var MenuOptionType : { var Option : Float; var Footer : Float; var Separator : Float; var Loading : Float; };
	static var KeyProperty : String;
	static var DisplayTextProperty : String;
	static var SubDisplayTextProperty : String;
	static var TitleTextProperty : String;
	static var MenuOptionTypeProperty : String;
	static function GetAutoFillObjFromInput(elmText:HTMLInputElement):SPClientAutoFill;
	static function GetAutoFillObjFromContainer(elmChild:HTMLElement):SPClientAutoFill;
	static function GetAutoFillMenuItemFromOption(elmChild:HTMLElement):HTMLElement;
	function new(elmTextId:String, elmContainerId:String, fnPopulateAutoFill:HTMLInputElement -> Void):Void;
	var TextElementId : String;
	var AutoFillContainerId : String;
	var AutoFillMenuId : String;
	var VisibleItemCount : Float;
	var CurrentFocusOption : Float;
	var AutoFillMinTextLength : Float;
	var AutoFillTimeout : Float;
	var AutoFillCallbackTimeoutID : String;
	var FuncOnAutoFillClose : String -> ISPClientAutoFillData -> Void;
	var FuncPopulateAutoFill : HTMLElement -> Void;
	var AllOptionData : { };
	function PopulateAutoFill(jsonObjSuggestions:Array<ISPClientAutoFillData>, fnOnAutoFillCloseFuncName:String -> ISPClientAutoFillData -> Void):Void;
	function IsAutoFillOpen():Bool;
	function SetAutoFillHeight():Void;
	function SelectAutoFillOption(elemOption:HTMLElement):Void;
	function FocusAutoFill():Void;
	function BlurAutoFill():Void;
	function CloseAutoFill(ojData:ISPClientAutoFillData):Void;
	function UpdateAutoFillMenuFocus(bMoveNextLink:Bool):Void;
	function UpdateAutoFillPosition():Void;
}
typedef ISPClientAutoFillData = {
	@:optional
	var AutoFillKey : Dynamic;
	@:optional
	var AutoFillDisplayText : String;
	@:optional
	var AutoFillSubDisplayText : String;
	@:optional
	var AutoFillTitleText : String;
	@:optional
	var AutoFillMenuOptionType : Float;
};
extern class SPClientPeoplePicker {
	static var ValueName : String;
	static var DisplayTextName : String;
	static var SubDisplayTextName : String;
	static var DescriptionName : String;
	static var SIPAddressName : String;
	static var SuggestionsName : String;
	static var UnvalidatedEmailAddressKey : String;
	static var KeyProperty : String;
	static var DisplayTextProperty : String;
	static var SubDisplayTextProperty : String;
	static var TitleTextProperty : String;
	static var DomainProperty : String;
	static var SPClientPeoplePickerDict : { };
	static function InitializeStandalonePeoplePicker(clientId:String, value:Array<ISPClientPeoplePickerEntity>, schema:ISPClientPeoplePickerSchema):Void;
	var TopLevelElementId : String;
	var EditorElementId : String;
	var AutoFillElementId : String;
	var ResolvedListElementId : String;
	var InitialHelpTextElementId : String;
	var WaitImageId : String;
	var HiddenInputId : String;
	var AllowEmpty : Bool;
	var ForceClaims : Bool;
	var AutoFillEnabled : Bool;
	var AllowMultipleUsers : Bool;
	var OnValueChangedClientScript : String -> Array<ISPClientPeoplePickerEntity> -> Void;
	var OnUserResolvedClientScript : String -> Array<ISPClientPeoplePickerEntity> -> Void;
	var OnControlValidateClientScript : String -> Array<ISPClientPeoplePickerEntity> -> Void;
	var UrlZone : String;
	var AllUrlZones : Bool;
	var SharePointGroupID : Float;
	var AllowEmailAddresses : Bool;
	var PPMRU : SPClientPeoplePickerMRU;
	var UseLocalSuggestionCache : Bool;
	var CurrentQueryStr : String;
	var LatestSearchQueryStr : String;
	var InitialSuggestions : Array<ISPClientPeoplePickerEntity>;
	var CurrentLocalSuggestions : Array<ISPClientPeoplePickerEntity>;
	var CurrentLocalSuggestionsDict : ISPClientPeoplePickerEntity;
	var VisibleSuggestions : Float;
	var PrincipalAccountType : String;
	var PrincipalAccountTypeEnum : SP.Utilities.PrincipalType;
	var EnabledClaimProviders : String;
	var SearchPrincipalSource : SP.Utilities.PrincipalSource;
	var ResolvePrincipalSource : SP.Utilities.PrincipalSource;
	var MaximumEntitySuggestions : Float;
	var EditorWidthSet : Bool;
	var QueryScriptInit : Bool;
	var AutoFillControl : String;
	var TotalUserCount : Float;
	var UnresolvedUserCount : Float;
	var UserQueryDict : ISPClientPeoplePickerEntity;
	var ProcessedUserList : ISPClientPeoplePickerEntity;
	var HasInputError : Bool;
	var HasServerError : Bool;
	var ShowUserPresence : Bool;
	var TerminatingCharacter : String;
	var UnresolvedUserElmIdToReplace : String;
	var WebApplicationID : SP.Guid;
	function GetAllUserInfo():Array<ISPClientPeoplePickerEntity>;
}
typedef ISPClientPeoplePickerSchema = {
	@:optional
	var TopLevelElementId : String;
	@:optional
	var EditorElementId : String;
	@:optional
	var AutoFillElementId : String;
	@:optional
	var ResolvedListElementId : String;
	@:optional
	var InitialHelpTextElementId : String;
	@:optional
	var WaitImageId : String;
	@:optional
	var HiddenInputId : String;
	@:optional
	var AllowMultipleValues : Bool;
	@:optional
	var Required : Bool;
	@:optional
	var AutoFillEnabled : Bool;
	@:optional
	var ForceClaims : Bool;
	@:optional
	var AllowEmailAddresses : Bool;
	@:optional
	var AllUrlZones : Bool;
	@:optional
	var UseLocalSuggestionCache : Bool;
	@:optional
	var UserNoQueryPermission : Bool;
	@:optional
	var VisibleSuggestions : Float;
	@:optional
	var MaximumEntitySuggestions : Float;
	@:optional
	var ErrorMessage : String;
	@:optional
	var InitialHelpText : String;
	@:optional
	var InitialSuggestions : Array<ISPClientPeoplePickerEntity>;
	@:optional
	var UrlZone : SP.UrlZone;
	@:optional
	var WebApplicationID : SP.Guid;
	@:optional
	var SharePointGroupID : Float;
	@:optional
	var PrincipalAccountType : String;
	@:optional
	var EnabledClaimProvider : String;
	@:optional
	var ResolvePrincipalSource : SP.Utilities.PrincipalSource;
	@:optional
	var SearchPrincipalSource : SP.Utilities.PrincipalSource;
	@:optional
	var OnUserResolvedClientScript : String -> Array<ISPClientPeoplePickerEntity> -> Void;
	@:optional
	var OnValueChangedClientScript : String -> Array<ISPClientPeoplePickerEntity> -> Void;
	@:optional
	var Width : Dynamic;
	@:optional
	var Rows : Float;
};
extern class SPClientPeoplePickerMRU {
	static var PPMRUVersion : Float;
	static var MaxPPMRUItems : Float;
	static var PPMRUDomLocalStoreKey : String;
	static function GetSPClientPeoplePickerMRU():SPClientPeoplePickerMRU;
	function GetItems(strKey:String):Array<Dynamic>;
	function SetItem(strSearchTerm:String, objEntity:Dynamic):Void;
	function ResetCache():Void;
}
typedef ISPClientPeoplePickerEntity = {
	@:optional
	var Key : String;
	@:optional
	var Description : String;
	@:optional
	var DisplayText : String;
	@:optional
	var EntityType : String;
	@:optional
	var ProviderDisplayName : String;
	@:optional
	var ProviderName : String;
	@:optional
	var IsResolved : Bool;
	@:optional
	var EntityData : { var Title : String; var MobilePhone : String; var Department : String; var Email : String; };
	var MultipleMatches : Array<Dynamic>;
	@:optional
	var DomainText : String;
};
