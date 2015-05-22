@:enum abstract ExportStatus(Int) {
	var notStarted = 0;
	var started = 1;
	var complete = 2;
	var failed = 3;
}
extern class Case extends ClientObject {
	function new(context:ClientRuntimeContext, web:Web):Void;
	function getExportContent(sourceIds:Array<Float>):SP.StringResult;
}
extern class Export extends ClientObject {
	function new(context:ClientRuntimeContext, item:ListItem):Void;
	function get_status():ExportStatus;
	function set_status(value:ExportStatus):ExportStatus;
	function update():Void;
	function getExportContent():SP.StringResult;
}
