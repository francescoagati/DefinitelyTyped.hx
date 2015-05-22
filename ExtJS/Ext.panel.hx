typedef IAbstractPanel = {
	>Ext.container.IContainer,
	>Ext.container.IDockingContainer,
	@:optional
	var baseCls : String;
	@:optional
	var bodyBorder : Bool;
	@:optional
	var bodyCls : Dynamic;
	@:optional
	var bodyPadding : Dynamic;
	@:optional
	var bodyStyle : Dynamic;
	@:optional
	var border : Dynamic;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var dockedItems : Dynamic;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var shrinkWrapDock : Dynamic;
	@:optional
	var body : Ext.dom.IElement;
	@:optional
	var contentPaddingProperty : String;
	@:optional
	var isPanel : Bool;
	@:optional
	function addBodyCls(?cls:String):Ext.panel.IPanel;
	@:optional
	function addDocked(?component:Dynamic, ?pos:Float):Array<Ext.IComponent>;
	@:optional
	function addUIClsToElement(?cls:Dynamic):Void;
	@:optional
	function getComponent(?comp:Dynamic):Ext.IComponent;
	@:optional
	function getDockedComponent(?comp:Dynamic):Ext.IComponent;
	@:optional
	function getDockedItems(?selector:String, ?beforeBody:Bool):Array<Ext.IComponent>;
	@:optional
	function getRefItems(?deep:Dynamic):Void;
	@:optional
	function insertDocked(?pos:Float, ?component:Dynamic):Void;
	@:optional
	function onDockedAdd(?component:Ext.IComponent):Void;
	@:optional
	function onDockedRemove(?component:Ext.IComponent):Void;
	@:optional
	function removeBodyCls(?cls:String):Ext.panel.IPanel;
	@:optional
	function removeDocked(?item:Ext.IComponent, ?autoDestroy:Bool):Void;
	@:optional
	function removeUIClsFromElement(?cls:Dynamic):Void;
	@:optional
	function setBodyStyle(?style:Dynamic, ?value:String):Ext.panel.IPanel;
};
typedef IDD = {
	>Ext.dd.IDragSource,
	@:optional
	function afterInvalidDrop(?e:Event, ?id:String):Void;
	@:optional
	function b4MouseDown(?e:Dynamic):Void;
	@:optional
	function createFrame():Void;
	@:optional
	function getDragEl(?e:Dynamic):HTMLElement;
};
typedef IHeader = {
	>Ext.container.IContainer,
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var defaultType : String;
	@:optional
	var glyph : Dynamic;
	@:optional
	var icon : String;
	@:optional
	var iconCls : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var shrinkWrap : Dynamic;
	@:optional
	var title : String;
	@:optional
	var titleAlign : String;
	@:optional
	var titlePosition : Float;
	@:optional
	var isHeader : Bool;
	@:optional
	function addTool(?tool:Dynamic):Void;
	@:optional
	function addUIClsToElement(?cls:Dynamic):Void;
	@:optional
	function afterLayout():Void;
	@:optional
	function beforeLayout():Void;
	@:optional
	function getTools():Array<Ext.panel.ITool>;
	@:optional
	function onAdd(?component:Dynamic, ?index:Dynamic):Void;
	@:optional
	function removeUIClsFromElement(?cls:Dynamic):Void;
	@:optional
	function setGlyph(?glyph:Dynamic):Void;
	@:optional
	function setIcon(?icon:String):Void;
	@:optional
	function setIconCls(?cls:String):Void;
	@:optional
	function setTitle(?title:String):Void;
};
typedef IPanel = {
	>Ext.panel.IAbstractPanel,
	@:optional
	var animCollapse : Bool;
	@:optional
	var bbar : Dynamic;
	@:optional
	var buttonAlign : String;
	@:optional
	var buttons : Dynamic;
	@:optional
	var closable : Bool;
	@:optional
	var closeAction : String;
	@:optional
	var collapseDirection : String;
	@:optional
	var collapseFirst : Bool;
	@:optional
	var collapseMode : String;
	@:optional
	var collapsed : Bool;
	@:optional
	var collapsedCls : String;
	@:optional
	var collapsible : Bool;
	@:optional
	var constrain : Bool;
	@:optional
	var constrainHeader : Bool;
	@:optional
	var dockedItems : Dynamic;
	@:optional
	var fbar : Dynamic;
	@:optional
	var floatable : Bool;
	@:optional
	var frame : Bool;
	@:optional
	var frameHeader : Bool;
	@:optional
	var glyph : Dynamic;
	@:optional
	var header : Dynamic;
	@:optional
	var headerOverCls : String;
	@:optional
	var headerPosition : String;
	@:optional
	var hideCollapseTool : Bool;
	@:optional
	var icon : String;
	@:optional
	var iconCls : String;
	@:optional
	var lbar : Dynamic;
	@:optional
	var manageHeight : Bool;
	@:optional
	var minButtonWidth : Float;
	@:optional
	var overlapHeader : Bool;
	@:optional
	var placeholder : Dynamic;
	@:optional
	var placeholderCollapseHideMode : Float;
	@:optional
	var preventHeader : Bool;
	@:optional
	var rbar : Dynamic;
	@:optional
	var simpleDrag : Bool;
	@:optional
	var tbar : Dynamic;
	@:optional
	var title : String;
	@:optional
	var titleAlign : String;
	@:optional
	var titleCollapse : Bool;
	@:optional
	var tools : Dynamic;
	@:optional
	var dd : Dynamic;
	@:optional
	function addTool(?tools:Dynamic):Void;
	@:optional
	function afterCollapse(?animated:Bool):Void;
	@:optional
	function afterExpand(?animated:Bool):Void;
	@:optional
	function close():Void;
	@:optional
	function collapse(?direction:String, ?animate:Bool):Ext.panel.IPanel;
	@:optional
	function convertCollapseDir(?collapseDir:Dynamic):Void;
	@:optional
	function expand(?animate:Bool):Ext.panel.IPanel;
	@:optional
	function getCollapsed():Dynamic;
	@:optional
	function getHeader():Void;
	@:optional
	function getState():Dynamic;
	@:optional
	function isLayoutRoot():Void;
	@:optional
	function isVisible(?deep:Dynamic):Bool;
	@:optional
	function onHide():Void;
	@:optional
	function onRemoved(?destroying:Dynamic):Void;
	@:optional
	function onShow():Void;
	@:optional
	function setBorder(?border:Dynamic, ?targetEl:Dynamic):Void;
	@:optional
	function setGlyph(?newGlyph:Dynamic):Void;
	@:optional
	function setIcon(?newIcon:String):Void;
	@:optional
	function setIconCls(?newIconCls:String):Void;
	@:optional
	function setTitle(?newTitle:String):Void;
	@:optional
	function setUI(?ui:Dynamic):Void;
	@:optional
	function toggleCollapse():Ext.panel.IPanel;
};
typedef IProxy = {
	>Ext.IBase,
	@:optional
	var insertProxy : Bool;
	@:optional
	var moveOnDrag : Bool;
	@:optional
	var panel : Ext.panel.IPanel;
	@:optional
	function getEl():Ext.IElement;
	@:optional
	function getGhost():Ext.panel.IPanel;
	@:optional
	function getProxy():Ext.IElement;
	@:optional
	function hide():Void;
	@:optional
	function moveProxy(?parentNode:HTMLElement, ?before:HTMLElement):Void;
	@:optional
	function show():Void;
};
typedef ITable = {
	>Ext.panel.IPanel,
	>Ext.grid.locking.ILockable,
	@:optional
	var allowDeselect : Bool;
	@:optional
	var columnLines : Bool;
	@:optional
	var columns : Dynamic;
	@:optional
	var deferRowRender : Bool;
	@:optional
	var disableSelection : Bool;
	@:optional
	var emptyText : String;
	@:optional
	var enableColumnHide : Bool;
	@:optional
	var enableColumnMove : Bool;
	@:optional
	var enableColumnResize : Bool;
	@:optional
	var enableLocking : Bool;
	@:optional
	var features : Dynamic;
	@:optional
	var forceFit : Bool;
	@:optional
	var hideHeaders : Bool;
	@:optional
	var layout : Dynamic;
	@:optional
	var multiSelect : Bool;
	@:optional
	var rowLines : Bool;
	@:optional
	var scroll : Dynamic;
	@:optional
	var sealedColumns : Bool;
	@:optional
	var selModel : Dynamic;
	@:optional
	var selType : String;
	@:optional
	var simpleSelect : Bool;
	@:optional
	var sortableColumns : Bool;
	@:optional
	var store : Ext.data.IStore;
	@:optional
	var verticalScroller : Dynamic;
	@:optional
	var view : Ext.view.ITable;
	@:optional
	var viewConfig : Dynamic;
	@:optional
	var viewType : String;
	@:optional
	var hasView : Bool;
	@:optional
	var optimizedColumnMove : Bool;
	@:optional
	function afterCollapse():Void;
	@:optional
	function afterExpand():Void;
	@:optional
	function applyState(?state:Dynamic):Void;
	@:optional
	function determineScrollbars():Void;
	@:optional
	function getSelectionModel():Ext.selection.IModel;
	@:optional
	function getState():Dynamic;
	@:optional
	function getStore():Ext.data.IStore;
	@:optional
	function getView():Ext.view.ITable;
	@:optional
	function invalidateScroller():Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function syncRowHeights():Void;
};
typedef ITool = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	var callback : Dynamic;
	@:optional
	var disabledCls : String;
	@:optional
	var handler : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var stopEvent : Bool;
	@:optional
	var toolOwner : Ext.IComponent;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var tooltipType : String;
	@:optional
	var type : String;
	@:optional
	var width : Float;
	@:optional
	var isTool : Bool;
	@:optional
	function afterRender():Void;
	@:optional
	function initComponent():Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function setType(?type:String):Ext.panel.ITool;
};
