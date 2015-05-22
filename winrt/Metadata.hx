extern class WebHostHiddenAttribute {

}
extern class VariantAttribute {

}
extern class HasVariantAttribute {

}
extern class DualApiPartitionAttribute {

}
extern class MuseAttribute {

}
@:enum abstract GCPressureAmount(Int) {
	var low = 0;
	var medium = 1;
	var high = 2;
}
extern class GCPressureAttribute {

}
extern class ActivatableAttribute {
	@:overload(function(type:String, version:Float):Void { })
	function new(version:Float):Void;
}
extern class VersionAttribute {
	function new(version:Float):Void;
}
extern class AllowMultipleAttribute {

}
extern class AttributeUsageAttribute {
	function new(targets:Windows.Foundation.Metadata.AttributeTargets):Void;
}
@:enum abstract AttributeTargets(Int) {
	var all = 0;
	var delegate = 1;
	var enum = 2;
	var event = 3;
	var field = 4;
	var interface = 5;
	var method = 6;
	var parameter = 7;
	var property = 8;
	var runtimeClass = 9;
	var struct = 10;
	var interfaceImpl = 11;
}
extern class DefaultOverloadAttribute {

}
extern class DefaultAttribute {

}
extern class GuidAttribute {
	function new(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float, g:Float, h:Float, i:Float, j:Float, k:Float):Void;
}
extern class ComposableAttribute {
	function new(type:String, compositionType:Windows.Foundation.Metadata.CompositionType, version:Float):Void;
}
@:enum abstract CompositionType(Int) {
	var protected = 0;
	var public = 1;
}
extern class OverloadAttribute {
	function new(method:String):Void;
}
extern class StaticAttribute {
	function new(type:String, version:Float):Void;
}
extern class OverridableAttribute {

}
extern class ProtectedAttribute {

}
extern class ThreadingAttribute {
	function new(model:Windows.Foundation.Metadata.ThreadingModel):Void;
}
@:enum abstract ThreadingModel(Int) {
	var sTA = 0;
	var mTA = 1;
	var both = 2;
	var invalidThreading = 3;
}
extern class MarshalingBehaviorAttribute {
	function new(behavior:Windows.Foundation.Metadata.MarshalingType):Void;
}
@:enum abstract MarshalingType(Int) {
	var none = 0;
	var agile = 1;
	var standard = 2;
	var invalidMarshaling = 3;
}
extern class ExclusiveToAttribute {
	function new(typeName:String):Void;
}
extern class LengthIsAttribute {
	function new(indexLengthParameter:Float):Void;
}
extern class RangeAttribute {
	function new(minValue:Float, maxValue:Float):Void;
}
