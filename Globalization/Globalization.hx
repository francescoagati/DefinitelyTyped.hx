typedef Navigator = {
	var globalization : Globalization;
};
typedef Globalization = {
	function getPreferredLanguage(onSuccess:{ var value : String; } -> Void, onError:GlobalizationError -> Void):Void;
	function getLocaleName(onSuccess:{ var value : String; } -> Void, onError:GlobalizationError -> Void):Void;
	function dateToString(date:Date, onSuccess:{ var value : String; } -> Void, onError:GlobalizationError -> Void, ?options:{ @:optional
	var type : String; @:optional
	var item : String; }):Void;
	function stringToDate(dateString:String, onSuccess:GlobalizationDate -> Void, onError:GlobalizationError -> Void, ?options:{ @:optional
	var type : String; @:optional
	var item : String; }):Void;
	function getDatePattern(onSuccess:GlobalizationDatePattern -> Void, onError:GlobalizationError -> Void, ?options:{ @:optional
	var type : String; @:optional
	var item : String; }):Void;
	function getDateNames(onSuccess:{ var value : Array<String>; } -> Void, onError:GlobalizationError -> Void, ?options:{ @:optional
	var type : String; @:optional
	var item : String; }):Void;
	function isDaylightSavingsTime(date:Date, onSuccess:{ var dst : Bool; } -> Void, onError:GlobalizationError -> Void):Void;
	function getFirstDayOfWeek(onSuccess:{ var value : Float; } -> Void, onError:GlobalizationError -> Void):Void;
	function nubmerToString(value:Float, onSuccess:{ var value : String; } -> Void, onError:GlobalizationError -> Void, ?format:{ @:optional
	var type : String; }):Void;
	function stringToNumber(value:String, onSuccess:{ var value : Float; } -> Void, onError:GlobalizationError -> Void, ?format:{ @:optional
	var type : String; }):Void;
	function getNumberPattern(onSuccess:GlobalizationNumberPattern -> Void, onError:GlobalizationError -> Void, ?format:{ @:optional
	var type : String; }):Void;
	function getCurrencyPattern(currencyCode:String, onSuccess:GlobalizationCurrencyPattern -> Void, onError:GlobalizationError -> Void):Void;
};
typedef GlobalizationDate = {
	var year : Float;
	var month : Float;
	var day : Float;
	var hour : Float;
	var minute : Float;
	var second : Float;
	var millisecond : Float;
};
typedef GlobalizationDatePattern = {
	var pattern : String;
	var timezone : String;
	var utc_offset : Float;
	var dst_offset : Float;
};
typedef GlobalizationDateNameOptions = {
	@:optional
	var type : String;
	@:optional
	var item : String;
};
typedef GlobalizationNumberPattern = {
	var pattern : String;
	var symbol : String;
	var fraction : Float;
	var rounding : Float;
	var positive : String;
	var negative : String;
	var decimal : String;
	var grouping : String;
};
typedef GlobalizationCurrencyPattern = {
	var pattern : String;
	var code : String;
	var fraction : Float;
	var rounding : Float;
	var decimal : String;
	var grouping : String;
};
typedef GlobalizationError = {
	var code : Float;
	var message : String;
};
extern class GlobalizationTopLevel {
	static var GlobalizationError : { var UNKNOWN_ERROR : Float; var FORMATTING_ERROR : Float; var PARSING_ERROR : Float; var PATTERN_ERROR : Float; };
}
