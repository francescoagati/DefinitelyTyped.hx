extern class DocumentSharingManager {
	static function getRoleDefinition(context:SP.ClientRuntimeContext, role:SP.Sharing.Role):SP.RoleDefinition;
	static function isDocumentSharingEnabled(context:SP.ClientRuntimeContext, list:SP.List):SP.BooleanResult;
	static function updateDocumentSharingInfo(context:SP.ClientRuntimeContext, resourceAddress:String, userRoleAssignments:Array<SP.Sharing.UserRoleAssignment>, validateExistingPermissions:Bool, additiveMode:Bool, sendServerManagedNotification:Bool, customMessage:String, includeAnonymousLinksInNotification:Bool):Array<SP.Sharing.UserSharingResult>;
}
@:enum abstract Role(Int) {
	var none = 0;
	var view = 1;
	var edit = 2;
	var owner = 3;
}
extern class UserRoleAssignment extends SP.ClientValueObject {
	function get_role():SP.Sharing.Role;
	function set_role(value:SP.Sharing.Role):Void;
	function get_userId():String;
	function set_userId(value:String):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
extern class UserSharingResult extends SP.ClientValueObject {
	function get_allowedRoles():Array<SP.Sharing.Role>;
	function get_currentRole():SP.Sharing.Role;
	function get_isUserKnown():Bool;
	function get_message():String;
	function get_status():Bool;
	function get_user():String;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
