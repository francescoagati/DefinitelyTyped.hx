extern class _DataExpr {
	function new(?dataValue:Dynamic, ?isColumn:Bool, ?convertArgs:Dynamic):Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function getValue():Dynamic;
	function toObject():String;
}
extern class _BiOpExpr {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class _OperatorExpr {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class _ConditionExpr {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class _UniOpExpr {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
typedef _DataExprs = {
	function BooleanExpr():Void;
	function DateExpr():Void;
	function NumberExpr():Void;
	function StringExpr():Void;
	function TimeExpr():Void;
};
