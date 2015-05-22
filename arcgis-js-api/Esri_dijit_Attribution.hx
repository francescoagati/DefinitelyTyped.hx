extern class Attribution {
	var itemDelimiter : String;
	var itemNodes : Dynamic;
	var listNode : HTMLSpanElement;
	var map : Map;
	@:overload(function(options:esri.AttributionOptions, srcNodeRef:String):Void { })
	function new(options:esri.AttributionOptions, srcNodeRef:Node):Void;
	function destroy():Void;
	function startup():Void;
}
