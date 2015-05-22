extern class TimeRampAger extends SymbolAger {
	function new(?colorRange:Array<Color>, ?sizeRange:Array<Float>, ?alphaRange:Array<Float>):Void;
	function getAgedSymbol(symbol:Symbol, graphic:Graphic):Symbol;
}
