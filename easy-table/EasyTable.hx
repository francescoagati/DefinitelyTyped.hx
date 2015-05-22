typedef CellPrinter = {
	>haxe.Constraints.Function,
};
typedef Printer = {
	>haxe.Constraints.Function,
};
typedef Accumulator = {
	>haxe.Constraints.Function,
};
extern class EasyTableTopLevel {
	static function printArray(array:Array<Dynamic>, ?cellPrinter:CellPrinter, ?tablePrinter:Printer):String;
	static function printObject(object:Dynamic, ?cellPrinter:CellPrinter, ?tablePrinter:Printer):String;
	static function Number(length:Float):CellPrinter;
	static function RightPadder(char:String):CellPrinter;
	static function LeftPadder(char:String):CellPrinter;
}
