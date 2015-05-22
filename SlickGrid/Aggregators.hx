extern class Aggregator<T:(Slick.SlickData)> {
	var field : String;
	function init():Void;
	function accumulate(item:T):Void;
	function storeResult(groupTotals:GroupTotals<T, Dynamic>):Void;
}
extern class Avg<T> extends Aggregator<T> {

}
extern class Min<T> extends Aggregator<T> {

}
extern class Max<T> extends Aggregator<T> {

}
extern class Sum<T> extends Aggregator<T> {

}
extern class GroupItemMetadataProvider<T:(Slick.SlickData)> {
	function init():Void;
	function destroy():Void;
	function getGroupRowMetadata():GroupRowMetadata<T>;
	function getTotalsRowMetadata():TotalsRowMetadata<T>;
}
typedef GroupRowMetadata<T:(Slick.SlickData)> = {
	var selectable : Bool;
	var focusable : Bool;
	var cssClasses : String;
	var columns : { var _0 : { var colspan : String; var formatter : Formatter<T>; var editor : Slick.Editors.Editor<T>; }; };
};
typedef TotalsRowMetadata<T:(Slick.SlickData)> = {
	var selectable : Bool;
	var focusable : Bool;
	var cssClasses : String;
	var formatter : Formatter<T>;
	var editor : Slick.Editors.Editor<T>;
};
typedef GroupItemMetadataProviderOptions = {
	@:optional
	var groupCssClass : String;
	@:optional
	var groupTitleCssClass : String;
	@:optional
	var totalsCssClass : String;
	@:optional
	var groupFocusable : Bool;
	@:optional
	var totalsFocusable : Bool;
	@:optional
	var toggleCssClass : String;
	@:optional
	var toggleExpandedCssCass : String;
	@:optional
	var toggleCollapsedCssClass : String;
	@:optional
	var enableExpandCollapse : Bool;
};
extern class Plugin<T:(Slick.SlickData)> {
	function new(options:PluginOptions):Void;
	function init(grid:Grid<T>):Void;
	function destroy():Void;
}
typedef PluginOptions = { };
