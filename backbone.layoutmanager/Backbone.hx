typedef LayoutOptions<TModel:(Model)> = {
	>ViewOptions<TModel>,
	@:optional
	var template : String;
};
typedef LayoutManagerOptions = {
	@:optional
	var manage : Bool;
	@:optional
	var el : Bool;
};
extern class Layout<TModel:(Model)> extends View<TModel> {
	var template : String;
	function new(?options:LayoutOptions<TModel>):Void;
	function beforeRender():Void;
	function afterRender():Void;
	function cleanup():Void;
	function fetchTemplate(path:String):Dynamic -> String;
	function async():Dynamic -> Void -> Void;
	function promise():JQueryPromise<Dynamic>;
	function getAllOptions():LayoutOptions<TModel>;
	function getView(?fn:Dynamic):Dynamic;
	function getViews(?fn:Dynamic):Array<Dynamic>;
	function insertView(selector:Dynamic, ?view:Dynamic):Dynamic;
	function insertViews(views:Dynamic):Layout<TModel>;
	function remove():Layout<TModel>;
	function removeView(fn:Dynamic):Layout<TModel>;
	function render():Layout<TModel>;
	function renderViews():Layout<TModel>;
	function setView<U>(name:Dynamic, view:U, ?insert:Bool):U;
	function setViews(views:Dynamic):Layout<TModel>;
	function then(fn:Void -> Void):Void;
	static function cache(path:String, ?contents:Dynamic):Dynamic;
	static function cleanViews(views:Dynamic):Void;
	static function configure(options:LayoutManagerOptions):Void;
	static function setupView(views:Dynamic, ?options:LayoutOptions<Model>):Void;
}
