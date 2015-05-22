extern class Utility {
	var lAYOUTS_LATESTVERSION_RELATIVE_URL : String;
	var lAYOUTS_LATESTVERSION_URL : String;
	static function get_layoutsLatestVersionRelativeUrl():String;
	static function get_layoutsLatestVersionUrl():String;
	static function getLayoutsPageUrl(pageName:String):String;
	static function getImageUrl(imageName:String):String;
	static function createWikiPageInContextWeb(context:SP.ClientRuntimeContext, parameters:SP.Utilities.WikiPageCreationInformation):SP.File;
	static function localizeWebPartGallery(context:SP.ClientRuntimeContext, items:SP.ListItemCollection):SP.ClientObjectList<SP.ListItem>;
	static function getAppLicenseInformation(context:SP.ClientRuntimeContext, productId:SP.Guid):SP.AppLicenseCollection;
	static function importAppLicense(context:SP.ClientRuntimeContext, licenseTokenToImport:String, contentMarket:String, billingMarket:String, appName:String, iconUrl:String, providerName:String, appSubtype:Float):Void;
	static function getAppLicenseDeploymentId(context:SP.ClientRuntimeContext):SP.GuidResult;
	static function logCustomAppError(context:SP.ClientRuntimeContext, error:String):SP.IntResult;
	static function logCustomRemoteAppError(context:SP.ClientRuntimeContext, productId:SP.Guid, error:String):SP.IntResult;
	static function getLocalizedString(context:SP.ClientRuntimeContext, source:String, defaultResourceFile:String, language:Float):SP.StringResult;
	static function createNewDiscussion(context:SP.ClientRuntimeContext, list:SP.List, title:String):SP.ListItem;
	static function createNewDiscussionReply(context:SP.ClientRuntimeContext, parent:SP.ListItem):SP.ListItem;
	static function markDiscussionAsFeatured(context:SP.ClientRuntimeContext, listID:String, topicIDs:String):Void;
	static function unmarkDiscussionAsFeatured(context:SP.ClientRuntimeContext, listID:String, topicIDs:String):Void;
	static function searchPrincipals(context:SP.ClientRuntimeContext, web:SP.Web, input:String, scopes:SP.Utilities.PrincipalType, sources:SP.Utilities.PrincipalSource, usersContainer:SP.UserCollection, maxCount:Float):Array<SP.Utilities.PrincipalInfo>;
	static function getCurrentUserEmailAddresses(context:SP.ClientRuntimeContext):SP.StringResult;
	static function createEmailBodyForInvitation(context:SP.ClientRuntimeContext, pageAddress:String):SP.StringResult;
	static function getPeoplePickerURL(context:SP.ClientRuntimeContext, web:SP.Web, fieldUser:SP.FieldUser):SP.StringResult;
	static function resolvePrincipal(context:SP.ClientRuntimeContext, web:SP.Web, input:String, scopes:SP.Utilities.PrincipalType, sources:SP.Utilities.PrincipalSource, usersContainer:SP.UserCollection, inputIsEmailOnly:Bool):SP.Utilities.PrincipalInfo;
	static function getLowerCaseString(context:SP.ClientRuntimeContext, sourceValue:String, lcid:Float):SP.StringResult;
	static function formatDateTime(context:SP.ClientRuntimeContext, web:SP.Web, datetime:Date, format:SP.Utilities.DateTimeFormat):SP.StringResult;
	static function isUserLicensedForEntityInContext(context:SP.ClientRuntimeContext, licensableEntity:String):SP.BooleanResult;
}
@:enum abstract DateTimeFormat(Int) {
	var dateTime = 0;
	var dateOnly = 1;
	var timeOnly = 2;
	var iSO8601 = 3;
	var monthDayOnly = 4;
	var monthYearOnly = 5;
	var longDate = 6;
	var unknownFormat = 7;
}
extern class EmailProperties extends SP.ClientValueObject {
	function get_additionalHeaders():Dynamic;
	function set_additionalHeaders(value:Dynamic):Void;
	function get_bCC():Array<String>;
	function set_bCC(value:Array<String>):Void;
	function get_body():String;
	function set_body(value:String):Void;
	function get_cC():Array<String>;
	function set_cC(value:Array<String>):Void;
	function get_from():String;
	function set_from(value:String):Void;
	function get_subject():String;
	function set_subject(value:String):Void;
	function get_to():Array<String>;
	function set_to(value:Array<String>):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract IconSize(Int) {
	var size16 = 0;
	var size32 = 1;
	var size256 = 2;
}
@:enum abstract LogAppErrorResult(Int) {
	var success = 0;
	var errorsThrottled = 1;
	var accessDenied = 2;
}
extern class PrincipalInfo extends SP.ClientValueObject {
	function get_department():String;
	function get_displayName():String;
	function get_email():String;
	function get_jobTitle():String;
	function get_loginName():String;
	function get_mobile():String;
	function get_principalId():Float;
	function get_principalType():SP.Utilities.PrincipalType;
	function get_sIPAddress():String;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract PrincipalSource(Int) {
	var none = 0;
	var userInfoList = 1;
	var windows = 2;
	var membershipProvider = 3;
	var roleProvider = 4;
	var all = 5;
}
@:enum abstract PrincipalType(Int) {
	var none = 0;
	var user = 1;
	var distributionList = 2;
	var securityGroup = 3;
	var sharePointGroup = 4;
	var all = 5;
}
@:enum abstract SPWOPIFrameAction(Int) {
	var view = 0;
	var edit = 1;
	var mobileView = 2;
	var interactivePreview = 3;
}
extern class WikiPageCreationInformation extends SP.ClientValueObject {
	function get_serverRelativeUrl():String;
	function set_serverRelativeUrl(value:String):Void;
	function get_wikiHtmlContent():String;
	function set_wikiHtmlContent(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class DateUtility {
	static function isLeapYear(year:Float):Bool;
	static function dateToJulianDay(year:Float, month:Float, day:Float):Float;
	static function julianDayToDate(julianDay:Float):SP.DateTimeUtil.SimpleDate;
	static function daysInMonth(year:Float, month:Float):Float;
}
extern class HttpUtility {
	static function htmlEncode(stringToEncode:String):String;
	static function urlPathEncode(stringToEncode:String):String;
	static function urlKeyValueEncode(keyOrValueToEncode:String):String;
	static function ecmaScriptStringLiteralEncode(scriptLiteralToEncode:String):String;
	static function navigateTo(url:String):Void;
	static function appendSourceAndNavigateTo(url:String):Void;
	static function escapeXmlText(stringToEscape:String):String;
	static function navigateHttpFolder(urlSrc:String, frameTarget:String):Void;
}
extern class UrlBuilder {
	function new(path:String):Void;
	static function urlCombine(path1:String, path2:String):String;
	static function replaceOrAddQueryString(url:String, key:String, value:String):String;
	static function removeQueryString(url:String, key:String):String;
	function combinePath(path:String):Void;
	function addKeyValueQueryString(key:String, value:String):Void;
	function get_url():String;
	function toString():String;
}
extern class LocUtility {
	static function getLocalizedCountValue(locText:String, intervals:String, count:Float):String;
}
extern class VersionUtility {
	static function get_layoutsLatestVersionRelativeUrl():String;
	static function get_layoutsLatestVersionUrl():String;
	static function getLayoutsPageUrl(pageName:String):String;
	static function getImageUrl(imageName:String):String;
}
