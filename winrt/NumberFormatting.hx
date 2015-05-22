typedef INumberFormatter = {
	function format(value:Float):String;
};
typedef INumberFormatter2 = {
	function formatInt(value:Float):String;
	function formatUInt(value:Float):String;
	function formatDouble(value:Float):String;
};
typedef INumberParser = {
	function parseInt(text:String):Float;
	function parseUInt(text:String):Float;
	function parseDouble(text:String):Float;
};
typedef INumberFormatterOptions = {
	var fractionDigits : Float;
	var geographicRegion : String;
	var integerDigits : Float;
	var isDecimalPointAlwaysDisplayed : Bool;
	var isGrouped : Bool;
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var numeralSystem : String;
	var resolvedGeographicRegion : String;
	var resolvedLanguage : String;
};
typedef IDecimalFormatterFactory = {
	function createDecimalFormatter(languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String):Windows.Globalization.NumberFormatting.DecimalFormatter;
};
extern class DecimalFormatter {
	@:overload(function():Void { })
	function new(languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String):Void;
	var fractionDigits : Float;
	var geographicRegion : String;
	var integerDigits : Float;
	var isDecimalPointAlwaysDisplayed : Bool;
	var isGrouped : Bool;
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var numeralSystem : String;
	var resolvedGeographicRegion : String;
	var resolvedLanguage : String;
	function format(value:Float):String;
	function formatInt(value:Float):String;
	function formatUInt(value:Float):String;
	function formatDouble(value:Float):String;
	function parseInt(text:String):Float;
	function parseUInt(text:String):Float;
	function parseDouble(text:String):Float;
}
typedef IPercentFormatterFactory = {
	function createPercentFormatter(languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String):Windows.Globalization.NumberFormatting.PercentFormatter;
};
extern class PercentFormatter {
	@:overload(function():Void { })
	function new(languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String):Void;
	var fractionDigits : Float;
	var geographicRegion : String;
	var integerDigits : Float;
	var isDecimalPointAlwaysDisplayed : Bool;
	var isGrouped : Bool;
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var numeralSystem : String;
	var resolvedGeographicRegion : String;
	var resolvedLanguage : String;
	function format(value:Float):String;
	function formatInt(value:Float):String;
	function formatUInt(value:Float):String;
	function formatDouble(value:Float):String;
	function parseInt(text:String):Float;
	function parseUInt(text:String):Float;
	function parseDouble(text:String):Float;
}
typedef IPermilleFormatterFactory = {
	function createPermilleFormatter(languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String):Windows.Globalization.NumberFormatting.PermilleFormatter;
};
extern class PermilleFormatter {
	@:overload(function():Void { })
	function new(languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String):Void;
	var fractionDigits : Float;
	var geographicRegion : String;
	var integerDigits : Float;
	var isDecimalPointAlwaysDisplayed : Bool;
	var isGrouped : Bool;
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var numeralSystem : String;
	var resolvedGeographicRegion : String;
	var resolvedLanguage : String;
	function format(value:Float):String;
	function formatInt(value:Float):String;
	function formatUInt(value:Float):String;
	function formatDouble(value:Float):String;
	function parseInt(text:String):Float;
	function parseUInt(text:String):Float;
	function parseDouble(text:String):Float;
}
typedef ICurrencyFormatterFactory = {
	function createCurrencyFormatterCode(currencyCode:String):Windows.Globalization.NumberFormatting.CurrencyFormatter;
	function createCurrencyFormatterCodeContext(currencyCode:String, languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String):Windows.Globalization.NumberFormatting.CurrencyFormatter;
};
extern class CurrencyFormatter {
	@:overload(function(currencyCode:String, languages:Windows.Foundation.Collections.IIterable<String>, geographicRegion:String):Void { })
	function new(currencyCode:String):Void;
	var currency : String;
	var fractionDigits : Float;
	var geographicRegion : String;
	var integerDigits : Float;
	var isDecimalPointAlwaysDisplayed : Bool;
	var isGrouped : Bool;
	var languages : Windows.Foundation.Collections.IVectorView<String>;
	var numeralSystem : String;
	var resolvedGeographicRegion : String;
	var resolvedLanguage : String;
	function format(value:Float):String;
	function formatInt(value:Float):String;
	function formatUInt(value:Float):String;
	function formatDouble(value:Float):String;
	function parseInt(text:String):Float;
	function parseUInt(text:String):Float;
	function parseDouble(text:String):Float;
}
typedef ICurrencyFormatter = {
	>Windows.Globalization.NumberFormatting.INumberFormatterOptions,
	>Windows.Globalization.NumberFormatting.INumberFormatter,
	>Windows.Globalization.NumberFormatting.INumberFormatter2,
	>Windows.Globalization.NumberFormatting.INumberParser,
	var currency : String;
};
