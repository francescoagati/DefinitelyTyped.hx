extern class LimitedWebPartManager extends SP.ClientObject {
	function get_hasPersonalizedParts():Bool;
	function get_scope():SP.WebParts.PersonalizationScope;
	function get_webParts():SP.WebParts.WebPartDefinitionCollection;
	function addWebPart(webPart:SP.WebParts.WebPart, zoneId:String, zoneIndex:Float):SP.WebParts.WebPartDefinition;
	function importWebPart(webPartXml:String):SP.WebParts.WebPartDefinition;
}
@:enum abstract PersonalizationScope(Int) {
	var user = 0;
	var shared = 1;
}
extern class TileData extends SP.ClientValueObject {
	function get_backgroundImageLocation():String;
	function set_backgroundImageLocation(value:String):Void;
	function get_description():String;
	function set_description(value:String):Void;
	function get_iD():Float;
	function set_iD(value:Float):Void;
	function get_linkLocation():String;
	function set_linkLocation(value:String):Void;
	function get_tileOrder():Float;
	function set_tileOrder(value:Float):Void;
	function get_title():String;
	function set_title(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class WebPart extends SP.ClientObject {
	function get_hidden():Bool;
	function set_hidden(value:Bool):Void;
	function get_isClosed():Bool;
	function get_properties():SP.PropertyValues;
	function get_subtitle():String;
	function get_title():String;
	function set_title(value:String):Void;
	function get_titleUrl():String;
	function set_titleUrl(value:String):Void;
	function get_zoneIndex():Float;
}
extern class WebPartDefinition extends SP.ClientObject {
	function get_id():SP.Guid;
	function get_webPart():SP.WebParts.WebPart;
	function saveWebPartChanges():Void;
	function closeWebPart():Void;
	function openWebPart():Void;
	function deleteWebPart():Void;
	function moveWebPartTo(zoneID:String, zoneIndex:Float):Void;
}
extern class WebPartDefinitionCollection extends SP.ClientObjectCollection<WebPartDefinition> {
	function itemAt(index:Float):SP.WebParts.WebPartDefinition;
	function get_item(index:Float):SP.WebParts.WebPartDefinition;
	function getById(id:SP.Guid):SP.WebParts.WebPartDefinition;
	function getByControlId(controlId:String):SP.WebParts.WebPartDefinition;
}
