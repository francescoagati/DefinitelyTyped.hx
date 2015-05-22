extern class JsonQuery {
	function new():Void;
	var jsonQueryPagination : Bool;
	var useFullIdInQueries : Bool;
	function clientSideFetch(request:Dynamic, baseResults:Array<Dynamic>):Dynamic;
	function fetch(args:Dynamic):Dynamic;
	function isUpdateable():Bool;
	function matchesQuery(item:Dynamic, request:Dynamic):Dynamic;
	function querySuperSet(argsSuper:Dynamic, argsSub:Dynamic):Dynamic;
}
typedef Css = {
	var rules : Dynamic;
	function determineContext(initialStylesheets:Dynamic):Array<Dynamic>;
	function findStyleSheet(sheet:Dynamic):Array<Dynamic>;
	function findStyleSheets(sheets:Dynamic):Array<Dynamic>;
};
