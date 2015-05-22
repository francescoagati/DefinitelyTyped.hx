extern class _ConditionExpr {
	function new():Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function toObject():Dynamic;
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
extern class _UniOpExpr {
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
extern class BooleanExpr {
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
extern class NumberExpr {
	function new(?dataValue:Dynamic, ?isColumn:Bool, ?convertArgs:Dynamic):Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function getValue():Dynamic;
	function toObject():String;
}
extern class DateExpr {
	function new(?dataValue:Dynamic, ?isColumn:Bool, ?convertArgs:Dynamic):Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function getValue():Dynamic;
	function toObject():Dynamic;
}
extern class StringExpr {
	function new(?dataValue:Dynamic, ?isColumn:Bool, ?convertArgs:Dynamic):Void;
	function applyRow(datarow:Dynamic, getter:{ }):Dynamic;
	function getName():Dynamic;
	function getValue():Dynamic;
	function toObject():String;
}
typedef _FilterExpr = {
	function BooleanExpr():Void;
	function Contains():Void;
	function DateExpr():Void;
	function EndsWith():Void;
	function EqualTo():Void;
	function IsEmpty():Void;
	function LargerThan():Void;
	function LargerThanOrEqualTo():Void;
	function LessThan():Void;
	function LessThanOrEqualTo():Void;
	function LogicALL():Void;
	function LogicAND():Void;
	function LogicANY():Void;
	function LogicNOT():Void;
	function LogicOR():Void;
	function LogicXOR():Void;
	function Matches():Void;
	function NumberExpr():Void;
	function StartsWith():Void;
	function StringExpr():Void;
	function TimeExpr():Void;
};
