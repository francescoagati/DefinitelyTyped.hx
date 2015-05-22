extern class FilteredListProjection<T> extends ListProjection<T> {
	function getItem(index:Float):IKeyDataPair<T>;
	function indexOfKey(key:String):Float;
	function notifyMutated(index:Float):Void;
	function setAt(index:Float, newValue:T):Void;
	var length : Float;
}
extern class GroupsListProjection<T> extends ListBase<T> {
	function getItem(index:Float):IKeyDataPair<T>;
	function getItemFromKey(key:String):IKeyDataPair<T>;
	function indexOfKey(key:String):Float;
	var length : Float;
}
extern class GroupedSortedListProjection<T> extends SortedListProjection<T> {
	var groups : GroupsListProjection<T>;
	function getItem(index:Float):IGroupKeyDataPair<T>;
}
extern class List<T> extends ListBaseWithMutators<T> {
	function new(?list:Array<T>, ?options:Dynamic):Void;
	function getItem(index:Float):IKeyDataPair<T>;
	function getItemFromKey(key:String):IKeyDataPair<T>;
	function indexOfKey(key:String):Float;
	function move(index:Float, newIndex:Float):Void;
	function notifyMutated(index:Float):Void;
	function reverse():Void;
	function setAt(index:Float, newValue:T):Void;
	function sort(?sortFunction:T -> T -> Float):Void;
	function splice(start:Float, ?howMany:Float, item:haxe.extern.Rest<T>):Array<T>;
	var length : Float;
}
extern class ListBase<T> {
	function onitemchanged(eventInfo:CustomEvent):Void;
	function oniteminserted(eventInfo:CustomEvent):Void;
	function onitemmoved(eventInfo:CustomEvent):Void;
	function onitemmutated(eventInfo:CustomEvent):Void;
	function onitemremoved(eventInfo:CustomEvent):Void;
	function onreload(eventInfo:CustomEvent):Void;
	function addEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function bind(name:String, action:haxe.Constraints.Function):Dynamic;
	function concat(item:haxe.extern.Rest<T>):Array<T>;
	function createFiltered(predicate:T -> Bool):FilteredListProjection<T>;
	function createGrouped(groupKey:T -> String, groupData:T -> Dynamic, ?groupSorter:String -> String -> Float):GroupedSortedListProjection<T>;
	function createSorted(sorter:T -> T -> Float):SortedListProjection<T>;
	function dispatchEvent(type:String, eventProperties:Dynamic):Bool;
	function every(callback:T -> Float -> Array<T> -> Bool, ?thisArg:Dynamic):Bool;
	function filter(callback:T -> Float -> Array<T> -> Dynamic, ?thisArg:Dynamic):Array<T>;
	function forEach(callback:T -> Float -> Array<T> -> Void, ?thisArg:Dynamic):Void;
	function getAt(index:Float):T;
	function indexOf(searchElement:T, ?fromIndex:Float):Float;
	function join(?separator:String):String;
	function lastIndexOf(searchElement:T, ?fromIndex:Float):Float;
	function map<G>(callback:T -> Float -> Array<T> -> G, ?thisArg:Dynamic):Array<G>;
	function notify(name:String, newValue:Dynamic, oldValue:Dynamic):Promise<Dynamic>;
	function notifyReload():Void;
	function reduce(callback:Dynamic -> Dynamic -> Float -> Array<T> -> T, ?initiallValue:T):T;
	function reduceRight(callback:Dynamic -> Dynamic -> Float -> Array<T> -> T, ?initialValue:T):T;
	function removeEventListener(type:String, listener:haxe.Constraints.Function, ?useCapture:Bool):Void;
	function slice(begin:Float, ?end:Float):Array<T>;
	function some(callback:T -> Float -> Array<T> -> Bool, ?thisArg:Dynamic):Bool;
	function unbind(name:String, action:haxe.Constraints.Function):Dynamic;
	var dataSource : WinJS.UI.IListDataSource<T>;
	static var supportedForProcessing : Bool;
}
extern class ListBaseWithMutators<T> extends ListBase<T> {
	function pop():T;
	@:overload(function(values:haxe.extern.Rest<T>):Float { })
	function push(value:T):Float;
	function shift():T;
	@:overload(function(values:haxe.extern.Rest<T>):Float { })
	function unshift(value:T):Float;
}
extern class ListProjection<T> extends ListBaseWithMutators<T> {
	function dispose():Void;
	function getItemFromKey(key:String):IKeyDataPair<T>;
	function move(index:Float, newIndex:Float):Void;
	function splice(start:Float, ?howMany:Float, item:haxe.extern.Rest<T>):Array<T>;
}
extern class SortedListProjection<T> extends ListProjection<T> {
	function getItem(index:Float):IKeyDataPair<T>;
	function indexOfKey(key:String):Float;
	function notifyMutated(index:Float):Void;
	function setAt(index:Float, newValue:T):Void;
	var length : Float;
}
extern class Template {
	function new(element:HTMLElement, ?options:Dynamic):Void;
	@:overload(function(href:String, dataContext:Dynamic, ?container:HTMLElement):Promise<HTMLElement> { })
	function render(dataContext:Dynamic, ?container:HTMLElement):Promise<HTMLElement>;
	var bindingInitializer : Dynamic;
	var debugBreakOnRender : Bool;
	var disableOptimizedProcessing : Bool;
	var element : HTMLElement;
	var extractChild : Bool;
	var isDeclarativeControlContainer : Bool;
}
typedef IKeyDataPair<T> = {
	var key : String;
	var data : T;
};
typedef IGroupKeyDataPair<T> = {
	>IKeyDataPair<T>,
	var groupSize : Float;
	var firstItemIndexHint : Float;
	var firstItemKey : String;
};
extern class WinJS.BindingTopLevel {
	static var optimizeBindingReferences : Bool;
	static var dynamicObservableMixin : { function addProperty(name:String, value:Dynamic):Void; function bind(name:String, action:Dynamic):haxe.Constraints.Function; function getProperty(name:String):Dynamic; function notify(name:String, newValue:String, oldValue:String):Promise<Dynamic>; function removeProperty(name:String):Dynamic; function setProperty(name:String, value:Dynamic):Dynamic; function unbind(name:String, action:haxe.Constraints.Function):Dynamic; function updateProperty(name:String, value:Dynamic):Promise<Dynamic>; };
	static var mixin : { function addProperty(name:String, value:Dynamic):Dynamic; function bind(name:String, action:Dynamic):haxe.Constraints.Function; function getProperty(name:String):Dynamic; function notify(name:String, newValue:String, oldValue:String):Promise<Dynamic>; function removeProperty(name:String):Dynamic; function setProperty(name:String, value:Dynamic):Dynamic; function unbind(name:String, action:haxe.Constraints.Function):Dynamic; function updateProperty(name:String, value:Dynamic):Promise<Dynamic>; };
	static var observableMixin : { function bind(name:String, action:haxe.Constraints.Function):Dynamic; function notify(name:String, newValue:Dynamic, oldValue:Dynamic):Promise<Dynamic>; function unbind(name:String, action:haxe.Constraints.Function):Dynamic; };
	static function addClassOneTime(source:Dynamic, sourceProperties:Array<Dynamic>, dest:HTMLElement):Void;
	static function as<U>(data:U):U;
	static function bind(observable:Dynamic, bindingDescriptor:Dynamic):Dynamic;
	static function converter(convert:haxe.Constraints.Function):haxe.Constraints.Function;
	static function defaultBind(source:Dynamic, sourceProperties:Dynamic, dest:Dynamic, destProperties:Dynamic):Dynamic;
	static function define(data:Dynamic):haxe.Constraints.Function;
	static function expandProperties(shape:Dynamic):Dynamic;
	static function initializer(customInitializer:haxe.Constraints.Function):haxe.Constraints.Function;
	static function oneTime(source:Dynamic, sourceProperties:Dynamic, dest:Dynamic, destProperties:Dynamic):Dynamic;
	static function processAll(?rootElement:Element, ?dataContext:Dynamic, ?skipRoot:Bool, ?bindingCache:Dynamic, ?defaultInitializer:haxe.Constraints.Function):Promise<Void>;
	static function setAttribute(source:Dynamic, sourceProperties:Array<Dynamic>, dest:Element, destProperties:Array<Dynamic>):Dynamic;
	static function setAttributeOneTime(source:Dynamic, sourceProperties:Array<Dynamic>, dest:Element, destProperties:Array<Dynamic>):Void;
	static function unwrap(data:Dynamic):Dynamic;
}
