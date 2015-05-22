typedef KnockoutMappingCreateOptions = {
	var data : Dynamic;
	var parent : Dynamic;
};
typedef KnockoutMappingUpdateOptions = {
	var data : Dynamic;
	var parent : Dynamic;
	var observable : KnockoutObservable<Dynamic>;
};
typedef KnockoutMappingOptions = {
	@:optional
	var ignore : Array<String>;
	@:optional
	var include : Array<String>;
	@:optional
	var copy : Array<String>;
	@:optional
	var mappedProperties : Array<String>;
	@:optional
	var deferEvaluation : Bool;
	@:optional
	var create : KnockoutMappingCreateOptions -> Void;
	@:optional
	var update : KnockoutMappingUpdateOptions -> Void;
	@:optional
	var key : Dynamic -> Dynamic;
};
typedef KnockoutMapping = {
	function isMapped(viewModel:Dynamic):Bool;
	@:overload(function(jsObject:Dynamic, targetOrOptions:Dynamic):Dynamic { })
	@:overload(function(jsObject:Dynamic, inputOptions:Dynamic, target:Dynamic):Dynamic { })
	function fromJS(jsObject:Dynamic):Dynamic;
	@:overload(function(jsonString:String, targetOrOptions:Dynamic):Dynamic { })
	@:overload(function(jsonString:String, inputOptions:Dynamic, target:Dynamic):Dynamic { })
	function fromJSON(jsonString:String):Dynamic;
	function toJS(rootObject:Dynamic, ?options:KnockoutMappingOptions):Dynamic;
	function toJSON(rootObject:Dynamic, ?options:KnockoutMappingOptions):Dynamic;
	function defaultOptions():KnockoutMappingOptions;
	function resetDefaultOptions():Void;
	function getType(x:Dynamic):Dynamic;
	function visitModel(rootObject:Dynamic, callback:haxe.Constraints.Function, ?options:{ @:optional
	var visitedObjects : Dynamic; @:optional
	var parentName : String; @:optional
	var ignore : Array<String>; @:optional
	var copy : Array<String>; @:optional
	var include : Array<String>; }):Dynamic;
};
typedef KnockoutObservableArrayFunctions<T> = {
	function mappedCreate(item:T):T;
	@:overload(function(removeFunction:T -> Bool):Array<T> { })
	function mappedRemove(item:T):Array<T>;
	@:overload(function():Array<T> { })
	function mappedRemoveAll(items:Array<T>):Array<T>;
	@:overload(function(destroyFunction:T -> Bool):Void { })
	function mappedDestroy(item:T):Void;
	@:overload(function():Void { })
	function mappedDestroyAll(items:Array<T>):Void;
};
typedef KnockoutStatic = {
	var mapping : KnockoutMapping;
};
extern class Knockout.mappingTopLevel {
	static var mapping : KnockoutMapping;
}
