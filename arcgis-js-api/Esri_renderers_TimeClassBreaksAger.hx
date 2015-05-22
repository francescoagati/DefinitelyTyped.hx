extern class TimeClassBreaksAger extends SymbolAger {
	static var UNIT_DAYS : Dynamic;
	static var UNIT_HOURS : Dynamic;
	static var UNIT_MILLISECONDS : Dynamic;
	static var UNIT_MINUTES : Dynamic;
	static var UNIT_MONTHS : Dynamic;
	static var UNIT_SECONDS : Dynamic;
	static var UNIT_WEEKS : Dynamic;
	static var UNIT_YEARS : Dynamic;
	function new(infos:Array<Dynamic>, ?timeUnits:String):Void;
	function getAgedSymbol(symbol:Symbol, graphic:Graphic):Symbol;
}
