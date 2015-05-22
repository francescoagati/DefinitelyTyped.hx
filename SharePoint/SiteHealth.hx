extern class SiteHealthResult extends SP.ClientValueObject {
	function get_messageAsText():String;
	function get_ruleHelpLink():String;
	function get_ruleId():SP.Guid;
	function get_ruleIsRepairable():Bool;
	function get_ruleName():String;
	function get_status():SP.SiteHealth.SiteHealthStatusType;
	function set_status(value:SP.SiteHealth.SiteHealthStatusType):Void;
	function get_timeStamp():Date;
	function set_timeStamp(value:Date):Void;
	function get_typeId():String;
	function writeToXml(writer:SP.XmlWriter, serializationContext:SP.SerializationContext):Void;
	function new():Void;
}
@:enum abstract SiteHealthStatusType(Int) {
	var passed = 0;
	var failedWarning = 1;
	var failedError = 2;
}
extern class SiteHealthSummary extends SP.ClientObject {
	function get_failedErrorCount():Float;
	function get_failedWarningCount():Float;
	function get_passedCount():Float;
	function get_results():Array<SP.SiteHealth.SiteHealthResult>;
}
