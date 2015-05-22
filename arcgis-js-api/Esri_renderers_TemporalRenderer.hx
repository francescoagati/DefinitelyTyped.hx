extern class TemporalRenderer extends Renderer {
	function new(observationRenderer:Renderer, ?latestObservationRenderer:Renderer, ?trackRenderer:Renderer, ?observationAger:SymbolAger):Void;
	function getSymbol(graphic:Graphic):Symbol;
}
