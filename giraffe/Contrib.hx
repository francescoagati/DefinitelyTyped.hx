extern class Controller extends Backbone.Events {
	var app : App;
}
extern class CollectionView<TModel:(Model)> extends View<TModel> {
	var collection : Collection<TModel>;
	var modelView : View<TModel>;
	var modelViewArgs : Array<Dynamic>;
	var modelViewEl : Dynamic;
	var renderOnChange : Bool;
	function findByModel(model:Model):View<TModel>;
	function addOne(model:Model):View<TModel>;
	function removeOne(model:Model):View<TModel>;
	static function getDefaults(ctx:Dynamic):Dynamic;
}
extern class FastCollectionView<TModel:(Model)> extends View<TModel> {
	var collection : Collection<TModel>;
	var modelTemplate : Dynamic;
	var modelTemplateStrategy : String;
	var modelEl : Dynamic;
	var renderOnChange : Bool;
	function modelSerialize():Dynamic;
	function addAll():View<TModel>;
	function addOne(model:Model):View<TModel>;
	function removeOne(model:Model):View<TModel>;
	function removeByIndex(index:Float):View<TModel>;
	function findElByModel(model:Model):JQuery;
	function findElByIndex(index:Float):JQuery;
	function findModelByEl(el:Dynamic):Model;
	static function getDefaults(ctx:Dynamic):Dynamic;
}
