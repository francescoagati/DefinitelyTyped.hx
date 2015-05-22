extern class ExternalSubscriptionStore extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext, web:SP.Web):Void;
	static function newObject(context:SP.ClientRuntimeContext, web:SP.Web):SP.BusinessData.Infrastructure.ExternalSubscriptionStore;
	function indexStore():Void;
}
