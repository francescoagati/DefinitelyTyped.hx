typedef IListView = {
	>Ext.panel.ITable,
	@:optional
	var columns : Dynamic;
	@:optional
	var rowLines : Bool;
	@:optional
	var viewType : String;
	@:optional
	function reconfigure(?store:Ext.data.IStore, ?columns:Array<Dynamic>):Void;
};
