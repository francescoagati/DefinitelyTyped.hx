typedef Object = {
	function getType(instance:Dynamic):Type;
	function getTypeName(instance:Dynamic):String;
};
typedef Array<T> = {
	@:overload(function<T>(arrayLength:Float):Array<T> { })
	@:overload(function<T>(items:haxe.extern.Rest<T>):Array<T> { })
	function new(?arrayLength:Float):Array<Dynamic>;
	function isArray(arg:Dynamic):Bool;
	var prototype : Array<Dynamic>;
	function add(array:Array<Dynamic>, element:Dynamic):Void;
	function addRange(array:Dynamic, items:Dynamic):Void;
	function clear():Void;
	function clone():Array<Dynamic>;
	function contains(element:Dynamic):Bool;
	function dequeue():Dynamic;
	function enqueue(element:Dynamic):Void;
	function forEach(array:Array<Dynamic>, method:haxe.Constraints.Function, instance:Array<Dynamic>):Void;
	function indexOf(array:Array<Dynamic>, item:Dynamic, ?startIndex:Float):Float;
	function insert(array:Array<Dynamic>, index:Float, item:Dynamic):Dynamic;
	function parse(value:String):Array<Dynamic>;
	function remove(array:Array<Dynamic>, item:Dynamic):Bool;
	function removeAt(array:Array<Dynamic>, index:Float):Void;
};
typedef Number = {
	function format(format:String):String;
	function localeFormat(format:String):String;
	function parseInvariant(format:String):Float;
	function parseLocale(format:String):Float;
};
typedef Date = {
	function format(value:String):String;
	function localeFormat(value:String):String;
	@:overload(function(value:String, ?formats:Array<String>):String { })
	@:overload(function(value:String, formats:haxe.extern.Rest<String>):String { })
	function parseLocale(value:String):String;
	@:overload(function(value:String, ?formats:Array<String>):String { })
	@:overload(function(value:String, formats:haxe.extern.Rest<String>):String { })
	function parseInvariant(value:String):String;
};
