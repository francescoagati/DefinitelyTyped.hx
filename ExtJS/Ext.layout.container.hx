typedef IAbsolute = {
	>Ext.layout.container.IAnchor,
	@:optional
	var ignoreOnContentChange : Bool;
	@:optional
	var itemCls : String;
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function onContentChange():Bool;
};
typedef IAccordion = {
	>Ext.layout.container.IVBox,
	@:optional
	var activeOnTop : Bool;
	@:optional
	var align : String;
	@:optional
	var animate : Bool;
	@:optional
	var autoWidth : Bool;
	@:optional
	var collapseFirst : Bool;
	@:optional
	var fill : Bool;
	@:optional
	var hideCollapseTool : Bool;
	@:optional
	var itemCls : String;
	@:optional
	var multi : Bool;
	@:optional
	var titleCollapse : Bool;
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function configureItem(?item:Dynamic):Void;
	@:optional
	function renderItems(?items:Dynamic, ?target:Dynamic):Void;
};
typedef IAnchor = {
	>Ext.layout.container.IAuto,
	@:optional
	var anchor : String;
	@:optional
	var defaultAnchor : String;
	@:optional
	var manageOverflow : Bool;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
	@:optional
	function configureItem(?item:Dynamic):Void;
	@:optional
	function getItemSizePolicy(?item:Dynamic):Ext.layout.ISizePolicy;
};
typedef IAuto = {
	>Ext.layout.container.IContainer,
	@:optional
	var reserveScrollbar : Bool;
	@:optional
	var manageOverflow : Bool;
	@:optional
	var managePadding : Bool;
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function calculateOverflow(?ownerContext:Ext.layout.IContextItem):Void;
	@:optional
	function completeLayout(?ownerContext:Dynamic):Void;
	@:optional
	function finishedLayout(?ownerContext:Dynamic):Void;
	@:optional
	function getContainerSize(?ownerContext:Ext.layout.IContextItem, ?inDom:Bool):Dynamic;
	@:optional
	function getElementTarget():Ext.IElement;
	@:optional
	function getOverflowXStyle(?ownerContext:Ext.layout.IContextItem):String;
	@:optional
	function getOverflowYStyle(?ownerContext:Ext.layout.IContextItem):String;
	@:optional
	function getRenderTarget():Ext.IElement;
	@:optional
	function initLayout():Void;
	@:optional
	function setCtSizeIfNeeded(?ownerContext:Ext.layout.IContextItem, ?containerSize:Dynamic):Void;
};
typedef IBorder = {
	>Ext.layout.container.IContainer,
	@:optional
	var itemCls : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var regionWeights : Dynamic;
	@:optional
	var split : Bool;
	@:optional
	var splitterResize : Bool;
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function getItemSizePolicy(?item:Dynamic):Ext.layout.ISizePolicy;
	@:optional
	function getLayoutItems():Array<Ext.IComponent>;
};
typedef IBox = {
	>Ext.layout.container.IContainer,
	@:optional
	var defaultMargins : Dynamic;
	@:optional
	var flex : Float;
	@:optional
	var itemCls : String;
	@:optional
	var pack : String;
	@:optional
	var padding : String;
	@:optional
	var stretchMaxPartner : Dynamic;
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic, ?firstCycle:Dynamic):Void;
	@:optional
	function cacheFlexes(?ownerContext:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function completeLayout(?ownerContext:Dynamic):Void;
	@:optional
	function finishedLayout(?ownerContext:Dynamic):Void;
	@:optional
	function getElementTarget():Ext.IElement;
	@:optional
	function getItemSizePolicy(?item:Dynamic, ?ownerSizeModel:Dynamic):Ext.layout.ISizePolicy;
	@:optional
	function getRenderTarget():Ext.IElement;
};
typedef ICard = {
	>Ext.layout.container.IFit,
	@:optional
	var deferredRender : Bool;
	@:optional
	function getActiveItem():Ext.IComponent;
	@:optional
	function getNext():Ext.IComponent;
	@:optional
	function getPrev():Ext.IComponent;
	@:optional
	function isValidParent(?item:Dynamic, ?target:Dynamic, ?position:Dynamic):Void;
	@:optional
	function next():Ext.IComponent;
	@:optional
	function prev():Ext.IComponent;
	@:optional
	function setActiveItem(?newCard:Dynamic):Ext.IComponent;
};
typedef ICheckboxGroup = {
	>Ext.layout.container.IContainer,
	@:optional
	var autoFlex : Bool;
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function getItemSizePolicy(?item:Dynamic):Ext.layout.ISizePolicy;
	@:optional
	function initLayout():Void;
	@:optional
	function isValidParent():Void;
	@:optional
	function renderItems(?items:Dynamic):Void;
};
typedef IColumn = {
	>Ext.layout.container.IAuto,
	@:optional
	var itemCls : String;
	@:optional
	var manageOverflow : Bool;
	@:optional
	function getItemSizePolicy(?item:Dynamic, ?ownerSizeModel:Dynamic):Ext.layout.ISizePolicy;
	@:optional
	function setCtSizeIfNeeded(?ownerContext:Dynamic, ?containerSize:Dynamic):Void;
};
typedef IContainer = {
	>Ext.layout.ILayout,
	>Ext.util.IElementContainer,
	@:optional
	var itemCls : String;
	@:optional
	var overflowPadderEl : Ext.IElement;
	@:optional
	function addChildEls():Void;
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic, ?firstCycle:Dynamic):Void;
	@:optional
	function configureItem(?item:Dynamic):Void;
	@:optional
	function getContainerSize(?ownerContext:Ext.layout.IContextItem, ?inDom:Bool):Dynamic;
	@:optional
	function getElementTarget():Ext.IElement;
	@:optional
	function getLayoutItems():Array<Ext.IComponent>;
	@:optional
	function getRenderTarget():Ext.IElement;
	@:optional
	function getRenderedItems():Array<Dynamic>;
	@:optional
	function getTarget():Ext.IElement;
	@:optional
	function getVisibleItems():Array<Dynamic>;
	@:optional
	function removeChildEls(?testFn:Dynamic):Void;
};
typedef IEditor = {
	>Ext.layout.container.IContainer,
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function getItemSizePolicy(?item:Dynamic):Ext.layout.ISizePolicy;
};
typedef IFit = {
	>Ext.layout.container.IContainer,
	@:optional
	var defaultMargins : Dynamic;
	@:optional
	var itemCls : String;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic, ?firstCycle:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function getItemSizePolicy(?item:Dynamic, ?ownerSizeModel:Dynamic):Ext.layout.ISizePolicy;
};
typedef IForm = {
	>Ext.layout.container.IContainer,
	@:optional
	var getScrollRangeFlags : Dynamic;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic, ?firstCycle:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function calculateOverflow(?ownerContext:Ext.layout.IContextItem, ?containerSize:Dynamic, ?dimensions:Float):Void;
	@:optional
	function completeLayout(?ownerContext:Dynamic):Void;
	@:optional
	function doRenderPadder(?out:Dynamic, ?renderData:Dynamic):Void;
	@:optional
	function getContainerSize(?ownerContext:Ext.layout.IContextItem, ?inDom:Bool, ?ignoreOverflow:Bool):Dynamic;
	@:optional
	function getItemSizePolicy(?item:Dynamic):Ext.layout.ISizePolicy;
	@:optional
	function getOverflowXStyle(?ownerContext:Ext.layout.IContextItem):String;
	@:optional
	function getOverflowYStyle(?ownerContext:Ext.layout.IContextItem):String;
	@:optional
	function getRenderTarget():Ext.IElement;
	@:optional
	function initLayout():Void;
	@:optional
	function isValidParent(?item:Dynamic, ?target:Dynamic, ?position:Dynamic):Void;
};
typedef IHBox = {
	>Ext.layout.container.IBox,
	@:optional
	var align : String;
	@:optional
	var alignRoundingMethod : Dynamic;
	@:optional
	var constrainAlign : Bool;
};
typedef ITable = {
	>Ext.layout.container.IContainer,
	@:optional
	var columns : Float;
	@:optional
	var tableAttrs : Dynamic;
	@:optional
	var tdAttrs : Dynamic;
	@:optional
	var trAttrs : Dynamic;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function finalizeLayout():Void;
	@:optional
	function getLayoutItems():Array<Ext.IComponent>;
	@:optional
	function isValidParent(?item:Dynamic, ?target:Dynamic, ?rowIdx:Dynamic, ?cellIdx:Dynamic):Void;
};
typedef IVBox = {
	>Ext.layout.container.IBox,
	@:optional
	var align : String;
	@:optional
	var alignRoundingMethod : Dynamic;
	@:optional
	var constrainAlign : Bool;
};
