typedef IAbstractSummary = {
	>Ext.grid.feature.IFeature,
	@:optional
	var remoteRoot : String;
	@:optional
	var showSummaryRow : Bool;
	@:optional
	function toggleSummaryRow(?visible:Bool):Void;
};
typedef IFeature = {
	>Ext.util.IObservable,
	@:optional
	var disabled : Bool;
	@:optional
	var eventPrefix : String;
	@:optional
	var eventSelector : String;
	@:optional
	var grid : Ext.grid.IPanel;
	@:optional
	var hasFeatureEvent : Bool;
	@:optional
	var view : Ext.view.ITable;
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function getFireEventArgs(?eventName:Dynamic, ?view:Dynamic, ?featureTarget:Dynamic, ?e:Dynamic):Void;
};
typedef IGrouping = {
	>Ext.grid.feature.IFeature,
	>Ext.grid.feature.IAbstractSummary,
	@:optional
	var collapsible : Bool;
	@:optional
	var depthToIndent : Float;
	@:optional
	var enableGroupingMenu : Bool;
	@:optional
	var enableNoGroups : Bool;
	@:optional
	var groupByText : String;
	@:optional
	var groupHeaderTpl : Dynamic;
	@:optional
	var hideGroupedHeader : Bool;
	@:optional
	var showGroupsText : String;
	@:optional
	var showSummaryRow : Bool;
	@:optional
	var startCollapsed : Bool;
	@:optional
	var eventPrefix : String;
	@:optional
	var eventSelector : String;
	@:optional
	function collapse(?groupName:String, ?focus:Bool):Void;
	@:optional
	function collapseAll():Void;
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function expand(?groupName:String, ?focus:Bool):Void;
	@:optional
	function expandAll():Void;
	@:optional
	function getFireEventArgs(?type:Dynamic, ?view:Dynamic, ?targetEl:Dynamic, ?e:Dynamic):Void;
	@:optional
	function getRecordGroup(?record:Ext.data.IModel):Dynamic;
	@:optional
	function isExpanded(?groupName:String):Bool;
	@:optional
	function toggleSummaryRow(?visible:Bool):Void;
};
typedef IGroupingSummary = {
	>Ext.grid.feature.IGrouping,
	@:optional
	var showSummaryRow : Bool;
};
typedef IGroupStore = {
	>Ext.util.IObservable,
	@:optional
	function indexOfTotal(?record:Ext.data.IModel):Float;
};
typedef IRowBody = {
	>Ext.grid.feature.IFeature,
	@:optional
	var eventPrefix : String;
	@:optional
	var eventSelector : String;
	@:optional
	function getAdditionalData(?data:Dynamic, ?idx:Float, ?record:Ext.data.IModel, ?orig:Dynamic):Void;
};
typedef IRowWrap = {
	>Ext.grid.feature.IFeature,
	@:optional
	var hasFeatureEvent : Bool;
};
typedef ISummary = {
	>Ext.grid.feature.IAbstractSummary,
	@:optional
	var dock : String;
};
