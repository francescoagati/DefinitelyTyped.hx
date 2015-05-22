typedef IAccountingCurrencyFormat = {
	var pos : String;
	@:optional
	var neg : String;
	@:optional
	var zero : String;
};
typedef IAccountingCurrencySettings<TFormat> = {
	@:optional
	var symbol : String;
	@:optional
	var format : TFormat;
	@:optional
	var decimal : String;
	@:optional
	var thousand : String;
	@:optional
	var precision : Float;
};
typedef IAccountingNumberSettings = {
	@:optional
	var precision : Float;
	@:optional
	var thousand : String;
	@:optional
	var decimal : String;
};
typedef IAccountingSettings = {
	var currency : IAccountingCurrencySettings<Dynamic>;
	var number : IAccountingNumberSettings;
};
typedef IAccountingStatic = {
	@:overload(function(number:Float, options:IAccountingCurrencySettings<String>):String { })
	@:overload(function(number:Float, options:IAccountingCurrencySettings<IAccountingCurrencyFormat>):String { })
	@:overload(function(numbers:Array<Float>, ?symbol:String, ?precision:Float, ?thousand:String, ?decimal:String, ?format:String):Array<String> { })
	@:overload(function(numbers:Array<Float>, options:IAccountingCurrencySettings<String>):Array<String> { })
	@:overload(function(numbers:Array<Float>, options:IAccountingCurrencySettings<IAccountingCurrencyFormat>):Array<String> { })
	@:overload(function(numbers:Array<Dynamic>, ?symbol:String, ?precision:Float, ?thousand:String, ?decimal:String, ?format:String):Array<Dynamic> { })
	@:overload(function(numbers:Array<Dynamic>, options:IAccountingCurrencySettings<String>):Array<Dynamic> { })
	@:overload(function(numbers:Array<Dynamic>, options:IAccountingCurrencySettings<IAccountingCurrencyFormat>):Array<Dynamic> { })
	function formatMoney(number:Float, ?symbol:String, ?precision:Float, ?thousand:String, ?decimal:String, ?format:String):String;
	@:overload(function(numbers:Array<Float>, options:IAccountingCurrencySettings<String>):Array<String> { })
	@:overload(function(numbers:Array<Float>, options:IAccountingCurrencySettings<IAccountingCurrencyFormat>):Array<String> { })
	@:overload(function(numbers:Array<Array<Float>>, ?symbol:String, ?precision:Float, ?thousand:String, ?decimal:String, ?format:String):Array<Array<String>> { })
	@:overload(function(numbers:Array<Array<Float>>, options:IAccountingCurrencySettings<String>):Array<Array<String>> { })
	@:overload(function(numbers:Array<Array<Float>>, options:IAccountingCurrencySettings<IAccountingCurrencyFormat>):Array<Array<String>> { })
	function formatColumn(numbers:Array<Float>, ?symbol:String, ?precision:Float, ?thousand:String, ?decimal:String, ?format:String):Array<String>;
	@:overload(function(number:Float, options:IAccountingNumberSettings):String { })
	@:overload(function(number:Array<Float>, ?precision:Float, ?thousand:String, ?decimal:String):Array<String> { })
	@:overload(function(number:Array<Float>, options:IAccountingNumberSettings):Array<String> { })
	@:overload(function(number:Array<Dynamic>, ?precision:Float, ?thousand:String, ?decimal:String):Array<Dynamic> { })
	@:overload(function(number:Array<Dynamic>, options:IAccountingNumberSettings):Array<Dynamic> { })
	function formatNumber(number:Float, ?precision:Float, ?thousand:String, ?decimal:String):String;
	function toFixed(number:Float, ?precision:Float):String;
	function unformat(string:String, ?decimal:String):Float;
	var settings : IAccountingSettings;
};
extern class AccountingTopLevel {
	static var accounting : IAccountingStatic;
}
extern class AccountingTopLevel {
	static var accounting : IAccountingStatic;
}
