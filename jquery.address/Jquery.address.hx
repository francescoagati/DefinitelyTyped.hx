typedef JQueryAddressStatic = {
	function bind(type:Dynamic, data:Dynamic, callback:haxe.Constraints.Function):JQueryAddressStatic;
	function change(callback:haxe.Constraints.Function):JQueryAddressStatic;
	function init(callback:haxe.Constraints.Function):JQueryAddressStatic;
	function internalChange(eventhandler:haxe.Constraints.Function):JQueryAddressStatic;
	function externalChange(eventhandler:haxe.Constraints.Function):JQueryAddressStatic;
	function baseURL():String;
	@:overload(function(value:Bool):JQueryAddressStatic { })
	function autoUpdate():Bool;
	@:overload(function(value:Bool):JQueryAddressStatic { })
	function crawlable():Bool;
	@:overload(function(value:String):JQueryAddressStatic { })
	function hash():String;
	@:overload(function(value:Bool):Void { })
	function history():Bool;
	@:overload(function(name:String, value:String, append:Bool):JQueryAddressStatic { })
	function parameter(name:String):String;
	function parameterNames():Array<String>;
	@:overload(function(value:String):JQueryAddressStatic { })
	function path():String;
	function pathNames():Array<String>;
	@:overload(function(value:String):JQueryAddressStatic { })
	function queryString():String;
	@:overload(function(value:String):JQueryAddressStatic { })
	function state():String;
	@:overload(function(value:Bool):JQueryAddressStatic { })
	function strict():Bool;
	@:overload(function(value:String):JQueryAddressStatic { })
	function title():String;
	@:overload(function(value:haxe.Constraints.Function):JQueryAddressStatic { })
	function tracker():Dynamic;
	@:overload(function(url:String):JQueryAddressStatic { })
	function value():String;
	function update():JQueryAddressStatic;
	@:overload(function(value:Bool):JQueryAddressStatic { })
	function wrap():Bool;
};
typedef JQueryAddress = { };
typedef JQueryStatic = {
	var address : JQueryAddressStatic;
};
typedef JQuery = {
	var address : JQueryAddress;
};
