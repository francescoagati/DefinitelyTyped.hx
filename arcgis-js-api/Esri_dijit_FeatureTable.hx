extern class FeatureTable {
	var allowSelectAll : Bool;
	var cellNavigation : Bool;
	var columns : Array<Dynamic>;
	var dataStore : Dynamic;
	var dateOptions : Dynamic;
	var featureLayer : FeatureLayer;
	var grid : Dynamic;
	var hiddenFields : Array<String>;
	var idProperty : String;
	var loaded : Bool;
	var map : Map;
	var noDataMessage : String;
	var outFields : Array<String>;
	var readOnly : Bool;
	var selectionMode : String;
	@:overload(function(params:esri.FeatureTableOptions, srcNodeRef:String):Void { })
	function new(params:esri.FeatureTableOptions, srcNodeRef:Node):Void;
	function startup():Void;
	@:overload(function(type:Dgrid-refresh-complete, listener:{ var target : FeatureTable; } -> Void):esri.Handle { })
	@:overload(function(type:Dgrid-select, listener:{ var target : FeatureTable; } -> Void):esri.Handle { })
	@:overload(function(type:Load, listener:{ var target : FeatureTable; } -> Void):esri.Handle { })
	@:overload(function(type:String, listener:Dynamic -> Void):esri.Handle { })
	function on(type:Dgrid-deselect, listener:{ var target : FeatureTable; } -> Void):esri.Handle;
}
