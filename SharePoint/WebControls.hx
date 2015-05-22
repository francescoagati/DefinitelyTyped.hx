extern class ControlMessage extends SP.ClientValueObject {
	var get_code : Void -> Float;
	var get_correlationID : Void -> String;
	var get_encodeDetails : Void -> Bool;
	var get_header : Void -> String;
	var get_level : Void -> MessageLevel;
	var get_messageDetails : Void -> String;
	var get_messageDetailsForViewers : Void -> String;
	var get_serverTypeId : Void -> String;
	var get_showForViewerUsers : Void -> Bool;
	var get_showInEditModeOnly : Void -> Bool;
	var get_stackTrace : Void -> String;
	var get_type : Void -> String;
}
@:enum abstract MessageLevel(Int) {
	var information = 0;
	var warning = 1;
	var error = 2;
}
