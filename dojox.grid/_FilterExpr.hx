extern class _BiOpExpr {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class _DataExpr {
	function new(?dataValue:Dynamic, ?isColumn:Bool, ?convertArgs:Dynamic):Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function getValue():Dynamic;
	function toObject():String;
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
extern class Contains {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class DateExpr {
	function new(?dataValue:Dynamic, ?isColumn:Bool, ?convertArgs:Dynamic):Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function getValue():Dynamic;
	function toObject():Dynamic;
}
extern class EndsWith {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class IsEmpty {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class BooleanExpr {
	function new(?dataValue:Dynamic, ?isColumn:Bool, ?convertArgs:Dynamic):Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function getValue():Dynamic;
	function toObject():String;
}
extern class LargerThan {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class EqualTo {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class LargerThanOrEqualTo {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class LessThan {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class LogicANY {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class LogicAND {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class LessThanOrEqualTo {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class LogicNOT {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class LogicALL {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class LogicOR {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class Matches {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class LogicXOR {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class StringExpr {
	function new(?dataValue:Dynamic, ?isColumn:Bool, ?convertArgs:Dynamic):Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function getValue():Dynamic;
	function toObject():String;
}
extern class TimeExpr {
	function new(?dataValue:Dynamic, ?isColumn:Bool, ?convertArgs:Dynamic):Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function getValue():Dynamic;
	function toObject():Dynamic;
}
extern class StartsWith {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
}
extern class NumberExpr {
	function new(?dataValue:Dynamic, ?isColumn:Bool, ?convertArgs:Dynamic):Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function getValue():Dynamic;
	function toObject():String;
}
typedef FilterLayer = {
	function ClientSideFilterLayer():Void;
	function ServerSideFilterLayer():Void;
	function wrap(store:Dynamic, funcName:Dynamic, layer:dojox.grid.enhanced.plugins._StoreLayer._StoreLayer, layerFuncName:Dynamic):Dynamic;
};
