extern class ClassBreaksDefinition extends ClassificationDefinition {
	var baseSymbol : Symbol;
	var breakCount : Float;
	var classificationField : String;
	var classificationMethod : String;
	var colorRamp : ColorRamp;
	var normalizationField : String;
	var normalizationType : String;
	var standardDeviationInterval : Float;
	function new():Void;
	function toJson():Dynamic;
}
