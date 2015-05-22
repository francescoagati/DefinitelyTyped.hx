extern class SymbolStyler {
	var activeTab : String;
	@:overload(function(params:esri.SymbolStylerOptions, srcNodeRef:String):Void { })
	function new(params:esri.SymbolStylerOptions, srcNodeRef:Node):Void;
	function edit(symbol:Symbol, options:Dynamic):Void;
	function getStyle():Dynamic;
	function startup():Void;
	function storeColors():Void;
}
