extern class Scalebar {
	@:overload(function(params:esri.ScalebarOptions, ?srcNodeRef:String):Void { })
	function new(params:esri.ScalebarOptions, ?srcNodeRef:Node):Void;
	function destroy():Void;
	function hide():Void;
	function show():Void;
	function startup():Void;
}
