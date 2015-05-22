typedef AddOptions = {
	>Silenceable,
	@:optional
	var at : Float;
};
typedef HistoryOptions = {
	>Silenceable,
	@:optional
	var pushState : Bool;
	@:optional
	var root : String;
};
typedef NavigateOptions = {
	@:optional
	var trigger : Bool;
};
typedef RouterOptions = {
	var routes : Dynamic;
};
typedef Silenceable = {
	@:optional
	var silent : Bool;
};
typedef Validable = {
	@:optional
	var validate : Bool;
};
typedef Waitable = {
	@:optional
	var wait : Bool;
};
typedef Parseable = {
	@:optional
	var parse : Dynamic;
};
typedef PersistenceOptions = {
	@:optional
	var url : String;
	@:optional
	var beforeSend : JQueryXHR -> Void;
	@:optional
	var success : ?Dynamic -> ?Dynamic -> ?Dynamic -> Void;
	@:optional
	var error : ?Dynamic -> ?JQueryXHR -> ?Dynamic -> Void;
};
typedef ModelSetOptions = {
	>Silenceable,
	>Validable,
};
typedef ModelFetchOptions = {
	>PersistenceOptions,
	>ModelSetOptions,
	>Parseable,
};
typedef ModelSaveOptions = {
	>Silenceable,
	>Waitable,
	>Validable,
	>Parseable,
	>PersistenceOptions,
	@:optional
	var patch : Bool;
};
typedef ModelDestroyOptions = {
	>Waitable,
	>PersistenceOptions,
};
typedef CollectionFetchOptions = {
	>PersistenceOptions,
	>Parseable,
	@:optional
	var reset : Bool;
};
extern class Events {
	function on(eventName:String, ?callback:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	function off(?eventName:String, ?callback:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	function trigger(eventName:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function bind(eventName:String, callback:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	function unbind(?eventName:String, ?callback:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	function once(events:String, callback:haxe.Constraints.Function, ?context:Dynamic):Dynamic;
	function listenTo(object:Dynamic, events:String, callback:haxe.Constraints.Function):Dynamic;
	function listenToOnce(object:Dynamic, events:String, callback:haxe.Constraints.Function):Dynamic;
	function stopListening(?object:Dynamic, ?events:String, ?callback:haxe.Constraints.Function):Dynamic;
}
extern class ModelBase extends Events {
	var url : Dynamic;
	function parse(response:Dynamic, ?options:Dynamic):Dynamic;
	function toJSON(?options:Dynamic):Dynamic;
	function sync(arg:haxe.extern.Rest<Dynamic>):JQueryXHR;
}
extern class Model extends ModelBase {
	static function extend(properties:Dynamic, ?classProperties:Dynamic):Dynamic;
	var attributes : Dynamic;
	var changed : Array<Dynamic>;
	var cid : String;
	var collection : Collection<Dynamic>;
	function defaults():Dynamic;
	var id : Dynamic;
	var idAttribute : String;
	var validationError : Dynamic;
	var urlRoot : Dynamic;
	function new(?attributes:Dynamic, ?options:Dynamic):Void;
	function initialize(?attributes:Dynamic, ?options:Dynamic):Void;
	function fetch(?options:ModelFetchOptions):JQueryXHR;
	function get(attributeName:String):Dynamic;
	@:overload(function(obj:Dynamic, ?options:ModelSetOptions):Model { })
	function set(attributeName:String, value:Dynamic, ?options:ModelSetOptions):Model;
	function change():Dynamic;
	function changedAttributes(?attributes:Dynamic):Array<Dynamic>;
	function clear(?options:Silenceable):Dynamic;
	function clone():Model;
	function destroy(?options:ModelDestroyOptions):Dynamic;
	function escape(attribute:String):String;
	function has(attribute:String):Bool;
	function hasChanged(?attribute:String):Bool;
	function isNew():Bool;
	function isValid(?options:Dynamic):Bool;
	function previous(attribute:String):Dynamic;
	function previousAttributes():Array<Dynamic>;
	function save(?attributes:Dynamic, ?options:ModelSaveOptions):Dynamic;
	function unset(attribute:String, ?options:Silenceable):Model;
	function validate(attributes:Dynamic, ?options:Dynamic):Dynamic;
	function _validate(attrs:Dynamic, options:Dynamic):Bool;
	function keys():Array<String>;
	function values():Array<Dynamic>;
	function pairs():Array<Dynamic>;
	function invert():Dynamic;
	@:overload(function(keys:haxe.extern.Rest<String>):Dynamic { })
	function pick(keys:Array<String>):Dynamic;
	@:overload(function(keys:haxe.extern.Rest<String>):Dynamic { })
	function omit(keys:Array<String>):Dynamic;
}
extern class Collection<TModel:(Model)> extends ModelBase {
	static function extend(properties:Dynamic, ?classProperties:Dynamic):Dynamic;
	var model : { function new():TModel; };
	var models : Array<TModel>;
	var length : Float;
	function new(?models:Array<TModel>, ?options:Dynamic):Void;
	function initialize(?models:Array<TModel>, ?options:Dynamic):Void;
	function fetch(?options:CollectionFetchOptions):JQueryXHR;
	@:overload(function(compare:TModel, ?to:TModel):Float { })
	function comparator(element:TModel):Float;
	@:overload(function(models:Array<TModel>, ?options:AddOptions):Collection<TModel> { })
	function add(model:TModel, ?options:AddOptions):Collection<TModel>;
	function at(index:Float):TModel;
	@:overload(function(id:String):TModel { })
	@:overload(function(id:Model):TModel { })
	function get(id:Float):TModel;
	function create(attributes:Dynamic, ?options:ModelSaveOptions):TModel;
	function pluck(attribute:String):Array<Dynamic>;
	function push(model:TModel, ?options:AddOptions):TModel;
	function pop(?options:Silenceable):TModel;
	@:overload(function(models:Array<TModel>, ?options:Silenceable):Array<TModel> { })
	function remove(model:TModel, ?options:Silenceable):TModel;
	function reset(?models:Array<TModel>, ?options:Silenceable):Array<TModel>;
	function set(?models:Array<TModel>, ?options:Silenceable):Array<TModel>;
	function shift(?options:Silenceable):TModel;
	function sort(?options:Silenceable):Collection<TModel>;
	function unshift(model:TModel, ?options:AddOptions):TModel;
	function where(properies:Dynamic):Array<TModel>;
	function findWhere(properties:Dynamic):TModel;
	function _prepareModel(?attrs:Dynamic, ?options:Dynamic):Dynamic;
	function _removeReference(model:TModel):Void;
	function _onModelEvent(event:String, model:TModel, collection:Collection<TModel>, options:Dynamic):Void;
	function all(iterator:TModel -> Float -> Bool, ?context:Dynamic):Bool;
	function any(iterator:TModel -> Float -> Bool, ?context:Dynamic):Bool;
	function collect(iterator:TModel -> Float -> ?Dynamic -> Array<Dynamic>, ?context:Dynamic):Array<Dynamic>;
	function chain():Dynamic;
	function contains(value:Dynamic):Bool;
	@:overload(function(attribute:String):_.Dictionary<Float> { })
	function countBy(iterator:TModel -> Float -> Dynamic):_.Dictionary<Float>;
	function detect(iterator:Dynamic -> Bool, ?context:Dynamic):Dynamic;
	@:overload(function(n:Float):Array<TModel> { })
	function drop():TModel;
	function each(iterator:TModel -> Float -> ?Dynamic -> Void, ?context:Dynamic):Dynamic;
	function every(iterator:TModel -> Float -> Bool, ?context:Dynamic):Bool;
	function filter(iterator:TModel -> Float -> Bool, ?context:Dynamic):Array<TModel>;
	function find(iterator:TModel -> Float -> Bool, ?context:Dynamic):TModel;
	@:overload(function(n:Float):Array<TModel> { })
	function first():TModel;
	function foldl(iterator:Dynamic -> TModel -> Float -> Dynamic, initialMemo:Dynamic, ?context:Dynamic):Dynamic;
	function forEach(iterator:TModel -> Float -> ?Dynamic -> Void, ?context:Dynamic):Dynamic;
	@:overload(function(attribute:String, ?context:Dynamic):_.Dictionary<Array<TModel>> { })
	function groupBy(iterator:TModel -> Float -> String, ?context:Dynamic):_.Dictionary<Array<TModel>>;
	function include(value:Dynamic):Bool;
	function indexOf(element:TModel, ?isSorted:Bool):Float;
	@:overload(function(n:Float):Array<TModel> { })
	function initial():TModel;
	function inject(iterator:Dynamic -> TModel -> Float -> Dynamic, initialMemo:Dynamic, ?context:Dynamic):Dynamic;
	function isEmpty(object:Dynamic):Bool;
	function invoke(methodName:String, ?args:Array<Dynamic>):Dynamic;
	@:overload(function(n:Float):Array<TModel> { })
	function last():TModel;
	function lastIndexOf(element:TModel, ?fromIndex:Float):Float;
	function map(iterator:TModel -> Float -> ?Dynamic -> Dynamic, ?context:Dynamic):Array<Dynamic>;
	function max(?iterator:TModel -> Float -> Dynamic, ?context:Dynamic):TModel;
	function min(?iterator:TModel -> Float -> Dynamic, ?context:Dynamic):TModel;
	function reduce(iterator:Dynamic -> TModel -> Float -> Dynamic, initialMemo:Dynamic, ?context:Dynamic):Dynamic;
	function select(iterator:Dynamic, ?context:Dynamic):Array<Dynamic>;
	function size():Float;
	function shuffle():Array<Dynamic>;
	function some(iterator:TModel -> Float -> Bool, ?context:Dynamic):Bool;
	@:overload(function(attribute:String, ?context:Dynamic):Array<TModel> { })
	function sortBy(iterator:TModel -> Float -> Float, ?context:Dynamic):Array<TModel>;
	function sortedIndex(element:TModel, ?iterator:TModel -> Float -> Float):Float;
	function reduceRight(iterator:Dynamic -> TModel -> Float -> Dynamic, initialMemo:Dynamic, ?context:Dynamic):Array<Dynamic>;
	function reject(iterator:TModel -> Float -> Bool, ?context:Dynamic):Array<TModel>;
	@:overload(function(n:Float):Array<TModel> { })
	function rest():TModel;
	@:overload(function(n:Float):Array<TModel> { })
	function tail():TModel;
	function toArray():Array<Dynamic>;
	function without(values:haxe.extern.Rest<Dynamic>):Array<TModel>;
}
extern class Router extends Events {
	static function extend(properties:Dynamic, ?classProperties:Dynamic):Dynamic;
	var routes : Dynamic;
	function new(?options:RouterOptions):Void;
	function initialize(?options:RouterOptions):Void;
	@:overload(function(route:js.RegExp, name:String, ?callback:haxe.Constraints.Function):Router { })
	function route(route:String, name:String, ?callback:haxe.Constraints.Function):Router;
	@:overload(function(fragment:String, ?trigger:Bool):Router { })
	function navigate(fragment:String, ?options:NavigateOptions):Router;
	function _bindRoutes():Void;
	function _routeToRegExp(route:String):js.RegExp;
	function _extractParameters(route:js.RegExp, fragment:String):Array<String>;
}
extern class History extends Events {
	var handlers : Array<Dynamic>;
	var interval : Float;
	function start(?options:HistoryOptions):Bool;
	function getHash(?window:Window):String;
	function getFragment(?fragment:String, ?forcePushState:Bool):String;
	function stop():Void;
	function route(route:String, callback:haxe.Constraints.Function):Float;
	function checkUrl(?e:Dynamic):Void;
	function loadUrl(fragmentOverride:String):Bool;
	function navigate(fragment:String, ?options:Dynamic):Bool;
	var started : Bool;
	var options : Dynamic;
	function _updateHash(location:Location, fragment:String, replace:Bool):Void;
}
typedef ViewOptions<TModel:(Model)> = {
	@:optional
	var model : TModel;
	@:optional
	var collection : Backbone.Collection<TModel>;
	@:optional
	var el : Dynamic;
	@:optional
	var id : String;
	@:optional
	var className : String;
	@:optional
	var tagName : String;
	@:optional
	var attributes : { };
};
extern class View<TModel:(Model)> extends Events {
	static function extend(properties:Dynamic, ?classProperties:Dynamic):Dynamic;
	function new(?options:ViewOptions<TModel>):Void;
	function initialize(?options:ViewOptions<TModel>):Void;
	function events():Dynamic;
	@:overload(function(selector:Dynamic):JQuery { })
	function $(selector:String):JQuery;
	var model : TModel;
	var collection : Collection<TModel>;
	@:overload(function(element:JQuery, ?delegate:Bool):View<TModel> { })
	@:overload(function(element:Dynamic):View<TModel> { })
	function setElement(element:HTMLElement, ?delegate:Bool):View<TModel>;
	var id : String;
	var cid : String;
	var className : String;
	var tagName : String;
	var el : Dynamic;
	var $el : JQuery;
	var attributes : Dynamic;
	function render():View<TModel>;
	function remove():View<TModel>;
	function make(tagName:Dynamic, ?attributes:Dynamic, ?content:Dynamic):Dynamic;
	function delegateEvents(?events:Dynamic):Dynamic;
	function undelegateEvents():Dynamic;
	function _ensureElement():Void;
}
extern class BackboneTopLevel {
	static var history : History;
	static function sync(method:String, model:Model, ?options:JQueryAjaxSettings):Dynamic;
	static function ajax(?options:JQueryAjaxSettings):JQueryXHR;
	static var emulateHTTP : Bool;
	static var emulateJSON : Bool;
	static function noConflict():Dynamic;
	static var $ : JQueryStatic;
}
