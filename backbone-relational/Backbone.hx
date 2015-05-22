extern class RelationalModel extends Model {
	var relations : Dynamic;
	var subModelTypes : Dynamic;
	var subModelTypeAttribute : Dynamic;
	function initializeRelations(options:Dynamic):Void;
	function updateRelations(options:Dynamic):Void;
	function queue(func:Dynamic):Void;
	function processQueue():Void;
	function getRelation(name:String):Relation;
	function getRelations():Array<Relation>;
	function fetchRelated(key:String, ?options:Dynamic, ?update:Bool):Dynamic;
	function toJSON():Dynamic;
	function setup():Dynamic;
	function build(attributes:Dynamic, ?options:Dynamic):Dynamic;
	@:overload(function(attributes:Float, ?options:Dynamic):Dynamic { })
	@:overload(function(attributes:Dynamic, ?options:Dynamic):Dynamic { })
	function findOrCreate(attributes:String, ?options:Dynamic):Dynamic;
}
extern class Relation extends Model {
	var options : Dynamic;
	var instance : Dynamic;
	var key : Dynamic;
	var keyContents : Dynamic;
	var relatedModel : Dynamic;
	var relatedCollection : Dynamic;
	var reverseRelation : Dynamic;
	var related : Dynamic;
	function checkPreconditions():Bool;
	@:overload(function(related:Collection<Model>):Void { })
	function setRelated(related:Model):Void;
	function getReverseRelations(model:RelationalModel):Relation;
	function destroy():Void;
}
extern class HasOne extends Relation {
	var collectionType : Dynamic;
	function findRelated(options:Dynamic):Model;
	@:overload(function(keyContents:Array<String>):Void { })
	@:overload(function(keyContents:Float):Void { })
	@:overload(function(keyContents:Array<Float>):Void { })
	@:overload(function(keyContents:Collection<Model>):Void { })
	function setKeyContents(keyContents:String):Void;
	function onChange(model:Model, attr:Dynamic, options:Dynamic):Void;
	function handleAddition(model:Model, coll:Collection<Model>, options:Dynamic):Void;
	function handleRemoval(model:Model, coll:Collection<Model>, options:Dynamic):Void;
	function handleReset(coll:Collection<Model>, options:Dynamic):Void;
	function tryAddRelated(model:Model, coll:Dynamic, options:Dynamic):Void;
	function addRelated(model:Model, options:Dynamic):Void;
	function removeRelated(model:Model, coll:Dynamic, options:Dynamic):Void;
}
extern class HasMany extends Relation {
	var collectionType : Dynamic;
	function findRelated(options:Dynamic):Model;
	@:overload(function(keyContents:Float):Void { })
	@:overload(function(keyContents:Model):Void { })
	function setKeyContents(keyContents:String):Void;
	function onChange(model:Model, attr:Dynamic, options:Dynamic):Void;
	function tryAddRelated(model:Model, coll:Dynamic, options:Dynamic):Void;
	function addRelated(model:Model, options:Dynamic):Void;
	function removeRelated(model:Model, coll:Dynamic, options:Dynamic):Void;
}
extern class Store extends Events {
	function initializeRelation(model:Dynamic, relation:Dynamic, options:Dynamic):Dynamic;
	function addModelScope(scope:Dynamic):Void;
	function removeModelScope(scope:Dynamic):Void;
	function addSubModels(subModelTypes:RelationalModel, superModelType:RelationalModel):Void;
	function setupSuperModel(modelType:RelationalModel):Void;
	function addReverseRelation(relation:Dynamic):Void;
	function addOrphanRelation(relation:Dynamic):Void;
	function processOrphanRelations():Void;
	function retroFitRelation(relation:RelationalModel, create:Bool):Collection<Model>;
	function getCollection(type:RelationalModel, create:Bool):Collection<Model>;
	function getObjectByName(name:String):Dynamic;
	function resolveIdForItem(type:Dynamic, item:Dynamic):Dynamic;
	@:overload(function(type:Dynamic, item:Float):RelationalModel { })
	@:overload(function(type:Dynamic, item:RelationalModel):RelationalModel { })
	@:overload(function(type:Dynamic, item:Dynamic):RelationalModel { })
	function find(type:Dynamic, item:String):RelationalModel;
	function register(model:RelationalModel):Void;
	function checkId(model:RelationalModel, id:Dynamic):Void;
	function update(model:RelationalModel):Void;
	function unregister(model:RelationalModel, collection:Collection<Model>, options:Dynamic):Void;
	function reset():Void;
}
