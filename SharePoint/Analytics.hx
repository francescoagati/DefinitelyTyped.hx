extern class AnalyticsUsageEntry extends SP.ClientObject {
	static function logAnalyticsEvent(context:SP.ClientRuntimeContext, eventTypeId:Float, itemId:String):Void;
	static function logAnalyticsEvent2(context:SP.ClientRuntimeContext, eventTypeId:Float, itemId:String, rollupScopeId:SP.Guid, siteId:SP.Guid, userId:String):Void;
	static function logAnalyticsAppEvent(context:SP.ClientRuntimeContext, appEventTypeId:SP.Guid, itemId:String):Void;
	static function logAnalyticsAppEvent2(context:SP.ClientRuntimeContext, appEventTypeId:SP.Guid, itemId:String, rollupScopeId:SP.Guid, siteId:SP.Guid, userId:String):Void;
}
@:enum abstract EventTypeId(Int) {
	var none = 0;
	var first = 1;
	var view = 2;
	var recommendationView = 3;
	var recommendationClick = 4;
	var last = 5;
}
extern class AnalyticsItemData extends SP.ClientObject {
	var get_lastProcessingTime : Void -> Date;
	var get_totalHits : Void -> Float;
	var get_totalUniqueUsers : Void -> Float;
	var getHitCountForDay : Date -> Float;
	var getUniqueUsersCountForDay : Date -> Float;
	var getHitCountForMonth : Date -> Float;
	var getUniqueUsersCountForMonth : Date -> Float;
}
extern class UsageAnalytics extends SP.ClientObject {
	var getAnalyticsItemData : Float -> SP.ListItem -> AnalyticsItemData;
	var getAnalyticsItemDataForApplicationEventType : SP.Guid -> SP.ListItem -> AnalyticsItemData;
	var deleteStandardEventUsageData : Float -> Void;
	var deleteCustomEventUsageData : SP.Guid -> Void;
}
