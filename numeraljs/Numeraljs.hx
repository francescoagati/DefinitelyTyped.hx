typedef NumeralJSLanguage = {
	var delimiters : { var thousands : String; var decimal : String; };
	var abbreviations : { var thousand : String; var million : String; var billion : String; var trillion : String; };
	function ordinal(num:Float):String;
	var currency : { var symbol : String; };
};
typedef Numeral = {
	var version : String;
	var isNumeral : Bool;
	function language(key:String, ?values:NumeralJSLanguage):Numeral;
	function zeroFormat(format:String):String;
	function clone():Numeral;
	function format(inputString:String):String;
	function unformat(inputString:String):Float;
	function value():Float;
	function valueOf():Float;
	function set(value:Dynamic):Numeral;
	function add(value:Dynamic):Numeral;
	function subtract(value:Dynamic):Numeral;
	function multiply(value:Dynamic):Numeral;
	function divide(value:Dynamic):Numeral;
	function difference(value:Dynamic):Float;
};
extern class NumeraljsTopLevel {
	static var numeral : Numeral;
}
