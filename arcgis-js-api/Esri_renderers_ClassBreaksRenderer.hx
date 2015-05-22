extern class ClassBreaksRenderer extends Renderer {
	var attributeField : String;
	var backgroundFillSymbol : FillSymbol;
	var breaks : Array<Dynamic>;
	var classificationMethod : String;
	var defaultSymbol : Symbol;
	var infos : Array<Dynamic>;
	var isMaxInclusive : Bool;
	var normalizationField : String;
	var normalizationTotal : Float;
	var normalizationType : String;
	@:overload(function(defaultSymbol:Symbol, attributeField:haxe.Constraints.Function):Void { })
	@:overload(function(json:Dynamic):Void { })
	function new(defaultSymbol:Symbol, attributeField:String):Void;
	@:overload(function(minValueOrInfo:Dynamic, ?maxValue:Float, ?symbol:Symbol):Void { })
	function addBreak(minValueOrInfo:Float, ?maxValue:Float, ?symbol:Symbol):Void;
	function clearBreaks():Void;
	function getBreakIndex(graphic:Graphic):Float;
	function getBreakInfo(graphic:Graphic):Dynamic;
	function removeBreak(minValue:Float, maxValue:Float):Void;
	function setMaxInclusive(enable:Bool):Void;
}
