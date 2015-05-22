typedef ICharacterGrouping = {
	var first : String;
	var label : String;
};
extern class CharacterGrouping {
	var first : String;
	var label : String;
}
typedef ICharacterGroupings = {
	>Windows.Foundation.Collections.IVectorView<Windows.Globalization.Collation.CharacterGrouping>,
	>Windows.Foundation.Collections.IIterable<Windows.Globalization.Collation.CharacterGrouping>,
	function lookup(text:String):String;
};
extern class CharacterGroupings {
	var size : Float;
	function lookup(text:String):String;
	function getAt(index:Float):Windows.Globalization.Collation.CharacterGrouping;
	function indexOf(value:Windows.Globalization.Collation.CharacterGrouping):{ var index : Float; var returnValue : Bool; };
	function getMany(startIndex:Float):{ var items : Array<Windows.Globalization.Collation.CharacterGrouping>; var returnValue : Float; };
	function first():Windows.Foundation.Collections.IIterator<Windows.Globalization.Collation.CharacterGrouping>;
	function toString():String;
	function toLocaleString():String;
	function concat(items:haxe.extern.Rest<Array<Windows.Globalization.Collation.CharacterGrouping>>):Array<Windows.Globalization.Collation.CharacterGrouping>;
	function join(seperator:String):String;
	function pop():Windows.Globalization.Collation.CharacterGrouping;
	function push(items:haxe.extern.Rest<Windows.Globalization.Collation.CharacterGrouping>):Void;
	function reverse():Array<Windows.Globalization.Collation.CharacterGrouping>;
	function shift():Windows.Globalization.Collation.CharacterGrouping;
	@:overload(function(start:Float, end:Float):Array<Windows.Globalization.Collation.CharacterGrouping> { })
	function slice(start:Float):Array<Windows.Globalization.Collation.CharacterGrouping>;
	@:overload(function(compareFn:Windows.Globalization.Collation.CharacterGrouping -> Windows.Globalization.Collation.CharacterGrouping -> Float):Array<Windows.Globalization.Collation.CharacterGrouping> { })
	function sort():Array<Windows.Globalization.Collation.CharacterGrouping>;
	@:overload(function(start:Float, deleteCount:Float, items:haxe.extern.Rest<Windows.Globalization.Collation.CharacterGrouping>):Array<Windows.Globalization.Collation.CharacterGrouping> { })
	function splice(start:Float):Array<Windows.Globalization.Collation.CharacterGrouping>;
	function unshift(items:haxe.extern.Rest<Windows.Globalization.Collation.CharacterGrouping>):Float;
	@:overload(function(searchElement:Windows.Globalization.Collation.CharacterGrouping, fromIndex:Float):Float { })
	function lastIndexOf(searchElement:Windows.Globalization.Collation.CharacterGrouping):Float;
	@:overload(function(callbackfn:Windows.Globalization.Collation.CharacterGrouping -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Bool, thisArg:Dynamic):Bool { })
	function every(callbackfn:Windows.Globalization.Collation.CharacterGrouping -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Globalization.Collation.CharacterGrouping -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Bool, thisArg:Dynamic):Bool { })
	function some(callbackfn:Windows.Globalization.Collation.CharacterGrouping -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Bool):Bool;
	@:overload(function(callbackfn:Windows.Globalization.Collation.CharacterGrouping -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Void, thisArg:Dynamic):Void { })
	function forEach(callbackfn:Windows.Globalization.Collation.CharacterGrouping -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Void):Void;
	@:overload(function(callbackfn:Windows.Globalization.Collation.CharacterGrouping -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Dynamic, thisArg:Dynamic):Array<Dynamic> { })
	function map(callbackfn:Windows.Globalization.Collation.CharacterGrouping -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Dynamic):Array<Dynamic>;
	@:overload(function(callbackfn:Windows.Globalization.Collation.CharacterGrouping -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Bool, thisArg:Dynamic):Array<Windows.Globalization.Collation.CharacterGrouping> { })
	function filter(callbackfn:Windows.Globalization.Collation.CharacterGrouping -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Bool):Array<Windows.Globalization.Collation.CharacterGrouping>;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduce(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Dynamic):Dynamic;
	@:overload(function(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Dynamic, initialValue:Dynamic):Dynamic { })
	function reduceRight(callbackfn:Dynamic -> Dynamic -> Float -> Array<Windows.Globalization.Collation.CharacterGrouping> -> Dynamic):Dynamic;
	var length : Float;
}
