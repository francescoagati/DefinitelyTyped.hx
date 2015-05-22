typedef JQueryJqGridColumn = {
	var name : String;
	var index : String;
	@:optional
	var hidden : Bool;
	@:optional
	var sortable : Bool;
	@:optional
	var search : Bool;
	@:optional
	var width : Float;
	@:optional
	var formatter : Dynamic -> Dynamic -> Dynamic -> Dynamic;
};
typedef IJqGridJsonReader = {
	var repeatitems : Bool;
	function root(obj:Dynamic):Dynamic;
	function page(obj:Dynamic):Dynamic;
	function total(obj:Dynamic):Float;
	function records(obj:{ var data : Array<Dynamic>; }):Float;
};
typedef JQueryJqGridOptions = {
	@:optional
	var datatype : String;
	@:optional
	var mtype : String;
	@:optional
	var autoencode : Bool;
	@:optional
	var pager : String;
	@:optional
	var rowNum : Float;
	@:optional
	var rowList : Array<Float>;
	@:optional
	var colNames : Array<String>;
	@:optional
	var colModel : Array<JQueryJqGridColumn>;
	@:optional
	var sortname : String;
	@:optional
	var sortorder : String;
	@:optional
	var multiselect : Bool;
	@:optional
	var multiboxonly : Bool;
	@:optional
	var forceFit : Bool;
	@:optional
	var height : Float;
	@:optional
	var width : Float;
	@:optional
	var shrinkToFit : Bool;
	@:optional
	var url : String;
	@:optional
	var jsonReader : IJqGridJsonReader;
	@:optional
	var gridComplete : Void -> Void;
};
typedef JQueryJqGridStatic = { };
typedef JQueryStatic = {
	@:optional
	var jqGrid : JQueryJqGridStatic;
};
typedef JQuery = {
	@:optional
	var jqGrid : JQueryJqGridStatic;
	function setGridParam(obj:Dynamic):Void;
};
