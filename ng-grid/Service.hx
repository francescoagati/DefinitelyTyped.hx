typedef IDomUtilityService = {
	var eventStorage : Dynamic;
	var numberOfGrids : Float;
	var immediate : Float;
	function AssignGridContainers($scope:IGridScope, rootel:angular.IAugmentedJQuery, grid:IGridInstance):Void;
	function getRealWidth(obj:IDimension):Float;
	function UpdateGridLayout($scope:IGridScope, grid:IGridInstance):Void;
	function setStyleText(grid:IGridInstance, css:String):Void;
	function BuildStyles($scope:IGridScope, grid:IGridInstance, digest:Bool):Void;
	function setColLeft(col:IColumn, colLeft:Float, grid:IGridInstance):Void;
	function RebuildGrid($scope:IGridScope, grid:IGridInstance):Void;
	function digest($scope:IGridScope):Void;
	var ScrollH : Float;
	var ScrollW : Float;
	var LetterW : Float;
};
typedef ISortInfo = {
	var fields : Array<String>;
};
typedef ISortService = {
	var colSortFnCache : Dynamic;
	var isCustomSort : Bool;
	var isSorting : Bool;
	function guessSortFn(item:Dynamic):Dynamic -> Dynamic -> Float;
	function basicSort(a:Dynamic, b:Dynamic):Float;
	function sortNumber(a:Float, b:Float):Float;
	function sortNumberStr(a:String, b:String):Float;
	function sortAlpha(a:String, b:String):Float;
	function sortDate(a:Date, b:Date):Float;
	function sortBool(a:Bool, b:Bool):Float;
	function sortData(sortInfo:ISortInfo, data:Dynamic):Void;
	function Sort(sortInfo:ISortInfo, data:Dynamic):Void;
	function getSortFn(col:IColumn, data:Dynamic):Dynamic -> Dynamic -> Float;
};
typedef IUtilityService = {
	function visualLength(node:Dynamic):Float;
	function forIn(obj:Dynamic, action:Dynamic -> String -> { }):Void;
	function evalProperty(entity:Dynamic, path:String):Dynamic;
	function endsWith(str:String, suffix:String):Bool;
	function isNullOrUndefined(obj:Dynamic):Bool;
	function getElementsByClassName(cl:String):Array<Dynamic>;
	function newId():String;
	function seti18n($scope:IGridScope, language:String):Void;
	function getInstanceType(o:Dynamic):String;
};
