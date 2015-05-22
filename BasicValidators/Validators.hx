extern class LettersOnlyValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class ZipCodeValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class EmailValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class UrlValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class RequiredValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class DateValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class DateISOValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class NumberValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class DigitValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class SignedDigitValidator {
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class MinLengthValidator {
	var MinLength : Float;
	function new(?MinLength:Float):Void;
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class MaxLengthValidator {
	var MaxLength : Float;
	function new(?MaxLength:Float):Void;
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class RangeLengthValidator {
	var RangeLength : Array<Float>;
	function new(?RangeLength:Array<Float>):Void;
	function isAcceptable(s:String):Bool;
	var MinLength : Float;
	var MaxLength : Float;
	var tagName : String;
}
extern class MinValidator {
	var Min : Float;
	function new(?Min:Float):Void;
	function isAcceptable(s:Dynamic):Bool;
	var tagName : String;
}
extern class MaxValidator {
	var Max : Float;
	function new(?Max:Float):Void;
	function isAcceptable(s:Dynamic):Bool;
	var tagName : String;
}
extern class RangeValidator {
	var Range : Array<Float>;
	function new(?Range:Array<Float>):Void;
	function isAcceptable(s:Dynamic):Bool;
	var Min : Float;
	var Max : Float;
	var tagName : String;
}
extern class StepValidator {
	var Step : String;
	function new(?Step:String):Void;
	function isAcceptable(s:Dynamic):Bool;
	var tagName : String;
}
extern class PatternValidator {
	var Pattern : String;
	function new(?Pattern:String):Void;
	function isAcceptable(s:String):Bool;
	var tagName : String;
}
extern class ContainsValidator {
	var Options : Q.Promise<Array<Dynamic>>;
	function new(Options:Q.Promise<Array<Dynamic>>):Void;
	function isAcceptable(s:String):Q.Promise<Bool>;
	var isAsync : Bool;
	var tagName : String;
}
