typedef PageableState = {
	@:optional
	var firstPage : Float;
	@:optional
	var lastPage : Float;
	@:optional
	var currentPage : Float;
	@:optional
	var pageSize : Float;
	@:optional
	var totalPages : Float;
	@:optional
	var totalRecords : Float;
	@:optional
	var sortKey : String;
	@:optional
	var order : Float;
};
typedef PageableQueryParams = {
	@:optional
	var currentPage : String;
	@:optional
	var pageSize : String;
	@:optional
	var totalPages : String;
	@:optional
	var totalRecords : String;
	@:optional
	var sortKey : String;
	@:optional
	var order : String;
	@:optional
	var directions : Dynamic;
};
typedef PageableInitialOptions = {
	@:optional
	var comparator : haxe.extern.Rest<Dynamic> -> Float;
	@:optional
	var full : Bool;
	@:optional
	var state : PageableState;
	@:optional
	var queryParam : PageableQueryParams;
};
typedef PageableParseLinksOptions = {
	@:optional
	var xhr : JQueryXHR;
};
typedef PageableSetSortingOptions<TModel:(Model)> = {
	@:optional
	var side : String;
	@:optional
	var full : Bool;
	@:optional
	var sortValue : TModel -> String -> haxe.extern.EitherType<Dynamic, String>;
};
typedef PageableSwitchModeOptions = {
	@:optional
	var fetch : Bool;
	@:optional
	var resetState : Bool;
};
extern class PageableCollection<TModel:(Model)> extends Collection<Model> {
	var fullCollection : Collection<TModel>;
	var mode : String;
	var queryParams : PageableQueryParams;
	var state : PageableState;
	function new(?models:Array<TModel>, ?options:PageableInitialOptions):Void;
	function fetch(?options:CollectionFetchOptions):JQueryXHR;
	function getFirstPage(?options:PageableGetPageOptions):haxe.extern.EitherType<JQueryXHR, PageableCollection<TModel>>;
	function getLastPage(?options:PageableGetPageOptions):haxe.extern.EitherType<JQueryXHR, PageableCollection<TModel>>;
	function getNextPage(?options:PageableGetPageOptions):haxe.extern.EitherType<JQueryXHR, PageableCollection<TModel>>;
	function getPage(index:haxe.extern.EitherType<Float, String>, ?options:PageableGetPageOptions):haxe.extern.EitherType<JQueryXHR, PageableCollection<TModel>>;
	function getPageByOffset(offset:Float, ?options:PageableGetPageOptions):haxe.extern.EitherType<JQueryXHR, PageableCollection<TModel>>;
	function getPreviousPage(?options:PageableGetPageOptions):haxe.extern.EitherType<JQueryXHR, PageableCollection<TModel>>;
	function hasNextPage():Bool;
	function hasPreviousPage():Bool;
	function parse(resp:Dynamic, ?options:Dynamic):Array<Dynamic>;
	function parseLinks(resp:Dynamic, ?options:PageableParseLinksOptions):Dynamic;
	function parseRecords(resp:Dynamic, ?options:Dynamic):Array<Dynamic>;
	function parseState(resp:Dynamic, queryParams:PageableQueryParams, state:PageableState, ?options:Dynamic):PageableState;
	function setPageSize(pageSize:Float, ?options:CollectionFetchOptions):haxe.extern.EitherType<JQueryXHR, PageableCollection<TModel>>;
	function setSorting(sortKey:String, ?order:Float, ?options:PageableSetSortingOptions<TModel>):PageableCollection<TModel>;
	function switchMode(?mode:String, ?options:PageableSwitchModeOptions):haxe.extern.EitherType<JQueryXHR, PageableCollection<TModel>>;
	function sync(method:String, model:haxe.extern.EitherType<TModel, Collection<TModel>>, ?options:Dynamic):JQueryXHR;
	static function noConflict():Dynamic;
}
