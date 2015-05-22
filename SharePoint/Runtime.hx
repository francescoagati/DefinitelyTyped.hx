@:enum abstract EntityEventType(Int) {
	var none = 0;
	var itemAdded = 1;
	var itemUpdated = 2;
	var itemDeleted = 3;
}
extern class EntityFieldValueDictionary extends SP.ClientObject {
	function get_fieldValues():Dynamic;
	function get_item(fieldName:String):Dynamic;
	function set_item(fieldName:String, value:Dynamic):Void;
	function refreshLoad():Void;
	function fromXml(xml:String):Void;
	function toXml():SP.StringResult;
	function createInstance(fieldInstanceDotNotation:String, fieldDotNotation:String):Void;
	function createCollectionInstance(fieldDotNotation:String, size:Float):Void;
	function getCollectionSize(fieldDotNotation:String):SP.IntResult;
}
extern class EntityIdentity extends SP.ClientObject {
	function get_fieldValues():Dynamic;
	function get_item(fieldName:String):Dynamic;
	function new(context:SP.ClientRuntimeContext, identifierValues:Array<Dynamic>):Void;
	function get_identifierCount():Float;
	static function newObject(context:SP.ClientRuntimeContext, identifierValues:Array<Dynamic>):SP.BusinessData.Runtime.EntityIdentity;
	function refreshLoad():Void;
}
extern class EntityInstance extends SP.ClientObject {
	function get_fieldValues():Dynamic;
	function get_item(fieldName:String):Dynamic;
	function set_item(fieldName:String, value:Dynamic):Void;
	function refreshLoad():Void;
	function createInstance(fieldInstanceDotNotation:String, fieldDotNotation:String):Void;
	function createCollectionInstance(fieldDotNotation:String, size:Float):Void;
	function getIdentity():SP.BusinessData.Runtime.EntityIdentity;
	function deleteObject():Void;
	function update():Void;
	function fromXml(xml:String):Void;
	function toXml():SP.StringResult;
}
extern class NotificationCallback extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext, notificationEndpoint:String):Void;
	function get_notificationContext():String;
	function set_notificationContext(value:String):Void;
	function get_notificationEndpoint():String;
	function get_notificationForwarderType():String;
	function set_notificationForwarderType(value:String):Void;
	static function newObject(context:SP.ClientRuntimeContext, notificationEndpoint:String):SP.BusinessData.Runtime.NotificationCallback;
}
extern class Subscription extends SP.ClientObject {
	function new(context:SP.ClientRuntimeContext, id:Dynamic, hash:String):Void;
	function get_hash():String;
	function get_iD():Dynamic;
	static function newObject(context:SP.ClientRuntimeContext, id:Dynamic, hash:String):SP.BusinessData.Runtime.Subscription;
}
