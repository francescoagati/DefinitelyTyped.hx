extern class SOD {
	static function execute(fileName:String, functionName:String, args:haxe.extern.Rest<Dynamic>):Void;
	static function executeFunc(fileName:String, typeName:String, fn:Void -> Void):Void;
	static function executeOrDelayUntilEventNotified(func:haxe.Constraints.Function, eventName:String):Bool;
	static function executeOrDelayUntilScriptLoaded(func:Void -> Void, depScriptFileName:String):Bool;
	static function notifyScriptLoadedAndExecuteWaitingJobs(scriptFileName:String):Void;
	static function notifyEventAndExecuteWaitingJobs(eventName:String, ?args:Array<Dynamic>):Void;
	static function registerSod(fileName:String, url:String):Void;
	static function registerSodDep(fileName:String, dependentFileName:String):Void;
	static function loadMultiple(keys:Array<String>, fn:Void -> Void, ?bSync:Bool):Void;
	static function delayUntilEventNotified(func:haxe.Constraints.Function, eventName:String):Void;
	static function get_prefetch():Bool;
	static function set_prefetch(value:Bool):Void;
	static function get_ribbonImagePrefetchEnabled():Bool;
	static function set_ribbonImagePrefetchEnabled(value:Bool):Void;
}
@:enum abstract ListLevelPermissionMask(Int) {
	var viewListItems = 0;
	var insertListItems = 1;
	var editListItems = 2;
	var deleteListItems = 3;
	var approveItems = 4;
	var openItems = 5;
	var viewVersions = 6;
	var deleteVersions = 7;
	var breakCheckout = 8;
	var managePersonalViews = 9;
	var manageLists = 10;
}
extern class HtmlBuilder {
	function new():Void;
	function addAttribute(name:String, value:String):Void;
	function addCssClass(cssClassName:String):Void;
	function addCommunitiesCssClass(cssClassName:String):Void;
	function renderBeginTag(tagName:String):Void;
	function renderEndTag():Void;
	function write(s:String):Void;
	function writeEncoded(s:String):Void;
	function toString():String;
}
extern class ScriptHelpers {
	static function disableWebpartSelection(context:SPClientTemplates.RenderContext):Void;
	static function getDocumentQueryPairs():{ };
	static function getFieldFromSchema(schema:SPClientTemplates.ListSchema, fieldName:String):SPClientTemplates.FieldSchema;
	static function getLayoutsPageUrl(pageName:String, webServerRelativeUrl:String):String;
	static function getListLevelPermissionMask(jsonItem:String):Float;
	static function getTextAreaElementValue(textAreaElement:HTMLTextAreaElement):String;
	static function getUrlQueryPairs(docUrl:String):{ };
	static function getUserFieldProperty(item:ListItem, fieldName:String, propertyName:String):Dynamic;
	static function hasPermission(listPermissionMask:Float, listPermission:ListLevelPermissionMask):Bool;
	static function newGuid():SP.Guid;
	static function isNullOrEmptyString(str:String):Bool;
	static function isNullOrUndefined(obj:Dynamic):Bool;
	static function isNullOrUndefinedOrEmpty(str:String):Bool;
	static function isUndefined(obj:Dynamic):Bool;
	static function replaceOrAddQueryString(url:String, key:String, value:String):String;
	static function removeHtml(str:String):String;
	static function removeStyleChildren(element:HTMLElement):Dynamic;
	static function removeHtmlAndTrimStringWithEllipsis(str:String, maxLength:Float):String;
	static function setTextAreaElementValue(textAreaElement:HTMLTextAreaElement, newValue:String):Void;
	static function truncateToInt(n:Float):Float;
	static function urlCombine(path1:String, path2:String):String;
	static function resizeImageToSquareLength(imgElement:HTMLImageElement, squareLength:Float):Void;
}
extern class PageContextInfo {
	static function get_siteServerRelativeUrl():String;
	static function get_webServerRelativeUrl():String;
	static function get_webAbsoluteUrl():String;
	static function get_serverRequestPath():String;
	static function get_siteAbsoluteUrl():String;
	static function get_webTitle():String;
	static function get_tenantAppVersion():String;
	static function get_webLogoUrl():String;
	static function get_webLanguage():Float;
	static function get_currentLanguage():Float;
	static function get_pageItemId():Float;
	static function get_pageListId():String;
	static function get_webPermMasks():{ var High : Float; var Low : Float; };
	static function get_currentCultureName():String;
	static function get_currentUICultureName():String;
	static function get_clientServerTimeDelta():Float;
	static function get_userLoginName():String;
	static function get_webTemplate():String;
	function get_pagePersonalizationScope():String;
}
extern class ContextPermissions {
	function has(perm:Float):Bool;
	function hasPermissions(high:Float, low:Float):Bool;
	function fromJson(json:{ var High : Float; var Low : Float; }):Void;
}
@:enum abstract RequestExecutorErrors(Int) {
	var requestAbortedOrTimedout = 0;
	var unexpectedResponse = 1;
	var httpError = 2;
	var noAppWeb = 3;
	var domainDoesNotMatch = 4;
	var noTrustedOrigins = 5;
	var iFrameLoadError = 6;
}
extern class RequestExecutor {
	function new(url:String, ?options:Dynamic):Void;
	function get_formDigestHandlingEnabled():Bool;
	function set_formDigestHandlingEnabled(value:Bool):Void;
	function get_iFrameSourceUrl():String;
	function set_iFrameSourceUrl(value:String):Void;
	function executeAsync(requestInfo:RequestInfo):Void;
	function attemptLogin(returnUrl:String, success:ResponseInfo -> Void, ?error:ResponseInfo -> RequestExecutorErrors -> String -> Void):Void;
}
typedef RequestInfo = {
	var url : String;
	@:optional
	var method : String;
	@:optional
	var headers : { };
	@:optional
	var body : Dynamic;
	@:optional
	var binaryStringRequestBody : Bool;
	@:optional
	var binaryStringResponseBody : Bool;
	@:optional
	var timeout : Float;
	@:optional
	var success : ResponseInfo -> Void;
	@:optional
	var error : ResponseInfo -> RequestExecutorErrors -> String -> Void;
	@:optional
	var state : Dynamic;
};
typedef ResponseInfo = {
	@:optional
	var statusCode : Float;
	@:optional
	var statusText : String;
	var responseAvailable : Bool;
	@:optional
	var allResponseHeaders : String;
	@:optional
	var headers : { };
	@:optional
	var contentType : String;
	@:optional
	var body : Dynamic;
	@:optional
	var state : Dynamic;
};
extern class ProxyWebRequestExecutor extends Sys.Net.WebRequestExecutor {
	function new(url:String, ?options:Dynamic):Void;
}
extern class ProxyWebRequestExecutorFactory {
	function new(url:String, ?options:Dynamic):Void;
	function createWebRequestExecutor():ProxyWebRequestExecutor;
}
typedef MQuery = {
	function throttle(fn:haxe.Constraints.Function, interval:Float, shouldOverrideThrottle:Bool):haxe.Constraints.Function;
	@:overload(function(deep:Bool, target:Dynamic, objs:haxe.extern.Rest<Dynamic>):Dynamic { })
	function extend(target:Dynamic, objs:haxe.extern.Rest<Dynamic>):Dynamic;
	function makeArray<T>(obj:Dynamic):Array<Dynamic>;
	function isDefined(obj:Dynamic):Bool;
	function isNotNull(obj:Dynamic):Bool;
	function isUndefined(obj:Dynamic):Bool;
	function isNull(obj:Dynamic):Bool;
	function isUndefinedOrNull(obj:Dynamic):Bool;
	function isDefinedAndNotNull(obj:Dynamic):Bool;
	function isString(obj:Dynamic):Bool;
	function isBoolean(obj:Dynamic):Bool;
	function isFunction(obj:Dynamic):Bool;
	function isArray(obj:Dynamic):Bool;
	function isNode(obj:Dynamic):Bool;
	function isElement(obj:Dynamic):Bool;
	function isMQueryResultSet(obj:Dynamic):Bool;
	function isNumber(obj:Dynamic):Bool;
	function isObject(obj:Dynamic):Bool;
	function isEmptyObject(obj:Dynamic):Bool;
	function ready(callback:Void -> Void):Void;
	function contains(container:HTMLElement, contained:HTMLElement):Bool;
	@:overload(function(context:Dynamic, name:String, args:haxe.extern.Rest<Dynamic>):Dynamic { })
	function proxy(fn:haxe.extern.Rest<Dynamic> -> Dynamic, context:Dynamic, args:haxe.extern.Rest<Dynamic>):haxe.Constraints.Function;
	@:overload(function<T>(obj:MQueryResultSet<T>, fn:T -> Float -> Bool, ?context:Dynamic):Bool { })
	@:overload(function<T>(obj:Array<T>, fn:T -> Bool, ?context:Dynamic):Bool { })
	@:overload(function<T>(obj:MQueryResultSet<T>, fn:Dynamic -> Bool, ?context:Dynamic):Bool { })
	function every<T>(obj:Array<T>, fn:T -> Float -> Bool, ?context:Dynamic):Bool;
	@:overload(function<T>(obj:MQueryResultSet<T>, fn:T -> Float -> Bool, ?context:Dynamic):Bool { })
	@:overload(function<T>(obj:Array<T>, fn:T -> Bool, ?context:Dynamic):Bool { })
	@:overload(function<T>(obj:MQueryResultSet<T>, fn:T -> Bool, ?context:Dynamic):Bool { })
	function some<T>(obj:Array<T>, fn:T -> Float -> Bool, ?context:Dynamic):Bool;
	@:overload(function<T>(obj:MQueryResultSet<T>, fn:T -> Float -> Bool, ?context:Dynamic):MQueryResultSet<T> { })
	@:overload(function<T>(obj:Array<T>, fn:T -> Bool, ?context:Dynamic):Array<T> { })
	@:overload(function<T>(obj:MQueryResultSet<T>, fn:T -> Bool, ?context:Dynamic):MQueryResultSet<T> { })
	function filter<T>(obj:Array<T>, fn:T -> Float -> Bool, ?context:Dynamic):Array<T>;
	@:overload(function<T>(obj:MQueryResultSet<T>, fn:T -> Float -> Void, ?context:Dynamic):Void { })
	@:overload(function<T>(obj:Array<T>, fn:T -> Void, ?context:Dynamic):Void { })
	@:overload(function<T>(obj:MQueryResultSet<T>, fn:T -> Void, ?context:Dynamic):Void { })
	function forEach<T>(obj:Array<T>, fn:T -> Float -> Void, ?context:Dynamic):Void;
	@:overload(function<T, U>(array:MQueryResultSet<T>, callback:T -> Float -> U):MQueryResultSet<U> { })
	@:overload(function<T, U>(array:Array<T>, callback:T -> U):Array<U> { })
	@:overload(function<T, U>(array:MQueryResultSet<T>, callback:T -> U):MQueryResultSet<U> { })
	function map<T, U>(array:Array<T>, callback:T -> Float -> U):Array<U>;
	function indexOf<T>(obj:Array<T>, object:T, ?startIndex:Float):Float;
	function lastIndexOf<T>(obj:Array<T>, object:T, ?startIndex:Float):Float;
	@:overload(function(element:HTMLElement, key:String):Dynamic { })
	@:overload(function(element:HTMLElement):Dynamic { })
	function data(element:HTMLElement, key:String, value:Dynamic):Dynamic;
	function removeData(element:HTMLElement, ?name:String):MQueryResultSetElements;
	function hasData(element:HTMLElement):Bool;
};
typedef MQueryResultSetElements = {
	>MQueryResultSet<HTMLElement>,
	@:overload(function(mQuerySet:MQueryResultSetElements):MQueryResultSetElements { })
	@:overload(function(html:String):MQueryResultSetElements { })
	function append(node:HTMLElement):MQueryResultSetElements;
	function bind(eventType:String, handler:MQueryEvent -> Dynamic):MQueryResultSetElements;
	function unbind(eventType:String, handler:MQueryEvent -> Dynamic):MQueryResultSetElements;
	function trigger(eventType:String):MQueryResultSetElements;
	function one(eventType:String, handler:MQueryEvent -> Dynamic):MQueryResultSetElements;
	function detach():MQueryResultSetElements;
	function find(selector:String):MQueryResultSetElements;
	function closest(selector:String, ?context:Dynamic):MQueryResultSetElements;
	@:overload(function(coordinates:{ var left : Dynamic; var top : Dynamic; }):MQueryResultSetElements { })
	function offset():{ var left : Float; var top : Float; };
	@:overload(function(fn:HTMLElement -> Float -> Bool, ?context:Dynamic):MQueryResultSetElements { })
	@:overload(function(fn:HTMLElement -> Bool, ?context:Dynamic):MQueryResultSetElements { })
	function filter(selector:String):MQueryResultSetElements;
	function not(selector:String):MQueryResultSetElements;
	function parent(?selector:String):MQueryResultSetElements;
	function offsetParent(?selector:String):MQueryResultSetElements;
	function parents(?selector:String):MQueryResultSetElements;
	@:overload(function(?element:HTMLElement, ?filter:String):MQueryResultSetElements { })
	function parentsUntil(?selector:String, ?filter:String):MQueryResultSetElements;
	function position():{ var top : Float; var left : Float; };
	@:overload(function(attributeName:String, value:Dynamic):MQueryResultSetElements { })
	@:overload(function(map:{ }):MQueryResultSetElements { })
	@:overload(function(attributeName:String, func:Float -> Dynamic -> Dynamic):MQueryResultSetElements { })
	function attr(attributeName:String):String;
	function addClass(classNames:String):MQueryResultSetElements;
	function removeClass(classNames:String):MQueryResultSetElements;
	@:overload(function(propertyNames:Array<String>):String { })
	@:overload(function(properties:Dynamic):MQueryResultSetElements { })
	@:overload(function(propertyName:String, value:Dynamic):MQueryResultSetElements { })
	@:overload(function(propertyName:Dynamic, value:Dynamic):MQueryResultSetElements { })
	function css(propertyName:String):String;
	function remove(?selector:String):MQueryResultSetElements;
	function children(?selector:String):MQueryResultSetElements;
	function empty():MQueryResultSetElements;
	function first():MQueryResultSetElements;
	@:overload(function(obj:{ }):MQueryResultSetElements { })
	@:overload(function(key:String):Dynamic { })
	function data(key:String, value:Dynamic):MQueryResultSetElements;
	function removeData(key:String):MQueryResultSetElements;
	@:overload(function(callback:HTMLElement -> Dynamic):MQueryResultSetElements { })
	function map(callback:HTMLElement -> Float -> Dynamic):MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function blur():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function change():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function click():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function dblclick():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function error():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function focus():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function focusin():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function focusout():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function keydown():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function keypress():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function keyup():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function load():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function mousedown():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function mouseenter():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function mouseleave():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function mousemove():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function mouseout():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function mouseover():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function mouseup():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function resize():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function scroll():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function select():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function submit():MQueryResultSetElements;
	@:overload(function(handler:MQueryEvent -> Dynamic):MQueryResultSetElements { })
	function unload():MQueryResultSetElements;
};
typedef MQueryResultSet<T> = {
	function contains(contained:T):Bool;
	@:overload(function(fn:T -> Bool, ?context:Dynamic):MQueryResultSet<T> { })
	function filter(fn:T -> Float -> Bool, ?context:Dynamic):MQueryResultSet<T>;
	@:overload(function(fn:T -> Bool, ?context:Dynamic):Bool { })
	function every(fn:T -> Float -> Bool, ?context:Dynamic):Bool;
	@:overload(function(fn:T -> Bool, ?context:Dynamic):Bool { })
	function some(fn:T -> Float -> Bool, ?context:Dynamic):Bool;
	@:overload(function(callback:T -> Dynamic):MQueryResultSet<T> { })
	function map(callback:T -> Float -> Dynamic):MQueryResultSet<T>;
	@:overload(function(fn:T -> Void, ?context:Dynamic):Void { })
	function forEach(fn:T -> Float -> Void, ?context:Dynamic):Void;
	function indexOf(object:Dynamic, ?startIndex:Float):Float;
	function lastIndexOf(object:Dynamic, ?startIndex:Float):Float;
};
typedef MQueryEvent = {
	>Event,
	var altKey : Bool;
	var attrChange : Float;
	var attrName : String;
	var bubbles : Bool;
	var button : Float;
	var cancelable : Bool;
	var ctrlKey : Bool;
	var defaultPrevented : Bool;
	var detail : Float;
	var eventPhase : Float;
	var newValue : String;
	var prevValue : String;
	var relatedNode : HTMLElement;
	var screenX : Float;
	var screenY : Float;
	var shiftKey : Bool;
	var view : Dynamic;
};
extern class CalloutActionOptions {
	var text : String;
	var tooltip : String;
	var disabledTooltip : String;
	var onClickCallback : Event -> CalloutAction -> Dynamic;
	var isEnabledCallback : CalloutAction -> Bool;
	var isVisibleCallback : CalloutAction -> Bool;
	var menuEntries : Array<CalloutActionMenuEntry>;
}
extern class CalloutActionMenuEntry {
	function new(text:String, onClickCallback:CalloutActionMenuEntry -> Float -> Void, wzISrc:String, wzIAlt:String, wzISeq:Float, wzDesc:String):Void;
}
extern class CalloutActionMenu {
	function new(actionsId:Dynamic):Void;
	function addAction(action:CalloutAction):Dynamic;
	function getActions():Array<CalloutAction>;
	function render():Void;
	function refreshActions():Void;
	function calculateActionWidth():Void;
}
extern class CalloutAction {
	function new(options:CalloutActionOptions):Void;
	function getText():String;
	function getToolTop():String;
	function getDisabledToolTip():String;
	function getOnClickCallback():Dynamic -> CalloutAction -> Dynamic;
	function getIsDisabledCallback():CalloutAction -> Bool;
	function getIsVisibleCallback():CalloutAction -> Bool;
	function getIsMenu():Bool;
	function getMenuEntries():Array<CalloutActionMenuEntry>;
	function render():Void;
	function isEnabled():Bool;
	function isVisible():Bool;
	function set(options:CalloutActionOptions):Void;
}
extern class Callout {
	function set(options:CalloutOptions):Dynamic;
	function addEventCallback(eventName:String, callback:Callout -> Void):Dynamic;
	function getLaunchPoint():HTMLElement;
	function getID():String;
	function getTitle():String;
	function getContent():String;
	function getContentElement():HTMLElement;
	function getBoundingBox():HTMLElement;
	function getContentWidth():Float;
	function getOpenOptions():CalloutOpenOptions;
	function getBeakOrientation():String;
	function getPositionAlgorithm():Dynamic;
	function isOpen():Bool;
	function isOpening():Bool;
	function isOpenOrOpening():Bool;
	function isClosing():Bool;
	function isClosed():Bool;
	function getActionMenu():CalloutActionMenu;
	function addAction(action:CalloutAction):Dynamic;
	function refreshActions():Void;
	function open(?useAnimation:Bool):Dynamic;
	function close(?useAnimation:Bool):Dynamic;
	function toggle():Void;
	function destroy():Void;
}
extern class CalloutOpenOptions {
	var event : String;
	var closeCalloutOnBlur : Bool;
	var showCloseButton : Bool;
}
extern class CalloutOptions {
	var ID : String;
	var launchPoint : HTMLElement;
	var beakOrientation : String;
	var content : String;
	var title : String;
	var contentElement : HTMLElement;
	var boundingBox : HTMLElement;
	var contentWidth : Float;
	var openOptions : CalloutOpenOptions;
	var onOpeningCallback : Callout -> Void;
	var onOpenedCallback : Callout -> Void;
	var onClosingCallback : Callout -> Void;
	var onClosedCallback : Callout -> Void;
	var positionAlgorithm : Callout -> Void;
}
extern class CalloutManager {
	static function createNew(options:CalloutOptions):Callout;
	static function createNewIfNecessary(options:CalloutOptions):Callout;
	static function remove(callout:Callout):Dynamic;
	static function getFromLaunchPoint(launchPoint:HTMLElement):Callout;
	static function getFromLaunchPointIfExists(launchPoint:HTMLElement):Callout;
	static function containsOneCalloutOpen(ancestor:HTMLElement):Bool;
	static function getFromCalloutDescendant(descendant:HTMLElement):Callout;
	static function forEach(callback:Callout -> Void):Dynamic;
	static function closeAll():Bool;
	static function isAtLeastOneCalloutOpen():Bool;
	static function isAtLeastOneCalloutOn():Bool;
}
extern class ScriptUtility {
	static function isNullOrEmptyString(str:String):Bool;
	static function isNullOrUndefined(obj:Dynamic):Bool;
	static function isUndefined(obj:Dynamic):Bool;
	static function truncateToInt(n:Float):Float;
}
extern class Guid {
	function new(guidText:String):Void;
	static function get_empty():SP.Guid;
	static function newGuid():SP.Guid;
	static function isValid(uuid:String):Bool;
	@:overload(function(format:String):String { })
	function toString():String;
	function equals(uuid:SP.Guid):Bool;
	function toSerialized():String;
}
@:enum abstract PermissionKind(Int) {
	var emptyMask = 0;
	var viewListItems = 1;
	var addListItems = 2;
	var editListItems = 3;
	var deleteListItems = 4;
	var approveItems = 5;
	var openItems = 6;
	var viewVersions = 7;
	var deleteVersions = 8;
	var cancelCheckout = 9;
	var managePersonalViews = 10;
	var manageLists = 11;
	var viewFormPages = 12;
	var anonymousSearchAccessList = 13;
	var open = 14;
	var viewPages = 15;
	var addAndCustomizePages = 16;
	var applyThemeAndBorder = 17;
	var applyStyleSheets = 18;
	var viewUsageData = 19;
	var createSSCSite = 20;
	var manageSubwebs = 21;
	var createGroups = 22;
	var managePermissions = 23;
	var browseDirectories = 24;
	var browseUserInfo = 25;
	var addDelPrivateWebParts = 26;
	var updatePersonalWebParts = 27;
	var manageWeb = 28;
	var anonymousSearchAccessWebLists = 29;
	var useClientIntegration = 30;
	var useRemoteAPIs = 31;
	var manageAlerts = 32;
	var createAlerts = 33;
	var editMyUserInfo = 34;
	var enumeratePermissions = 35;
	var fullMask = 36;
}
extern class BaseCollection<T> {
	function getEnumerator():IEnumerator<T>;
	function get_count():Float;
	function itemAtIndex(index:Float):T;
	function new():Void;
}
typedef IFromJson = {
	function fromJson(initValue:Dynamic):Void;
	function customFromJson(initValue:Dynamic):Bool;
};
extern class Base64EncodedByteArray {
	@:overload(function(base64Str:String):Void { })
	function new():Void;
	function get_length():Float;
	function toBase64String():String;
	function append(b:Dynamic):Void;
	function getByteAt(index:Float):Dynamic;
	function setByteAt(index:Float, b:Dynamic):Void;
}
extern class ConditionalScopeBase {
	function startScope():Dynamic;
	function startIfTrue():Dynamic;
	function startIfFalse():Dynamic;
	function get_testResult():Bool;
	function fromJson(initValue:Dynamic):Void;
	function customFromJson(initValue:Dynamic):Bool;
}
extern class ClientObjectPropertyConditionalScope extends SP.ConditionalScopeBase {
	@:overload(function(clientObject:SP.ClientObject, propertyName:String, comparisonOperator:String, valueToCompare:Dynamic, allowAllActions:Bool):Void { })
	function new(clientObject:SP.ClientObject, propertyName:String, comparisonOperator:String, valueToCompare:Dynamic):Void;
}
extern class ClientResult<T> {
	function get_value():T;
	function setValue(value:T):Void;
	function new():Void;
}
extern class BooleanResult {
	function get_value():Bool;
	function new():Void;
}
extern class CharResult {
	function get_value():Dynamic;
	function new():Void;
}
extern class IntResult {
	function get_value():Float;
	function new():Void;
}
extern class DoubleResult {
	function get_value():Float;
	function new():Void;
}
extern class StringResult {
	function get_value():String;
	function new():Void;
}
extern class DateTimeResult {
	function get_value():Date;
	function new():Void;
}
extern class GuidResult {
	function get_value():SP.Guid;
	function new():Void;
}
extern class JsonObjectResult {
	function get_value():Dynamic;
	function new():Void;
}
extern class ClientDictionaryResultHandler<T> {
	function new(dict:SP.ClientResult<T>):Void;
}
extern class ClientUtility {
	static function urlPathEncodeForXmlHttpRequest(url:String):String;
	static function getOrCreateObjectPathForConstructor(context:SP.ClientRuntimeContext, typeId:String, args:Array<Dynamic>):SP.ObjectPath;
}
extern class XElement {
	function get_name():String;
	function set_name(value:String):Void;
	function get_attributes():Dynamic;
	function set_attributes(value:Dynamic):Void;
	function get_children():Dynamic;
	function set_children(value:Dynamic):Void;
	function new():Void;
}
extern class ClientXElement {
	function get_element():SP.XElement;
	function set_element(value:SP.XElement):Void;
	function new():Void;
}
extern class ClientXDocument {
	function get_root():SP.XElement;
	function set_root(value:SP.XElement):Void;
	function new():Void;
}
extern class DataConvert {
	static function writePropertiesToXml(writer:SP.XmlWriter, obj:Dynamic, propNames:Array<String>, serializationContext:SP.SerializationContext):Void;
	static function populateDictionaryFromObject(dict:Dynamic, parentNode:Dynamic):Void;
	static function fixupTypes(context:SP.ClientRuntimeContext, dict:Dynamic):Void;
	static function populateArray(context:SP.ClientRuntimeContext, dest:Dynamic, jsonArrayFromServer:Dynamic):Void;
	static function fixupType(context:SP.ClientRuntimeContext, obj:Dynamic):Dynamic;
	static function writeDictionaryToXml(writer:SP.XmlWriter, dict:Dynamic, topLevelElementTagName:String, keys:Dynamic, serializationContext:SP.SerializationContext):Void;
	static function writeValueToXmlElement(writer:SP.XmlWriter, objValue:Dynamic, serializationContext:SP.SerializationContext):Void;
	static function invokeSetProperty(obj:Dynamic, propName:String, propValue:Dynamic):Void;
	static function invokeGetProperty(obj:Dynamic, propName:String):Dynamic;
	static function specifyDateTimeKind(datetime:Date, kind:SP.DateTimeKind):Void;
	static function getDateTimeKind(datetime:Date):SP.DateTimeKind;
	static function createUnspecifiedDateTime(year:Float, month:Float, day:Float, hour:Float, minute:Float, second:Float, milliseconds:Float):Date;
	static function createUtcDateTime(milliseconds:Float):Date;
	static function createLocalDateTime(milliseconds:Float):Date;
}
typedef IWebRequestExecutorFactory = {
	function createWebRequestExecutor():Sys.Net.WebRequestExecutor;
};
extern class PageRequestFailedEventArgs extends Sys.EventArgs {
	function get_executor():Sys.Net.WebRequestExecutor;
	function get_errorMessage():String;
	function get_isErrorPage():Bool;
}
extern class PageRequestSucceededEventArgs extends Sys.EventArgs {
	function get_executor():Sys.Net.WebRequestExecutor;
}
extern class PageRequest {
	function get_request():Sys.Net.WebRequest;
	function get_url():String;
	function set_url(value:String):Void;
	function get_expectedContentType():String;
	function set_expectedContentType(value:String):Void;
	function post(body:String):Void;
	function get():Void;
	static function doPost(url:String, body:String, expectedContentType:String, succeededHandler:Dynamic -> SP.PageRequestSucceededEventArgs -> Void, failedHandler:Dynamic -> SP.PageRequestFailedEventArgs -> Void):Void;
	static function doGet(url:String, expectedContentType:String, succeededHandler:Dynamic -> SP.PageRequestSucceededEventArgs -> Void, failedHandler:Dynamic -> SP.PageRequestFailedEventArgs -> Void):Void;
	function add_succeeded(value:Dynamic -> SP.PageRequestSucceededEventArgs -> Void):Void;
	function remove_succeeded(value:Dynamic -> SP.PageRequestSucceededEventArgs -> Void):Void;
	function add_failed(value:Dynamic -> SP.PageRequestFailedEventArgs -> Void):Void;
	function remove_failed(value:Dynamic -> SP.PageRequestFailedEventArgs -> Void):Void;
	function new():Void;
}
extern class ResResources {
	static function getString(resourceId:String, args:Array<Dynamic>):String;
}
extern class XmlWriter {
	static function create(sb:Sys.StringBuilder):SP.XmlWriter;
	function writeStartElement(tagName:String):Void;
	function writeElementString(tagName:String, value:String):Void;
	function writeEndElement():Void;
	function writeAttributeString(localName:String, value:String):Void;
	function writeStartAttribute(localName:String):Void;
	function writeEndAttribute():Void;
	function writeString(value:String):Void;
	function writeRaw(xml:String):Void;
	function close():Void;
}
extern class ClientConstants {
	var AddExpandoFieldTypeSuffix : String;
	var Actions : String;
	var ApplicationName : String;
	var Body : String;
	var CatchScope : String;
	var ChildItemQuery : String;
	var ChildItems : String;
	var ConditionalScope : String;
	var Constructor : String;
	var Context : String;
	var ErrorInfo : String;
	var ErrorMessage : String;
	var ErrorStackTrace : String;
	var ErrorCode : String;
	var ErrorTypeName : String;
	var ErrorValue : String;
	var ErrorDetails : String;
	var ErrorTraceCorrelationId : String;
	var ExceptionHandlingScope : String;
	var ExceptionHandlingScopeSimple : String;
	var QueryableExpression : String;
	var FinallyScope : String;
	var HasException : String;
	var Id : String;
	var Identity : String;
	var IfFalseScope : String;
	var IfTrueScope : String;
	var IsNull : String;
	var LibraryVersion : String;
	var TraceCorrelationId : String;
	var Count : String;
	var Method : String;
	var Methods : String;
	var Name : String;
	var Object : String;
	var ObjectPathId : String;
	var ObjectPath : String;
	var ObjectPaths : String;
	var ObjectType : String;
	var ObjectIdentity : String;
	var ObjectIdentityQuery : String;
	var ObjectVersion : String;
	var Parameter : String;
	var Parameters : String;
	var ParentId : String;
	var Processed : String;
	var Property : String;
	var Properties : String;
	var Query : String;
	var QueryResult : String;
	var Request : String;
	var Results : String;
	var ScalarProperty : String;
	var SchemaVersion : String;
	var ScopeId : String;
	var SelectAll : String;
	var SelectAllProperties : String;
	var SetProperty : String;
	var SetStaticProperty : String;
	var StaticMethod : String;
	var StaticProperty : String;
	var SuffixChar : String;
	var SuffixByte : String;
	var SuffixInt16 : String;
	var SuffixUInt16 : String;
	var SuffixInt32 : String;
	var SuffixUInt32 : String;
	var SuffixInt64 : String;
	var SuffixUInt64 : String;
	var SuffixSingle : String;
	var SuffixDouble : String;
	var SuffixDecimal : String;
	var SuffixTimeSpan : String;
	var SuffixArray : String;
	var Test : String;
	var TryScope : String;
	var Type : String;
	var TypeId : String;
	var Update : String;
	var Version : String;
	var XmlElementName : String;
	var XmlElementAttributes : String;
	var XmlElementChildren : String;
	var XmlNamespace : String;
	var FieldValuesMethodName : String;
	var RequestTokenHeader : String;
	var FormDigestHeader : String;
	var useWebLanguageHeader : String;
	var useWebLanguageHeaderValue : String;
	var ClientTagHeader : String;
	var TraceCorrelationIdRequestHeader : String;
	var TraceCorrelationIdResponseHeader : String;
	var greaterThan : String;
	var lessThan : String;
	var equal : String;
	var notEqual : String;
	var greaterThanOrEqual : String;
	var lessThanOrEqual : String;
	var andAlso : String;
	var orElse : String;
	var not : String;
	var expressionParameter : String;
	var expressionProperty : String;
	var expressionStaticProperty : String;
	var expressionMethod : String;
	var expressionStaticMethod : String;
	var expressionConstant : String;
	var expressionConvert : String;
	var expressionTypeIs : String;
	var ofType : String;
	var take : String;
	var where : String;
	var orderBy : String;
	var orderByDescending : String;
	var thenBy : String;
	var thenByDescending : String;
	var queryableObject : String;
	var ServiceFileName : String;
	var ServiceMethodName : String;
	var fluidApplicationInitParamUrl : String;
	var fluidApplicationInitParamViaUrl : String;
	var fluidApplicationInitParamRequestToken : String;
	var fluidApplicationInitParamFormDigestTimeoutSeconds : String;
	var fluidApplicationInitParamFormDigest : String;
}
extern class ClientSchemaVersions {
	var version14 : String;
	var version15 : String;
	var currentVersion : String;
}
extern class ClientErrorCodes {
	var genericError : Float;
	var accessDenied : Float;
	var docAlreadyExists : Float;
	var versionConflict : Float;
	var listItemDeleted : Float;
	var invalidFieldValue : Float;
	var notSupported : Float;
	var redirect : Float;
	var notSupportedRequestVersion : Float;
	var fieldValueFailedValidation : Float;
	var itemValueFailedValidation : Float;
}
extern class ClientAction {
	function get_id():Float;
	function get_path():SP.ObjectPath;
	function get_name():String;
}
extern class ClientActionSetProperty extends SP.ClientAction {
	function new(obj:SP.ClientObject, propName:String, propValue:Dynamic):Void;
}
extern class ClientActionSetStaticProperty extends SP.ClientAction {
	function new(context:SP.ClientRuntimeContext, typeId:String, propName:String, propValue:Dynamic):Void;
}
extern class ClientActionInvokeMethod extends SP.ClientAction {
	function new(obj:SP.ClientObject, methodName:String, parameters:Array<Dynamic>):Void;
}
extern class ClientActionInvokeStaticMethod extends SP.ClientAction {
	function new(context:SP.ClientRuntimeContext, typeId:String, methodName:String, parameters:Array<Dynamic>):Void;
}
extern class ClientObject {
	function get_context():SP.ClientRuntimeContext;
	function get_path():SP.ObjectPath;
	function get_objectVersion():String;
	function set_objectVersion(value:String):Void;
	function fromJson(initValue:Dynamic):Void;
	function customFromJson(initValue:Dynamic):Bool;
	@:overload(function(propertyNames:Array<String>):Void { })
	function retrieve():Void;
	function refreshLoad():Void;
	function isPropertyAvailable(propertyName:String):Bool;
	function isObjectPropertyInstantiated(propertyName:String):Bool;
	function get_serverObjectIsNull():Bool;
	function get_typedObject():SP.ClientObject;
}
extern class ClientObjectData {
	function get_properties():Dynamic;
	function get_clientObjectProperties():Dynamic;
	function get_methodReturnObjects():Dynamic;
	function new():Void;
}
extern class ClientObjectCollection<T> extends SP.ClientObject {
	function get_areItemsAvailable():Bool;
	function retrieveItems():SP.ClientObjectPrototype;
	function getEnumerator():IEnumerator<T>;
	function get_count():Float;
	function get_data():Array<T>;
	function addChild(obj:T):Void;
	function getItemAtIndex(index:Float):T;
	function fromJson(obj:Dynamic):Void;
}
extern class ClientObjectList<T> extends SP.ClientObjectCollection<T> {
	function new(context:SP.ClientRuntimeContext, objectPath:SP.ObjectPath, childItemType:Dynamic):Void;
	function fromJson(initValue:Dynamic):Void;
	function customFromJson(initValue:Dynamic):Bool;
}
extern class ClientObjectPrototype {
	@:overload(function(propertyNames:Array<String>):Void { })
	function retrieve():Void;
	function retrieveObject(propertyName:String):SP.ClientObjectPrototype;
	function retrieveCollectionObject(propertyName:String):SP.ClientObjectCollectionPrototype;
}
extern class ClientObjectCollectionPrototype extends SP.ClientObjectPrototype {
	function retrieveItems():SP.ClientObjectPrototype;
}
@:enum abstract ClientRequestStatus(Int) {
	var active = 0;
	var inProgress = 1;
	var completedSuccess = 2;
	var completedException = 3;
}
extern class WebRequestEventArgs extends Sys.EventArgs {
	function new(webRequest:Sys.Net.WebRequest):Void;
	function get_webRequest():Sys.Net.WebRequest;
}
extern class ClientRequest {
	static function get_nextSequenceId():Float;
	function get_webRequest():Sys.Net.WebRequest;
	function add_requestSucceeded(value:Dynamic -> SP.ClientRequestSucceededEventArgs -> Void):Void;
	function remove_requestSucceeded(value:Dynamic -> SP.ClientRequestSucceededEventArgs -> Void):Void;
	function add_requestFailed(value:Dynamic -> SP.ClientRequestFailedEventArgs -> Void):Void;
	function remove_requestFailed(value:Dynamic -> SP.ClientRequestFailedEventArgs -> Void):Void;
	function get_navigateWhenServerRedirect():Bool;
	function set_navigateWhenServerRedirect(value:Bool):Void;
}
extern class ClientRequestEventArgs extends Sys.EventArgs {
	function get_request():SP.ClientRequest;
}
extern class ClientRequestFailedEventArgs extends SP.ClientRequestEventArgs {
	@:overload(function(request:SP.ClientRequest, message:String, stackTrace:String, errorCode:Float, errorValue:String, errorTypeName:String, errorDetails:Dynamic, errorTraceCorrelationId:String):Void { })
	function new(request:SP.ClientRequest, message:String, stackTrace:String, errorCode:Float, errorValue:String, errorTypeName:String, errorDetails:Dynamic):Void;
	function get_message():String;
	function get_stackTrace():String;
	function get_errorCode():Float;
	function get_errorValue():String;
	function get_errorTypeName():String;
	function get_errorDetails():Dynamic;
	function get_errorTraceCorrelationId():String;
}
extern class ClientRequestSucceededEventArgs extends SP.ClientRequestEventArgs {

}
extern class ClientRuntimeContext {
	function new(serverRelativeUrlOrFullUrl:String):Void;
	function get_url():String;
	function get_viaUrl():String;
	function set_viaUrl(value:String):Void;
	function get_formDigestHandlingEnabled():Bool;
	function set_formDigestHandlingEnabled(value:Bool):Void;
	function get_applicationName():String;
	function set_applicationName(value:String):Void;
	function get_clientTag():String;
	function set_clientTag(value:String):Void;
	function get_webRequestExecutorFactory():SP.IWebRequestExecutorFactory;
	function set_webRequestExecutorFactory(value:SP.IWebRequestExecutorFactory):Void;
	function get_pendingRequest():SP.ClientRequest;
	function get_hasPendingRequest():Bool;
	function add_executingWebRequest(value:Dynamic -> SP.WebRequestEventArgs -> Void):Void;
	function remove_executingWebRequest(value:Dynamic -> SP.WebRequestEventArgs -> Void):Void;
	function add_requestSucceeded(value:Dynamic -> SP.ClientRequestSucceededEventArgs -> Void):Void;
	function remove_requestSucceeded(value:Dynamic -> SP.ClientRequestSucceededEventArgs -> Void):Void;
	function add_requestFailed(value:Dynamic -> SP.ClientRequestFailedEventArgs -> Void):Void;
	function remove_requestFailed(value:Dynamic -> SP.ClientRequestFailedEventArgs -> Void):Void;
	function add_beginningRequest(value:Dynamic -> SP.ClientRequestEventArgs -> Void):Void;
	function remove_beginningRequest(value:Dynamic -> SP.ClientRequestEventArgs -> Void):Void;
	function get_requestTimeout():Float;
	function set_requestTimeout(value:Float):Void;
	@:overload(function(succeededCallback:Dynamic -> SP.ClientRequestSucceededEventArgs -> Void):Void { })
	@:overload(function():Void { })
	function executeQueryAsync(succeededCallback:Dynamic -> SP.ClientRequestSucceededEventArgs -> Void, failedCallback:Dynamic -> SP.ClientRequestFailedEventArgs -> Void):Void;
	function get_staticObjects():Dynamic;
	function castTo(obj:SP.ClientObject, type:Dynamic):SP.ClientObject;
	function addQuery(query:SP.ClientAction):Void;
	function addQueryIdAndResultObject(id:Float, obj:Dynamic):Void;
	@:overload(function(json:String, skipTypeFixup:Bool):Dynamic { })
	function parseObjectFromJsonString(json:String):Dynamic;
	@:overload(function(clientObject:SP.ClientObject, exps:haxe.extern.Rest<String>):Void { })
	function load(clientObject:SP.ClientObject):Void;
	@:overload(function<T>(clientObjectCollection:SP.ClientObjectCollection<T>):Dynamic { })
	function loadQuery<T>(clientObjectCollection:SP.ClientObjectCollection<T>, exp:String):Dynamic;
	function get_serverSchemaVersion():String;
	function get_serverLibraryVersion():String;
	function get_traceCorrelationId():String;
	function set_traceCorrelationId(value:String):Void;
	function dispose():Void;
}
extern class SimpleDataTable {
	function get_rows():Array<Dynamic>;
	function new():Void;
}
extern class ClientValueObject {
	function fromJson(obj:Dynamic):Void;
	function customFromJson(obj:Dynamic):Bool;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function customWriteToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Bool;
	function get_typeId():String;
}
extern class ClientValueObjectCollection<T> extends SP.ClientValueObject {
	function get_count():Float;
	function getEnumerator():IEnumerator<T>;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
}
extern class ExceptionHandlingScope {
	function new(context:SP.ClientRuntimeContext):Void;
	function startScope():Dynamic;
	function startTry():Dynamic;
	function startCatch():Dynamic;
	function startFinally():Dynamic;
	function get_processed():Bool;
	function get_hasException():Bool;
	function get_errorMessage():String;
	function get_serverStackTrace():String;
	function get_serverErrorCode():Float;
	function get_serverErrorValue():String;
	function get_serverErrorTypeName():String;
	function get_serverErrorDetails():Dynamic;
}
extern class ObjectIdentityQuery extends SP.ClientAction {
	function new(objectPath:SP.ObjectPath):Void;
}
extern class ObjectPath {
	function setPendingReplace():Void;
}
extern class ObjectPathProperty extends SP.ObjectPath {
	function new(context:SP.ClientRuntimeContext, parent:SP.ObjectPath, propertyName:String):Void;
}
extern class ObjectPathStaticProperty extends SP.ObjectPath {
	function new(context:SP.ClientRuntimeContext, typeId:String, propertyName:String):Void;
}
extern class ObjectPathMethod extends SP.ObjectPath {
	function new(context:SP.ClientRuntimeContext, parent:SP.ObjectPath, methodName:String, parameters:Array<Dynamic>):Void;
}
extern class ObjectPathStaticMethod extends SP.ObjectPath {
	function new(context:SP.ClientRuntimeContext, typeId:String, methodName:String, parameters:Array<Dynamic>):Void;
}
extern class ObjectPathConstructor extends SP.ObjectPath {
	function new(context:SP.ClientRuntimeContext, typeId:String, parameters:Array<Dynamic>):Void;
}
extern class SerializationContext {
	function addClientObject(obj:SP.ClientObject):Void;
	function addObjectPath(path:SP.ObjectPath):Void;
}
extern class ResourceStrings {
	var argumentExceptionMessage : String;
	var argumentNullExceptionMessage : String;
	var cC_AppIconAlt : String;
	var cC_AppWebUrlNotSet : String;
	var cC_ArrowImageAlt : String;
	var cC_BackToSite : String;
	var cC_ErrorGettingThemeInfo : String;
	var cC_HelpLinkToolTip : String;
	var cC_HostSiteUrlNotSet : String;
	var cC_InvalidArgument : String;
	var cC_InvalidJSON : String;
	var cC_InvalidOperation : String;
	var cC_PlaceHolderElementNotFound : String;
	var cC_RequiredScriptNotLoaded : String;
	var cC_SendFeedback : String;
	var cC_SettingsLinkToolTip : String;
	var cC_TimeoutGettingThemeInfo : String;
	var cC_Welcome : String;
	var cannotFindContextWebServerRelativeUrl : String;
	var collectionHasNotBeenInitialized : String;
	var collectionModified : String;
	var invalidUsageOfConditionalScope : String;
	var invalidUsageOfConditionalScopeNowAllowedAction : String;
	var invalidUsageOfExceptionHandlingScope : String;
	var namedPropertyHasNotBeenInitialized : String;
	var namedServerObjectIsNull : String;
	var noObjectPathAssociatedWithObject : String;
	var notSameClientContext : String;
	var notSupportedQueryExpressionWithExpressionDetail : String;
	var objectNameIdentity : String;
	var objectNameMethod : String;
	var objectNameProperty : String;
	var objectNameType : String;
	var propertyHasNotBeenInitialized : String;
	var rE_BrowserBinaryDataNotSupported : String;
	var rE_BrowserNotSupported : String;
	var rE_CannotAccessSite : String;
	var rE_CannotAccessSiteCancelled : String;
	var rE_CannotAccessSiteOpenWindowFailed : String;
	var rE_DismissOpenWindowMessageLinkText : String;
	var rE_DomainDoesNotMatch : String;
	var rE_FixitHelpMessage : String;
	var rE_InvalidArgumentOrField : String;
	var rE_InvalidOperation : String;
	var rE_NoTrustedOrigins : String;
	var rE_OpenWindowButtonText : String;
	var rE_OpenWindowMessage : String;
	var rE_RequestAbortedOrTimedout : String;
	var rE_RequestUnexpectedResponse : String;
	var rE_RequestUnexpectedResponseWithContentTypeAndStatus : String;
	var requestAbortedOrTimedOut : String;
	var requestEmptyQueryName : String;
	var requestHasBeenExecuted : String;
	var requestUnexpectedResponse : String;
	var requestUnexpectedResponseWithContentTypeAndStatus : String;
	var requestUnexpectedResponseWithStatus : String;
	var requestUnknownResponse : String;
	var serverObjectIsNull : String;
	var unknownError : String;
	var unknownResponseData : String;
}
extern class RuntimeRes {
	var cC_PlaceHolderElementNotFound : String;
	var rE_CannotAccessSiteOpenWindowFailed : String;
	var noObjectPathAssociatedWithObject : String;
	var cC_TimeoutGettingThemeInfo : String;
	var unknownResponseData : String;
	var requestUnexpectedResponseWithStatus : String;
	var objectNameProperty : String;
	var requestUnknownResponse : String;
	var rE_RequestUnexpectedResponseWithContentTypeAndStatus : String;
	var rE_BrowserNotSupported : String;
	var argumentExceptionMessage : String;
	var namedServerObjectIsNull : String;
	var objectNameType : String;
	var requestUnexpectedResponseWithContentTypeAndStatus : String;
	var cC_InvalidJSON : String;
	var invalidUsageOfExceptionHandlingScope : String;
	var serverObjectIsNull : String;
	var cC_AppWebUrlNotSet : String;
	var rE_OpenWindowMessage : String;
	var argumentNullExceptionMessage : String;
	var cC_HelpLinkToolTip : String;
	var propertyHasNotBeenInitialized : String;
	var rE_RequestAbortedOrTimedout : String;
	var invalidUsageOfConditionalScope : String;
	var cC_ErrorGettingThemeInfo : String;
	var rE_DismissOpenWindowMessageLinkText : String;
	var rE_CannotAccessSiteCancelled : String;
	var objectNameIdentity : String;
	var cC_HostSiteUrlNotSet : String;
	var rE_FixitHelpMessage : String;
	var notSupportedQueryExpressionWithExpressionDetail : String;
	var rE_RequestUnexpectedResponse : String;
	var rE_DomainDoesNotMatch : String;
	var cC_BackToSite : String;
	var rE_NoTrustedOrigins : String;
	var rE_InvalidOperation : String;
	var collectionModified : String;
	var cC_Welcome : String;
	var cC_AppIconAlt : String;
	var cC_SendFeedback : String;
	var cC_ArrowImageAlt : String;
	var cC_InvalidOperation : String;
	var requestAbortedOrTimedOut : String;
	var invalidUsageOfConditionalScopeNowAllowedAction : String;
	var cannotFindContextWebServerRelativeUrl : String;
	var rE_OpenWindowButtonText : String;
	var unknownError : String;
	var cC_InvalidArgument : String;
	var rE_InvalidArgumentOrField : String;
	var cC_SettingsLinkToolTip : String;
	var requestEmptyQueryName : String;
	var cC_RequiredScriptNotLoaded : String;
	var rE_CannotAccessSite : String;
	var notSameClientContext : String;
	var requestUnexpectedResponse : String;
	var rE_BrowserBinaryDataNotSupported : String;
	var collectionHasNotBeenInitialized : String;
	var namedPropertyHasNotBeenInitialized : String;
	var requestHasBeenExecuted : String;
	var objectNameMethod : String;
}
extern class ParseJSONUtil {
	static function parseObjectFromJsonString(json:String):Dynamic;
	static function validateJson(text:String):Bool;
}
@:enum abstract DateTimeKind(Int) {
	var unspecified = 0;
	var utc = 1;
	var local = 2;
}
extern class OfficeVersion {
	var majorBuildVersion : Float;
	var previousMajorBuildVersion : Float;
	var majorVersion : String;
	var previousVersion : String;
	var majorVersionDotZero : String;
	var previousVersionDotZero : String;
	var assemblyVersion : String;
	var wssMajorVersion : String;
}
extern class ClientContext extends SP.ClientRuntimeContext {
	@:overload(function():Void { })
	function new(serverRelativeUrlOrFullUrl:String):Void;
	static function get_current():SP.ClientContext;
	function get_web():SP.Web;
	function get_site():SP.Site;
	function get_serverVersion():String;
}
@:enum abstract ULSTraceLevel(Int) {
	var verbose = 0;
}
extern class ULS {
	static function get_enabled():Bool;
	static function set_enabled(value:Bool):Void;
	static function log(debugMessage:String):Void;
	static function increaseIndent():Void;
	static function decreaseIndent():Void;
	@:overload(function(functionName:String):Void { })
	static function traceApiEnter(functionName:String, args:Array<Dynamic>):Void;
	static function traceApiLeave():Void;
}
extern class AccessRequests {
	static function changeRequestStatus(context:SP.ClientRuntimeContext, itemId:Float, newStatus:Float, convStr:String, permType:String, permissionLevel:Float):Void;
	static function changeRequestStatusBulk(context:SP.ClientRuntimeContext, requestIds:Array<Float>, newStatus:Float):Void;
}
@:enum abstract AddFieldOptions(Int) {
	var defaultValue = 0;
	var addToDefaultContentType = 1;
	var addToNoContentType = 2;
	var addToAllContentTypes = 3;
	var addFieldInternalNameHint = 4;
	var addFieldToDefaultView = 5;
	var addFieldCheckDisplayName = 6;
}
extern class AlternateUrl extends SP.ClientObject {
	function get_uri():String;
	function get_urlZone():SP.UrlZone;
}
extern class App extends SP.ClientObject {
	function get_assetId():String;
	function get_contentMarket():String;
	function get_versionString():String;
}
extern class AppCatalog {
	static function getAppInstances(context:SP.ClientRuntimeContext, web:SP.Web):SP.ClientObjectList<SP.AppInstance>;
	static function getDeveloperSiteAppInstancesByIds(context:SP.ClientRuntimeContext, site:SP.Site, appInstanceIds:Array<SP.Guid>):SP.ClientObjectList<SP.AppInstance>;
	static function isAppSideloadingEnabled(context:SP.ClientRuntimeContext):SP.BooleanResult;
}
extern class AppContextSite extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext, siteUrl:String):Void;
	function get_site():SP.Site;
	function get_web():SP.Web;
	static function newObject(context:SP.ClientRuntimeContext, siteUrl:String):SP.AppContextSite;
}
extern class AppInstance extends SP.ClientObject {
	function get_appPrincipalId():String;
	function get_appWebFullUrl():String;
	function get_id():SP.Guid;
	function get_inError():Bool;
	function get_startPage():String;
	function get_remoteAppUrl():String;
	function get_settingsPageUrl():String;
	function get_siteId():SP.Guid;
	function get_status():SP.AppInstanceStatus;
	function get_title():String;
	function get_webId():SP.Guid;
	function getErrorDetails():SP.ClientObjectList<SP.AppInstanceErrorDetails>;
	function uninstall():SP.GuidResult;
	function upgrade(appPackageStream:Array<Dynamic>):Void;
	function cancelAllJobs():SP.BooleanResult;
	function install():SP.GuidResult;
	function getPreviousAppVersion():SP.App;
	function retryAllJobs():Void;
}
extern class AppInstanceErrorDetails extends SP.ClientObject {
	function get_correlationId():SP.Guid;
	function set_correlationId(value:SP.Guid):Void;
	function get_errorDetail():String;
	function get_errorType():SP.AppInstanceErrorType;
	function set_errorType(value:SP.AppInstanceErrorType):Void;
	function get_errorTypeName():String;
	function get_exceptionMessage():String;
	function get_source():SP.AppInstanceErrorSource;
	function set_source(value:SP.AppInstanceErrorSource):Void;
	function get_sourceName():String;
}
@:enum abstract AppInstanceErrorSource(Int) {
	var common = 0;
	var appWeb = 1;
	var parentWeb = 2;
	var remoteWebSite = 3;
	var database = 4;
	var officeExtension = 5;
	var eventCallouts = 6;
	var finalization = 7;
}
@:enum abstract AppInstanceErrorType(Int) {
	var transient = 0;
	var configuration = 1;
	var app = 2;
}
@:enum abstract AppInstanceStatus(Int) {
	var invalidStatus = 0;
	var installing = 1;
	var canceling = 2;
	var uninstalling = 3;
	var installed = 4;
	var upgrading = 5;
	var initialized = 6;
	var upgradeCanceling = 7;
	var disabling = 8;
	var disabled = 9;
}
extern class AppLicense extends SP.ClientValueObject {
	function get_rawXMLLicenseToken():String;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class AppLicenseCollection extends SP.ClientValueObjectCollection<AppLicense> {
	function add(item:SP.AppLicense):Void;
	function get_item(index:Float):SP.AppLicense;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract AppLicenseType(Int) {
	var perpetualMultiUser = 0;
	var perpetualAllUsers = 1;
	var trialMultiUser = 2;
	var trialAllUsers = 3;
}
extern class Attachment extends SP.ClientObject {
	function get_fileName():String;
	function get_serverRelativeUrl():String;
	function deleteObject():Void;
}
extern class AttachmentCollection extends SP.ClientObjectCollection<Attachment> {
	function itemAt(index:Float):SP.Attachment;
	function get_item(index:Float):SP.Attachment;
	function getByFileName(fileName:String):SP.Attachment;
}
extern class AttachmentCreationInformation extends SP.ClientValueObject {
	function get_contentStream():Array<Dynamic>;
	function set_contentStream(value:Array<Dynamic>):Void;
	function get_fileName():String;
	function set_fileName(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class BasePermissions extends SP.ClientValueObject {
	function set(perm:SP.PermissionKind):Void;
	function clear(perm:SP.PermissionKind):Void;
	function clearAll():Void;
	function has(perm:SP.PermissionKind):Bool;
	function equals(perm:SP.BasePermissions):Bool;
	function hasPermissions(high:Float, low:Float):Bool;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract BaseType(Int) {
	var none = 0;
	var genericList = 1;
	var documentLibrary = 2;
	var unused = 3;
	var discussionBoard = 4;
	var survey = 5;
	var issue = 6;
}
@:enum abstract BrowserFileHandling(Int) {
	var permissive = 0;
	var strict = 1;
}
@:enum abstract CalendarType(Int) {
	var none = 0;
	var gregorian = 1;
	var japan = 2;
	var taiwan = 3;
	var korea = 4;
	var hijri = 5;
	var thai = 6;
	var hebrew = 7;
	var gregorianMEFrench = 8;
	var gregorianArabic = 9;
	var gregorianXLITEnglish = 10;
	var gregorianXLITFrench = 11;
	var koreaJapanLunar = 12;
	var chineseLunar = 13;
	var sakaEra = 14;
	var umAlQura = 15;
}
extern class CamlQuery extends SP.ClientValueObject {
	function new():Void;
	static function createAllItemsQuery():SP.CamlQuery;
	static function createAllFoldersQuery():SP.CamlQuery;
	function get_datesInUtc():Bool;
	function set_datesInUtc(value:Bool):Void;
	function get_folderServerRelativeUrl():String;
	function set_folderServerRelativeUrl(value:String):Void;
	function get_listItemCollectionPosition():SP.ListItemCollectionPosition;
	function set_listItemCollectionPosition(value:SP.ListItemCollectionPosition):Void;
	function get_viewXml():String;
	function set_viewXml(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
}
extern class Change extends SP.ClientObject {
	function get_changeToken():SP.ChangeToken;
	function get_changeType():SP.ChangeType;
	function get_siteId():SP.Guid;
	function get_time():Date;
}
extern class ChangeAlert extends SP.Change {
	function get_alertId():SP.Guid;
	function get_webId():SP.Guid;
}
extern class ChangeCollection extends SP.ClientObjectCollection<Change> {
	function itemAt(index:Float):SP.Change;
	function get_item(index:Float):SP.Change;
}
extern class ChangeContentType extends SP.Change {
	function get_contentTypeId():SP.ContentTypeId;
	function get_webId():SP.Guid;
}
extern class ChangeField extends SP.Change {
	function get_fieldId():SP.Guid;
	function get_webId():SP.Guid;
}
extern class ChangeFile extends SP.Change {
	function get_uniqueId():SP.Guid;
	function get_webId():SP.Guid;
}
extern class ChangeFolder extends SP.Change {
	function get_uniqueId():SP.Guid;
	function get_webId():SP.Guid;
}
extern class ChangeGroup extends SP.Change {
	function get_groupId():Float;
}
extern class ChangeItem extends SP.Change {
	function get_itemId():Float;
	function get_listId():SP.Guid;
	function get_webId():SP.Guid;
}
extern class ChangeList extends SP.Change {
	function get_listId():SP.Guid;
	function get_webId():SP.Guid;
}
extern class ChangeLogItemQuery extends SP.ClientValueObject {
	function get_changeToken():String;
	function set_changeToken(value:String):Void;
	function get_contains():String;
	function set_contains(value:String):Void;
	function get_query():String;
	function set_query(value:String):Void;
	function get_queryOptions():String;
	function set_queryOptions(value:String):Void;
	function get_rowLimit():String;
	function set_rowLimit(value:String):Void;
	function get_viewFields():String;
	function set_viewFields(value:String):Void;
	function get_viewName():String;
	function set_viewName(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class ChangeQuery extends SP.ClientValueObject {
	@:overload(function(allChangeObjectTypes:Bool, allChangeTypes:Bool):Void { })
	function new():Void;
	function get_add():Bool;
	function set_add(value:Bool):Void;
	function get_alert():Bool;
	function set_alert(value:Bool):Void;
	function get_changeTokenEnd():SP.ChangeToken;
	function set_changeTokenEnd(value:SP.ChangeToken):Void;
	function get_changeTokenStart():SP.ChangeToken;
	function set_changeTokenStart(value:SP.ChangeToken):Void;
	function get_contentType():Bool;
	function set_contentType(value:Bool):Void;
	function get_deleteObject():Bool;
	function set_deleteObject(value:Bool):Void;
	function get_field():Bool;
	function set_field(value:Bool):Void;
	function get_file():Bool;
	function set_file(value:Bool):Void;
	function get_folder():Bool;
	function set_folder(value:Bool):Void;
	function get_group():Bool;
	function set_group(value:Bool):Void;
	function get_groupMembershipAdd():Bool;
	function set_groupMembershipAdd(value:Bool):Void;
	function get_groupMembershipDelete():Bool;
	function set_groupMembershipDelete(value:Bool):Void;
	function get_item():Bool;
	function set_item(value:Bool):Void;
	function get_list():Bool;
	function set_list(value:Bool):Void;
	function get_move():Bool;
	function set_move(value:Bool):Void;
	function get_navigation():Bool;
	function set_navigation(value:Bool):Void;
	function get_rename():Bool;
	function set_rename(value:Bool):Void;
	function get_restore():Bool;
	function set_restore(value:Bool):Void;
	function get_roleAssignmentAdd():Bool;
	function set_roleAssignmentAdd(value:Bool):Void;
	function get_roleAssignmentDelete():Bool;
	function set_roleAssignmentDelete(value:Bool):Void;
	function get_roleDefinitionAdd():Bool;
	function set_roleDefinitionAdd(value:Bool):Void;
	function get_roleDefinitionDelete():Bool;
	function set_roleDefinitionDelete(value:Bool):Void;
	function get_roleDefinitionUpdate():Bool;
	function set_roleDefinitionUpdate(value:Bool):Void;
	function get_securityPolicy():Bool;
	function set_securityPolicy(value:Bool):Void;
	function get_site():Bool;
	function set_site(value:Bool):Void;
	function get_systemUpdate():Bool;
	function set_systemUpdate(value:Bool):Void;
	function get_update():Bool;
	function set_update(value:Bool):Void;
	function get_user():Bool;
	function set_user(value:Bool):Void;
	function get_view():Bool;
	function set_view(value:Bool):Void;
	function get_web():Bool;
	function set_web(value:Bool):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
}
extern class ChangeSite extends SP.Change {

}
extern class ChangeToken extends SP.ClientValueObject {
	function get_stringValue():String;
	function set_stringValue(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract ChangeType(Int) {
	var noChange = 0;
	var add = 1;
	var update = 2;
	var deleteObject = 3;
	var rename = 4;
	var moveAway = 5;
	var moveInto = 6;
	var restore = 7;
	var roleAdd = 8;
	var roleDelete = 9;
	var roleUpdate = 10;
	var assignmentAdd = 11;
	var assignmentDelete = 12;
	var memberAdd = 13;
	var memberDelete = 14;
	var systemUpdate = 15;
	var navigation = 16;
	var scopeAdd = 17;
	var scopeDelete = 18;
	var listContentTypeAdd = 19;
	var listContentTypeDelete = 20;
}
extern class ChangeUser extends SP.Change {
	function get_activate():Bool;
	function get_userId():Float;
}
extern class ChangeView extends SP.Change {
	function get_viewId():SP.Guid;
	function get_listId():SP.Guid;
	function get_webId():SP.Guid;
}
extern class ChangeWeb extends SP.Change {
	function get_webId():SP.Guid;
}
@:enum abstract CheckinType(Int) {
	var minorCheckIn = 0;
	var majorCheckIn = 1;
	var overwriteCheckIn = 2;
}
@:enum abstract CheckOutType(Int) {
	var online = 0;
	var offline = 1;
	var none = 2;
}
@:enum abstract ChoiceFormatType(Int) {
	var dropdown = 0;
	var radioButtons = 1;
}
extern class CompatibilityRange extends SP.ClientObject {

}
extern class ContentType extends SP.ClientObject {
	function get_description():String;
	function set_description(value:String):Void;
	function get_displayFormTemplateName():String;
	function set_displayFormTemplateName(value:String):Void;
	function get_displayFormUrl():String;
	function set_displayFormUrl(value:String):Void;
	function get_documentTemplate():String;
	function set_documentTemplate(value:String):Void;
	function get_documentTemplateUrl():String;
	function get_editFormTemplateName():String;
	function set_editFormTemplateName(value:String):Void;
	function get_editFormUrl():String;
	function set_editFormUrl(value:String):Void;
	function get_fieldLinks():SP.FieldLinkCollection;
	function get_fields():SP.FieldCollection;
	function get_group():String;
	function set_group(value:String):Void;
	function get_hidden():Bool;
	function set_hidden(value:Bool):Void;
	function get_id():SP.ContentTypeId;
	function get_jSLink():String;
	function set_jSLink(value:String):Void;
	function get_name():String;
	function set_name(value:String):Void;
	function get_newFormTemplateName():String;
	function set_newFormTemplateName(value:String):Void;
	function get_newFormUrl():String;
	function set_newFormUrl(value:String):Void;
	function get_parent():SP.ContentType;
	function get_readOnly():Bool;
	function set_readOnly(value:Bool):Void;
	function get_schemaXml():String;
	function get_schemaXmlWithResourceTokens():String;
	function set_schemaXmlWithResourceTokens(value:String):Void;
	function get_scope():String;
	function get_sealed():Bool;
	function set_sealed(value:Bool):Void;
	function get_stringId():String;
	function get_workflowAssociations():SP.Workflow.WorkflowAssociationCollection;
	function update(updateChildren:Bool):Void;
	function deleteObject():Void;
}
extern class ContentTypeCollection extends SP.ClientObjectCollection<ContentType> {
	function itemAt(index:Float):SP.ContentType;
	function get_item(index:Float):SP.ContentType;
	function getById(contentTypeId:String):SP.ContentType;
	function addExistingContentType(contentType:SP.ContentType):SP.ContentType;
	function add(parameters:SP.ContentTypeCreationInformation):SP.ContentType;
}
extern class ContentTypeCreationInformation extends SP.ClientValueObject {
	function get_description():String;
	function set_description(value:String):Void;
	function get_group():String;
	function set_group(value:String):Void;
	function get_name():String;
	function set_name(value:String):Void;
	function get_parentContentType():SP.ContentType;
	function set_parentContentType(value:SP.ContentType):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class ContentTypeId extends SP.ClientValueObject {
	function toString():String;
	function get_stringValue():String;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract CustomizedPageStatus(Int) {
	var none = 0;
	var uncustomized = 1;
	var customized = 2;
}
@:enum abstract DateTimeFieldFormatType(Int) {
	var dateOnly = 0;
	var dateTime = 1;
}
@:enum abstract DateTimeFieldFriendlyFormatType(Int) {
	var unspecified = 0;
	var disabled = 1;
	var relative = 2;
}
@:enum abstract DraftVisibilityType(Int) {
	var reader = 0;
	var author = 1;
	var approver = 2;
}
extern class EventReceiverDefinition extends SP.ClientObject {
	function get_receiverAssembly():String;
	function get_receiverClass():String;
	function get_receiverId():SP.Guid;
	function get_receiverName():String;
	function get_sequenceNumber():Float;
	function get_synchronization():SP.EventReceiverSynchronization;
	function get_eventType():SP.EventReceiverType;
	function get_receiverUrl():String;
	function update():Void;
	function deleteObject():Void;
}
extern class EventReceiverDefinitionCollection extends SP.ClientObjectCollection<EventReceiverDefinition> {
	function itemAt(index:Float):SP.EventReceiverDefinition;
	function get_item(index:Float):SP.EventReceiverDefinition;
	function getById(eventReceiverId:SP.Guid):SP.EventReceiverDefinition;
	function add(eventReceiverCreationInformation:SP.EventReceiverDefinitionCreationInformation):SP.EventReceiverDefinition;
}
extern class EventReceiverDefinitionCreationInformation extends SP.ClientValueObject {
	function get_receiverAssembly():String;
	function set_receiverAssembly(value:String):Void;
	function get_receiverClass():String;
	function set_receiverClass(value:String):Void;
	function get_receiverName():String;
	function set_receiverName(value:String):Void;
	function get_sequenceNumber():Float;
	function set_sequenceNumber(value:Float):Void;
	function get_synchronization():SP.EventReceiverSynchronization;
	function set_synchronization(value:SP.EventReceiverSynchronization):Void;
	function get_eventType():SP.EventReceiverType;
	function set_eventType(value:SP.EventReceiverType):Void;
	function get_receiverUrl():String;
	function set_receiverUrl(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract EventReceiverSynchronization(Int) {
	var defaultSynchronization = 0;
	var synchronous = 1;
	var asynchronous = 2;
}
@:enum abstract EventReceiverType(Int) {
	var invalidReceiver = 0;
	var itemAdding = 1;
	var itemUpdating = 2;
	var itemDeleting = 3;
	var itemCheckingIn = 4;
	var itemCheckingOut = 5;
	var itemUncheckingOut = 6;
	var itemAttachmentAdding = 7;
	var itemAttachmentDeleting = 8;
	var itemFileMoving = 9;
	var itemVersionDeleting = 10;
	var fieldAdding = 11;
	var fieldUpdating = 12;
	var fieldDeleting = 13;
	var listAdding = 14;
	var listDeleting = 15;
	var siteDeleting = 16;
	var webDeleting = 17;
	var webMoving = 18;
	var webAdding = 19;
	var groupAdding = 20;
	var groupUpdating = 21;
	var groupDeleting = 22;
	var groupUserAdding = 23;
	var groupUserDeleting = 24;
	var roleDefinitionAdding = 25;
	var roleDefinitionUpdating = 26;
	var roleDefinitionDeleting = 27;
	var roleAssignmentAdding = 28;
	var roleAssignmentDeleting = 29;
	var inheritanceBreaking = 30;
	var inheritanceResetting = 31;
	var workflowStarting = 32;
	var itemAdded = 33;
	var itemUpdated = 34;
	var itemDeleted = 35;
	var itemCheckedIn = 36;
	var itemCheckedOut = 37;
	var itemUncheckedOut = 38;
	var itemAttachmentAdded = 39;
	var itemAttachmentDeleted = 40;
	var itemFileMoved = 41;
	var itemFileConverted = 42;
	var itemVersionDeleted = 43;
	var fieldAdded = 44;
	var fieldUpdated = 45;
	var fieldDeleted = 46;
	var listAdded = 47;
	var listDeleted = 48;
	var siteDeleted = 49;
	var webDeleted = 50;
	var webMoved = 51;
	var webProvisioned = 52;
	var groupAdded = 53;
	var groupUpdated = 54;
	var groupDeleted = 55;
	var groupUserAdded = 56;
	var groupUserDeleted = 57;
	var roleDefinitionAdded = 58;
	var roleDefinitionUpdated = 59;
	var roleDefinitionDeleted = 60;
	var roleAssignmentAdded = 61;
	var roleAssignmentDeleted = 62;
	var inheritanceBroken = 63;
	var inheritanceReset = 64;
	var workflowStarted = 65;
	var workflowPostponed = 66;
	var workflowCompleted = 67;
	var entityInstanceAdded = 68;
	var entityInstanceUpdated = 69;
	var entityInstanceDeleted = 70;
	var appInstalled = 71;
	var appUpgraded = 72;
	var appUninstalling = 73;
	var emailReceived = 74;
	var contextEvent = 75;
}
extern class Feature extends SP.ClientObject {
	function get_definitionId():SP.Guid;
}
extern class FeatureCollection extends SP.ClientObjectCollection<Feature> {
	function itemAt(index:Float):SP.Feature;
	function get_item(index:Float):SP.Feature;
	function getById(featureId:SP.Guid):SP.Feature;
	function add(featureId:SP.Guid, force:Bool, featdefScope:SP.FeatureDefinitionScope):SP.Feature;
	function remove(featureId:SP.Guid, force:Bool):Void;
}
@:enum abstract FeatureDefinitionScope(Int) {
	var none = 0;
	var farm = 1;
	var site = 2;
	var web = 3;
}
extern class Field extends SP.ClientObject {
	function get_canBeDeleted():Bool;
	function get_defaultValue():String;
	function set_defaultValue(value:String):Void;
	function get_description():String;
	function set_description(value:String):Void;
	function get_direction():String;
	function set_direction(value:String):Void;
	function get_enforceUniqueValues():Bool;
	function set_enforceUniqueValues(value:Bool):Void;
	function get_entityPropertyName():String;
	function get_filterable():Bool;
	function get_fromBaseType():Bool;
	function get_group():String;
	function set_group(value:String):Void;
	function get_hidden():Bool;
	function set_hidden(value:Bool):Void;
	function get_id():SP.Guid;
	function get_indexed():Bool;
	function set_indexed(value:Bool):Void;
	function get_internalName():String;
	function get_jSLink():String;
	function set_jSLink(value:String):Void;
	function get_readOnlyField():Bool;
	function set_readOnlyField(value:Bool):Void;
	function get_required():Bool;
	function set_required(value:Bool):Void;
	function get_schemaXml():String;
	function set_schemaXml(value:String):Void;
	function get_schemaXmlWithResourceTokens():String;
	function get_scope():String;
	function get_sealed():Bool;
	function get_sortable():Bool;
	function get_staticName():String;
	function set_staticName(value:String):Void;
	function get_title():String;
	function set_title(value:String):Void;
	function get_fieldTypeKind():SP.FieldType;
	function set_fieldTypeKind(value:SP.FieldType):Void;
	function get_typeAsString():String;
	function set_typeAsString(value:String):Void;
	function get_typeDisplayName():String;
	function get_typeShortDescription():String;
	function get_validationFormula():String;
	function set_validationFormula(value:String):Void;
	function get_validationMessage():String;
	function set_validationMessage(value:String):Void;
	function validateSetValue(item:SP.ListItem, value:String):Void;
	function updateAndPushChanges(pushChangesToLists:Bool):Void;
	function update():Void;
	function deleteObject():Void;
	function setShowInDisplayForm(value:Bool):Void;
	function setShowInEditForm(value:Bool):Void;
	function setShowInNewForm(value:Bool):Void;
}
extern class FieldCalculated extends SP.Field {
	function get_dateFormat():SP.DateTimeFieldFormatType;
	function set_dateFormat(value:SP.DateTimeFieldFormatType):Void;
	function get_formula():String;
	function set_formula(value:String):Void;
	function get_outputType():SP.FieldType;
	function set_outputType(value:SP.FieldType):Void;
}
extern class FieldCalculatedErrorValue extends SP.ClientValueObject {
	function get_errorMessage():String;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class FieldMultiChoice extends SP.Field {
	function get_fillInChoice():Bool;
	function set_fillInChoice(value:Bool):Void;
	function get_mappings():String;
	function get_choices():Array<String>;
	function set_choices(value:Array<String>):Void;
}
extern class FieldChoice extends SP.FieldMultiChoice {
	function get_editFormat():SP.ChoiceFormatType;
	function set_editFormat(value:SP.ChoiceFormatType):Void;
}
extern class FieldCollection extends SP.ClientObjectCollection<Field> {
	function itemAt(index:Float):SP.Field;
	function get_item(index:Float):SP.Field;
	function get_schemaXml():String;
	function getByTitle(title:String):SP.Field;
	function getById(id:SP.Guid):SP.Field;
	function add(field:SP.Field):SP.Field;
	function addDependentLookup(displayName:String, primaryLookupField:SP.Field, lookupField:String):SP.Field;
	function addFieldAsXml(schemaXml:String, addToDefaultView:Bool, options:SP.AddFieldOptions):SP.Field;
	function getByInternalNameOrTitle(strName:String):SP.Field;
}
extern class FieldComputed extends SP.Field {
	function get_enableLookup():Bool;
	function set_enableLookup(value:Bool):Void;
}
extern class FieldNumber extends SP.Field {
	function get_maximumValue():Float;
	function set_maximumValue(value:Float):Void;
	function get_minimumValue():Float;
	function set_minimumValue(value:Float):Void;
}
extern class FieldCurrency extends SP.FieldNumber {
	function get_currencyLocaleId():Float;
	function set_currencyLocaleId(value:Float):Void;
}
extern class FieldDateTime extends SP.Field {
	function get_dateTimeCalendarType():SP.CalendarType;
	function set_dateTimeCalendarType(value:SP.CalendarType):Void;
	function get_displayFormat():SP.DateTimeFieldFormatType;
	function set_displayFormat(value:SP.DateTimeFieldFormatType):Void;
	function get_friendlyDisplayFormat():SP.DateTimeFieldFriendlyFormatType;
	function set_friendlyDisplayFormat(value:SP.DateTimeFieldFriendlyFormatType):Void;
}
extern class FieldGeolocation extends SP.Field {

}
extern class FieldGeolocationValue extends SP.ClientValueObject {
	function get_altitude():Float;
	function set_altitude(value:Float):Void;
	function get_latitude():Float;
	function set_latitude(value:Float):Void;
	function get_longitude():Float;
	function set_longitude(value:Float):Void;
	function get_measure():Float;
	function set_measure(value:Float):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class FieldGuid extends SP.Field {

}
extern class FieldLink extends SP.ClientObject {
	function get_hidden():Bool;
	function set_hidden(value:Bool):Void;
	function get_id():SP.Guid;
	function get_name():String;
	function get_required():Bool;
	function set_required(value:Bool):Void;
	function deleteObject():Void;
}
extern class FieldLinkCollection extends SP.ClientObjectCollection<FieldLink> {
	function itemAt(index:Float):SP.FieldLink;
	function get_item(index:Float):SP.FieldLink;
	function getById(id:SP.Guid):SP.FieldLink;
	function add(parameters:SP.FieldLinkCreationInformation):SP.FieldLink;
	function reorder(internalNames:Array<String>):Void;
}
extern class FieldLinkCreationInformation extends SP.ClientValueObject {
	function get_field():SP.Field;
	function set_field(value:SP.Field):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class FieldLookup extends SP.Field {
	function get_allowMultipleValues():Bool;
	function set_allowMultipleValues(value:Bool):Void;
	function get_isRelationship():Bool;
	function set_isRelationship(value:Bool):Void;
	function get_lookupField():String;
	function set_lookupField(value:String):Void;
	function get_lookupList():String;
	function set_lookupList(value:String):Void;
	function get_lookupWebId():SP.Guid;
	function set_lookupWebId(value:SP.Guid):Void;
	function get_primaryFieldId():String;
	function set_primaryFieldId(value:String):Void;
	function get_relationshipDeleteBehavior():SP.RelationshipDeleteBehaviorType;
	function set_relationshipDeleteBehavior(value:SP.RelationshipDeleteBehaviorType):Void;
}
extern class FieldLookupValue extends SP.ClientValueObject {
	function get_lookupId():Float;
	function set_lookupId(value:Float):Void;
	function get_lookupValue():String;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class FieldMultiLineText extends SP.Field {
	function get_allowHyperlink():Bool;
	function set_allowHyperlink(value:Bool):Void;
	function get_appendOnly():Bool;
	function set_appendOnly(value:Bool):Void;
	function get_numberOfLines():Float;
	function set_numberOfLines(value:Float):Void;
	function get_restrictedMode():Bool;
	function set_restrictedMode(value:Bool):Void;
	function get_richText():Bool;
	function set_richText(value:Bool):Void;
	function get_wikiLinking():Bool;
}
extern class FieldRatingScale extends SP.FieldMultiChoice {
	function get_gridEndNumber():Float;
	function set_gridEndNumber(value:Float):Void;
	function get_gridNAOptionText():String;
	function set_gridNAOptionText(value:String):Void;
	function get_gridStartNumber():Float;
	function set_gridStartNumber(value:Float):Void;
	function get_gridTextRangeAverage():String;
	function set_gridTextRangeAverage(value:String):Void;
	function get_gridTextRangeHigh():String;
	function set_gridTextRangeHigh(value:String):Void;
	function get_gridTextRangeLow():String;
	function set_gridTextRangeLow(value:String):Void;
	function get_rangeCount():Float;
}
extern class FieldRatingScaleQuestionAnswer extends SP.ClientValueObject {
	function get_answer():Float;
	function set_answer(value:Float):Void;
	function get_question():String;
	function set_question(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class FieldStringValues extends SP.ClientObject {
	function get_fieldValues():Dynamic;
	function get_item(fieldName:String):String;
	function refreshLoad():Void;
}
extern class FieldText extends SP.Field {
	function get_maxLength():Float;
	function set_maxLength(value:Float):Void;
}
@:enum abstract FieldType(Int) {
	var invalid = 0;
	var integer = 1;
	var text = 2;
	var note = 3;
	var dateTime = 4;
	var counter = 5;
	var choice = 6;
	var lookup = 7;
	var boolean = 8;
	var number = 9;
	var currency = 10;
	var uRL = 11;
	var computed = 12;
	var threading = 13;
	var guid = 14;
	var multiChoice = 15;
	var gridChoice = 16;
	var calculated = 17;
	var file = 18;
	var attachments = 19;
	var user = 20;
	var recurrence = 21;
	var crossProjectLink = 22;
	var modStat = 23;
	var error = 24;
	var contentTypeId = 25;
	var pageSeparator = 26;
	var threadIndex = 27;
	var workflowStatus = 28;
	var allDayEvent = 29;
	var workflowEventType = 30;
	var geolocation = 31;
	var outcomeChoice = 32;
	var maxItems = 33;
}
extern class FieldUrl extends SP.Field {
	function get_displayFormat():SP.UrlFieldFormatType;
	function set_displayFormat(value:SP.UrlFieldFormatType):Void;
}
extern class FieldUrlValue extends SP.ClientValueObject {
	function get_description():String;
	function set_description(value:String):Void;
	function get_url():String;
	function set_url(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class FieldUser extends SP.FieldLookup {
	function get_allowDisplay():Bool;
	function set_allowDisplay(value:Bool):Void;
	function get_presence():Bool;
	function set_presence(value:Bool):Void;
	function get_selectionGroup():Float;
	function set_selectionGroup(value:Float):Void;
	function get_selectionMode():SP.FieldUserSelectionMode;
	function set_selectionMode(value:SP.FieldUserSelectionMode):Void;
}
@:enum abstract FieldUserSelectionMode(Int) {
	var peopleOnly = 0;
	var peopleAndGroups = 1;
}
extern class FieldUserValue extends SP.FieldLookupValue {
	static function fromUser(userName:String):SP.FieldUserValue;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class File extends SP.ClientObject {
	function get_author():SP.User;
	function get_checkedOutByUser():SP.User;
	function get_checkInComment():String;
	function get_checkOutType():SP.CheckOutType;
	function get_contentTag():String;
	function get_customizedPageStatus():SP.CustomizedPageStatus;
	function get_eTag():String;
	function get_exists():Bool;
	function get_length():Float;
	function get_level():SP.FileLevel;
	function get_listItemAllFields():SP.ListItem;
	function get_lockedByUser():SP.User;
	function get_majorVersion():Float;
	function get_minorVersion():Float;
	function get_modifiedBy():SP.User;
	function get_name():String;
	function get_serverRelativeUrl():String;
	function get_timeCreated():Date;
	function get_timeLastModified():Date;
	function get_title():String;
	function get_uIVersion():Float;
	function get_uIVersionLabel():String;
	function get_versions():SP.FileVersionCollection;
	function undoCheckOut():Void;
	function checkIn(comment:String, checkInType:SP.CheckinType):Void;
	function publish(comment:String):Void;
	function unPublish(comment:String):Void;
	function approve(comment:String):Void;
	function deny(comment:String):Void;
	static function getContentVerFromTag(context:SP.ClientRuntimeContext, contentTag:String):SP.IntResult;
	function getLimitedWebPartManager(scope:SP.WebParts.PersonalizationScope):SP.WebParts.LimitedWebPartManager;
	function moveTo(newUrl:String, flags:SP.MoveOperations):Void;
	function copyTo(strNewUrl:String, bOverWrite:Bool):Void;
	function saveBinary(parameters:SP.FileSaveBinaryInformation):Void;
	function deleteObject():Void;
	function recycle():SP.GuidResult;
	function checkOut():Void;
}
extern class FileCollection extends SP.ClientObjectCollection<File> {
	function itemAt(index:Float):SP.File;
	function get_item(index:Float):SP.File;
	function getByUrl(url:String):SP.File;
	function add(parameters:SP.FileCreationInformation):SP.File;
	function addTemplateFile(urlOfFile:String, templateFileType:SP.TemplateFileType):SP.File;
}
extern class FileCreationInformation extends SP.ClientValueObject {
	function get_content():SP.Base64EncodedByteArray;
	function set_content(value:SP.Base64EncodedByteArray):Void;
	function get_overwrite():Bool;
	function set_overwrite(value:Bool):Void;
	function get_url():String;
	function set_url(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract FileLevel(Int) {
	var published = 0;
	var draft = 1;
	var checkout = 2;
}
extern class FileSaveBinaryInformation extends SP.ClientValueObject {
	function get_checkRequiredFields():Bool;
	function set_checkRequiredFields(value:Bool):Void;
	function get_content():SP.Base64EncodedByteArray;
	function set_content(value:SP.Base64EncodedByteArray):Void;
	function get_eTag():String;
	function set_eTag(value:String):Void;
	function get_fieldValues():Dynamic;
	function set_fieldValues(value:Dynamic):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract FileSystemObjectType(Int) {
	var invalid = 0;
	var file = 1;
	var folder = 2;
	var web = 3;
}
extern class FileVersion extends SP.ClientObject {
	function get_checkInComment():String;
	function get_created():Date;
	function get_createdBy():SP.User;
	function get_iD():Float;
	function get_isCurrentVersion():Bool;
	function get_size():Float;
	function get_url():String;
	function get_versionLabel():String;
	function deleteObject():Void;
}
extern class FileVersionCollection extends SP.ClientObjectCollection<FileVersion> {
	function itemAt(index:Float):SP.FileVersion;
	function get_item(index:Float):SP.FileVersion;
	function getById(versionid:Float):SP.FileVersion;
	function deleteByID(vid:Float):Void;
	function deleteByLabel(versionlabel:String):Void;
	function deleteAll():Void;
	function restoreByLabel(versionlabel:String):Void;
}
extern class Folder extends SP.ClientObject {
	function get_contentTypeOrder():Array<SP.ContentTypeId>;
	function get_files():SP.FileCollection;
	function get_listItemAllFields():SP.ListItem;
	function get_itemCount():Float;
	function get_name():String;
	function get_parentFolder():SP.Folder;
	function get_properties():SP.PropertyValues;
	function get_serverRelativeUrl():String;
	function get_folders():SP.FolderCollection;
	function get_uniqueContentTypeOrder():Array<SP.ContentTypeId>;
	function set_uniqueContentTypeOrder(value:Array<SP.ContentTypeId>):Void;
	function get_welcomePage():String;
	function set_welcomePage(value:String):Void;
	function update():Void;
	function deleteObject():Void;
	function recycle():SP.GuidResult;
}
extern class FolderCollection extends SP.ClientObjectCollection<Folder> {
	function itemAt(index:Float):SP.Folder;
	function get_item(index:Float):SP.Folder;
	function getByUrl(url:String):SP.Folder;
	function add(url:String):SP.Folder;
}
extern class Form extends SP.ClientObject {
	function get_id():SP.Guid;
	function get_serverRelativeUrl():String;
	function get_formType():SP.PageType;
}
extern class FormCollection extends SP.ClientObjectCollection<Form> {
	function itemAt(index:Float):SP.Form;
	function get_item(index:Float):SP.Form;
	function getByPageType(formType:SP.PageType):SP.Form;
	function getById(id:SP.Guid):SP.Form;
}
extern class Principal extends SP.ClientObject {
	function get_id():Float;
	function get_isHiddenInUI():Bool;
	function get_loginName():String;
	function get_title():String;
	function set_title(value:String):Void;
	function get_principalType():SP.Utilities.PrincipalType;
}
extern class Group extends SP.Principal {
	function get_allowMembersEditMembership():Bool;
	function set_allowMembersEditMembership(value:Bool):Void;
	function get_allowRequestToJoinLeave():Bool;
	function set_allowRequestToJoinLeave(value:Bool):Void;
	function get_autoAcceptRequestToJoinLeave():Bool;
	function set_autoAcceptRequestToJoinLeave(value:Bool):Void;
	function get_canCurrentUserEditMembership():Bool;
	function get_canCurrentUserManageGroup():Bool;
	function get_canCurrentUserViewMembership():Bool;
	function get_description():String;
	function set_description(value:String):Void;
	function get_onlyAllowMembersViewMembership():Bool;
	function set_onlyAllowMembersViewMembership(value:Bool):Void;
	function get_owner():SP.Principal;
	function set_owner(value:SP.Principal):Void;
	function get_ownerTitle():String;
	function get_requestToJoinLeaveEmailSetting():String;
	function set_requestToJoinLeaveEmailSetting(value:String):Void;
	function get_users():SP.UserCollection;
	function update():Void;
}
extern class GroupCollection extends SP.ClientObjectCollection<Group> {
	function itemAt(index:Float):SP.Group;
	function get_item(index:Float):SP.Group;
	function getByName(name:String):SP.Group;
	function getById(id:Float):SP.Group;
	function add(parameters:SP.GroupCreationInformation):SP.Group;
	function removeByLoginName(loginName:String):Void;
	function removeById(id:Float):Void;
	function remove(group:SP.Group):Void;
}
extern class GroupCreationInformation extends SP.ClientValueObject {
	function get_description():String;
	function set_description(value:String):Void;
	function get_title():String;
	function set_title(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class InformationRightsManagementSettings extends SP.ClientObject {
	function get_allowPrint():Bool;
	function set_allowPrint(value:Bool):Void;
	function get_allowScript():Bool;
	function set_allowScript(value:Bool):Void;
	function get_allowWriteCopy():Bool;
	function set_allowWriteCopy(value:Bool):Void;
	function get_disableDocumentBrowserView():Bool;
	function set_disableDocumentBrowserView(value:Bool):Void;
	function get_documentAccessExpireDays():Float;
	function set_documentAccessExpireDays(value:Float):Void;
	function get_documentLibraryProtectionExpireDate():Date;
	function set_documentLibraryProtectionExpireDate(value:Date):Void;
	function get_enableDocumentAccessExpire():Bool;
	function set_enableDocumentAccessExpire(value:Bool):Void;
	function get_enableDocumentBrowserPublishingView():Bool;
	function set_enableDocumentBrowserPublishingView(value:Bool):Void;
	function get_enableGroupProtection():Bool;
	function set_enableGroupProtection(value:Bool):Void;
	function get_enableLicenseCacheExpire():Bool;
	function set_enableLicenseCacheExpire(value:Bool):Void;
	function get_groupName():String;
	function set_groupName(value:String):Void;
	function get_licenseCacheExpireDays():Float;
	function set_licenseCacheExpireDays(value:Float):Void;
	function get_policyDescription():String;
	function set_policyDescription(value:String):Void;
	function get_policyTitle():String;
	function set_policyTitle(value:String):Void;
	function reset():Void;
	function update():Void;
}
extern class Language extends SP.ClientValueObject {
	function get_displayName():String;
	function get_languageTag():String;
	function get_lcid():Float;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class SecurableObject extends SP.ClientObject {
	function get_firstUniqueAncestorSecurableObject():SP.SecurableObject;
	function get_hasUniqueRoleAssignments():Bool;
	function get_roleAssignments():SP.RoleAssignmentCollection;
	function resetRoleInheritance():Void;
	function breakRoleInheritance(copyRoleAssignments:Bool, clearSubscopes:Bool):Void;
}
@:enum abstract ControlMode(Int) {
	var invalid = 0;
	var displayMode = 1;
	var editMode = 2;
	var newMode = 3;
}
extern class List extends SP.SecurableObject {
	function getItemById(id:Float):SP.ListItem;
	function get_allowContentTypes():Bool;
	function get_baseTemplate():Float;
	function get_baseType():SP.BaseType;
	function get_browserFileHandling():SP.BrowserFileHandling;
	function get_contentTypes():SP.ContentTypeCollection;
	function get_contentTypesEnabled():Bool;
	function set_contentTypesEnabled(value:Bool):Void;
	function get_created():Date;
	function get_dataSource():SP.ListDataSource;
	function get_defaultContentApprovalWorkflowId():SP.Guid;
	function set_defaultContentApprovalWorkflowId(value:SP.Guid):Void;
	function get_defaultDisplayFormUrl():String;
	function set_defaultDisplayFormUrl(value:String):Void;
	function get_defaultEditFormUrl():String;
	function set_defaultEditFormUrl(value:String):Void;
	function get_defaultNewFormUrl():String;
	function set_defaultNewFormUrl(value:String):Void;
	function get_defaultView():SP.View;
	function get_defaultViewUrl():String;
	function get_description():String;
	function set_description(value:String):Void;
	function get_direction():String;
	function set_direction(value:String):Void;
	function get_documentTemplateUrl():String;
	function set_documentTemplateUrl(value:String):Void;
	function get_draftVersionVisibility():SP.DraftVisibilityType;
	function set_draftVersionVisibility(value:SP.DraftVisibilityType):Void;
	function get_effectiveBasePermissions():SP.BasePermissions;
	function get_effectiveBasePermissionsForUI():SP.BasePermissions;
	function get_enableAttachments():Bool;
	function set_enableAttachments(value:Bool):Void;
	function get_enableFolderCreation():Bool;
	function set_enableFolderCreation(value:Bool):Void;
	function get_enableMinorVersions():Bool;
	function set_enableMinorVersions(value:Bool):Void;
	function get_enableModeration():Bool;
	function set_enableModeration(value:Bool):Void;
	function get_enableVersioning():Bool;
	function set_enableVersioning(value:Bool):Void;
	function get_entityTypeName():String;
	function get_eventReceivers():SP.EventReceiverDefinitionCollection;
	function get_fields():SP.FieldCollection;
	function get_forceCheckout():Bool;
	function set_forceCheckout(value:Bool):Void;
	function get_forms():SP.FormCollection;
	function get_hasExternalDataSource():Bool;
	function get_hidden():Bool;
	function set_hidden(value:Bool):Void;
	function get_id():SP.Guid;
	function get_imageUrl():String;
	function set_imageUrl(value:String):Void;
	function get_informationRightsManagementSettings():SP.InformationRightsManagementSettings;
	function get_irmEnabled():Bool;
	function set_irmEnabled(value:Bool):Void;
	function get_irmExpire():Bool;
	function set_irmExpire(value:Bool):Void;
	function get_irmReject():Bool;
	function set_irmReject(value:Bool):Void;
	function get_isApplicationList():Bool;
	function set_isApplicationList(value:Bool):Void;
	function get_isCatalog():Bool;
	function get_isPrivate():Bool;
	function get_isSiteAssetsLibrary():Bool;
	function get_itemCount():Float;
	function get_lastItemDeletedDate():Date;
	function get_lastItemModifiedDate():Date;
	function set_lastItemModifiedDate(value:Date):Void;
	function get_listItemEntityTypeFullName():String;
	function get_multipleDataList():Bool;
	function set_multipleDataList(value:Bool):Void;
	function get_noCrawl():Bool;
	function set_noCrawl(value:Bool):Void;
	function get_onQuickLaunch():Bool;
	function set_onQuickLaunch(value:Bool):Void;
	function get_parentWeb():SP.Web;
	function get_parentWebUrl():String;
	function get_rootFolder():SP.Folder;
	function get_schemaXml():String;
	function get_serverTemplateCanCreateFolders():Bool;
	function get_templateFeatureId():SP.Guid;
	function get_title():String;
	function set_title(value:String):Void;
	function get_userCustomActions():SP.UserCustomActionCollection;
	function get_validationFormula():String;
	function set_validationFormula(value:String):Void;
	function get_validationMessage():String;
	function set_validationMessage(value:String):Void;
	function get_views():SP.ViewCollection;
	function get_workflowAssociations():SP.Workflow.WorkflowAssociationCollection;
	function getChanges(query:SP.ChangeQuery):SP.ChangeCollection;
	function getListItemChangesSinceToken(query:SP.ChangeLogItemQuery):Array<Dynamic>;
	function getUserEffectivePermissions(userName:String):SP.BasePermissions;
	function saveAsNewView(oldName:String, newName:String, privateView:Bool, uri:String):SP.StringResult;
	function getRelatedFields():SP.RelatedFieldCollection;
	function getRelatedFieldsExtendedData():SP.RelatedFieldExtendedDataCollection;
	function renderListFormData(itemId:Float, formId:String, mode:SP.ControlMode):SP.StringResult;
	function renderListData(viewXml:String):SP.StringResult;
	function reserveListItemId():SP.IntResult;
	function update():Void;
	function getView(viewGuid:SP.Guid):SP.View;
	function deleteObject():Void;
	function recycle():SP.GuidResult;
	function getItems(query:SP.CamlQuery):SP.ListItemCollection;
	function addItem(parameters:SP.ListItemCreationInformation):SP.ListItem;
}
extern class ListCollection extends SP.ClientObjectCollection<List> {
	function itemAt(index:Float):SP.List;
	function get_item(index:Float):SP.List;
	function getByTitle(title:String):SP.List;
	@:overload(function(id:String):SP.List { })
	function getById(id:SP.Guid):SP.List;
	function add(parameters:SP.ListCreationInformation):SP.List;
	function ensureSitePagesLibrary():SP.List;
	function ensureSiteAssetsLibrary():SP.List;
}
extern class ListCreationInformation extends SP.ClientValueObject {
	function get_customSchemaXml():String;
	function set_customSchemaXml(value:String):Void;
	function get_dataSourceProperties():Dynamic;
	function set_dataSourceProperties(value:Dynamic):Void;
	function get_description():String;
	function set_description(value:String):Void;
	function get_documentTemplateType():Float;
	function set_documentTemplateType(value:Float):Void;
	function get_quickLaunchOption():SP.QuickLaunchOptions;
	function set_quickLaunchOption(value:SP.QuickLaunchOptions):Void;
	function get_templateFeatureId():SP.Guid;
	function set_templateFeatureId(value:SP.Guid):Void;
	function get_templateType():Float;
	function set_templateType(value:Float):Void;
	function get_title():String;
	function set_title(value:String):Void;
	function get_url():String;
	function set_url(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class ListDataSource extends SP.ClientValueObject {
	function get_properties():Dynamic;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class ListDataValidationExceptionValue extends SP.ClientValueObject {
	function get_fieldFailures():Array<SP.ListDataValidationFailure>;
	function get_itemFailure():SP.ListDataValidationFailure;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class ListDataValidationFailure extends SP.ClientValueObject {
	function get_displayName():String;
	function get_message():String;
	function get_name():String;
	function get_reason():SP.ListDataValidationFailureReason;
	function get_validationType():SP.ListDataValidationType;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract ListDataValidationFailureReason(Int) {
	var dataFailure = 0;
	var formulaError = 1;
}
@:enum abstract ListDataValidationType(Int) {
	var userFormulaField = 0;
	var userFormulaItem = 1;
	var requiredField = 2;
	var choiceField = 3;
	var minMaxField = 4;
	var textField = 5;
}
extern class ListItem extends SP.SecurableObject {
	function get_fieldValues():Dynamic;
	function get_item(fieldInternalName:String):Dynamic;
	function set_item(fieldInternalName:String, value:Dynamic):Void;
	function get_attachmentFiles():SP.AttachmentCollection;
	function get_contentType():SP.ContentType;
	function get_displayName():String;
	function get_effectiveBasePermissions():SP.BasePermissions;
	function get_effectiveBasePermissionsForUI():SP.BasePermissions;
	function get_fieldValuesAsHtml():SP.FieldStringValues;
	function get_fieldValuesAsText():SP.FieldStringValues;
	function get_fieldValuesForEdit():SP.FieldStringValues;
	function get_file():SP.File;
	function get_fileSystemObjectType():SP.FileSystemObjectType;
	function get_folder():SP.Folder;
	function get_id():Float;
	function get_parentList():SP.List;
	function refreshLoad():Void;
	function getWOPIFrameUrl(action:SP.Utilities.SPWOPIFrameAction):SP.StringResult;
	function update():Void;
	function deleteObject():Void;
	function recycle():SP.GuidResult;
	function getUserEffectivePermissions(userName:String):SP.BasePermissions;
	function parseAndSetFieldValue(fieldInternalName:String, value:String):Void;
	function validateUpdateListItem(formValues:Array<SP.ListItemFormUpdateValue>, bNewDocumentUpdate:Bool):Array<SP.ListItemFormUpdateValue>;
}
extern class ListItemCollection extends SP.ClientObjectCollection<ListItem> {
	function itemAt(index:Float):SP.ListItem;
	function get_item(index:Float):SP.ListItem;
	@:overload(function(id:String):SP.ListItem { })
	function getById(id:Float):SP.ListItem;
	function get_listItemCollectionPosition():SP.ListItemCollectionPosition;
}
extern class ListItemCollectionPosition extends SP.ClientValueObject {
	function get_pagingInfo():String;
	function set_pagingInfo(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class ListItemCreationInformation extends SP.ClientValueObject {
	function get_folderUrl():String;
	function set_folderUrl(value:String):Void;
	function get_leafName():String;
	function set_leafName(value:String):Void;
	function get_underlyingObjectType():SP.FileSystemObjectType;
	function set_underlyingObjectType(value:SP.FileSystemObjectType):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class ListItemEntityCollection extends SP.ClientObjectCollection<ListItem> {
	function itemAt(index:Float):SP.ListItem;
	function get_item(index:Float):SP.ListItem;
}
extern class ListItemFormUpdateValue extends SP.ClientValueObject {
	function get_errorMessage():String;
	function set_errorMessage(value:String):Void;
	function get_fieldName():String;
	function set_fieldName(value:String):Void;
	function get_fieldValue():String;
	function set_fieldValue(value:String):Void;
	function get_hasException():Bool;
	function set_hasException(value:Bool):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class ListTemplate extends SP.ClientObject {
	function get_allowsFolderCreation():Bool;
	function get_baseType():SP.BaseType;
	function get_description():String;
	function get_featureId():SP.Guid;
	function get_hidden():Bool;
	function get_imageUrl():String;
	function get_internalName():String;
	function get_isCustomTemplate():Bool;
	function get_name():String;
	function get_onQuickLaunch():Bool;
	function get_listTemplateTypeKind():Float;
	function get_unique():Bool;
}
extern class ListTemplateCollection extends SP.ClientObjectCollection<ListTemplate> {
	function itemAt(index:Float):SP.ListTemplate;
	function get_item(index:Float):SP.ListTemplate;
	function getByName(name:String):SP.ListTemplate;
}
@:enum abstract ListTemplateType(Int) {
	var invalidType = 0;
	var noListTemplate = 1;
	var genericList = 2;
	var documentLibrary = 3;
	var survey = 4;
	var links = 5;
	var announcements = 6;
	var contacts = 7;
	var events = 8;
	var tasks = 9;
	var discussionBoard = 10;
	var pictureLibrary = 11;
	var dataSources = 12;
	var webTemplateCatalog = 13;
	var userInformation = 14;
	var webPartCatalog = 15;
	var listTemplateCatalog = 16;
	var xMLForm = 17;
	var masterPageCatalog = 18;
	var noCodeWorkflows = 19;
	var workflowProcess = 20;
	var webPageLibrary = 21;
	var customGrid = 22;
	var solutionCatalog = 23;
	var noCodePublic = 24;
	var themeCatalog = 25;
	var designCatalog = 26;
	var appDataCatalog = 27;
	var dataConnectionLibrary = 28;
	var workflowHistory = 29;
	var ganttTasks = 30;
	var helpLibrary = 31;
	var accessRequest = 32;
	var tasksWithTimelineAndHierarchy = 33;
	var maintenanceLogs = 34;
	var meetings = 35;
	var agenda = 36;
	var meetingUser = 37;
	var decision = 38;
	var meetingObjective = 39;
	var textBox = 40;
	var thingsToBring = 41;
	var homePageLibrary = 42;
	var posts = 43;
	var comments = 44;
	var categories = 45;
	var facility = 46;
	var whereabouts = 47;
	var callTrack = 48;
	var circulation = 49;
	var timecard = 50;
	var holidays = 51;
	var iMEDic = 52;
	var externalList = 53;
	var mySiteDocumentLibrary = 54;
	var issueTracking = 55;
	var adminTasks = 56;
	var healthRules = 57;
	var healthReports = 58;
	var developerSiteDraftApps = 59;
}
@:enum abstract MoveOperations(Int) {
	var none = 0;
	var overwrite = 1;
	var allowBrokenThickets = 2;
	var bypassApprovePermission = 3;
}
extern class Navigation extends SP.ClientObject {
	function get_quickLaunch():SP.NavigationNodeCollection;
	function get_topNavigationBar():SP.NavigationNodeCollection;
	function get_useShared():Bool;
	function set_useShared(value:Bool):Void;
	function getNodeById(id:Float):SP.NavigationNode;
}
extern class NavigationNode extends SP.ClientObject {
	function get_children():SP.NavigationNodeCollection;
	function get_id():Float;
	function get_isDocLib():Bool;
	function get_isExternal():Bool;
	function get_isVisible():Bool;
	function set_isVisible(value:Bool):Void;
	function get_title():String;
	function set_title(value:String):Void;
	function get_url():String;
	function set_url(value:String):Void;
	function update():Void;
	function deleteObject():Void;
}
extern class NavigationNodeCollection extends SP.ClientObjectCollection<NavigationNode> {
	function itemAt(index:Float):SP.NavigationNode;
	function get_item(index:Float):SP.NavigationNode;
	function add(parameters:SP.NavigationNodeCreationInformation):SP.NavigationNode;
}
extern class NavigationNodeCreationInformation extends SP.ClientValueObject {
	function get_asLastNode():Bool;
	function set_asLastNode(value:Bool):Void;
	function get_isExternal():Bool;
	function set_isExternal(value:Bool):Void;
	function get_previousNode():SP.NavigationNode;
	function set_previousNode(value:SP.NavigationNode):Void;
	function get_title():String;
	function set_title(value:String):Void;
	function get_url():String;
	function set_url(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class ObjectSharingInformation extends SP.ClientObject {
	function get_anonymousEditLink():String;
	function get_anonymousViewLink():String;
	function get_canManagePermissions():Bool;
	function get_hasPendingAccessRequests():Bool;
	function get_hasPermissionLevels():Bool;
	function get_isSharedWithCurrentUser():Bool;
	function get_isSharedWithGuest():Bool;
	function get_isSharedWithMany():Bool;
	function get_isSharedWithSecurityGroup():Bool;
	function get_pendingAccessRequestsLink():String;
	function getSharedWithUsers():SP.ClientObjectList<SP.ObjectSharingInformationUser>;
	static function getListItemSharingInformation(context:SP.ClientRuntimeContext, listID:SP.Guid, itemID:Float, excludeCurrentUser:Bool, excludeSiteAdmin:Bool, excludeSecurityGroups:Bool, retrieveAnonymousLinks:Bool, retrieveUserInfoDetails:Bool, checkForAccessRequests:Bool):SP.ObjectSharingInformation;
	static function getWebSharingInformation(context:SP.ClientRuntimeContext, excludeCurrentUser:Bool, excludeSiteAdmin:Bool, excludeSecurityGroups:Bool, retrieveAnonymousLinks:Bool, retrieveUserInfoDetails:Bool, checkForAccessRequests:Bool):SP.ObjectSharingInformation;
	static function getObjectSharingInformation(context:SP.ClientRuntimeContext, securableObject:SP.SecurableObject, excludeCurrentUser:Bool, excludeSiteAdmin:Bool, excludeSecurityGroups:Bool, retrieveAnonymousLinks:Bool, retrieveUserInfoDetails:Bool, checkForAccessRequests:Bool, retrievePermissionLevels:Bool):SP.ObjectSharingInformation;
}
extern class ObjectSharingInformationUser extends SP.ClientObject {
	function get_customRoleNames():String;
	function get_department():String;
	function get_email():String;
	function get_hasEditPermission():Bool;
	function get_hasViewPermission():Bool;
	function get_id():Float;
	function get_isSiteAdmin():Bool;
	function get_jobTitle():String;
	function get_loginName():String;
	function get_name():String;
	function get_picture():String;
	function get_principal():SP.Principal;
	function get_sipAddress():String;
	function get_user():SP.User;
}
@:enum abstract OpenWebOptions(Int) {
	var none = 0;
	var initNavigationCache = 1;
}
@:enum abstract PageType(Int) {
	var invalid = 0;
	var defaultView = 1;
	var normalView = 2;
	var dialogView = 3;
	var view = 4;
	var displayForm = 5;
	var displayFormDialog = 6;
	var editForm = 7;
	var editFormDialog = 8;
	var newForm = 9;
	var newFormDialog = 10;
	var solutionForm = 11;
	var pAGE_MAXITEMS = 12;
}
extern class PropertyValues extends SP.ClientObject {
	function get_fieldValues():Dynamic;
	function get_item(fieldName:String):Dynamic;
	function set_item(fieldName:String, value:Dynamic):Void;
	function refreshLoad():Void;
}
extern class PushNotificationSubscriber extends SP.ClientObject {
	function get_customArgs():String;
	function set_customArgs(value:String):Void;
	function get_deviceAppInstanceId():SP.Guid;
	function get_lastModifiedTimeStamp():Date;
	function get_registrationTimeStamp():Date;
	function get_serviceToken():String;
	function set_serviceToken(value:String):Void;
	function get_subscriberType():String;
	function set_subscriberType(value:String):Void;
	function get_user():SP.User;
	function update():Void;
}
extern class PushNotificationSubscriberCollection extends SP.ClientObjectCollection<PushNotificationSubscriber> {
	function itemAt(index:Float):SP.PushNotificationSubscriber;
	function get_item(index:Float):SP.PushNotificationSubscriber;
	function getByStoreId(id:String):SP.PushNotificationSubscriber;
}
@:enum abstract QuickLaunchOptions(Int) {
	var off = 0;
	var on = 1;
	var defaultValue = 2;
}
extern class RecycleBinItem extends SP.ClientObject {
	function get_author():SP.User;
	function get_deletedBy():SP.User;
	function get_deletedDate():Date;
	function get_dirName():String;
	function get_id():SP.Guid;
	function get_itemState():SP.RecycleBinItemState;
	function get_itemType():SP.RecycleBinItemType;
	function get_leafName():String;
	function get_size():Float;
	function get_title():String;
	function deleteObject():Void;
	function restore():Void;
}
extern class RecycleBinItemCollection extends SP.ClientObjectCollection<RecycleBinItem> {
	function itemAt(index:Float):SP.RecycleBinItem;
	function get_item(index:Float):SP.RecycleBinItem;
	function getById(id:SP.Guid):SP.RecycleBinItem;
	function deleteAll():Void;
	function restoreAll():Void;
}
@:enum abstract RecycleBinItemState(Int) {
	var none = 0;
	var firstStageRecycleBin = 1;
	var secondStageRecycleBin = 2;
}
@:enum abstract RecycleBinItemType(Int) {
	var none = 0;
	var file = 1;
	var fileVersion = 2;
	var listItem = 3;
	var list = 4;
	var folder = 5;
	var folderWithLists = 6;
	var attachment = 7;
	var listItemVersion = 8;
	var cascadeParent = 9;
	var web = 10;
}
extern class RegionalSettings extends SP.ClientObject {
	function get_adjustHijriDays():Float;
	function get_alternateCalendarType():Float;
	function get_aM():String;
	function get_calendarType():Float;
	function get_collation():Float;
	function get_collationLCID():Float;
	function get_dateFormat():Float;
	function get_dateSeparator():String;
	function get_decimalSeparator():String;
	function get_digitGrouping():String;
	function get_firstDayOfWeek():Float;
	function get_firstWeekOfYear():Float;
	function get_isEastAsia():Bool;
	function get_isRightToLeft():Bool;
	function get_isUIRightToLeft():Bool;
	function get_listSeparator():String;
	function get_localeId():Float;
	function get_negativeSign():String;
	function get_negNumberMode():Float;
	function get_pM():String;
	function get_positiveSign():String;
	function get_showWeeks():Bool;
	function get_thousandSeparator():String;
	function get_time24():Bool;
	function get_timeMarkerPosition():Float;
	function get_timeSeparator():String;
	function get_timeZone():SP.TimeZone;
	function get_timeZones():SP.TimeZoneCollection;
	function get_workDayEndHour():Float;
	function get_workDays():Float;
	function get_workDayStartHour():Float;
}
extern class RelatedField extends SP.ClientObject {
	function get_fieldId():SP.Guid;
	function get_listId():SP.Guid;
	function get_lookupList():SP.List;
	function get_relationshipDeleteBehavior():SP.RelationshipDeleteBehaviorType;
	function get_webId():SP.Guid;
}
extern class RelatedFieldCollection extends SP.ClientObjectCollection<RelatedField> {
	function itemAt(index:Float):SP.RelatedField;
	function get_item(index:Float):SP.RelatedField;
}
extern class RelatedFieldExtendedData extends SP.ClientObject {
	function get_fieldId():SP.Guid;
	function get_listId():SP.Guid;
	function get_listImageUrl():String;
	function get_resolvedListTitle():String;
	function get_toolTipDescription():String;
	function get_webId():SP.Guid;
}
extern class RelatedFieldExtendedDataCollection extends SP.ClientObjectCollection<RelatedFieldExtendedData> {
	function itemAt(index:Float):SP.RelatedFieldExtendedData;
	function get_item(index:Float):SP.RelatedFieldExtendedData;
}
extern class RelatedItem extends SP.ClientValueObject {
	function get_iconUrl():String;
	function set_iconUrl(value:String):Void;
	function get_itemId():Float;
	function set_itemId(value:Float):Void;
	function get_listId():String;
	function set_listId(value:String):Void;
	function get_title():String;
	function set_title(value:String):Void;
	function get_url():String;
	function set_url(value:String):Void;
	function get_webId():String;
	function set_webId(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class RelatedItemManager extends SP.ClientObject {
	static function getRelatedItems(context:SP.ClientRuntimeContext, SourceListName:String, SourceItemID:Float):Array<SP.RelatedItem>;
	static function getPageOneRelatedItems(context:SP.ClientRuntimeContext, SourceListName:String, SourceItemID:Float):Array<SP.RelatedItem>;
	static function addSingleLink(context:SP.ClientRuntimeContext, SourceListName:String, SourceItemID:Float, SourceWebUrl:String, TargetListName:String, TargetItemID:Float, TargetWebUrl:String, TryAddReverseLink:Bool):Void;
	static function addSingleLinkToUrl(context:SP.ClientRuntimeContext, SourceListName:String, SourceItemID:Float, TargetItemUrl:String, TryAddReverseLink:Bool):Void;
	static function addSingleLinkFromUrl(context:SP.ClientRuntimeContext, SourceItemUrl:String, TargetListName:String, TargetItemID:Float, TryAddReverseLink:Bool):Void;
	static function deleteSingleLink(context:SP.ClientRuntimeContext, SourceListName:String, SourceItemID:Float, SourceWebUrl:String, TargetListName:String, TargetItemID:Float, TargetWebUrl:String, TryDeleteReverseLink:Bool):Void;
}
@:enum abstract RelationshipDeleteBehaviorType(Int) {
	var none = 0;
	var cascade = 1;
	var restrict = 2;
}
extern class RequestVariable extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext):Void;
	function get_value():String;
	static function newObject(context:SP.ClientRuntimeContext):SP.RequestVariable;
	function append(value:String):Void;
	function set(value:String):Void;
}
extern class RoleAssignment extends SP.ClientObject {
	function get_member():SP.Principal;
	function get_principalId():Float;
	function get_roleDefinitionBindings():SP.RoleDefinitionBindingCollection;
	function importRoleDefinitionBindings(roleDefinitionBindings:SP.RoleDefinitionBindingCollection):Void;
	function update():Void;
	function deleteObject():Void;
}
extern class RoleAssignmentCollection extends SP.ClientObjectCollection<RoleAssignment> {
	function itemAt(index:Float):SP.RoleAssignment;
	function get_item(index:Float):SP.RoleAssignment;
	function get_groups():SP.GroupCollection;
	function getByPrincipal(principalToFind:SP.Principal):SP.RoleAssignment;
	function getByPrincipalId(principalId:Float):SP.RoleAssignment;
	function add(principal:SP.Principal, roleBindings:SP.RoleDefinitionBindingCollection):SP.RoleAssignment;
}
extern class RoleDefinition extends SP.ClientObject {
	function get_basePermissions():SP.BasePermissions;
	function set_basePermissions(value:SP.BasePermissions):Void;
	function get_description():String;
	function set_description(value:String):Void;
	function get_hidden():Bool;
	function get_id():Float;
	function get_name():String;
	function set_name(value:String):Void;
	function get_order():Float;
	function set_order(value:Float):Void;
	function get_roleTypeKind():SP.RoleType;
	function update():Void;
	function deleteObject():Void;
}
extern class RoleDefinitionBindingCollection extends SP.ClientObjectCollection<RoleDefinition> {
	function itemAt(index:Float):SP.RoleDefinition;
	function get_item(index:Float):SP.RoleDefinition;
	function new(context:SP.ClientRuntimeContext):Void;
	static function newObject(context:SP.ClientRuntimeContext):SP.RoleDefinitionBindingCollection;
	function add(roleDefinition:SP.RoleDefinition):Void;
	function remove(roleDefinition:SP.RoleDefinition):Void;
	function removeAll():Void;
}
extern class RoleDefinitionCollection extends SP.ClientObjectCollection<RoleDefinition> {
	function itemAt(index:Float):SP.RoleDefinition;
	function get_item(index:Float):SP.RoleDefinition;
	function getByName(name:String):SP.RoleDefinition;
	function add(parameters:SP.RoleDefinitionCreationInformation):SP.RoleDefinition;
	function getById(id:Float):SP.RoleDefinition;
	function getByType(roleType:SP.RoleType):SP.RoleDefinition;
}
extern class RoleDefinitionCreationInformation extends SP.ClientValueObject {
	function get_basePermissions():SP.BasePermissions;
	function set_basePermissions(value:SP.BasePermissions):Void;
	function get_description():String;
	function set_description(value:String):Void;
	function get_name():String;
	function set_name(value:String):Void;
	function get_order():Float;
	function set_order(value:Float):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract RoleType(Int) {
	var none = 0;
	var guest = 1;
	var reader = 2;
	var contributor = 3;
	var webDesigner = 4;
	var administrator = 5;
	var editor = 6;
}
extern class ServerSettings {
	static function getAlternateUrls(context:SP.ClientRuntimeContext):SP.ClientObjectList<SP.AlternateUrl>;
	static function getGlobalInstalledLanguages(context:SP.ClientRuntimeContext, compatibilityLevel:Float):Array<SP.Language>;
}
extern class Site extends SP.ClientObject {
	function get_allowDesigner():Bool;
	function set_allowDesigner(value:Bool):Void;
	function get_allowMasterPageEditing():Bool;
	function set_allowMasterPageEditing(value:Bool):Void;
	function get_allowRevertFromTemplate():Bool;
	function set_allowRevertFromTemplate(value:Bool):Void;
	function get_allowSelfServiceUpgrade():Bool;
	function set_allowSelfServiceUpgrade(value:Bool):Void;
	function get_allowSelfServiceUpgradeEvaluation():Bool;
	function set_allowSelfServiceUpgradeEvaluation(value:Bool):Void;
	function get_canUpgrade():Bool;
	function get_compatibilityLevel():Float;
	function get_eventReceivers():SP.EventReceiverDefinitionCollection;
	function get_features():SP.FeatureCollection;
	function get_id():SP.Guid;
	function get_lockIssue():String;
	function get_maxItemsPerThrottledOperation():Float;
	function get_owner():SP.User;
	function set_owner(value:SP.User):Void;
	function get_primaryUri():String;
	function get_readOnly():Bool;
	function get_recycleBin():SP.RecycleBinItemCollection;
	function get_rootWeb():SP.Web;
	function get_serverRelativeUrl():String;
	function get_shareByLinkEnabled():Bool;
	function get_showUrlStructure():Bool;
	function set_showUrlStructure(value:Bool):Void;
	function get_uIVersionConfigurationEnabled():Bool;
	function set_uIVersionConfigurationEnabled(value:Bool):Void;
	function get_upgradeInfo():SP.UpgradeInfo;
	function get_upgradeReminderDate():Date;
	function get_upgrading():Bool;
	function get_url():String;
	function get_usage():SP.UsageInfo;
	function get_userCustomActions():SP.UserCustomActionCollection;
	function updateClientObjectModelUseRemoteAPIsPermissionSetting(requireUseRemoteAPIs:Bool):Void;
	function needsUpgradeByType(versionUpgrade:Bool, recursive:Bool):SP.BooleanResult;
	function runHealthCheck(ruleId:SP.Guid, bRepair:Bool, bRunAlways:Bool):SP.SiteHealth.SiteHealthSummary;
	function createPreviewSPSite(upgrade:Bool, sendemail:Bool):Void;
	function runUpgradeSiteSession(versionUpgrade:Bool, queueOnly:Bool, sendEmail:Bool):Void;
	function getChanges(query:SP.ChangeQuery):SP.ChangeCollection;
	function openWeb(strUrl:String):SP.Web;
	function openWebById(gWebId:SP.Guid):SP.Web;
	function getWebTemplates(LCID:Float, overrideCompatLevel:Float):SP.WebTemplateCollection;
	function getCustomListTemplates(web:SP.Web):SP.ListTemplateCollection;
	function getCatalog(typeCatalog:Float):SP.List;
	function extendUpgradeReminderDate():Void;
	function invalidate():Void;
}
extern class SiteUrl extends SP.ClientObject {

}
extern class SubwebQuery extends SP.ClientValueObject {
	function get_configurationFilter():Float;
	function set_configurationFilter(value:Float):Void;
	function get_webTemplateFilter():Float;
	function set_webTemplateFilter(value:Float):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract TemplateFileType(Int) {
	var standardPage = 0;
	var wikiPage = 1;
	var formPage = 2;
}
extern class ThemeInfo extends SP.ClientObject {
	function get_accessibleDescription():String;
	function get_themeBackgroundImageUri():String;
	function getThemeShadeByName(name:String):SP.StringResult;
	function getThemeFontByName(name:String, lcid:Float):SP.StringResult;
}
extern class TimeZone extends SP.ClientObject {
	function get_description():String;
	function get_id():Float;
	function get_information():SP.TimeZoneInformation;
	function localTimeToUTC(date:Date):SP.DateTimeResult;
	function utcToLocalTime(date:Date):SP.DateTimeResult;
}
extern class TimeZoneCollection extends SP.ClientObjectCollection<TimeZone> {
	function itemAt(index:Float):SP.TimeZone;
	function get_item(index:Float):SP.TimeZone;
	function getById(id:Float):SP.TimeZone;
}
extern class TimeZoneInformation extends SP.ClientValueObject {
	function get_bias():Float;
	function get_daylightBias():Float;
	function get_standardBias():Float;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class UpgradeInfo extends SP.ClientValueObject {
	function get_errorFile():String;
	function get_errors():Float;
	function get_lastUpdated():Date;
	function get_logFile():String;
	function get_requestDate():Date;
	function get_retryCount():Float;
	function get_startTime():Date;
	function get_status():SP.UpgradeStatus;
	function get_upgradeType():SP.UpgradeType;
	function get_warnings():Float;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract UpgradeStatus(Int) {
	var none = 0;
	var inProgress = 1;
	var failed = 2;
	var completed = 3;
}
@:enum abstract UpgradeType(Int) {
	var buildUpgrade = 0;
	var versionUpgrade = 1;
}
@:enum abstract UrlFieldFormatType(Int) {
	var hyperlink = 0;
	var image = 1;
}
@:enum abstract UrlZone(Int) {
	var defaultZone = 0;
	var intranet = 1;
	var internet = 2;
	var custom = 3;
	var extranet = 4;
}
extern class UsageInfo extends SP.ClientValueObject {
	function get_bandwidth():Float;
	function get_discussionStorage():Float;
	function get_hits():Float;
	function get_storage():Float;
	function get_storagePercentageUsed():Float;
	function get_visits():Float;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class User extends SP.Principal {
	function get_email():String;
	function set_email(value:String):Void;
	function get_groups():SP.GroupCollection;
	function get_isSiteAdmin():Bool;
	function set_isSiteAdmin(value:Bool):Void;
	function get_userId():SP.UserIdInfo;
	function update():Void;
}
extern class UserCollection extends SP.ClientObjectCollection<User> {
	function itemAt(index:Float):SP.User;
	function get_item(index:Float):SP.User;
	function getByLoginName(loginName:String):SP.User;
	function getById(id:Float):SP.User;
	function getByEmail(emailAddress:String):SP.User;
	function removeByLoginName(loginName:String):Void;
	function removeById(id:Float):Void;
	function remove(user:SP.User):Void;
	function add(parameters:SP.UserCreationInformation):SP.User;
	function addUser(user:SP.User):SP.User;
}
extern class UserCreationInformation extends SP.ClientValueObject {
	function get_email():String;
	function set_email(value:String):Void;
	function get_loginName():String;
	function set_loginName(value:String):Void;
	function get_title():String;
	function set_title(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class UserCustomAction extends SP.ClientObject {
	function get_commandUIExtension():String;
	function set_commandUIExtension(value:String):Void;
	function get_description():String;
	function set_description(value:String):Void;
	function get_group():String;
	function set_group(value:String):Void;
	function get_id():SP.Guid;
	function get_imageUrl():String;
	function set_imageUrl(value:String):Void;
	function get_location():String;
	function set_location(value:String):Void;
	function get_name():String;
	function set_name(value:String):Void;
	function get_registrationId():String;
	function set_registrationId(value:String):Void;
	function get_registrationType():SP.UserCustomActionRegistrationType;
	function set_registrationType(value:SP.UserCustomActionRegistrationType):Void;
	function get_rights():SP.BasePermissions;
	function set_rights(value:SP.BasePermissions):Void;
	function get_scope():SP.UserCustomActionScope;
	function get_scriptBlock():String;
	function set_scriptBlock(value:String):Void;
	function get_scriptSrc():String;
	function set_scriptSrc(value:String):Void;
	function get_sequence():Float;
	function set_sequence(value:Float):Void;
	function get_title():String;
	function set_title(value:String):Void;
	function get_url():String;
	function set_url(value:String):Void;
	function get_versionOfUserCustomAction():String;
	function update():Void;
	function deleteObject():Void;
}
extern class UserCustomActionCollection extends SP.ClientObjectCollection<UserCustomAction> {
	function itemAt(index:Float):SP.UserCustomAction;
	function get_item(index:Float):SP.UserCustomAction;
	function getById(id:SP.Guid):SP.UserCustomAction;
	function clear():Void;
	function add():SP.UserCustomAction;
}
@:enum abstract UserCustomActionRegistrationType(Int) {
	var none = 0;
	var list = 1;
	var contentType = 2;
	var progId = 3;
	var fileType = 4;
}
@:enum abstract UserCustomActionScope(Int) {
	var unknown = 0;
	var site = 1;
	var web = 2;
	var list = 3;
}
extern class UserIdInfo extends SP.ClientValueObject {
	function get_nameId():String;
	function get_nameIdIssuer():String;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class View extends SP.ClientObject {
	function get_aggregations():String;
	function set_aggregations(value:String):Void;
	function get_aggregationsStatus():String;
	function set_aggregationsStatus(value:String):Void;
	function get_baseViewId():String;
	function get_contentTypeId():SP.ContentTypeId;
	function set_contentTypeId(value:SP.ContentTypeId):Void;
	function get_defaultView():Bool;
	function set_defaultView(value:Bool):Void;
	function get_defaultViewForContentType():Bool;
	function set_defaultViewForContentType(value:Bool):Void;
	function get_editorModified():Bool;
	function set_editorModified(value:Bool):Void;
	function get_formats():String;
	function set_formats(value:String):Void;
	function get_hidden():Bool;
	function set_hidden(value:Bool):Void;
	function get_htmlSchemaXml():String;
	function get_id():SP.Guid;
	function get_imageUrl():String;
	function get_includeRootFolder():Bool;
	function set_includeRootFolder(value:Bool):Void;
	function get_viewJoins():String;
	function set_viewJoins(value:String):Void;
	function get_jSLink():String;
	function set_jSLink(value:String):Void;
	function get_listViewXml():String;
	function set_listViewXml(value:String):Void;
	function get_method():String;
	function set_method(value:String):Void;
	function get_mobileDefaultView():Bool;
	function set_mobileDefaultView(value:Bool):Void;
	function get_mobileView():Bool;
	function set_mobileView(value:Bool):Void;
	function get_moderationType():String;
	function get_orderedView():Bool;
	function get_paged():Bool;
	function set_paged(value:Bool):Void;
	function get_personalView():Bool;
	function get_viewProjectedFields():String;
	function set_viewProjectedFields(value:String):Void;
	function get_viewQuery():String;
	function set_viewQuery(value:String):Void;
	function get_readOnlyView():Bool;
	function get_requiresClientIntegration():Bool;
	function get_rowLimit():Float;
	function set_rowLimit(value:Float):Void;
	function get_scope():SP.ViewScope;
	function set_scope(value:SP.ViewScope):Void;
	function get_serverRelativeUrl():String;
	function get_styleId():String;
	function get_threaded():Bool;
	function get_title():String;
	function set_title(value:String):Void;
	function get_toolbar():String;
	function set_toolbar(value:String):Void;
	function get_toolbarTemplateName():String;
	function get_viewType():String;
	function get_viewData():String;
	function set_viewData(value:String):Void;
	function get_viewFields():SP.ViewFieldCollection;
	function deleteObject():Void;
	function renderAsHtml():SP.StringResult;
	function update():Void;
}
extern class ViewCollection extends SP.ClientObjectCollection<View> {
	function itemAt(index:Float):SP.View;
	function get_item(index:Float):SP.View;
	function getByTitle(strTitle:String):SP.View;
	function getById(guidId:SP.Guid):SP.View;
	function add(parameters:SP.ViewCreationInformation):SP.View;
}
extern class ViewCreationInformation extends SP.ClientValueObject {
	function get_paged():Bool;
	function set_paged(value:Bool):Void;
	function get_personalView():Bool;
	function set_personalView(value:Bool):Void;
	function get_query():String;
	function set_query(value:String):Void;
	function get_rowLimit():Float;
	function set_rowLimit(value:Float):Void;
	function get_setAsDefaultView():Bool;
	function set_setAsDefaultView(value:Bool):Void;
	function get_title():String;
	function set_title(value:String):Void;
	function get_viewFields():Array<String>;
	function set_viewFields(value:Array<String>):Void;
	function get_viewTypeKind():SP.ViewType;
	function set_viewTypeKind(value:SP.ViewType):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class ViewFieldCollection extends SP.ClientObjectCollection<String> {
	function itemAt(index:Float):String;
	function get_item(index:Float):String;
	function get_schemaXml():String;
	function moveFieldTo(field:String, index:Float):Void;
	function add(strField:String):Void;
	function remove(strField:String):Void;
	function removeAll():Void;
}
@:enum abstract ViewScope(Int) {
	var defaultValue = 0;
	var recursive = 1;
	var recursiveAll = 2;
	var filesOnly = 3;
}
@:enum abstract ViewType(Int) {
	var none = 0;
	var html = 1;
	var grid = 2;
	var calendar = 3;
	var recurrence = 4;
	var chart = 5;
	var gantt = 6;
}
extern class Web extends SP.SecurableObject {
	function get_allowDesignerForCurrentUser():Bool;
	function get_allowMasterPageEditingForCurrentUser():Bool;
	function get_allowRevertFromTemplateForCurrentUser():Bool;
	function get_allowRssFeeds():Bool;
	function get_allProperties():SP.PropertyValues;
	function get_appInstanceId():SP.Guid;
	function get_associatedMemberGroup():SP.Group;
	function set_associatedMemberGroup(value:SP.Group):Void;
	function get_associatedOwnerGroup():SP.Group;
	function set_associatedOwnerGroup(value:SP.Group):Void;
	function get_associatedVisitorGroup():SP.Group;
	function set_associatedVisitorGroup(value:SP.Group):Void;
	function get_availableContentTypes():SP.ContentTypeCollection;
	function get_availableFields():SP.FieldCollection;
	function get_configuration():Float;
	function get_contentTypes():SP.ContentTypeCollection;
	function get_created():Date;
	function get_currentUser():SP.User;
	function get_customMasterUrl():String;
	function set_customMasterUrl(value:String):Void;
	function get_description():String;
	function set_description(value:String):Void;
	function get_documentLibraryCalloutOfficeWebAppPreviewersDisabled():Bool;
	function get_effectiveBasePermissions():SP.BasePermissions;
	function get_enableMinimalDownload():Bool;
	function set_enableMinimalDownload(value:Bool):Void;
	function get_eventReceivers():SP.EventReceiverDefinitionCollection;
	function get_features():SP.FeatureCollection;
	function get_fields():SP.FieldCollection;
	function get_folders():SP.FolderCollection;
	function get_id():SP.Guid;
	function get_language():Float;
	function get_lastItemModifiedDate():Date;
	function get_lists():SP.ListCollection;
	function get_listTemplates():SP.ListTemplateCollection;
	function get_masterUrl():String;
	function set_masterUrl(value:String):Void;
	function get_navigation():SP.Navigation;
	function get_parentWeb():SP.WebInformation;
	function get_pushNotificationSubscribers():SP.PushNotificationSubscriberCollection;
	function get_quickLaunchEnabled():Bool;
	function set_quickLaunchEnabled(value:Bool):Void;
	function get_recycleBin():SP.RecycleBinItemCollection;
	function get_recycleBinEnabled():Bool;
	function get_regionalSettings():SP.RegionalSettings;
	function get_roleDefinitions():SP.RoleDefinitionCollection;
	function get_rootFolder():SP.Folder;
	function get_saveSiteAsTemplateEnabled():Bool;
	function set_saveSiteAsTemplateEnabled(value:Bool):Void;
	function get_serverRelativeUrl():String;
	function set_serverRelativeUrl(value:String):Void;
	function get_showUrlStructureForCurrentUser():Bool;
	function get_siteGroups():SP.GroupCollection;
	function get_siteUserInfoList():SP.List;
	function get_siteUsers():SP.UserCollection;
	function get_supportedUILanguageIds():Array<Float>;
	function get_syndicationEnabled():Bool;
	function set_syndicationEnabled(value:Bool):Void;
	function get_themeInfo():SP.ThemeInfo;
	function get_title():String;
	function set_title(value:String):Void;
	function get_treeViewEnabled():Bool;
	function set_treeViewEnabled(value:Bool):Void;
	function get_uIVersion():Float;
	function set_uIVersion(value:Float):Void;
	function get_uIVersionConfigurationEnabled():Bool;
	function set_uIVersionConfigurationEnabled(value:Bool):Void;
	function get_url():String;
	function get_userCustomActions():SP.UserCustomActionCollection;
	function get_webs():SP.WebCollection;
	function get_webTemplate():String;
	function get_workflowAssociations():SP.Workflow.WorkflowAssociationCollection;
	function get_workflowTemplates():SP.Workflow.WorkflowTemplateCollection;
	function doesUserHavePermissions(permissionMask:SP.BasePermissions):SP.BooleanResult;
	function getUserEffectivePermissions(userName:String):SP.BasePermissions;
	function mapToIcon(fileName:String, progId:String, size:SP.Utilities.IconSize):SP.StringResult;
	function registerPushNotificationSubscriber(deviceAppInstanceId:SP.Guid, serviceToken:String):SP.PushNotificationSubscriber;
	function unregisterPushNotificationSubscriber(deviceAppInstanceId:SP.Guid):Void;
	function getPushNotificationSubscribersByArgs(customArgs:String):SP.PushNotificationSubscriberCollection;
	function getPushNotificationSubscribersByUser(userName:String):SP.PushNotificationSubscriberCollection;
	function doesPushNotificationSubscriberExist(deviceAppInstanceId:SP.Guid):SP.BooleanResult;
	function getPushNotificationSubscriber(deviceAppInstanceId:SP.Guid):SP.PushNotificationSubscriber;
	function getUserById(userId:Float):SP.User;
	function getAvailableWebTemplates(lcid:Float, doIncludeCrossLanguage:Bool):SP.WebTemplateCollection;
	function getCatalog(typeCatalog:Float):SP.List;
	function getChanges(query:SP.ChangeQuery):SP.ChangeCollection;
	function applyWebTemplate(webTemplate:String):Void;
	function deleteObject():Void;
	function update():Void;
	function getFileByServerRelativeUrl(serverRelativeUrl:String):SP.File;
	function getFolderByServerRelativeUrl(serverRelativeUrl:String):SP.Folder;
	function getEntity(namespace:String, name:String):SP.BusinessData.Entity;
	function getAppBdcCatalogForAppInstance(appInstanceId:SP.Guid):SP.BusinessData.AppBdcCatalog;
	function getAppBdcCatalog():SP.BusinessData.AppBdcCatalog;
	function getSubwebsForCurrentUser(query:SP.SubwebQuery):SP.WebCollection;
	function getAppInstanceById(appInstanceId:SP.Guid):SP.AppInstance;
	function getAppInstancesByProductId(productId:SP.Guid):SP.ClientObjectList<SP.AppInstance>;
	function loadAndInstallAppInSpecifiedLocale(appPackageStream:Array<Dynamic>, installationLocaleLCID:Float):SP.AppInstance;
	function loadApp(appPackageStream:Array<Dynamic>, installationLocaleLCID:Float):SP.AppInstance;
	function loadAndInstallApp(appPackageStream:Array<Dynamic>):SP.AppInstance;
	function ensureUser(logonName:String):SP.User;
	function applyTheme(colorPaletteUrl:String, fontSchemeUrl:String, backgroundImageUrl:String, shareGenerated:Bool):Void;
}
extern class WebCollection extends SP.ClientObjectCollection<Web> {
	function itemAt(index:Float):SP.Web;
	function get_item(index:Float):SP.Web;
	function add(parameters:SP.WebCreationInformation):SP.Web;
}
extern class WebCreationInformation extends SP.ClientValueObject {
	function get_description():String;
	function set_description(value:String):Void;
	function get_language():Float;
	function set_language(value:Float):Void;
	function get_title():String;
	function set_title(value:String):Void;
	function get_url():String;
	function set_url(value:String):Void;
	function get_useSamePermissionsAsParentSite():Bool;
	function set_useSamePermissionsAsParentSite(value:Bool):Void;
	function get_webTemplate():String;
	function set_webTemplate(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class WebInformation extends SP.ClientObject {
	function get_configuration():Float;
	function get_created():Date;
	function get_description():String;
	function get_id():SP.Guid;
	function get_language():Float;
	function get_lastItemModifiedDate():Date;
	function get_serverRelativeUrl():String;
	function get_title():String;
	function get_webTemplate():String;
	function get_webTemplateId():Float;
}
extern class WebProxy {
	static function invoke(context:SP.ClientRuntimeContext, requestInfo:SP.WebRequestInfo):SP.WebResponseInfo;
}
extern class WebRequestInfo extends SP.ClientValueObject {
	function get_body():String;
	function set_body(value:String):Void;
	function get_headers():Dynamic;
	function set_headers(value:Dynamic):Void;
	function get_method():String;
	function set_method(value:String):Void;
	function get_url():String;
	function set_url(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class WebResponseInfo extends SP.ClientValueObject {
	function get_body():String;
	function set_body(value:String):Void;
	function get_headers():Dynamic;
	function set_headers(value:Dynamic):Void;
	function get_statusCode():Float;
	function set_statusCode(value:Float):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class WebTemplate extends SP.ClientObject {
	function get_description():String;
	function get_displayCategory():String;
	function get_id():Float;
	function get_imageUrl():String;
	function get_isHidden():Bool;
	function get_isRootWebOnly():Bool;
	function get_isSubWebOnly():Bool;
	function get_lcid():Float;
	function get_name():String;
	function get_title():String;
}
extern class WebTemplateCollection extends SP.ClientObjectCollection<WebTemplate> {
	function itemAt(index:Float):SP.WebTemplate;
	function get_item(index:Float):SP.WebTemplate;
	function getByName(name:String):SP.WebTemplate;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
extern class SPTopLevel {
	static var m$ : MQuery;
}
