typedef IDataView = {
	>Ext.IContainer,
	>Ext.mixin.ISelectable,
	@:optional
	var baseCls : String;
	@:optional
	var blockRefresh : Bool;
	@:optional
	var data : Array<Dynamic>;
	@:optional
	var defaultType : String;
	@:optional
	var deferEmptyText : Bool;
	@:optional
	var deselectOnContainerClick : Bool;
	@:optional
	var emptyText : String;
	@:optional
	var inline : Dynamic;
	@:optional
	var itemCls : String;
	@:optional
	var itemConfig : Dynamic;
	@:optional
	var itemSelector : Bool;
	@:optional
	var itemTpl : Dynamic;
	@:optional
	var loadingText : Dynamic;
	@:optional
	var maxItemCache : Float;
	@:optional
	var multiSelect : Bool;
	@:optional
	var overItemCls : Bool;
	@:optional
	var pressedCls : String;
	@:optional
	var pressedDelay : Float;
	@:optional
	var scrollToTopOnRefresh : Bool;
	@:optional
	var scrollable : Dynamic;
	@:optional
	var selectedCls : String;
	@:optional
	var selectedItemCls : Bool;
	@:optional
	var simpleSelect : Bool;
	@:optional
	var singleSelect : Bool;
	@:optional
	var store : Dynamic;
	@:optional
	var trackOver : Bool;
	@:optional
	var triggerCtEvent : String;
	@:optional
	var triggerEvent : String;
	@:optional
	var useComponents : Bool;
	@:optional
	function bindStore():Void;
	@:optional
	function clearSelections():Void;
	@:optional
	function collectData():Void;
	@:optional
	function deselect(?records:Dynamic, ?suppressEvent:Bool):Void;
	@:optional
	function deselectAll(?supress:Dynamic):Void;
	@:optional
	function destroy():Void;
	@:optional
	function doDeselect(?records:Dynamic, ?suppressEvent:Bool):Void;
	@:optional
	function doSelect(?records:Dynamic, ?keepExisting:Bool, ?suppressEvent:Bool):Void;
	@:optional
	function findItemByChild():Void;
	@:optional
	function findTargetByEvent():Void;
	@:optional
	function getAllowDeselect():Bool;
	@:optional
	function getBaseCls():String;
	@:optional
	function getCount():Float;
	@:optional
	function getData():Array<Dynamic>;
	@:optional
	function getDefaultType():String;
	@:optional
	function getDeferEmptyText():Bool;
	@:optional
	function getDeselectOnContainerClick():Bool;
	@:optional
	function getDisableSelection():Bool;
	@:optional
	function getEmptyText():String;
	@:optional
	function getInline():Dynamic;
	@:optional
	function getItemAt(?index:Float):Dynamic;
	@:optional
	function getItemCls():String;
	@:optional
	function getItemConfig():Dynamic;
	@:optional
	function getItemIndex(?item:Float):Float;
	@:optional
	function getItemTpl():Dynamic;
	@:optional
	function getLastSelected():Array<Dynamic>;
	@:optional
	function getLoadingText():Dynamic;
	@:optional
	function getMaxItemCache():Float;
	@:optional
	function getMode():String;
	@:optional
	function getNode():Void;
	@:optional
	function getNodes():Void;
	@:optional
	function getPressedCls():String;
	@:optional
	function getPressedDelay():Float;
	@:optional
	function getRecords():Void;
	@:optional
	function getScrollToTopOnRefresh():Bool;
	@:optional
	function getScrollable():Bool;
	@:optional
	function getSelectedCls():String;
	@:optional
	function getSelectedNodes():Void;
	@:optional
	function getSelectedRecords():Void;
	@:optional
	function getSelection():Array<Dynamic>;
	@:optional
	function getSelectionCount():Float;
	@:optional
	function getSelectionMode():String;
	@:optional
	function getStore():Dynamic;
	@:optional
	function getTriggerCtEvent():String;
	@:optional
	function getTriggerEvent():String;
	@:optional
	function getUseComponents():Bool;
	@:optional
	function getViewItems():Dynamic;
	@:optional
	function handleException():Void;
	@:optional
	function hasSelection():Bool;
	@:optional
	function indexOf():Void;
	@:optional
	function initialize():Void;
	@:optional
	function isLocked():Bool;
	@:optional
	function isSelected(?record:Dynamic):Bool;
	@:optional
	function prepareData(?data:Dynamic, ?index:Float, ?record:Ext.data.IModel):Dynamic;
	@:optional
	function refresh():Void;
	@:optional
	function refreshNode():Void;
	@:optional
	function select(?records:Dynamic, ?keepExisting:Bool, ?suppressEvent:Bool):Void;
	@:optional
	function selectAll(?silent:Bool):Void;
	@:optional
	function selectRange(?startRecord:Float, ?endRecord:Float, ?keepExisting:Bool):Void;
	@:optional
	function setAllowDeselect(?allowDeselect:Bool):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setData(?data:Array<Dynamic>):Void;
	@:optional
	function setDefaultType(?defaultType:String):Void;
	@:optional
	function setDeferEmptyText(?deferEmptyText:Bool):Void;
	@:optional
	function setDeselectOnContainerClick(?deselectOnContainerClick:Bool):Void;
	@:optional
	function setDisableSelection(?disableSelection:Bool):Void;
	@:optional
	function setEmptyText(?emptyText:String):Void;
	@:optional
	function setInline(?inline:Dynamic):Void;
	@:optional
	function setItemCls(?itemCls:String):Void;
	@:optional
	function setItemConfig(?itemConfig:Dynamic):Void;
	@:optional
	function setItemTpl(?itemTpl:Dynamic):Void;
	@:optional
	function setLastFocused():Void;
	@:optional
	function setLoadingText(?loadingText:Dynamic):Void;
	@:optional
	function setMaxItemCache(?maxItemCache:Float):Void;
	@:optional
	function setMode(?mode:String):Void;
	@:optional
	function setPressedCls(?pressedCls:String):Void;
	@:optional
	function setPressedDelay(?pressedDelay:Float):Void;
	@:optional
	function setScrollToTopOnRefresh(?scrollToTopOnRefresh:Bool):Void;
	@:optional
	function setSelectedCls(?selectedCls:String):Void;
	@:optional
	function setStore(?store:Dynamic):Void;
	@:optional
	function setTriggerCtEvent(?triggerCtEvent:String):Void;
	@:optional
	function setTriggerEvent(?triggerEvent:String):Void;
	@:optional
	function setUseComponents(?useComponents:Bool):Void;
	@:optional
	function updateLastFocused(?newRecord:Ext.data.IRecord, ?oldRecord:Ext.data.IRecord):Void;
};
typedef IIndexBar = {
	>Ext.IComponent,
	@:optional
	var alphabet : Bool;
	@:optional
	var baseCls : String;
	@:optional
	var direction : String;
	@:optional
	var itemSelector : Bool;
	@:optional
	var letters : Array<Dynamic>;
	@:optional
	var listPrefix : String;
	@:optional
	var store : Bool;
	@:optional
	var ui : String;
	@:optional
	function destroy():Void;
	@:optional
	function getBaseCls():String;
	@:optional
	function getDirection():String;
	@:optional
	function getLetters():Array<Dynamic>;
	@:optional
	function getListPrefix():String;
	@:optional
	function getUi():String;
	@:optional
	function isHorizontal():Void;
	@:optional
	function isVertical():Void;
	@:optional
	function refresh():Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setLetters(?letters:Array<Dynamic>):Void;
	@:optional
	function setListPrefix(?listPrefix:String):Void;
	@:optional
	function setUi(?ui:String):Void;
};
typedef IList = {
	>Ext.dataview.IDataView,
	>Ext.mixin.IBindable,
	@:optional
	var baseCls : String;
	@:optional
	var defaultType : String;
	@:optional
	var disclosureProperty : String;
	@:optional
	var grouped : Bool;
	@:optional
	var indexBar : Dynamic;
	@:optional
	var infinite : Bool;
	@:optional
	var itemHeight : Float;
	@:optional
	var onItemDisclosure : Dynamic;
	@:optional
	var pinHeaders : Bool;
	@:optional
	var preventSelectionOnDisclose : Bool;
	@:optional
	var refreshHeightOnUpdate : Bool;
	@:optional
	var striped : Bool;
	@:optional
	var ui : String;
	@:optional
	var useSimpleItems : Bool;
	@:optional
	var variableHeights : Bool;
	@:optional
	var bufferSize : Float;
	@:optional
	function destroy():Void;
	@:optional
	function getBaseCls():String;
	@:optional
	function getDefaultType():String;
	@:optional
	function getDisclosureProperty():String;
	@:optional
	function getGrouped():Bool;
	@:optional
	function getIcon():Dynamic;
	@:optional
	function getIndexBar():Dynamic;
	@:optional
	function getInfinite():Bool;
	@:optional
	function getItemAt(?index:Float):Dynamic;
	@:optional
	function getItemHeight():Float;
	@:optional
	function getItemIndex(?item:Float):Float;
	@:optional
	function getMinimumBufferDistance():Float;
	@:optional
	function getOnItemDisclosure():Dynamic;
	@:optional
	function getPinHeaders():Bool;
	@:optional
	function getPreventSelectionOnDisclose():Bool;
	@:optional
	function getRefreshHeightOnUpdate():Bool;
	@:optional
	function getScrollDockedItems():Array<Dynamic>;
	@:optional
	function getStriped():Bool;
	@:optional
	function getUi():String;
	@:optional
	function getUseHeaders():Bool;
	@:optional
	function getUseSimpleItems():Bool;
	@:optional
	function getVariableHeights():Bool;
	@:optional
	function getViewItems():Dynamic;
	@:optional
	function initialize():Void;
	@:optional
	function scrollToRecord(?record:Dynamic, ?animate:Dynamic, ?overscroll:Dynamic):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setDefaultType(?defaultType:String):Void;
	@:optional
	function setDisclosureProperty(?disclosureProperty:String):Void;
	@:optional
	function setGrouped(?grouped:Bool):Void;
	@:optional
	function setIcon(?icon:Dynamic):Void;
	@:optional
	function setIndexBar(?indexBar:Dynamic):Void;
	@:optional
	function setInfinite(?infinite:Bool):Void;
	@:optional
	function setItemHeight(?itemHeight:Float):Void;
	@:optional
	function setMinimumBufferDistance(?minimumBufferDistance:Float):Void;
	@:optional
	function setOnItemDisclosure(?onItemDisclosure:Dynamic):Void;
	@:optional
	function setPinHeaders(?pinHeaders:Bool):Void;
	@:optional
	function setPreventSelectionOnDisclose(?preventSelectionOnDisclose:Bool):Void;
	@:optional
	function setRefreshHeightOnUpdate(?refreshHeightOnUpdate:Bool):Void;
	@:optional
	function setStriped(?striped:Bool):Void;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function setUseHeaders(?useHeaders:Bool):Void;
	@:optional
	function setUseSimpleItems(?useSimpleItems:Bool):Void;
	@:optional
	function setVariableHeights(?variableHeights:Bool):Void;
};
typedef IListItemHeader = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	function getBaseCls():String;
	@:optional
	function setBaseCls(?baseCls:String):Void;
};
typedef INestedList = {
	>Ext.IContainer,
	@:optional
	var allowDeselect : Bool;
	@:optional
	var backButton : Dynamic;
	@:optional
	var backText : String;
	@:optional
	var baseCls : String;
	@:optional
	var cardSwitchAnimation : Dynamic;
	@:optional
	var clearSelectionDelay : Float;
	@:optional
	var detailCard : Ext.IComponent;
	@:optional
	var detailContainer : Ext.IContainer;
	@:optional
	var displayField : String;
	@:optional
	var emptyText : String;
	@:optional
	var itemHeight : Float;
	@:optional
	var listConfig : Dynamic;
	@:optional
	var loadingText : String;
	@:optional
	var onItemDisclosure : Dynamic;
	@:optional
	var store : Dynamic;
	@:optional
	var title : String;
	@:optional
	var toolbar : Dynamic;
	@:optional
	var ui : String;
	@:optional
	var updateTitleText : Bool;
	@:optional
	var useSimpleItems : Bool;
	@:optional
	var useTitleAsBackText : Bool;
	@:optional
	var useToolbar : Bool;
	@:optional
	var variableHeights : Bool;
	@:optional
	function getAllowDeselect():Bool;
	@:optional
	function getBackButton():Dynamic;
	@:optional
	function getBackText():String;
	@:optional
	function getBaseCls():String;
	@:optional
	function getClearSelectionOnListChange():Bool;
	@:optional
	function getDetailCard():Ext.IComponent;
	@:optional
	function getDetailContainer():Ext.IContainer;
	@:optional
	function getDisplayField():String;
	@:optional
	function getEmptyText():String;
	@:optional
	function getItemHeight():Float;
	@:optional
	function getItemTextTpl(?node:Ext.data.IRecord):String;
	@:optional
	function getListConfig():Dynamic;
	@:optional
	function getLoadingText():String;
	@:optional
	function getOnItemDisclosure():Dynamic;
	@:optional
	function getStore():Dynamic;
	@:optional
	function getSubList():Void;
	@:optional
	function getTitle():String;
	@:optional
	function getTitleTextTpl(?node:Ext.data.IRecord):String;
	@:optional
	function getToolbar():Dynamic;
	@:optional
	function getUpdateTitleText():Bool;
	@:optional
	function getUseSimpleItems():Bool;
	@:optional
	function getUseTitleAsBackText():Bool;
	@:optional
	function getUseToolbar():Bool;
	@:optional
	function getVariableHeights():Bool;
	@:optional
	function goToLeaf(?node:Ext.data.INodeInterface):Void;
	@:optional
	function goToNode(?node:Ext.data.INodeInterface):Void;
	@:optional
	function onBackTap():Void;
	@:optional
	function onItemTap(?list:Ext.IList, ?index:Float, ?target:Ext.IElement, ?record:Ext.data.IRecord, ?e:Ext.event.IEvent):Void;
	@:optional
	function setAllowDeselect(?allowDeselect:Bool):Void;
	@:optional
	function setBackButton(?backButton:Dynamic):Void;
	@:optional
	function setBackText(?backText:String):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setClearSelectionOnListChange(?clearSelectionOnListChange:Bool):Void;
	@:optional
	function setDetailCard(?detailCard:Ext.IComponent):Void;
	@:optional
	function setDetailContainer(?detailContainer:Ext.IContainer):Void;
	@:optional
	function setDisplayField(?displayField:String):Void;
	@:optional
	function setEmptyText(?emptyText:String):Void;
	@:optional
	function setItemHeight(?itemHeight:Float):Void;
	@:optional
	function setListConfig(?listConfig:Dynamic):Void;
	@:optional
	function setLoadingText(?loadingText:String):Void;
	@:optional
	function setOnItemDisclosure(?onItemDisclosure:Dynamic):Void;
	@:optional
	function setStore(?store:Dynamic):Void;
	@:optional
	function setTitle(?title:String):Void;
	@:optional
	function setToolbar(?toolbar:Dynamic):Void;
	@:optional
	function setUi(?ui:Dynamic):Void;
	@:optional
	function setUpdateTitleText(?updateTitleText:Bool):Void;
	@:optional
	function setUseSimpleItems(?useSimpleItems:Bool):Void;
	@:optional
	function setUseTitleAsBackText(?useTitleAsBackText:Bool):Void;
	@:optional
	function setUseToolbar(?useToolbar:Bool):Void;
	@:optional
	function setVariableHeights(?variableHeights:Bool):Void;
};
