extern class SelectorSelectionEventArgs extends Sys.EventArgs {
	function new(entities:Dynamic):Void;
	function get_entities():Dynamic;
}
typedef ISelectorComponent = {
	function get_selectedEntities():Dynamic;
	function set_selectedEntities(value:Dynamic):Void;
	function get_callback():Dynamic -> Sys.EventArgs -> Void;
	function set_callback(value:Dynamic -> Sys.EventArgs -> Void):Void;
	function get_scopeKey():String;
	function get_componentType():SP.UI.ApplicationPages.SelectorType;
	function revertTo(ent:SP.UI.ApplicationPages.ResolveEntity):Void;
	function removeEntity(ent:SP.UI.ApplicationPages.ResolveEntity):Void;
	function setEntity(ent:SP.UI.ApplicationPages.ResolveEntity):Void;
};
@:enum abstract SelectorType(Int) {
	var none = 0;
	var resource = 1;
	var people = 2;
	var people_And_Resource = 3;
	var event = 4;
}
extern class CalendarSelector extends Sys.Component {
	static function instance():SP.UI.ApplicationPages.CalendarSelector;
	function registerSelector(selector:SP.UI.ApplicationPages.ISelectorComponent):Void;
	function getSelector(type:SP.UI.ApplicationPages.SelectorType, scopeKey:String):SP.UI.ApplicationPages.ISelectorComponent;
	function addHandler(scopeKey:String, people:Bool, resource:Bool, handler:Dynamic -> SP.UI.ApplicationPages.SelectorSelectionEventArgs -> Void):Void;
	function revertTo(scopeKey:String, ent:SP.UI.ApplicationPages.ResolveEntity):Void;
	function removeEntity(scopeKey:String, ent:SP.UI.ApplicationPages.ResolveEntity):Void;
	function new():Void;
}
extern class BaseSelectorComponent {
	function new(key:String, type:SP.UI.ApplicationPages.SelectorType):Void;
	function get_scopeKey():String;
	function get_componentType():SP.UI.ApplicationPages.SelectorType;
	function get_selectedEntities():Dynamic;
	function set_selectedEntities(value:Dynamic):Void;
	function get_callback():Dynamic -> Sys.EventArgs -> Void;
	function set_callback(value:Dynamic -> Sys.EventArgs -> Void):Void;
	function revertTo(ent:SP.UI.ApplicationPages.ResolveEntity):Void;
	function removeEntity(ent:SP.UI.ApplicationPages.ResolveEntity):Void;
	function setEntity(ent:SP.UI.ApplicationPages.ResolveEntity):Void;
}
typedef ICalendarController = {
	function moveToDate(date:String):Void;
	function moveToViewType(viewType:String):Void;
	function moveToViewDate(scope:SP.UI.ApplicationPages.CalendarScope, date:String):Void;
	function moveToView(scope:SP.UI.ApplicationPages.CalendarScope):Void;
	function expandAll():Void;
	function collapseAll():Void;
	function refreshItems():Void;
	function getActiveScope():SP.UI.ApplicationPages.CalendarScope;
	function newItemDialog(contentTypeId:String):Void;
	function deleteItem(itemId:String):Void;
};
@:enum abstract CalendarScope(Int) {
	var nothing = 0;
	var monthly = 1;
	var weeklyGroup = 2;
	var daily = 3;
	var weekly = 4;
	var dailyGroup = 5;
}
extern class CalendarInstanceRepository {
	static function registerInstance(instanceId:String, contoller:SP.UI.ApplicationPages.ICalendarController):Void;
	static function lookupInstance(instanceId:String):SP.UI.ApplicationPages.ICalendarController;
	static function firstInstance():SP.UI.ApplicationPages.ICalendarController;
}
extern class ResolveEntity {
	var tYPE_EVENT : String;
	var tYPE_USER : String;
	var tYPE_RESOURCE : String;
	var tYPE_EXCHANGE : String;
	var entityType : String;
	var displayName : String;
	var email : String;
	var accountName : String;
	var id : String;
	var members : Array<SP.UI.ApplicationPages.ResolveEntity>;
	var needResolve : Bool;
	var isGroup : Bool;
	function get_key():String;
	function new():Void;
}
extern class ClientPeoplePickerQueryParameters extends SP.ClientValueObject {
	function get_allowEmailAddresses():Bool;
	function set_allowEmailAddresses(value:Bool):Void;
	function get_allowMultipleEntities():Bool;
	function set_allowMultipleEntities(value:Bool):Void;
	function get_allUrlZones():Bool;
	function set_allUrlZones(value:Bool):Void;
	function get_enabledClaimProviders():String;
	function set_enabledClaimProviders(value:String):Void;
	function get_forceClaims():Bool;
	function set_forceClaims(value:Bool):Void;
	function get_maximumEntitySuggestions():Float;
	function set_maximumEntitySuggestions(value:Float):Void;
	function get_principalSource():SP.Utilities.PrincipalSource;
	function set_principalSource(value:SP.Utilities.PrincipalSource):Void;
	function get_principalType():SP.Utilities.PrincipalType;
	function set_principalType(value:SP.Utilities.PrincipalType):Void;
	function get_queryString():String;
	function set_queryString(value:String):Void;
	function get_required():Bool;
	function set_required(value:Bool):Void;
	function get_sharePointGroupID():Float;
	function set_sharePointGroupID(value:Float):Void;
	function get_urlZone():SP.UrlZone;
	function set_urlZone(value:SP.UrlZone):Void;
	function get_urlZoneSpecified():Bool;
	function set_urlZoneSpecified(value:Bool):Void;
	function get_web():SP.Web;
	function set_web(value:SP.Web):Void;
	function get_webApplicationID():SP.Guid;
	function set_webApplicationID(value:SP.Guid):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class ClientPeoplePickerWebServiceInterface {
	static function clientPeoplePickerSearchUser(context:SP.ClientRuntimeContext, queryParams:SP.UI.ApplicationPages.ClientPeoplePickerQueryParameters):SP.StringResult;
	static function clientPeoplePickerResolveUser(context:SP.ClientRuntimeContext, queryParams:SP.UI.ApplicationPages.ClientPeoplePickerQueryParameters):SP.StringResult;
}
extern class PeoplePickerWebServiceInterface {
	static function getSearchResultsByHierarchy(context:SP.ClientRuntimeContext, providerID:String, hierarchyNodeID:String, entityTypes:String, contextUrl:String):SP.StringResult;
	static function getSearchResults(context:SP.ClientRuntimeContext, searchPattern:String, providerID:String, hierarchyNodeID:String, entityTypes:String):SP.StringResult;
}
