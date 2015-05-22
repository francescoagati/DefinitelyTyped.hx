typedef ITreeViewDragDrop = {
	>Ext.IAbstractPlugin,
	@:optional
	var allowContainerDrops : Bool;
	@:optional
	var allowParentInserts : Bool;
	@:optional
	var appendOnly : Bool;
	@:optional
	var containerScroll : Dynamic;
	@:optional
	var ddGroup : String;
	@:optional
	var displayField : String;
	@:optional
	var dragGroup : String;
	@:optional
	var dragText : String;
	@:optional
	var dropGroup : String;
	@:optional
	var enableDrag : Bool;
	@:optional
	var enableDrop : Bool;
	@:optional
	var expandDelay : Float;
	@:optional
	var nodeHighlightColor : String;
	@:optional
	var nodeHighlightOnDrop : Bool;
	@:optional
	var nodeHighlightOnRepair : Bool;
	@:optional
	var sortOnDrop : Bool;
	@:optional
	function init(?view:Dynamic):Void;
};
