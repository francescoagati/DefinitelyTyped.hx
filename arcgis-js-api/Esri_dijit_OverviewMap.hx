extern class OverviewMap {
	@:overload(function(params:esri.OverviewMapOptions, srcNodeRef:String):Void { })
	function new(params:esri.OverviewMapOptions, srcNodeRef:Node):Void;
	function destroy():Void;
	function hide():Void;
	function resize(size:Dynamic):Void;
	function show():Void;
	function startup():Void;
}
