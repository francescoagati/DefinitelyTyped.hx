typedef IClassList = {
	>Ext.IBase,
	@:optional
	function add(?cls:Dynamic):Void;
	@:optional
	function addMany(?classes:Dynamic):Void;
	@:optional
	function remove(?cls:Dynamic):Void;
	@:optional
	function removeMany(?classes:Dynamic):Void;
};
typedef IAbsoluteLayout = {
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
typedef IAccordionLayout = {
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
typedef IAnchorLayout = {
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
typedef IBorderLayout = {
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
typedef IBoxLayout = {
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
typedef ICardLayout = {
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
typedef IColumnLayout = {
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
typedef IContainerLayout = {
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
typedef IFitLayout = {
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
typedef IFormLayout = {
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
typedef IHBoxLayout = {
	>Ext.layout.container.IBox,
	@:optional
	var align : String;
	@:optional
	var alignRoundingMethod : Dynamic;
	@:optional
	var constrainAlign : Bool;
};
typedef ITableLayout = {
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
typedef IVBoxLayout = {
	>Ext.layout.container.IBox,
	@:optional
	var align : String;
	@:optional
	var alignRoundingMethod : Dynamic;
	@:optional
	var constrainAlign : Bool;
};
typedef IContext = {
	>Ext.IBase,
	@:optional
	var layoutQueue : Ext.util.IQueue;
	@:optional
	var state : Float;
	@:optional
	function flush():Void;
	@:optional
	function getCmp(?cmp:Ext.IComponent):Void;
	@:optional
	function getEl(?parent:Ext.layout.IContextItem, ?el:Ext.dom.IElement):Void;
	@:optional
	function invalidate(?components:Dynamic, ?full:Bool):Void;
	@:optional
	function removeEl(?parent:Ext.layout.IContextItem, ?el:Ext.dom.IElement):Void;
	@:optional
	function resetLayout(?layout:Dynamic, ?ownerContext:Dynamic, ?firstTime:Dynamic):Void;
	@:optional
	function run():Bool;
	@:optional
	function runCycle():Bool;
	@:optional
	function setItemSize(?items:Dynamic, ?width:Float, ?height:Float):Void;
};
typedef IContextItem = {
	>Ext.IBase,
	@:optional
	var state : Dynamic;
	@:optional
	var wrapsComponent : Bool;
	@:optional
	function addCls(?newCls:Dynamic):Void;
	@:optional
	function block(?layout:Ext.layout.ILayout, ?propName:String):Void;
	@:optional
	function clearMarginCache():Void;
	@:optional
	function domBlock(?layout:Ext.layout.ILayout, ?propName:String):Void;
	@:optional
	function flush():Void;
	@:optional
	function getBorderInfo():Dynamic;
	@:optional
	function getClassList():Void;
	@:optional
	function getDomProp(?propName:String):Dynamic;
	@:optional
	function getEl(?nameOrEl:Dynamic, ?owner:Dynamic):Ext.layout.IContextItem;
	@:optional
	function getFrameInfo():Dynamic;
	@:optional
	function getMarginInfo():Dynamic;
	@:optional
	function getPaddingInfo():Dynamic;
	@:optional
	function getProp(?propName:String):Dynamic;
	@:optional
	function getStyle(?styleName:String):Dynamic;
	@:optional
	function getStyles(?styleNames:Array<String>, ?altNames:Array<String>):Dynamic;
	@:optional
	function hasDomProp(?propName:String):Bool;
	@:optional
	function hasProp(?propName:String):Bool;
	@:optional
	function invalidate(?options:Dynamic):Void;
	@:optional
	function recoverProp(?propName:String, ?oldProps:Dynamic, ?oldDirty:Dynamic):Void;
	@:optional
	function removeCls(?removeCls:Dynamic):Void;
	@:optional
	function removeEl(?nameOrEl:Dynamic, ?owner:Dynamic):Void;
	@:optional
	function setAttribute(?name:Dynamic, ?value:Dynamic):Void;
	@:optional
	function setContentHeight(?height:Dynamic, ?measured:Dynamic):Void;
	@:optional
	function setContentSize(?width:Dynamic, ?height:Dynamic, ?measured:Dynamic):Void;
	@:optional
	function setContentWidth(?width:Dynamic, ?measured:Dynamic):Void;
	@:optional
	function setHeight(?height:Float, ?dirty:Bool):Float;
	@:optional
	function setProp(?propName:String, ?value:Dynamic, ?dirty:Bool):Float;
	@:optional
	function setWidth(?width:Float, ?dirty:Bool):Float;
};
typedef ILayout = {
	>Ext.IBase,
	@:optional
	var done : Bool;
	@:optional
	var isLayout : Bool;
	@:optional
	function afterRemove(?item:Dynamic):Void;
	@:optional
	function beginLayout(?ownerContext:Ext.layout.IContextItem):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Ext.layout.IContextItem):Void;
	@:optional
	function calculate(?ownerContext:Ext.layout.IContextItem):Void;
	@:optional
	function completeLayout(?ownerContext:Ext.layout.IContextItem):Void;
	@:optional
	function configureItem(?item:Ext.IComponent):Void;
	@:optional
	function destroy():Void;
	@:optional
	function finalizeLayout(?ownerContext:Ext.layout.IContextItem):Void;
	@:optional
	function finishedLayout(?ownerContext:Ext.layout.IContextItem):Void;
	@:optional
	function getItemSizePolicy(?item:Ext.IComponent):Ext.layout.ISizePolicy;
	@:optional
	function getLayoutItems():Void;
	@:optional
	function initLayout():Void;
	@:optional
	function isValidParent(?item:Dynamic, ?target:Dynamic, ?position:Dynamic):Void;
	@:optional
	function notifyOwner(?ownerContext:Ext.layout.IContextItem):Void;
	@:optional
	function onContentChange(?child:Ext.IComponent):Bool;
	@:optional
	function renderItems(?items:Dynamic, ?target:Dynamic):Void;
};
typedef ISizeModel = {
	>Ext.IBase,
	@:optional
	var auto : Bool;
	@:optional
	var calculated : Bool;
	@:optional
	var calculatedFromConfigured : Bool;
	@:optional
	var calculatedFromNatural : Bool;
	@:optional
	var calculatedFromShrinkWrap : Bool;
	@:optional
	var configured : Bool;
	@:optional
	var constrainedMax : Bool;
	@:optional
	var constrainedMin : Bool;
	@:optional
	var fixed : Bool;
	@:optional
	var name : String;
	@:optional
	var names : Dynamic;
	@:optional
	var natural : Bool;
	@:optional
	var ordinal : Float;
	@:optional
	var pairsByHeightOrdinal : Array<Dynamic>;
	@:optional
	var shrinkWrap : Bool;
};
typedef ISizePolicy = {
	@:optional
	var readsHeight : Bool;
	@:optional
	var readsWidth : Bool;
	@:optional
	var setsHeight : Bool;
	@:optional
	var setsWidth : Bool;
};
