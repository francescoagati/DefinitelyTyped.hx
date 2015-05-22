extern class ChildViewContainer<TModel:(Backbone.Model)> {
	function new(?initialViews:Array<Dynamic>):Void;
	function add(view:View<TModel>, ?customIndex:Float):Void;
	function findByModel(model:TModel):View<TModel>;
	function findByModelCid(modelCid:String):View<TModel>;
	function findByCustom(index:Float):View<TModel>;
	function findByIndex(index:Float):View<TModel>;
	function findByCid(cid:String):View<TModel>;
	function remove(view:View<TModel>):Void;
	function call(method:Dynamic):Void;
	function apply(method:Dynamic, ?args:Array<Dynamic>):Void;
	function all(iterator:View<TModel> -> Float -> Bool, ?context:Dynamic):Bool;
	function any(iterator:View<TModel> -> Float -> Bool, ?context:Dynamic):Bool;
	function contains(value:Dynamic):Bool;
	function detect(iterator:Dynamic -> Bool, ?context:Dynamic):Dynamic;
	function each(iterator:View<TModel> -> Float -> ?Dynamic -> Void, ?context:Dynamic):Dynamic;
	function every(iterator:View<TModel> -> Float -> Bool, ?context:Dynamic):Bool;
	function filter(iterator:View<TModel> -> Float -> Bool, ?context:Dynamic):Array<View<TModel>>;
	function find(iterator:View<TModel> -> Float -> Bool, ?context:Dynamic):View<TModel>;
	function first():View<TModel>;
	function forEach(iterator:View<TModel> -> Float -> ?Dynamic -> Void, ?context:Dynamic):Void;
	function include(value:Dynamic):Bool;
	@:overload(function(n:Float):Array<View<TModel>> { })
	function initial():View<TModel>;
	function invoke(methodName:String, ?args:Array<Dynamic>):Dynamic;
	function isEmpty(object:Dynamic):Bool;
	@:overload(function(n:Float):Array<View<TModel>> { })
	function last():View<TModel>;
	function lastIndexOf(element:View<TModel>, ?fromIndex:Float):Float;
	function map<U>(iterator:View<TModel> -> Float -> ?Dynamic -> U, ?context:Dynamic):Array<U>;
	function pluck(attribute:String):Array<Dynamic>;
	function reject(iterator:View<TModel> -> Float -> Bool, ?context:Dynamic):Array<View<TModel>>;
	@:overload(function(n:Float):Array<View<TModel>> { })
	function rest():View<TModel>;
	function select(iterator:Dynamic, ?context:Dynamic):Array<Dynamic>;
	function some(iterator:View<TModel> -> Float -> Bool, ?context:Dynamic):Bool;
	function toArray():Array<Dynamic>;
	function without(values:haxe.extern.Rest<Dynamic>):Array<View<TModel>>;
}
