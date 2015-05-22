typedef IAbstractComponent = {
	>Ext.IBase,
	>Ext.util.IPositionable,
	>Ext.util.IObservable,
	>Ext.util.IAnimate,
	>Ext.util.IElementContainer,
	>Ext.util.IRenderable,
	>Ext.state.IStateful,
	@:optional
	var autoEl : Dynamic;
	@:optional
	var autoLoad : Dynamic;
	@:optional
	var autoRender : Dynamic;
	@:optional
	var autoShow : Bool;
	@:optional
	var baseCls : String;
	@:optional
	var border : Dynamic;
	@:optional
	var childEls : Array<Dynamic>;
	@:optional
	var cls : String;
	@:optional
	var componentCls : String;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var contentEl : String;
	@:optional
	var data : Dynamic;
	@:optional
	var disabled : Bool;
	@:optional
	var disabledCls : String;
	@:optional
	var draggable : Bool;
	@:optional
	var floating : Bool;
	@:optional
	var frame : Bool;
	@:optional
	var height : Float;
	@:optional
	var hidden : Bool;
	@:optional
	var hideMode : String;
	@:optional
	var html : Dynamic;
	@:optional
	var id : String;
	@:optional
	var itemId : String;
	@:optional
	var loader : Dynamic;
	@:optional
	var margin : Dynamic;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var overCls : String;
	@:optional
	var padding : Dynamic;
	@:optional
	var plugins : Dynamic;
	@:optional
	var renderData : Dynamic;
	@:optional
	var renderSelectors : Dynamic;
	@:optional
	var renderTo : Dynamic;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var rtl : Bool;
	@:optional
	var shrinkWrap : Dynamic;
	@:optional
	var style : Dynamic;
	@:optional
	var tpl : Dynamic;
	@:optional
	var tplWriteMode : String;
	@:optional
	var ui : String;
	@:optional
	var width : Float;
	@:optional
	var xtype : Ext.enums.IWidget;
	@:optional
	var _isLayoutRoot : Bool;
	@:optional
	var contentPaddingProperty : String;
	@:optional
	var frameSize : Dynamic;
	@:optional
	var isComponent : Bool;
	@:optional
	var maskOnDisable : Bool;
	@:optional
	var ownerCt : Ext.IContainer;
	@:optional
	var rendered : Bool;
	@:optional
	function addChildEls():Void;
	@:optional
	function addClass(?cls:Dynamic):Ext.IComponent;
	@:optional
	function addCls(?cls:Dynamic):Ext.IComponent;
	@:optional
	function addClsWithUI(?classes:Dynamic, ?skip:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?element:Dynamic, ?listeners:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addPropertyToState(?state:Dynamic, ?propName:String, ?value:String):Bool;
	@:optional
	function addStateEvents(?events:Dynamic):Void;
	@:optional
	function addUIClsToElement(?ui:String):Void;
	@:optional
	function afterComponentLayout(?width:Float, ?height:Float, ?oldWidth:Dynamic, ?oldHeight:Dynamic):Void;
	@:optional
	function afterRender():Void;
	@:optional
	function afterSetPosition(?x:Float, ?y:Float):Void;
	@:optional
	function alignTo(?element:Dynamic, ?position:String, ?offsets:Array<Float>, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function anchorTo(?element:Dynamic, ?position:String, ?offsets:Array<Float>, ?animate:Dynamic, ?monitorScroll:Dynamic, ?callback:Dynamic):Ext.util.IPositionable;
	@:optional
	var animate : Dynamic;
	@:optional
	function applyState(?state:Dynamic):Void;
	@:optional
	function beforeBlur(?e:Ext.IEventObject):Void;
	@:optional
	function beforeComponentLayout(?adjWidth:Float, ?adjHeight:Float):Void;
	@:optional
	function beforeDestroy():Void;
	@:optional
	function beforeFocus(?e:Ext.IEventObject):Void;
	@:optional
	function beforeLayout():Void;
	@:optional
	function calculateConstrainedPosition(?constrainTo:Dynamic, ?proposedPosition:Array<Float>, ?local:Bool, ?proposedSize:Array<Float>):Array<Float>;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function disable(?silent:Bool):Void;
	@:optional
	function doAutoRender():Void;
	@:optional
	function doComponentLayout():Ext.container.IContainer;
	@:optional
	function enable(?silent:Bool):Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function ensureAttachedToBody(?runLayout:Bool):Void;
	@:optional
	function findPlugin(?ptype:String):Ext.IAbstractPlugin;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function forceComponentLayout():Void;
	@:optional
	function getActiveAnimation():Dynamic;
	@:optional
	function getAlignToXY(?element:Dynamic, ?position:String, ?offsets:Array<Float>):Array<Float>;
	@:optional
	function getAnchorXY(?anchor:String, ?local:Bool, ?size:Dynamic):Array<Float>;
	@:optional
	function getBox(?contentBox:Bool, ?local:Bool):Dynamic;
	@:optional
	function getBubbleTarget():Ext.container.IContainer;
	@:optional
	function getConstrainVector(?constrainTo:Dynamic, ?proposedPosition:Array<Float>, ?proposedSize:Array<Float>):Dynamic;
	@:optional
	function getEl():Ext.dom.IElement;
	@:optional
	function getHeight():Float;
	@:optional
	function getId():String;
	@:optional
	function getInsertPosition(?position:Dynamic):HTMLElement;
	@:optional
	function getItemId():String;
	@:optional
	function getLoader():Ext.IComponentLoader;
	@:optional
	function getLocalX():Float;
	@:optional
	function getLocalXY():Array<Float>;
	@:optional
	function getLocalY():Float;
	@:optional
	function getOffsetsTo(?offsetsTo:Dynamic):Array<Float>;
	@:optional
	function getPlugin(?pluginId:String):Ext.IAbstractPlugin;
	@:optional
	function getRegion():Ext.util.IRegion;
	@:optional
	function getSize():Dynamic;
	@:optional
	function getSizeModel(?ownerCtSizeModel:Dynamic):Dynamic;
	@:optional
	function getState():Dynamic;
	@:optional
	function getViewRegion():Ext.util.IRegion;
	@:optional
	function getWidth():Float;
	@:optional
	function getX():Float;
	@:optional
	function getXTypes():String;
	@:optional
	function getXY():Array<Float>;
	@:optional
	function getY():Float;
	@:optional
	function hasActiveFx():Dynamic;
	@:optional
	function hasCls(?className:String):Bool;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function hasUICls(?cls:String):Void;
	@:optional
	function initEvents():Void;
	@:optional
	function initRenderData():Dynamic;
	@:optional
	function is(?selector:String):Bool;
	@:optional
	function isDescendantOf(?container:Ext.IContainer):Bool;
	@:optional
	function isDisabled():Bool;
	@:optional
	function isDraggable():Bool;
	@:optional
	function isDroppable():Bool;
	@:optional
	function isFloating():Bool;
	@:optional
	function isHidden():Bool;
	@:optional
	function isLayoutRoot():Void;
	@:optional
	function isLayoutSuspended():Bool;
	@:optional
	function isVisible(?deep:Bool):Bool;
	@:optional
	function isXType(?xtype:String, ?shallow:Bool):Bool;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function move(?direction:String, ?distance:Float, ?animate:Dynamic):Void;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function nextNode(?selector:String):Ext.IComponent;
	@:optional
	function nextSibling(?selector:String):Ext.IComponent;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function onAdded(?container:Ext.container.IContainer, ?pos:Float):Void;
	@:optional
	function onDisable():Void;
	@:optional
	function onEnable():Void;
	@:optional
	function onPosition(?x:Float, ?y:Float):Void;
	@:optional
	function onRemoved(?destroying:Bool):Void;
	@:optional
	function onRender(?parentNode:Ext.core.IElement, ?containerIdx:Float):Void;
	@:optional
	function onResize(?width:Dynamic, ?height:Dynamic, ?oldWidth:Dynamic, ?oldHeight:Dynamic):Void;
	@:optional
	function postBlur(?e:Ext.IEventObject):Void;
	@:optional
	function previousNode(?selector:String):Ext.IComponent;
	@:optional
	function previousSibling(?selector:String):Ext.IComponent;
	@:optional
	function registerFloatingItem(?cmp:Dynamic):Void;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function removeAnchor():Ext.util.IPositionable;
	@:optional
	function removeChildEls(?testFn:Dynamic):Void;
	@:optional
	function removeCls(?cls:Dynamic):Ext.IComponent;
	@:optional
	function removeClsWithUI(?cls:Dynamic):Void;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeUIClsFromElement(?ui:String):Void;
	@:optional
	function render(?container:Dynamic, ?position:Dynamic):Void;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function savePropToState(?propName:String, ?state:Dynamic, ?stateName:String):Bool;
	@:optional
	function savePropsToState(?propNames:Dynamic, ?state:Dynamic):Dynamic;
	@:optional
	function saveState():Void;
	@:optional
	function sequenceFx():Dynamic;
	@:optional
	function setBorder(?border:Dynamic):Void;
	@:optional
	function setBox(?box:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function setDisabled(?disabled:Bool):Void;
	@:optional
	function setDocked(?dock:Dynamic, ?layoutParent:Bool):Ext.IComponent;
	@:optional
	function setHeight(?height:Float):Ext.IComponent;
	@:optional
	function setLocalX(?x:Dynamic):Ext.util.IPositionable;
	@:optional
	function setLocalXY(?x:Dynamic, ?y:Dynamic):Ext.util.IPositionable;
	@:optional
	function setLocalY(?y:Dynamic):Ext.util.IPositionable;
	@:optional
	function setMargin(?margin:Dynamic):Void;
	@:optional
	function setRegion(?region:Ext.util.IRegion, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function setSize(?width:Dynamic, ?height:Dynamic):Ext.IComponent;
	@:optional
	function setUI(?ui:String):Void;
	@:optional
	function setVisible(?visible:Bool):Ext.IComponent;
	@:optional
	function setWidth(?width:Float):Ext.IComponent;
	@:optional
	function setX(?x:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function setXY(?xy:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function setY(?y:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function stopAnimation():Ext.IElement;
	@:optional
	function stopFx():Ext.IElement;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function syncFx():Dynamic;
	@:optional
	function translatePoints(?x:Dynamic, ?y:Float):Dynamic;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function up(?selector:Dynamic, ?limit:Dynamic):Ext.container.IContainer;
	@:optional
	function update(?htmlOrData:Dynamic, ?loadScripts:Bool, ?callback:Dynamic):Void;
	@:optional
	function updateLayout(?options:Dynamic):Void;
};
extern class AbstractComponent {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function cancelLayout(?comp:Ext.IComponent):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function flushLayouts():Void;
	static function getName():String;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
	static function resumeLayouts(?flush:Bool):Void;
	static function suspendLayouts():Void;
	static function updateLayout(?comp:Ext.IComponent, ?defer:Bool):Void;
}
typedef IAbstractManager = {
	>Ext.IBase,
	@:optional
	var all : Ext.util.IHashMap;
	@:optional
	function create(?config:Dynamic, ?defaultType:String):Dynamic;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function get(?id:String):Dynamic;
	@:optional
	function getCount():Float;
	@:optional
	function isRegistered(?type:String):Bool;
	@:optional
	function onAvailable(?id:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function register(?item:Dynamic):Void;
	@:optional
	function registerType(?type:String, ?cls:Dynamic):Void;
	@:optional
	function unregister(?item:Dynamic):Void;
};
typedef IAbstractPlugin = {
	>Ext.IBase,
	@:optional
	var pluginId : String;
	@:optional
	var isPlugin : Bool;
	@:optional
	function clonePlugin(?overrideCfg:Dynamic):Void;
	@:optional
	function destroy():Void;
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function getCmp():Ext.IComponent;
	@:optional
	function init(?client:Ext.IComponent):Void;
	@:optional
	function setCmp(?cmp:Ext.IComponent):Void;
};
typedef IAction = {
	>Ext.IBase,
	@:optional
	var disabled : Bool;
	@:optional
	var handler : Dynamic;
	@:optional
	var hidden : Bool;
	@:optional
	var iconCls : String;
	@:optional
	var itemId : String;
	@:optional
	var scope : Dynamic;
	@:optional
	var text : String;
	@:optional
	function disable():Void;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function enable():Void;
	@:optional
	function execute(args:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function getIconCls():Void;
	@:optional
	function getText():Void;
	@:optional
	function hide():Void;
	@:optional
	function isDisabled():Void;
	@:optional
	function isHidden():Void;
	@:optional
	function setDisabled(?disabled:Bool):Void;
	@:optional
	function setHandler(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setHidden(?hidden:Bool):Void;
	@:optional
	function setIconCls(?cls:String):Void;
	@:optional
	function setText(?text:String):Void;
	@:optional
	function show():Void;
};
typedef IAjax = {
	>Ext.data.IConnection,
};
extern class Ajax {
	static var autoAbort : Bool;
	static var defaultHeaders : Dynamic;
	static var disableCaching : Bool;
	static var extraParams : Dynamic;
	static var hasListeners : Dynamic;
	static var isObservable : Bool;
	static var method : String;
	static var self : Ext.IClass;
	static var timeout : Float;
	static var url : String;
	static function abort(?request:Dynamic):Void;
	static function abortAll():Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function getInitialConfig(?name:String):Dynamic;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isLoading(?request:Dynamic):Bool;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function parseStatus(?status:Float):Dynamic;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function request(?options:Dynamic):Dynamic;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function setOptions(?options:Dynamic, ?scope:Dynamic):Dynamic;
	static function statics():Ext.IClass;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function upload(?form:Dynamic, ?url:String, ?params:String, ?options:Dynamic):Void;
}
typedef IArray = { };
extern class Array {
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?array:Array<Dynamic>):Array<Dynamic>;
	static function contains(?array:Array<Dynamic>, ?item:Dynamic):Bool;
	static function difference(?arrayA:Array<Dynamic>, ?arrayB:Array<Dynamic>):Array<Dynamic>;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function equals(?array1:Array<Dynamic>, ?array2:Array<Dynamic>):Bool;
	static function erase(?array:Array<Dynamic>, ?index:Float, ?removeCount:Float):Array<Dynamic>;
	static function every(?array:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Bool;
	static function filter(?array:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Array<Dynamic>;
	static function findBy(?array:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function forEach(?array:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function from(?value:Dynamic, ?newReference:Bool):Array<Dynamic>;
	static function include(?array:Array<Dynamic>, ?item:Dynamic):Void;
	static function indexOf(?array:Array<Dynamic>, ?item:Dynamic, ?from:Float):Float;
	static function insert(?array:Array<Dynamic>, ?index:Float, ?items:Array<Dynamic>):Array<Dynamic>;
	static function intersect(?array1:Array<Dynamic>, ?array2:Array<Dynamic>, ?etc:Array<Dynamic>):Array<Dynamic>;
	static function map(?array:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Array<Dynamic>;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(?array1:Array<Dynamic>, ?array2:Array<Dynamic>, ?etc:Array<Dynamic>):Array<Dynamic>;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function push(target:Array<Dynamic>, elements:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function remove(?array:Array<Dynamic>, ?item:Dynamic):Array<Dynamic>;
	static function replace(?array:Array<Dynamic>, ?index:Float, ?removeCount:Float, ?insert:Array<Dynamic>):Array<Dynamic>;
	static function slice(?array:Array<Dynamic>, ?begin:Float, ?end:Float):Array<Dynamic>;
	static function some(?array:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Bool;
	static function sort(?array:Array<Dynamic>, ?sortFn:Dynamic):Array<Dynamic>;
	static function splice(array:Array<Dynamic>, index:Float, removeCount:Float, elements:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function sum(?array:Array<Dynamic>):Float;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toMap(?array:Array<Dynamic>, ?getKey:Dynamic, ?scope:Dynamic):Dynamic;
	static function toValueMap(?array:Array<Dynamic>, ?getKey:Dynamic, ?scope:Dynamic):Dynamic;
	static function union(?array1:Array<Dynamic>, ?array2:Array<Dynamic>, ?etc:Array<Dynamic>):Array<Dynamic>;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
}
typedef IBase = {
	>Ext.IClass,
	@:optional
	var self : Ext.IClass;
	@:optional
	function callOverridden(?args:Dynamic):Dynamic;
	@:optional
	function callParent(?args:Dynamic):Dynamic;
	@:optional
	function callSuper(?args:Dynamic):Dynamic;
	@:optional
	function getInitialConfig(?name:String):Dynamic;
	@:optional
	function initConfig(?config:Dynamic):Ext.IBase;
};
extern class Base {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function getName():String;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IButton = {
	>Ext.IComponent,
	>Ext.IQueryable,
	@:optional
	var allowDepress : Bool;
	@:optional
	var arrowAlign : String;
	@:optional
	var arrowCls : String;
	@:optional
	var baseCls : String;
	@:optional
	var baseParams : Dynamic;
	@:optional
	var clickEvent : String;
	@:optional
	var cls : String;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var destroyMenu : Bool;
	@:optional
	var disabled : Bool;
	@:optional
	var enableToggle : Bool;
	@:optional
	var focusCls : String;
	@:optional
	var frame : Bool;
	@:optional
	var glyph : Dynamic;
	@:optional
	var handleMouseEvents : Bool;
	@:optional
	var handler : Dynamic;
	@:optional
	var hidden : Bool;
	@:optional
	var href : String;
	@:optional
	var hrefTarget : String;
	@:optional
	var icon : String;
	@:optional
	var iconAlign : String;
	@:optional
	var iconCls : String;
	@:optional
	var menu : Dynamic;
	@:optional
	var menuActiveCls : String;
	@:optional
	var menuAlign : String;
	@:optional
	var minWidth : Float;
	@:optional
	var overCls : String;
	@:optional
	var overflowText : String;
	@:optional
	var params : Dynamic;
	@:optional
	var pressed : Bool;
	@:optional
	var pressedCls : String;
	@:optional
	var preventDefault : Bool;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var repeat : Dynamic;
	@:optional
	var scale : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var showEmptyMenu : Bool;
	@:optional
	var shrinkWrap : Dynamic;
	@:optional
	var tabIndex : Float;
	@:optional
	var text : String;
	@:optional
	var textAlign : String;
	@:optional
	var toggleGroup : String;
	@:optional
	var toggleHandler : Dynamic;
	@:optional
	var tooltip : Dynamic;
	@:optional
	var tooltipType : String;
	@:optional
	var isAction : Bool;
	@:optional
	var template : Ext.ITemplate;
	@:optional
	function child(?selector:Dynamic):Dynamic;
	@:optional
	function disable(?silent:Dynamic):Void;
	@:optional
	function down(?selector:Dynamic):Dynamic;
	@:optional
	function enable(?silent:Dynamic):Void;
	@:optional
	function getTemplateArgs():Dynamic;
	@:optional
	function getText():String;
	@:optional
	function hasVisibleMenu():Bool;
	@:optional
	function hideMenu():Ext.button.IButton;
	@:optional
	function initComponent():Void;
	@:optional
	function onDisable():Void;
	@:optional
	function query(?selector:String):Array<Ext.IComponent>;
	@:optional
	function queryBy(?fn:Dynamic, ?scope:Dynamic):Array<Ext.IComponent>;
	@:optional
	function queryById(?id:String):Ext.IComponent;
	@:optional
	function setGlyph(?glyph:Dynamic):Ext.button.IButton;
	@:optional
	function setHandler(?handler:Dynamic, ?scope:Dynamic):Ext.button.IButton;
	@:optional
	function setHref(?href:String):Void;
	@:optional
	function setIcon(?icon:String):Ext.button.IButton;
	@:optional
	function setIconCls(?cls:String):Ext.button.IButton;
	@:optional
	function setParams(?params:Dynamic):Void;
	@:optional
	function setScale(?scale:String):Void;
	@:optional
	function setText(?text:String):Ext.button.IButton;
	@:optional
	function setTextAlign(?align:String):Void;
	@:optional
	function setTooltip(?tooltip:Dynamic):Ext.button.IButton;
	@:optional
	function setUI(?ui:Dynamic):Void;
	@:optional
	function showMenu(?fromEvent:Dynamic):Void;
	@:optional
	function toggle(?state:Bool, ?suppressEvent:Bool):Ext.button.IButton;
};
typedef ICycleButton = {
	>Ext.button.ISplit,
	@:optional
	var changeHandler : Dynamic;
	@:optional
	var forceGlyph : Dynamic;
	@:optional
	var forceIcon : String;
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var prependText : String;
	@:optional
	var showText : Bool;
	@:optional
	var menu : Ext.menu.IMenu;
	@:optional
	function getActiveItem():Ext.menu.ICheckItem;
	@:optional
	function setActiveItem(?item:Ext.menu.ICheckItem, ?suppressEvent:Bool):Void;
	@:optional
	function toggleSelected():Void;
};
typedef IButtonToggleManager = {
	>Ext.IBase,
};
extern class ButtonToggleManager {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
}
typedef ISplitButton = {
	>Ext.button.IButton,
	@:optional
	var arrowHandler : Dynamic;
	@:optional
	var arrowTooltip : String;
	@:optional
	function setArrowHandler(?handler:Dynamic, ?scope:Dynamic):Void;
};
typedef IClass = {
	@:optional
	var alias : Array<String>;
	@:optional
	var alternateClassName : Dynamic;
	@:optional
	var config : Dynamic;
	@:optional
	var extend : String;
	@:optional
	var inheritableStatics : Dynamic;
	@:optional
	var mixins : Dynamic;
	@:optional
	var requires : Array<String>;
	@:optional
	var singleton : Bool;
	@:optional
	var statics : Dynamic;
	@:optional
	var uses : Array<String>;
};
typedef IClassManager = { };
extern class ClassManager {
	static function addNameAliasMappings(?aliases:Dynamic):Ext.IClassManager;
	static function addNameAlternateMappings(?alternates:Dynamic):Ext.IClassManager;
	static function create(?className:Dynamic, ?data:Dynamic, ?createdFn:Dynamic):Void;
	static function get(?name:String):Ext.IClass;
	static function getAliasesByName(?name:String):Array<Dynamic>;
	static function getByAlias(?alias:String):Ext.IClass;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getDisplayName(?object:Dynamic):String;
	static function getName(?object:Dynamic):String;
	static function getNameByAlias(?alias:String):String;
	static function getNameByAlternate(?alternate:String):String;
	static function getNamesByExpression(?expression:String):Array<String>;
	static function instantiateByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function isCreated(?className:String):Bool;
	static function set(?name:String, ?value:Dynamic):Ext.IClassManager;
	static function setAlias(?cls:Dynamic, ?alias:String):Ext.IClassManager;
	static function setNamespace(?name:String, ?value:Dynamic):Void;
}
typedef IComponent = {
	>Ext.IAbstractComponent,
	>Ext.util.IFloating,
	@:optional
	var autoScroll : Bool;
	@:optional
	var columnWidth : Dynamic;
	@:optional
	var constrainTo : Dynamic;
	@:optional
	var constraintInsets : Dynamic;
	@:optional
	var defaultAlign : String;
	@:optional
	var floating : Bool;
	@:optional
	var formBind : Bool;
	@:optional
	var overflowX : String;
	@:optional
	var overflowY : String;
	@:optional
	var region : Dynamic;
	@:optional
	var resizable : Dynamic;
	@:optional
	var resizeHandles : String;
	@:optional
	var toFrontOnShow : Bool;
	@:optional
	var floatParent : Ext.IContainer;
	@:optional
	var scrollFlags : Dynamic;
	@:optional
	var zIndexManager : Ext.IZIndexManager;
	@:optional
	var zIndexParent : Ext.IContainer;
	@:optional
	function afterComponentLayout():Void;
	@:optional
	function afterHide(?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function afterRender():Void;
	@:optional
	function afterSetPosition(?ax:Dynamic, ?ay:Dynamic):Void;
	@:optional
	function afterShow(?animateTarget:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function beforeLayout():Void;
	@:optional
	function beforeShow():Void;
	@:optional
	function bubble(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Ext.IComponent;
	@:optional
	function cancelFocus():Void;
	@:optional
	function center():Ext.IComponent;
	@:optional
	function cloneConfig(?overrides:Dynamic):Ext.IComponent;
	@:optional
	function doConstrain(?constrainTo:Dynamic):Void;
	@:optional
	function findParentBy(?fn:Dynamic):Ext.container.IContainer;
	@:optional
	function findParentByType(?xtype:Dynamic):Ext.container.IContainer;
	@:optional
	function focus(?selectText:Bool, ?delay:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Ext.IComponent;
	@:optional
	function getEl():Ext.dom.IElement;
	@:optional
	function getId():String;
	@:optional
	function getPosition(?local:Bool):Array<Float>;
	@:optional
	function getXType():String;
	@:optional
	function hide(?animateTarget:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Ext.IComponent;
	@:optional
	function initComponent():Void;
	@:optional
	function onAdded():Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function onHide(?animateTarget:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function onShow(?animateTarget:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function onShowComplete(?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function scrollBy(?deltaX:Dynamic, ?deltaY:Dynamic, ?animate:Dynamic):Void;
	@:optional
	function setActive(?active:Bool, ?newActive:Ext.IComponent):Void;
	@:optional
	function setAutoScroll(?scroll:Bool):Ext.IComponent;
	@:optional
	function setBorderRegion(?region:String):String;
	@:optional
	function setLoading(?load:Dynamic, ?targetEl:Bool):Ext.ILoadMask;
	@:optional
	function setOverflowXY(?overflowX:String, ?overflowY:String):Ext.IComponent;
	@:optional
	function setPagePosition(?x:Dynamic, ?y:Float, ?animate:Dynamic):Ext.IComponent;
	@:optional
	function setPosition(?x:Dynamic, ?y:Float, ?animate:Dynamic):Ext.IComponent;
	@:optional
	function setRegionWeight(?weight:Float):Float;
	@:optional
	function show(?animateTarget:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Ext.IComponent;
	@:optional
	function showAt(?x:Dynamic, ?y:Float, ?animate:Dynamic):Ext.IComponent;
	@:optional
	function showBy(?component:Dynamic, ?position:String, ?offsets:Array<Float>):Ext.IComponent;
	@:optional
	function toBack():Ext.IComponent;
	@:optional
	function toFront(?preventFocus:Bool):Ext.IComponent;
	@:optional
	function updateBox(?box:Dynamic):Ext.IComponent;
};
typedef IComponentLoader = {
	>Ext.IElementLoader,
	@:optional
	var loadMask : Dynamic;
	@:optional
	var scripts : Bool;
	@:optional
	var target : Dynamic;
	@:optional
	function setTarget(?target:Dynamic):Void;
};
typedef IComponentManager = {
	>Ext.IAbstractManager,
};
extern class ComponentManager {
	static var all : Ext.util.IHashMap;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function create(?config:Dynamic, ?defaultType:String):Ext.IComponent;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function get(?id:String):Dynamic;
	static function getCount():Float;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isRegistered(?type:String):Bool;
	static function onAvailable(?id:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function register(?item:Dynamic):Void;
	static function registerType(?type:Dynamic, ?cls:Dynamic):Void;
	static function statics():Ext.IClass;
	static function unregister(?item:Dynamic):Void;
}
typedef IComponentMgr = {
	>Ext.IAbstractManager,
};
extern class ComponentMgr {
	static var all : Ext.util.IHashMap;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function create(?config:Dynamic, ?defaultType:String):Ext.IComponent;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function get(?id:String):Dynamic;
	static function getCount():Float;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isRegistered(?type:String):Bool;
	static function onAvailable(?id:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function register(?item:Dynamic):Void;
	static function registerType(?type:Dynamic, ?cls:Dynamic):Void;
	static function statics():Ext.IClass;
	static function unregister(?item:Dynamic):Void;
}
typedef IComponentQuery = {
	>Ext.IBase,
};
extern class ComponentQuery {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function is(?component:Ext.IComponent, ?selector:String):Bool;
	static function query(?selector:String, ?root:Ext.container.IContainer):Array<Ext.IComponent>;
	static function statics():Ext.IClass;
}
typedef IButtonGroup = {
	>Ext.panel.IPanel,
	@:optional
	var baseCls : String;
	@:optional
	var columns : Float;
	@:optional
	var defaultButtonUI : String;
	@:optional
	var defaultType : String;
	@:optional
	var frame : Bool;
	@:optional
	var layout : Dynamic;
	@:optional
	var titleAlign : String;
	@:optional
	function onBeforeAdd(?component:Dynamic):Void;
};
typedef IContainer = {
	>Ext.container.IAbstractContainer,
	@:optional
	var anchorSize : Dynamic;
	@:optional
	function getChildByElement(?el:Dynamic, ?deep:Bool):Ext.IComponent;
};
typedef IViewport = {
	>Ext.container.IContainer,
	@:optional
	var isViewport : Bool;
	@:optional
	function onRender():Void;
};
typedef IStoreMgr = {
	>Ext.util.IMixedCollection,
};
extern class StoreMgr {
	static var hasListeners : Dynamic;
	static var isMixedCollection : Bool;
	static var isObservable : Bool;
	static var isSortable : Bool;
	static var self : Ext.IClass;
	static var sorters : Ext.util.IMixedCollection;
	static function add(?key:Dynamic, ?obj:Dynamic):Dynamic;
	static function addAll(?objs:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear():Void;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function clone():Ext.util.IMixedCollection;
	static function collect(?property:String, ?root:String, ?allowBlank:Bool):Array<Dynamic>;
	static function contains(?o:Dynamic):Bool;
	static function containsKey(?key:String):Bool;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Bool, ?caseSensitive:Bool):Ext.util.IMixedCollection;
	static function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	static function find():Void;
	static function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function findIndex(?property:String, ?value:Dynamic, ?start:Float, ?anyMatch:Bool, ?caseSensitive:Bool):Float;
	static function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	static function findInsertionIndex(?newItem:Dynamic, ?sorterFn:Dynamic):Float;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function first():Dynamic;
	static function generateComparator():Void;
	static function get(?key:Dynamic):Dynamic;
	static function getAt(?index:Float):Dynamic;
	static function getByKey(?key:Dynamic):Dynamic;
	static function getCount():Float;
	static function getFirstSorter():Ext.util.ISorter;
	static function getInitialConfig(?name:String):Dynamic;
	static function getKey(?o:Dynamic):Dynamic;
	static function getRange(?startIndex:Float, ?endIndex:Float):Array<Dynamic>;
	static function hasListener(?eventName:String):Bool;
	static function indexOf(?o:Dynamic):Float;
	static function indexOfKey(?key:String):Float;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function initSortable():Void;
	static function insert(?index:Float, ?key:Dynamic, ?o:Dynamic):Dynamic;
	static function last():Dynamic;
	static function lookup(?store:Dynamic):Ext.data.IStore;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function register(stores:Ext.data.IStore):Void;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function remove(?o:Dynamic):Dynamic;
	static function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	static function removeAt(?index:Float):Dynamic;
	static function removeAtKey(?key:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeRange(?index:Float, ?removeCount:Float):Dynamic;
	static function reorder(?mapping:Dynamic):Void;
	static function replace(?key:String, ?o:Dynamic):Dynamic;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function sort(?sorters:Dynamic, ?direction:String):Array<Ext.util.ISorter>;
	static function sortBy(?sorterFn:Dynamic):Void;
	static function sortByKey(?direction:String, ?fn:Dynamic):Void;
	static function statics():Ext.IClass;
	static function sum(?property:String, ?root:String, ?start:Float, ?end:Float):Float;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unregister(?stores:Dynamic):Void;
	static function updateKey(?oldKey:Dynamic, ?newKey:Dynamic):Void;
}
typedef IStoreManager = {
	>Ext.util.IMixedCollection,
};
extern class StoreManager {
	static var hasListeners : Dynamic;
	static var isMixedCollection : Bool;
	static var isObservable : Bool;
	static var isSortable : Bool;
	static var self : Ext.IClass;
	static var sorters : Ext.util.IMixedCollection;
	static function add(?key:Dynamic, ?obj:Dynamic):Dynamic;
	static function addAll(?objs:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear():Void;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function clone():Ext.util.IMixedCollection;
	static function collect(?property:String, ?root:String, ?allowBlank:Bool):Array<Dynamic>;
	static function contains(?o:Dynamic):Bool;
	static function containsKey(?key:String):Bool;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Bool, ?caseSensitive:Bool):Ext.util.IMixedCollection;
	static function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	static function find():Void;
	static function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function findIndex(?property:String, ?value:Dynamic, ?start:Float, ?anyMatch:Bool, ?caseSensitive:Bool):Float;
	static function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	static function findInsertionIndex(?newItem:Dynamic, ?sorterFn:Dynamic):Float;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function first():Dynamic;
	static function generateComparator():Void;
	static function get(?key:Dynamic):Dynamic;
	static function getAt(?index:Float):Dynamic;
	static function getByKey(?key:Dynamic):Dynamic;
	static function getCount():Float;
	static function getFirstSorter():Ext.util.ISorter;
	static function getInitialConfig(?name:String):Dynamic;
	static function getKey(?o:Dynamic):Dynamic;
	static function getRange(?startIndex:Float, ?endIndex:Float):Array<Dynamic>;
	static function hasListener(?eventName:String):Bool;
	static function indexOf(?o:Dynamic):Float;
	static function indexOfKey(?key:String):Float;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function initSortable():Void;
	static function insert(?index:Float, ?key:Dynamic, ?o:Dynamic):Dynamic;
	static function last():Dynamic;
	static function lookup(?store:Dynamic):Ext.data.IStore;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function register(stores:Ext.data.IStore):Void;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function remove(?o:Dynamic):Dynamic;
	static function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	static function removeAt(?index:Float):Dynamic;
	static function removeAtKey(?key:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeRange(?index:Float, ?removeCount:Float):Dynamic;
	static function reorder(?mapping:Dynamic):Void;
	static function replace(?key:String, ?o:Dynamic):Dynamic;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function sort(?sorters:Dynamic, ?direction:String):Array<Ext.util.ISorter>;
	static function sortBy(?sorterFn:Dynamic):Void;
	static function sortByKey(?direction:String, ?fn:Dynamic):Void;
	static function statics():Ext.IClass;
	static function sum(?property:String, ?root:String, ?start:Float, ?end:Float):Float;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unregister(?stores:Dynamic):Void;
	static function updateKey(?oldKey:Dynamic, ?newKey:Dynamic):Void;
}
typedef IDate = { };
extern class Date {
	static var DAY : String;
	static var HOUR : String;
	static var MILLI : String;
	static var MINUTE : String;
	static var MONTH : String;
	static var SECOND : String;
	static var YEAR : String;
	static var dayNames : Array<String>;
	static var defaultFormat : String;
	static var defaults : Dynamic;
	static var formatCodes : Dynamic;
	static var formatFunctions : Dynamic;
	static var monthNames : Array<String>;
	static var monthNumbers : Dynamic;
	static var parseFunctions : Dynamic;
	static var useStrict : Bool;
	static function add(?date:Dynamic, ?interval:String, ?value:Float):Dynamic;
	static function between(?date:Dynamic, ?start:Dynamic, ?end:Dynamic):Bool;
	static function clearTime(?date:Dynamic, ?clone:Bool):Dynamic;
	static function clone(?date:Dynamic):Dynamic;
	static function format(?date:Dynamic, ?format:String):String;
	static function formatContainsDateInfo(?format:String):Bool;
	static function formatContainsHourInfo(?format:String):Bool;
	static function getDayOfYear(?date:Dynamic):Float;
	static function getDaysInMonth(?date:Dynamic):Float;
	static function getElapsed(?dateA:Dynamic, ?dateB:Dynamic):Float;
	static function getFirstDateOfMonth(?date:Dynamic):Dynamic;
	static function getFirstDayOfMonth(?date:Dynamic):Float;
	static function getGMTOffset(?date:Dynamic, ?colon:Bool):String;
	static function getLastDateOfMonth(?date:Dynamic):Dynamic;
	static function getLastDayOfMonth(?date:Dynamic):Float;
	static function getMonthNumber(?name:String):Float;
	static function getShortDayName(?day:Float):String;
	static function getShortMonthName(?month:Float):String;
	static function getSuffix(?date:Dynamic):String;
	static function getTimezone(?date:Dynamic):String;
	static function getWeekOfYear(?date:Dynamic):Float;
	static function isDST(?date:Dynamic):Bool;
	static function isEqual(?date1:Dynamic, ?date2:Dynamic):Bool;
	static function isLeapYear(?date:Dynamic):Bool;
	static function isValid(?year:Float, ?month:Float, ?day:Float, ?hour:Float, ?minute:Float, ?second:Float, ?millisecond:Float):Bool;
	static function now():Float;
	static function parse(?input:String, ?format:String, ?strict:Bool):Dynamic;
	static function subtract(?date:Dynamic, ?interval:String, ?value:Float):Dynamic;
	static function unescapeFormat(?format:String):String;
}
typedef IDirect = {
	>Ext.IBase,
	>Ext.util.IObservable,
};
extern class Direct {
	static var exceptions : Dynamic;
	static var hasListeners : Dynamic;
	static var isObservable : Bool;
	static var self : Ext.IClass;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addProvider(?provider:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function getInitialConfig(?name:String):Dynamic;
	static function getProvider(?id:Dynamic):Void;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function parseMethod(?fn:Dynamic):Dynamic;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeProvider(?provider:Dynamic):Ext.direct.IProvider;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function statics():Ext.IClass;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
}
typedef ICompositeElement = {
	>Ext.dom.ICompositeElementLite,
};
typedef ICompositeElementLite = {
	>Ext.IBase,
	@:optional
	var elements : Array<HTMLElement>;
	@:optional
	var isComposite : Bool;
	@:optional
	function add(?els:Dynamic):Ext.dom.ICompositeElement;
	@:optional
	function clear(?removeDom:Bool):Void;
	@:optional
	function contains(?el:Dynamic):Bool;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Ext.dom.ICompositeElement;
	@:optional
	function fill(?els:Dynamic):Ext.dom.ICompositeElement;
	@:optional
	function filter(?selector:Dynamic):Ext.dom.ICompositeElement;
	@:optional
	function first():Ext.dom.IElement;
	@:optional
	function getCount():Float;
	@:optional
	function indexOf(?el:Dynamic):Float;
	@:optional
	function item(?index:Float):Ext.dom.IElement;
	@:optional
	function last():Ext.dom.IElement;
	@:optional
	function removeElement(?el:Dynamic, ?removeDom:Bool):Ext.dom.ICompositeElement;
	@:optional
	function replaceElement(?el:Dynamic, ?replacement:Dynamic, ?domReplace:Bool):Ext.dom.ICompositeElement;
	@:optional
	function slice(?start:Float, ?end:Float):Array<HTMLElement>;
};
typedef IElement = {
	>Ext.dom.IAbstractElement,
	@:optional
	var autoBoxAdjust : Bool;
	@:optional
	var originalDisplay : String;
	@:optional
	function addClsOnClick(?className:String, ?testFn:Dynamic, ?scope:Dynamic):Ext.dom.IElement;
	@:optional
	function addClsOnFocus(?className:String, ?testFn:Dynamic, ?scope:Dynamic):Ext.dom.IElement;
	@:optional
	function addClsOnOver(?className:String, ?testFn:Dynamic, ?scope:Dynamic):Ext.dom.IElement;
	@:optional
	function addKeyListener(?key:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Ext.util.IKeyMap;
	@:optional
	function addKeyMap(?config:Dynamic):Ext.util.IKeyMap;
	@:optional
	function addListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Ext.dom.IElement;
	@:optional
	function animate(?config:Dynamic):Ext.dom.IElement;
	@:optional
	function blur():Ext.dom.IElement;
	@:optional
	function boxWrap(?clazz:String):Ext.dom.IElement;
	@:optional
	function cacheScrollValues():Dynamic;
	@:optional
	function center(?centerIn:Dynamic):Void;
	@:optional
	function clean(?forceReclean:Bool):Void;
	@:optional
	function clearListeners():Ext.dom.IElement;
	@:optional
	function clearOpacity():Ext.dom.IElement;
	@:optional
	function clearPositioning(?value:String):Ext.dom.IElement;
	@:optional
	function clip():Ext.dom.IElement;
	@:optional
	function createProxy(?config:Dynamic, ?renderTo:Dynamic, ?matchBox:Bool):Ext.dom.IElement;
	@:optional
	function createShim():Ext.dom.IElement;
	@:optional
	function enableDisplayMode(?display:String):Ext.dom.IElement;
	@:optional
	function fadeIn(?options:Dynamic):Ext.IElement;
	@:optional
	function fadeOut(?options:Dynamic):Ext.IElement;
	@:optional
	function focus(?defer:Float):Ext.dom.IElement;
	@:optional
	function focusable():Bool;
	@:optional
	function frame(?color:String, ?count:Float, ?options:Dynamic):Ext.dom.IElement;
	@:optional
	function getAttributeNS(?namespace:String, ?name:String):String;
	@:optional
	function getBottom(?local:Bool):Float;
	@:optional
	function getCenterXY():Array<Float>;
	@:optional
	function getColor(?attr:String, ?defaultValue:String, ?prefix:String):Void;
	@:optional
	function getComputedHeight():Float;
	@:optional
	function getComputedWidth():Float;
	@:optional
	function getFrameWidth(?sides:String):Float;
	@:optional
	function getLeft(?local:Bool):Float;
	@:optional
	function getLoader():Ext.IElementLoader;
	@:optional
	function getLocalX():Float;
	@:optional
	function getLocalXY():Array<Dynamic>;
	@:optional
	function getLocalY():Float;
	@:optional
	function getPageBox(?asRegion:Bool):Dynamic;
	@:optional
	function getPositioning(?autoPx:Bool):Dynamic;
	@:optional
	function getRight(?local:Bool):Float;
	@:optional
	function getScroll():Dynamic;
	@:optional
	function getScrollLeft():Float;
	@:optional
	function getScrollTop():Float;
	@:optional
	function getStyleSize():Dynamic;
	@:optional
	function getTextWidth(?text:String, ?min:Float, ?max:Float):Float;
	@:optional
	function getTop(?local:Bool):Float;
	@:optional
	function getX():Float;
	@:optional
	function getXY():Array<Dynamic>;
	@:optional
	function getY():Float;
	@:optional
	function ghost(?anchor:String, ?options:Dynamic):Ext.dom.IElement;
	@:optional
	function hide(?animate:Dynamic):Ext.dom.IElement;
	@:optional
	function highlight(?color:String, ?options:Dynamic):Ext.dom.IElement;
	@:optional
	function hover(?overFn:Dynamic, ?outFn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Ext.dom.IElement;
	@:optional
	function initDD(?group:String, ?config:Dynamic, ?overrides:Dynamic):Ext.dd.IDD;
	@:optional
	function initDDProxy(?group:String, ?config:Dynamic, ?overrides:Dynamic):Ext.dd.IDDProxy;
	@:optional
	function initDDTarget(?group:String, ?config:Dynamic, ?overrides:Dynamic):Ext.dd.IDDTarget;
	@:optional
	function isBorderBox():Bool;
	@:optional
	function isDisplayed():Bool;
	@:optional
	function isFocusable(?asFocusEl:Dynamic):Bool;
	@:optional
	function isMasked():Bool;
	@:optional
	function isScrollable():Bool;
	@:optional
	function isVisible(?deep:Bool):Bool;
	@:optional
	function load(?options:Dynamic):Ext.dom.IElement;
	@:optional
	function mask(?msg:String, ?msgCls:String):Ext.dom.IElement;
	@:optional
	function monitorMouseLeave(?delay:Float, ?handler:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function moveTo(?x:Float, ?y:Float, ?animate:Dynamic):Ext.dom.IElement;
	@:optional
	function needsTabIndex():Void;
	@:optional
	function on(?eventName:String, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Ext.dom.IElement;
	@:optional
	function pause(?seconds:Float):Ext.IElement;
	@:optional
	function position(?pos:String, ?zIndex:Float, ?x:Float, ?y:Float):Void;
	@:optional
	function puff(?options:Dynamic):Ext.dom.IElement;
	@:optional
	function purgeAllListeners():Ext.dom.IElement;
	@:optional
	function relayEvent(?eventName:String, ?observable:Dynamic):Void;
	@:optional
	function removeAllListeners():Ext.dom.IElement;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Ext.dom.IElement;
	@:optional
	function scale(?width:Float, ?height:Float, ?options:Dynamic):Ext.IElement;
	@:optional
	function scroll(?direction:String, ?distance:Float, ?animate:Dynamic):Bool;
	@:optional
	function scrollBy(?deltaX:Dynamic, ?deltaY:Dynamic, ?animate:Dynamic):Ext.IElement;
	@:optional
	function scrollIntoView(?container:Dynamic, ?hscroll:Bool, ?animate:Dynamic, ?highlight:Bool):Ext.dom.IElement;
	@:optional
	function scrollTo(?side:String, ?value:Float, ?animate:Dynamic):Ext.IElement;
	@:optional
	function selectable():Ext.IElement;
	@:optional
	function setBottom(?bottom:Dynamic):Ext.dom.IElement;
	@:optional
	function setBounds(?x:Float, ?y:Float, ?width:Dynamic, ?height:Dynamic, ?animate:Dynamic):Ext.dom.IElement;
	@:optional
	function setDisplayed(?value:Dynamic):Ext.dom.IElement;
	@:optional
	function setLeft(?left:Dynamic):Ext.dom.IElement;
	@:optional
	function setLeftTop(?left:Dynamic, ?top:Dynamic):Ext.dom.IElement;
	@:optional
	function setLocation(?x:Float, ?y:Float, ?animate:Dynamic):Ext.dom.IElement;
	@:optional
	function setOpacity(?opacity:Float, ?animate:Dynamic):Ext.dom.IElement;
	@:optional
	function setPositioning(?posCfg:Dynamic):Ext.dom.IElement;
	@:optional
	function setRight(?right:Dynamic):Ext.dom.IElement;
	@:optional
	function setScrollLeft(?left:Float):Ext.dom.IElement;
	@:optional
	function setScrollTop(?top:Float):Ext.dom.IElement;
	@:optional
	function setTop(?top:Dynamic):Ext.dom.IElement;
	@:optional
	function setVisible(?visible:Bool, ?animate:Dynamic):Ext.dom.IElement;
	@:optional
	function shift(?options:Dynamic):Ext.IElement;
	@:optional
	function show(?animate:Dynamic):Ext.dom.IElement;
	@:optional
	function slideIn(?anchor:String, ?options:Dynamic):Ext.dom.IElement;
	@:optional
	function slideOut(?anchor:String, ?options:Dynamic):Ext.dom.IElement;
	@:optional
	function swallowEvent(?eventName:Dynamic, ?preventDefault:Bool):Ext.dom.IElement;
	@:optional
	function switchOff(?options:Dynamic):Ext.dom.IElement;
	@:optional
	function toggle(?animate:Dynamic):Ext.dom.IElement;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Ext.dom.IElement;
	@:optional
	function unclip():Ext.dom.IElement;
	@:optional
	function unmask():Void;
	@:optional
	function unselectable():Ext.dom.IElement;
	@:optional
	function update(?html:String, ?loadScripts:Bool, ?callback:Dynamic):Ext.dom.IElement;
};
extern class Element {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function fromPoint(?x:Float, ?y:Float):String;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getDocumentHeight():Float;
	static function getDocumentWidth():Float;
	static function getName():String;
	static function getOrientation():String;
	static function getViewSize():Dynamic;
	static function getViewportHeight():Float;
	static function getViewportWidth():Float;
	static function implement():Void;
	static function mergeClsList(?clsList1:Dynamic, ?clsList2:Dynamic):Array<Dynamic>;
	static function normalize(?prop:String):String;
	static function override(?members:Dynamic):Ext.IBase;
	static function parseBox(?box:Dynamic):Dynamic;
	static function parseStyles(?styles:String):Dynamic;
	static function removeCls(?existingClsList:Dynamic, ?removeClsList:Dynamic):Array<Dynamic>;
	static function select(?selector:Dynamic, ?unique:Bool, ?root:Dynamic):Dynamic;
	static function unitizeBox(?box:Dynamic, ?units:String):String;
}
typedef ILayer = {
	>Ext.IElement,
	@:optional
	var cls : String;
	@:optional
	var constrain : Bool;
	@:optional
	var dh : Dynamic;
	@:optional
	var hideMode : String;
	@:optional
	var shadow : Dynamic;
	@:optional
	var shadowOffset : Float;
	@:optional
	var shim : Bool;
	@:optional
	var useDisplay : Bool;
	@:optional
	var visibilityCls : String;
	@:optional
	var zindex : Float;
	@:optional
	function remove():Void;
	@:optional
	function setBounds(?x:Dynamic, ?y:Dynamic, ?width:Dynamic, ?height:Dynamic, ?animate:Dynamic, ?duration:Dynamic, ?callback:Dynamic, ?easing:Dynamic):Ext.dom.IElement;
	@:optional
	function setHeight(?h:Dynamic, ?animate:Dynamic, ?duration:Dynamic, ?callback:Dynamic, ?easing:Dynamic):Ext.dom.IElement;
	@:optional
	function setLeft(?left:Dynamic):Ext.dom.IElement;
	@:optional
	function setLeftTop(?left:Dynamic, ?top:Dynamic):Ext.dom.IElement;
	@:optional
	function setSize(?w:Dynamic, ?h:Dynamic, ?animate:Dynamic, ?duration:Dynamic, ?callback:Dynamic, ?easing:Dynamic):Ext.dom.IElement;
	@:optional
	function setTop(?top:Dynamic):Ext.dom.IElement;
	@:optional
	function setVisible(?visible:Dynamic, ?animate:Dynamic, ?duration:Dynamic, ?callback:Dynamic, ?easing:Dynamic):Ext.dom.IElement;
	@:optional
	function setWidth(?w:Dynamic, ?animate:Dynamic, ?duration:Dynamic, ?callback:Dynamic, ?easing:Dynamic):Ext.dom.IElement;
	@:optional
	function setZIndex(?zindex:Float):Ext.ILayer;
};
typedef IDomQuery = { };
extern class DomQuery {
	static var matchers : Dynamic;
	static var operators : Dynamic;
	static var pseudos : Dynamic;
	static function compile(?selector:String, ?type:String):Dynamic;
	static function filter(?el:Array<HTMLElement>, ?selector:String, ?nonMatches:Bool):Array<HTMLElement>;
	static function is(?el:Dynamic, ?selector:String):Bool;
	static function jsSelect(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function select(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function selectNode(?selector:String, ?root:HTMLElement):HTMLElement;
	static function selectNumber(?selector:String, ?root:HTMLElement, ?defaultValue:Float):Float;
	static function selectValue(?selector:String, ?root:HTMLElement, ?defaultValue:String):String;
}
typedef IDomHelper = {
	>Ext.dom.IHelper,
};
extern class DomHelper {
	static var self : Ext.IClass;
	static var useDom : Bool;
	static function append(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
	static function applyStyles(?el:Dynamic, ?styles:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function createDom(?o:Dynamic):HTMLElement;
	static function createHtml(?spec:Dynamic):String;
	static function createTemplate(?o:Dynamic):Ext.ITemplate;
	static function generateStyles(?styles:Dynamic, ?buffer:Array<String>):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function insertAfter(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
	static function insertBefore(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
	static function insertFirst(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
	static function insertHtml(?where:String, ?el:Dynamic, ?html:String):HTMLElement;
	static function markup(?spec:Dynamic):String;
	static function overwrite(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
	static function statics():Ext.IClass;
}
typedef IEditor = {
	>Ext.container.IContainer,
	@:optional
	var alignment : String;
	@:optional
	var allowBlur : Bool;
	@:optional
	var autoSize : Dynamic;
	@:optional
	var baseCls : String;
	@:optional
	var cancelOnEsc : Bool;
	@:optional
	var completeOnEnter : Bool;
	@:optional
	var constrain : Bool;
	@:optional
	var field : Ext.form.field.IField;
	@:optional
	var focusOnToFront : Bool;
	@:optional
	var hidden : Bool;
	@:optional
	var hideEl : Bool;
	@:optional
	var ignoreNoChange : Bool;
	@:optional
	var layout : Dynamic;
	@:optional
	var offsets : Array<Float>;
	@:optional
	var parentEl : Dynamic;
	@:optional
	var revertInvalid : Bool;
	@:optional
	var shadow : Dynamic;
	@:optional
	var swallowKeys : Bool;
	@:optional
	var updateEl : Bool;
	@:optional
	var value : Dynamic;
	@:optional
	function afterRender(?ct:Dynamic, ?position:Dynamic):Void;
	@:optional
	function cancelEdit(?remainVisible:Bool):Void;
	@:optional
	function completeEdit(?remainVisible:Bool):Void;
	@:optional
	function getValue():Dynamic;
	@:optional
	function onHide():Void;
	@:optional
	function onShow():Void;
	@:optional
	function realign(?autoSize:Bool):Void;
	@:optional
	function setValue(?value:Dynamic):Void;
	@:optional
	function startEdit(?el:Dynamic, ?value:String):Void;
};
typedef IElementLoader = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var ajaxOptions : Dynamic;
	@:optional
	var autoLoad : Dynamic;
	@:optional
	var baseParams : Dynamic;
	@:optional
	var callback : Dynamic;
	@:optional
	var failure : Dynamic;
	@:optional
	var loadMask : Dynamic;
	@:optional
	var params : Dynamic;
	@:optional
	var renderer : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var scripts : Bool;
	@:optional
	var success : Dynamic;
	@:optional
	var target : Dynamic;
	@:optional
	var url : String;
	@:optional
	var isLoader : Bool;
	@:optional
	function abort():Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function getTarget():Ext.IComponent;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function isAutoRefreshing():Bool;
	@:optional
	function load(?options:Dynamic):Void;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function setTarget(?target:Dynamic):Void;
	@:optional
	function startAutoRefresh(?interval:Float, ?options:Dynamic):Void;
	@:optional
	function stopAutoRefresh():Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
typedef IError = {
	@:optional
	var ignore : Bool;
	@:optional
	var notify : Bool;
	@:optional
	function toString():String;
};
extern class Error {
	static function handle(?err:Ext.IError):Void;
	static function raise(?err:Dynamic):Void;
}
typedef IEventManager = { };
extern class EventManager {
	static var idleEvent : Dynamic;
	static function addListener(?el:Dynamic, ?eventName:String, ?handler:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function getId(?element:Dynamic):String;
	static function getKeyEvent():String;
	static function getPageX(?event:Dynamic):Float;
	static function getPageXY(?event:Dynamic):Array<Float>;
	static function getPageY(?event:Dynamic):Float;
	static function getRelatedTarget(?event:Dynamic):HTMLElement;
	static function getTarget(?event:Dynamic):HTMLElement;
	static function on(?el:Dynamic, ?eventName:String, ?handler:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onWindowResize(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function onWindowUnload(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function pollScroll():Void;
	static function preventDefault(?event:Event):Void;
	static function purgeElement(?el:Dynamic, ?eventName:String):Void;
	static function removeAll(?el:Dynamic):Void;
	static function removeListener(?el:Dynamic, ?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeResizeListener(?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeUnloadListener(?fn:Dynamic, ?scope:Dynamic):Void;
	static function stopEvent(?event:Event):Void;
	static function stopPropagation(?event:Event):Void;
	static function un(?el:Dynamic, ?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
}
typedef IEventObject = { };
extern class EventObject {
	static var A : Float;
	static var ALT : Float;
	static var B : Float;
	static var BACKSPACE : Float;
	static var C : Float;
	static var CAPS_LOCK : Float;
	static var CONTEXT_MENU : Float;
	static var CTRL : Float;
	static var D : Float;
	static var DELETE : Float;
	static var DOWN : Float;
	static var E : Float;
	static var EIGHT : Float;
	static var END : Float;
	static var ENTER : Float;
	static var ESC : Float;
	static var F : Float;
	static var F1 : Float;
	static var F10 : Float;
	static var F11 : Float;
	static var F12 : Float;
	static var F2 : Float;
	static var F3 : Float;
	static var F4 : Float;
	static var F5 : Float;
	static var F6 : Float;
	static var F7 : Float;
	static var F8 : Float;
	static var F9 : Float;
	static var FIVE : Float;
	static var FOUR : Float;
	static var G : Float;
	static var H : Float;
	static var HOME : Float;
	static var I : Float;
	static var INSERT : Float;
	static var J : Float;
	static var K : Float;
	static var L : Float;
	static var LEFT : Float;
	static var M : Float;
	static var N : Float;
	static var NINE : Float;
	static var NUM_CENTER : Float;
	static var NUM_DIVISION : Float;
	static var NUM_EIGHT : Float;
	static var NUM_FIVE : Float;
	static var NUM_FOUR : Float;
	static var NUM_MINUS : Float;
	static var NUM_MULTIPLY : Float;
	static var NUM_NINE : Float;
	static var NUM_ONE : Float;
	static var NUM_PERIOD : Float;
	static var NUM_PLUS : Float;
	static var NUM_SEVEN : Float;
	static var NUM_SIX : Float;
	static var NUM_THREE : Float;
	static var NUM_TWO : Float;
	static var NUM_ZERO : Float;
	static var O : Float;
	static var ONE : Float;
	static var P : Float;
	static var PAGE_DOWN : Float;
	static var PAGE_UP : Float;
	static var PAUSE : Float;
	static var PRINT_SCREEN : Float;
	static var Q : Float;
	static var R : Float;
	static var RETURN : Float;
	static var RIGHT : Float;
	static var S : Float;
	static var SEVEN : Float;
	static var SHIFT : Float;
	static var SIX : Float;
	static var SPACE : Float;
	static var T : Float;
	static var TAB : Float;
	static var THREE : Float;
	static var TWO : Float;
	static var U : Float;
	static var UP : Float;
	static var V : Float;
	static var W : Float;
	static var WHEEL_SCALE : Float;
	static var X : Float;
	static var Y : Float;
	static var Z : Float;
	static var ZERO : Float;
	static var altKey : Bool;
	static var ctrlKey : Bool;
	static var shiftKey : Bool;
	static function correctWheelDelta(?delta:Float):Void;
	static function getCharCode():Float;
	static function getKey():Float;
	static function getPageX():Float;
	static function getPageY():Float;
	static function getPoint():Ext.util.IPoint;
	static function getRelatedTarget(?selector:String, ?maxDepth:Dynamic, ?returnEl:Bool):HTMLElement;
	static function getTarget(?selector:String, ?maxDepth:Dynamic, ?returnEl:Bool):HTMLElement;
	static function getWheelDelta():Float;
	static function getWheelDeltas():Dynamic;
	static function getX():Float;
	static function getXY():Array<Float>;
	static function getY():Float;
	static function hasModifier():Bool;
	static function injectEvent(?target:Dynamic):Void;
	static function isNavKeyPress():Bool;
	static function isSpecialKey():Bool;
	static function preventDefault():Void;
	static function stopEvent():Void;
	static function stopPropagation():Void;
	static function within(?el:Dynamic, ?related:Bool, ?allowEl:Bool):Bool;
}
typedef IFlashComponent = {
	>Ext.IComponent,
	@:optional
	var backgroundColor : String;
	@:optional
	var expressInstall : Bool;
	@:optional
	var flashAttributes : Dynamic;
	@:optional
	var flashParams : Dynamic;
	@:optional
	var flashVars : Dynamic;
	@:optional
	var flashVersion : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var swfHeight : Dynamic;
	@:optional
	var swfWidth : Dynamic;
	@:optional
	var url : String;
	@:optional
	var wmode : String;
	@:optional
	var swf : Ext.IElement;
	@:optional
	var EXPRESS_INSTALL_URL : String;
	@:optional
	function afterRender():Void;
	@:optional
	function beforeDestroy():Void;
	@:optional
	function getSwfId():Void;
	@:optional
	function initComponent():Void;
};
typedef IFocusManager = {
	>Ext.IBase,
	>Ext.util.IObservable,
};
extern class FocusManager {
	static var enabled : Bool;
	static var focusedCmp : Ext.IComponent;
	static var hasListeners : Dynamic;
	static var isObservable : Bool;
	static var self : Ext.IClass;
	static var whitelist : Array<String>;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addXTypeToWhitelist(?xtype:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function disable():Void;
	static function enable(?options:Dynamic):Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function getInitialConfig(?name:String):Dynamic;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeXTypeFromWhitelist(?xtype:Dynamic):Void;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function statics():Ext.IClass;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
}
typedef IFocusMgr = {
	>Ext.IBase,
	>Ext.util.IObservable,
};
extern class FocusMgr {
	static var enabled : Bool;
	static var focusedCmp : Ext.IComponent;
	static var hasListeners : Dynamic;
	static var isObservable : Bool;
	static var self : Ext.IClass;
	static var whitelist : Array<String>;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addXTypeToWhitelist(?xtype:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function disable():Void;
	static function enable(?options:Dynamic):Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function getInitialConfig(?name:String):Dynamic;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeXTypeFromWhitelist(?xtype:Dynamic):Void;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function statics():Ext.IClass;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
}
typedef IFormPanel = {
	>Ext.panel.IPanel,
	>Ext.form.IFieldAncestor,
	@:optional
	var layout : Dynamic;
	@:optional
	var pollForChanges : Bool;
	@:optional
	var pollInterval : Float;
	@:optional
	function checkChange():Void;
	@:optional
	function getForm():Ext.form.IBasic;
	@:optional
	function getRecord():Ext.data.IModel;
	@:optional
	function getValues(?asString:Bool, ?dirtyOnly:Bool, ?includeEmptyText:Bool, ?useDataValues:Bool):Dynamic;
	@:optional
	function hasInvalidField():Void;
	@:optional
	function initFieldAncestor():Void;
	@:optional
	function isDirty():Bool;
	@:optional
	function isValid():Bool;
	@:optional
	function load(?options:Dynamic):Void;
	@:optional
	function loadRecord(?record:Ext.data.IModel):Ext.form.IBasic;
	@:optional
	function onFieldErrorChange(?field:Ext.form.ILabelable, ?error:String):Void;
	@:optional
	function onFieldValidityChange(?field:Ext.form.field.IField, ?valid:Bool):Void;
	@:optional
	function startPolling(?interval:Float):Void;
	@:optional
	function stopPolling():Void;
	@:optional
	function submit(?options:Dynamic):Void;
	@:optional
	function updateRecord(?record:Ext.data.IModel):Ext.form.IBasic;
};
typedef IFunction = { };
extern class Function {
	static function alias(?object:Dynamic, ?methodName:String):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function clone(?method:Dynamic):Dynamic;
	static function createBuffered(?fn:Dynamic, ?buffer:Float, ?scope:Dynamic, ?args:Array<Dynamic>):Dynamic;
	static function createDelayed(?fn:Dynamic, ?delay:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createSequence(?originalFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic):Dynamic;
	static function createThrottled(?fn:Dynamic, ?interval:Float, ?scope:Dynamic):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function flexSetter(?setter:Dynamic):Dynamic;
	static function interceptAfter(?object:Dynamic, ?methodName:String, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function interceptBefore(?object:Dynamic, ?methodName:String, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
}
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
typedef IPropGridProperty = {
	>Ext.data.IModel,
	@:optional
	var idProperty : Dynamic;
	@:optional
	var fields : Ext.util.IMixedCollection;
};
typedef IImg = {
	>Ext.IComponent,
	@:optional
	var alt : String;
	@:optional
	var autoEl : Dynamic;
	@:optional
	var baseCls : String;
	@:optional
	var glyph : Dynamic;
	@:optional
	var imgCls : String;
	@:optional
	var src : String;
	@:optional
	var title : String;
	@:optional
	function onDestroy():Void;
	@:optional
	function onRender():Void;
	@:optional
	function setSrc(?src:String):Void;
};
typedef IIs = { };
extern class Is {
	static var Android : Bool;
	static var Blackberry : Bool;
	static var Desktop : Bool;
	static var Linux : Bool;
	static var Mac : Bool;
	static var Phone : Bool;
	static var Standalone : Bool;
	static var Tablet : Dynamic;
	static var Windows : Bool;
	static var iOS : Bool;
	static var iPad : Bool;
	static var iPhone : Bool;
	static var iPod : Bool;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IJSON = { };
extern class JSON {
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function encode(?o:Dynamic):String;
	static function encodeDate(?d:Dynamic):String;
	static function encodeString(?s:String):String;
	static function encodeValue(?o:Dynamic):String;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef ILoader = { };
extern class Loader {
	static var disableCaching : Bool;
	static var disableCachingParam : String;
	static var enabled : Bool;
	static var garbageCollect : Bool;
	static var paths : Dynamic;
	static var preserveScripts : Bool;
	static var scriptChainDelay : Bool;
	static var scriptCharset : String;
	static var history : Array<Dynamic>;
	static function addClassPathMappings(?paths:Dynamic):Ext.ILoader;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function getConfig(?name:String):Dynamic;
	static function getPath(?className:String):String;
	static function loadScript(?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?withDomReady:Bool):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function setConfig(?config:Dynamic):Ext.ILoader;
	static function setPath(?name:Dynamic, ?path:String):Ext.ILoader;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef ILoadMask = {
	>Ext.IComponent,
	>Ext.util.IFloating,
	>Ext.util.IBindable,
	@:optional
	var baseCls : String;
	@:optional
	var maskCls : String;
	@:optional
	var msg : String;
	@:optional
	var msgCls : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var store : Ext.data.IStore;
	@:optional
	var target : Ext.IComponent;
	@:optional
	var useMsg : Bool;
	@:optional
	var useTargetEl : Bool;
	@:optional
	function afterRender():Void;
	@:optional
	function afterShow():Void;
	@:optional
	function bindStore(?store:Ext.data.IStore):Void;
	@:optional
	function bindStoreListeners(?store:Ext.data.IAbstractStore):Void;
	@:optional
	function center():Ext.IComponent;
	@:optional
	function doConstrain(?constrainTo:Dynamic):Void;
	@:optional
	function getStore():Ext.data.IAbstractStore;
	@:optional
	function getStoreListeners(?store:Dynamic):Dynamic;
	@:optional
	function hide():Ext.IComponent;
	@:optional
	function onBindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function onDestroy():Void;
	@:optional
	function onDisable():Void;
	@:optional
	function onHide():Void;
	@:optional
	function onShow():Void;
	@:optional
	function onUnbindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function setActive(?active:Bool, ?newActive:Ext.IComponent):Void;
	@:optional
	function show():Ext.IComponent;
	@:optional
	function toBack():Ext.IComponent;
	@:optional
	function toFront(?preventFocus:Bool):Ext.IComponent;
	@:optional
	function unbindStoreListeners(?store:Ext.data.IAbstractStore):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IMessageBox = {
	>Ext.window.IMessageBox,
};
extern class MessageBox {
	static var CANCEL : Float;
	static var ERROR : String;
	static var INFO : String;
	static var NO : Float;
	static var OK : Float;
	static var OKCANCEL : Float;
	static var QUESTION : String;
	static var WARNING : String;
	static var YES : Float;
	static var YESNO : Float;
	static var YESNOCANCEL : Float;
	static var _isLayoutRoot : Bool;
	static var body : Ext.dom.IElement;
	static var buttonText : Dynamic;
	static var contentPaddingProperty : String;
	static var dd : Ext.util.IComponentDragger;
	static var defaultTextHeight : Float;
	static var draggable : Bool;
	static var floatParent : Ext.IContainer;
	static var frameSize : Dynamic;
	static var hasListeners : Dynamic;
	static var isComponent : Bool;
	static var isObservable : Bool;
	static var isPanel : Bool;
	static var isWindow : Bool;
	static var items : Ext.util.IAbstractMixedCollection;
	static var maskOnDisable : Bool;
	static var minProgressWidth : Float;
	static var minPromptWidth : Float;
	static var ownerCt : Ext.IContainer;
	static var rendered : Bool;
	static var scrollFlags : Dynamic;
	static var self : Ext.IClass;
	static var zIndexManager : Ext.IZIndexManager;
	static var zIndexParent : Ext.IContainer;
	static function add(?component:Dynamic):Dynamic;
	static function addBodyCls(?cls:String):Ext.panel.IPanel;
	static function addChildEls():Void;
	static function addClass(?cls:Dynamic):Ext.IComponent;
	static function addCls(?cls:Dynamic):Ext.IComponent;
	static function addClsWithUI(?classes:Dynamic, ?skip:Dynamic):Void;
	static function addDocked(?component:Dynamic, ?pos:Float):Array<Ext.IComponent>;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?element:Dynamic, ?listeners:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addPropertyToState(?state:Dynamic, ?propName:String, ?value:String):Bool;
	static function addStateEvents(?events:Dynamic):Void;
	static function addTool(?tools:Dynamic):Void;
	static function addUIClsToElement(?cls:Dynamic):Void;
	static function afterCollapse():Void;
	static function afterComponentLayout():Void;
	static function afterExpand():Void;
	static function afterLayout(?layout:Ext.layout.container.IContainer):Void;
	static function afterSetPosition(?ax:Dynamic, ?ay:Dynamic):Void;
	static function afterShow(?animateTarget:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	static function alert(?title:String, ?msg:String, ?fn:Dynamic, ?scope:Dynamic):Ext.window.IMessageBox;
	static function alignTo(?element:Dynamic, ?position:String, ?offsets:Array<Float>, ?animate:Dynamic):Ext.util.IPositionable;
	static function anchorTo(?element:Dynamic, ?position:String, ?offsets:Array<Float>, ?animate:Dynamic, ?monitorScroll:Dynamic, ?callback:Dynamic):Ext.util.IPositionable;
	static function animate(?animObj:Dynamic):Dynamic;
	static function applyState(?state:Dynamic):Void;
	static function beforeBlur(?e:Ext.IEventObject):Void;
	static function beforeComponentLayout(?adjWidth:Float, ?adjHeight:Float):Void;
	static function beforeFocus(?e:Ext.IEventObject):Void;
	static function beforeLayout():Void;
	static function beforeShow():Void;
	static function bubble(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Ext.IComponent;
	static function calculateConstrainedPosition(?constrainTo:Dynamic, ?proposedPosition:Array<Float>, ?local:Bool, ?proposedSize:Array<Float>):Array<Float>;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function cancelFocus():Void;
	static function cascade(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Ext.IContainer;
	static function center():Ext.IComponent;
	static function child(?selector:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function cloneConfig(?overrides:Dynamic):Ext.IComponent;
	static function close():Void;
	static function collapse(?direction:String, ?animate:Bool):Ext.panel.IPanel;
	static function confirm(?title:String, ?msg:String, ?fn:Dynamic, ?scope:Dynamic):Ext.window.IMessageBox;
	static function contains(?comp:Ext.IComponent, ?deep:Bool):Bool;
	static function convertCollapseDir(?collapseDir:Dynamic):Void;
	static function disable():Ext.container.IAbstractContainer;
	static function doAutoRender():Void;
	static function doComponentLayout():Ext.container.IContainer;
	static function doConstrain(?constrainTo:Dynamic):Void;
	static function doLayout():Ext.container.IContainer;
	static function down(?selector:Dynamic):Dynamic;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function ensureAttachedToBody(?runLayout:Bool):Void;
	static function expand(?animate:Bool):Ext.panel.IPanel;
	static function findParentBy(?fn:Dynamic):Ext.container.IContainer;
	static function findParentByType(?xtype:Dynamic):Ext.container.IContainer;
	static function findPlugin(?ptype:String):Ext.IAbstractPlugin;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function focus(?selectText:Bool, ?delay:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Ext.IComponent;
	static function forceComponentLayout():Void;
	static function getActiveAnimation():Dynamic;
	static function getAlignToXY(?element:Dynamic, ?position:String, ?offsets:Array<Float>):Array<Float>;
	static function getAnchorXY(?anchor:String, ?local:Bool, ?size:Dynamic):Array<Float>;
	static function getBox(?contentBox:Bool, ?local:Bool):Dynamic;
	static function getBubbleTarget():Void;
	static function getChildByElement(?el:Dynamic, ?deep:Bool):Ext.IComponent;
	static function getCollapsed():Dynamic;
	static function getComponent(?comp:Dynamic):Ext.IComponent;
	static function getConstrainVector(?constrainTo:Dynamic, ?proposedPosition:Array<Float>, ?proposedSize:Array<Float>):Dynamic;
	static function getDefaultFocus():Void;
	static function getDockedComponent(?comp:Dynamic):Ext.IComponent;
	static function getDockedItems(?selector:String, ?beforeBody:Bool):Array<Ext.IComponent>;
	static function getEl():Ext.dom.IElement;
	static function getHeader():Void;
	static function getHeight():Float;
	static function getId():String;
	static function getInitialConfig(?name:String):Dynamic;
	static function getInsertPosition(?position:Dynamic):HTMLElement;
	static function getItemId():String;
	static function getLayout():Ext.layout.container.IContainer;
	static function getLoader():Ext.IComponentLoader;
	static function getLocalX():Float;
	static function getLocalXY():Array<Float>;
	static function getLocalY():Float;
	static function getOffsetsTo(?offsetsTo:Dynamic):Array<Float>;
	static function getPlugin(?pluginId:String):Ext.IAbstractPlugin;
	static function getPosition(?local:Bool):Array<Float>;
	static function getRefItems(?deep:Dynamic):Void;
	static function getRegion():Ext.util.IRegion;
	static function getSize():Dynamic;
	static function getSizeModel(?ownerCtSizeModel:Dynamic):Dynamic;
	static function getViewRegion():Ext.util.IRegion;
	static function getWidth():Float;
	static function getX():Float;
	static function getXType():String;
	static function getXTypes():String;
	static function getXY():Array<Float>;
	static function getY():Float;
	static function hasActiveFx():Dynamic;
	static function hasCls(?className:String):Bool;
	static function hasListener(?eventName:String):Bool;
	static function hasUICls(?cls:String):Void;
	static function hide():Ext.IComponent;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function initEvents():Void;
	static function insert(?index:Float, ?component:Dynamic):Ext.IComponent;
	static function insertDocked(?pos:Float, ?component:Dynamic):Void;
	static function is(?selector:String):Bool;
	static function isAncestor(?possibleDescendant:Ext.IComponent):Void;
	static function isDescendantOf(?container:Ext.IContainer):Bool;
	static function isDisabled():Bool;
	static function isDraggable():Bool;
	static function isDroppable():Bool;
	static function isFloating():Bool;
	static function isHidden():Bool;
	static function isLayoutRoot():Void;
	static function isLayoutSuspended():Bool;
	static function isVisible(?deep:Dynamic):Bool;
	static function isXType(?xtype:String, ?shallow:Bool):Bool;
	static function maximize(?animate:Bool):Ext.window.IWindow;
	static function minimize():Ext.window.IWindow;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function move(?fromIdx:Dynamic, ?toIdx:Float):Ext.IComponent;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function nextNode(?selector:String):Ext.IComponent;
	static function nextSibling(?selector:String):Ext.IComponent;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onAdd(?component:Ext.IComponent, ?position:Float):Void;
	static function onAdded():Void;
	static function onBeforeAdd(?item:Ext.IComponent):Void;
	static function onDestroy():Void;
	static function onDisable():Void;
	static function onDockedAdd(?component:Ext.IComponent):Void;
	static function onDockedRemove(?component:Ext.IComponent):Void;
	static function onEnable():Void;
	static function onHide():Void;
	static function onPosition():Void;
	static function onRemove(?component:Ext.IComponent, ?autoDestroy:Bool):Void;
	static function onRemoved(?destroying:Dynamic):Void;
	static function onResize():Void;
	static function onShow():Void;
	static function onShowComplete(?callback:Dynamic, ?scope:Dynamic):Void;
	static function postBlur(?e:Ext.IEventObject):Void;
	static function previousNode(?selector:String):Ext.IComponent;
	static function previousSibling(?selector:String):Ext.IComponent;
	static function progress(?title:String, ?msg:String, ?progressText:String):Ext.window.IMessageBox;
	static function prompt(?title:String, ?msg:String, ?fn:Dynamic, ?scope:Dynamic, ?multiline:Dynamic, ?value:String):Ext.window.IMessageBox;
	static function query(?selector:String):Array<Ext.IComponent>;
	static function queryBy(?fn:Dynamic, ?scope:Dynamic):Array<Ext.IComponent>;
	static function queryById(?id:String):Ext.IComponent;
	static function registerFloatingItem(?cmp:Dynamic):Void;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function remove(?component:Dynamic, ?autoDestroy:Bool):Ext.IComponent;
	static function removeAll(?autoDestroy:Bool):Array<Ext.IComponent>;
	static function removeAnchor():Ext.util.IPositionable;
	static function removeBodyCls(?cls:String):Ext.panel.IPanel;
	static function removeChildEls(?testFn:Dynamic):Void;
	static function removeCls(?cls:Dynamic):Ext.IComponent;
	static function removeClsWithUI(?cls:Dynamic):Void;
	static function removeDocked(?item:Ext.IComponent, ?autoDestroy:Bool):Void;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeUIClsFromElement(?cls:Dynamic):Void;
	static function render(?container:Dynamic, ?position:Dynamic):Void;
	static function restore(?animate:Dynamic):Ext.window.IWindow;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function savePropToState(?propName:String, ?state:Dynamic, ?stateName:String):Bool;
	static function savePropsToState(?propNames:Dynamic, ?state:Dynamic):Dynamic;
	static function saveState():Void;
	static function scrollBy(?deltaX:Dynamic, ?deltaY:Dynamic, ?animate:Dynamic):Void;
	static function sequenceFx():Dynamic;
	static function setActive(?active:Bool, ?newActive:Ext.IComponent):Void;
	static function setAutoScroll(?scroll:Bool):Ext.IComponent;
	static function setBodyStyle(?style:Dynamic, ?value:String):Ext.panel.IPanel;
	static function setBorder(?border:Dynamic, ?targetEl:Dynamic):Void;
	static function setBorderRegion(?region:String):String;
	static function setBox(?box:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	static function setDisabled(?disabled:Bool):Void;
	static function setDocked(?dock:Dynamic, ?layoutParent:Bool):Ext.IComponent;
	static function setGlyph(?newGlyph:Dynamic):Void;
	static function setHeight(?height:Float):Ext.IComponent;
	static function setIcon(?icon:String, ?width:Float, ?height:Float):Ext.window.IMessageBox;
	static function setIconCls(?newIconCls:String):Void;
	static function setLoading(?load:Dynamic, ?targetEl:Bool):Ext.ILoadMask;
	static function setLocalX(?x:Dynamic):Ext.util.IPositionable;
	static function setLocalXY(?x:Dynamic, ?y:Dynamic):Ext.util.IPositionable;
	static function setLocalY(?y:Dynamic):Ext.util.IPositionable;
	static function setMargin(?margin:Dynamic):Void;
	static function setOverflowXY(?overflowX:String, ?overflowY:String):Ext.IComponent;
	static function setPagePosition(?x:Dynamic, ?y:Float, ?animate:Dynamic):Ext.IComponent;
	static function setPosition(?x:Dynamic, ?y:Float, ?animate:Dynamic):Ext.IComponent;
	static function setRegion(?region:Ext.util.IRegion, ?animate:Dynamic):Ext.util.IPositionable;
	static function setRegionWeight(?weight:Float):Float;
	static function setSize(?width:Dynamic, ?height:Dynamic):Ext.IComponent;
	static function setTitle(?newTitle:String):Void;
	static function setUI(?ui:Dynamic):Void;
	static function setVisible(?visible:Bool):Ext.IComponent;
	static function setWidth(?width:Float):Ext.IComponent;
	static function setX(?x:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	static function setXY(?xy:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	static function setY(?y:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	static function show(?config:Dynamic):Ext.window.IMessageBox;
	static function showAt(?x:Dynamic, ?y:Float, ?animate:Dynamic):Ext.IComponent;
	static function showBy(?component:Dynamic, ?position:String, ?offsets:Array<Float>):Ext.IComponent;
	static function statics():Ext.IClass;
	static function stopAnimation():Ext.IElement;
	static function stopFx():Ext.IElement;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function syncFx():Dynamic;
	static function toBack():Ext.IComponent;
	static function toFront(?preventFocus:Bool):Ext.IComponent;
	static function toggleCollapse():Ext.panel.IPanel;
	static function toggleMaximize():Ext.window.IWindow;
	static function translatePoints(?x:Dynamic, ?y:Float):Dynamic;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function up(?selector:Dynamic, ?limit:Dynamic):Ext.container.IContainer;
	static function update(?htmlOrData:Dynamic, ?loadScripts:Bool, ?callback:Dynamic):Void;
	static function updateBox(?box:Dynamic):Ext.IComponent;
	static function updateLayout(?options:Dynamic):Void;
	static function updateProgress(?value:Float, ?progressText:String, ?msg:String):Ext.window.IMessageBox;
	static function wait(?msg:String, ?title:String, ?config:Dynamic):Ext.window.IMessageBox;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IMsg = {
	>Ext.window.IMessageBox,
};
extern class Msg {
	static var CANCEL : Float;
	static var ERROR : String;
	static var INFO : String;
	static var NO : Float;
	static var OK : Float;
	static var OKCANCEL : Float;
	static var QUESTION : String;
	static var WARNING : String;
	static var YES : Float;
	static var YESNO : Float;
	static var YESNOCANCEL : Float;
	static var _isLayoutRoot : Bool;
	static var body : Ext.dom.IElement;
	static var buttonText : Dynamic;
	static var contentPaddingProperty : String;
	static var dd : Ext.util.IComponentDragger;
	static var defaultTextHeight : Float;
	static var draggable : Bool;
	static var floatParent : Ext.IContainer;
	static var frameSize : Dynamic;
	static var hasListeners : Dynamic;
	static var isComponent : Bool;
	static var isObservable : Bool;
	static var isPanel : Bool;
	static var isWindow : Bool;
	static var items : Ext.util.IAbstractMixedCollection;
	static var maskOnDisable : Bool;
	static var minProgressWidth : Float;
	static var minPromptWidth : Float;
	static var ownerCt : Ext.IContainer;
	static var rendered : Bool;
	static var scrollFlags : Dynamic;
	static var self : Ext.IClass;
	static var zIndexManager : Ext.IZIndexManager;
	static var zIndexParent : Ext.IContainer;
	static function add(?component:Dynamic):Dynamic;
	static function addBodyCls(?cls:String):Ext.panel.IPanel;
	static function addChildEls():Void;
	static function addClass(?cls:Dynamic):Ext.IComponent;
	static function addCls(?cls:Dynamic):Ext.IComponent;
	static function addClsWithUI(?classes:Dynamic, ?skip:Dynamic):Void;
	static function addDocked(?component:Dynamic, ?pos:Float):Array<Ext.IComponent>;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?element:Dynamic, ?listeners:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addPropertyToState(?state:Dynamic, ?propName:String, ?value:String):Bool;
	static function addStateEvents(?events:Dynamic):Void;
	static function addTool(?tools:Dynamic):Void;
	static function addUIClsToElement(?cls:Dynamic):Void;
	static function afterCollapse():Void;
	static function afterComponentLayout():Void;
	static function afterExpand():Void;
	static function afterLayout(?layout:Ext.layout.container.IContainer):Void;
	static function afterSetPosition(?ax:Dynamic, ?ay:Dynamic):Void;
	static function afterShow(?animateTarget:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Void;
	static function alert(?title:String, ?msg:String, ?fn:Dynamic, ?scope:Dynamic):Ext.window.IMessageBox;
	static function alignTo(?element:Dynamic, ?position:String, ?offsets:Array<Float>, ?animate:Dynamic):Ext.util.IPositionable;
	static function anchorTo(?element:Dynamic, ?position:String, ?offsets:Array<Float>, ?animate:Dynamic, ?monitorScroll:Dynamic, ?callback:Dynamic):Ext.util.IPositionable;
	static function animate(?animObj:Dynamic):Dynamic;
	static function applyState(?state:Dynamic):Void;
	static function beforeBlur(?e:Ext.IEventObject):Void;
	static function beforeComponentLayout(?adjWidth:Float, ?adjHeight:Float):Void;
	static function beforeFocus(?e:Ext.IEventObject):Void;
	static function beforeLayout():Void;
	static function beforeShow():Void;
	static function bubble(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Ext.IComponent;
	static function calculateConstrainedPosition(?constrainTo:Dynamic, ?proposedPosition:Array<Float>, ?local:Bool, ?proposedSize:Array<Float>):Array<Float>;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function cancelFocus():Void;
	static function cascade(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>):Ext.IContainer;
	static function center():Ext.IComponent;
	static function child(?selector:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function cloneConfig(?overrides:Dynamic):Ext.IComponent;
	static function close():Void;
	static function collapse(?direction:String, ?animate:Bool):Ext.panel.IPanel;
	static function confirm(?title:String, ?msg:String, ?fn:Dynamic, ?scope:Dynamic):Ext.window.IMessageBox;
	static function contains(?comp:Ext.IComponent, ?deep:Bool):Bool;
	static function convertCollapseDir(?collapseDir:Dynamic):Void;
	static function disable():Ext.container.IAbstractContainer;
	static function doAutoRender():Void;
	static function doComponentLayout():Ext.container.IContainer;
	static function doConstrain(?constrainTo:Dynamic):Void;
	static function doLayout():Ext.container.IContainer;
	static function down(?selector:Dynamic):Dynamic;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function ensureAttachedToBody(?runLayout:Bool):Void;
	static function expand(?animate:Bool):Ext.panel.IPanel;
	static function findParentBy(?fn:Dynamic):Ext.container.IContainer;
	static function findParentByType(?xtype:Dynamic):Ext.container.IContainer;
	static function findPlugin(?ptype:String):Ext.IAbstractPlugin;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function focus(?selectText:Bool, ?delay:Dynamic, ?callback:Dynamic, ?scope:Dynamic):Ext.IComponent;
	static function forceComponentLayout():Void;
	static function getActiveAnimation():Dynamic;
	static function getAlignToXY(?element:Dynamic, ?position:String, ?offsets:Array<Float>):Array<Float>;
	static function getAnchorXY(?anchor:String, ?local:Bool, ?size:Dynamic):Array<Float>;
	static function getBox(?contentBox:Bool, ?local:Bool):Dynamic;
	static function getBubbleTarget():Void;
	static function getChildByElement(?el:Dynamic, ?deep:Bool):Ext.IComponent;
	static function getCollapsed():Dynamic;
	static function getComponent(?comp:Dynamic):Ext.IComponent;
	static function getConstrainVector(?constrainTo:Dynamic, ?proposedPosition:Array<Float>, ?proposedSize:Array<Float>):Dynamic;
	static function getDefaultFocus():Void;
	static function getDockedComponent(?comp:Dynamic):Ext.IComponent;
	static function getDockedItems(?selector:String, ?beforeBody:Bool):Array<Ext.IComponent>;
	static function getEl():Ext.dom.IElement;
	static function getHeader():Void;
	static function getHeight():Float;
	static function getId():String;
	static function getInitialConfig(?name:String):Dynamic;
	static function getInsertPosition(?position:Dynamic):HTMLElement;
	static function getItemId():String;
	static function getLayout():Ext.layout.container.IContainer;
	static function getLoader():Ext.IComponentLoader;
	static function getLocalX():Float;
	static function getLocalXY():Array<Float>;
	static function getLocalY():Float;
	static function getOffsetsTo(?offsetsTo:Dynamic):Array<Float>;
	static function getPlugin(?pluginId:String):Ext.IAbstractPlugin;
	static function getPosition(?local:Bool):Array<Float>;
	static function getRefItems(?deep:Dynamic):Void;
	static function getRegion():Ext.util.IRegion;
	static function getSize():Dynamic;
	static function getSizeModel(?ownerCtSizeModel:Dynamic):Dynamic;
	static function getViewRegion():Ext.util.IRegion;
	static function getWidth():Float;
	static function getX():Float;
	static function getXType():String;
	static function getXTypes():String;
	static function getXY():Array<Float>;
	static function getY():Float;
	static function hasActiveFx():Dynamic;
	static function hasCls(?className:String):Bool;
	static function hasListener(?eventName:String):Bool;
	static function hasUICls(?cls:String):Void;
	static function hide():Ext.IComponent;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function initEvents():Void;
	static function insert(?index:Float, ?component:Dynamic):Ext.IComponent;
	static function insertDocked(?pos:Float, ?component:Dynamic):Void;
	static function is(?selector:String):Bool;
	static function isAncestor(?possibleDescendant:Ext.IComponent):Void;
	static function isDescendantOf(?container:Ext.IContainer):Bool;
	static function isDisabled():Bool;
	static function isDraggable():Bool;
	static function isDroppable():Bool;
	static function isFloating():Bool;
	static function isHidden():Bool;
	static function isLayoutRoot():Void;
	static function isLayoutSuspended():Bool;
	static function isVisible(?deep:Dynamic):Bool;
	static function isXType(?xtype:String, ?shallow:Bool):Bool;
	static function maximize(?animate:Bool):Ext.window.IWindow;
	static function minimize():Ext.window.IWindow;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function move(?fromIdx:Dynamic, ?toIdx:Float):Ext.IComponent;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function nextNode(?selector:String):Ext.IComponent;
	static function nextSibling(?selector:String):Ext.IComponent;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onAdd(?component:Ext.IComponent, ?position:Float):Void;
	static function onAdded():Void;
	static function onBeforeAdd(?item:Ext.IComponent):Void;
	static function onDestroy():Void;
	static function onDisable():Void;
	static function onDockedAdd(?component:Ext.IComponent):Void;
	static function onDockedRemove(?component:Ext.IComponent):Void;
	static function onEnable():Void;
	static function onHide():Void;
	static function onPosition():Void;
	static function onRemove(?component:Ext.IComponent, ?autoDestroy:Bool):Void;
	static function onRemoved(?destroying:Dynamic):Void;
	static function onResize():Void;
	static function onShow():Void;
	static function onShowComplete(?callback:Dynamic, ?scope:Dynamic):Void;
	static function postBlur(?e:Ext.IEventObject):Void;
	static function previousNode(?selector:String):Ext.IComponent;
	static function previousSibling(?selector:String):Ext.IComponent;
	static function progress(?title:String, ?msg:String, ?progressText:String):Ext.window.IMessageBox;
	static function prompt(?title:String, ?msg:String, ?fn:Dynamic, ?scope:Dynamic, ?multiline:Dynamic, ?value:String):Ext.window.IMessageBox;
	static function query(?selector:String):Array<Ext.IComponent>;
	static function queryBy(?fn:Dynamic, ?scope:Dynamic):Array<Ext.IComponent>;
	static function queryById(?id:String):Ext.IComponent;
	static function registerFloatingItem(?cmp:Dynamic):Void;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function remove(?component:Dynamic, ?autoDestroy:Bool):Ext.IComponent;
	static function removeAll(?autoDestroy:Bool):Array<Ext.IComponent>;
	static function removeAnchor():Ext.util.IPositionable;
	static function removeBodyCls(?cls:String):Ext.panel.IPanel;
	static function removeChildEls(?testFn:Dynamic):Void;
	static function removeCls(?cls:Dynamic):Ext.IComponent;
	static function removeClsWithUI(?cls:Dynamic):Void;
	static function removeDocked(?item:Ext.IComponent, ?autoDestroy:Bool):Void;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeUIClsFromElement(?cls:Dynamic):Void;
	static function render(?container:Dynamic, ?position:Dynamic):Void;
	static function restore(?animate:Dynamic):Ext.window.IWindow;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function savePropToState(?propName:String, ?state:Dynamic, ?stateName:String):Bool;
	static function savePropsToState(?propNames:Dynamic, ?state:Dynamic):Dynamic;
	static function saveState():Void;
	static function scrollBy(?deltaX:Dynamic, ?deltaY:Dynamic, ?animate:Dynamic):Void;
	static function sequenceFx():Dynamic;
	static function setActive(?active:Bool, ?newActive:Ext.IComponent):Void;
	static function setAutoScroll(?scroll:Bool):Ext.IComponent;
	static function setBodyStyle(?style:Dynamic, ?value:String):Ext.panel.IPanel;
	static function setBorder(?border:Dynamic, ?targetEl:Dynamic):Void;
	static function setBorderRegion(?region:String):String;
	static function setBox(?box:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	static function setDisabled(?disabled:Bool):Void;
	static function setDocked(?dock:Dynamic, ?layoutParent:Bool):Ext.IComponent;
	static function setGlyph(?newGlyph:Dynamic):Void;
	static function setHeight(?height:Float):Ext.IComponent;
	static function setIcon(?icon:String, ?width:Float, ?height:Float):Ext.window.IMessageBox;
	static function setIconCls(?newIconCls:String):Void;
	static function setLoading(?load:Dynamic, ?targetEl:Bool):Ext.ILoadMask;
	static function setLocalX(?x:Dynamic):Ext.util.IPositionable;
	static function setLocalXY(?x:Dynamic, ?y:Dynamic):Ext.util.IPositionable;
	static function setLocalY(?y:Dynamic):Ext.util.IPositionable;
	static function setMargin(?margin:Dynamic):Void;
	static function setOverflowXY(?overflowX:String, ?overflowY:String):Ext.IComponent;
	static function setPagePosition(?x:Dynamic, ?y:Float, ?animate:Dynamic):Ext.IComponent;
	static function setPosition(?x:Dynamic, ?y:Float, ?animate:Dynamic):Ext.IComponent;
	static function setRegion(?region:Ext.util.IRegion, ?animate:Dynamic):Ext.util.IPositionable;
	static function setRegionWeight(?weight:Float):Float;
	static function setSize(?width:Dynamic, ?height:Dynamic):Ext.IComponent;
	static function setTitle(?newTitle:String):Void;
	static function setUI(?ui:Dynamic):Void;
	static function setVisible(?visible:Bool):Ext.IComponent;
	static function setWidth(?width:Float):Ext.IComponent;
	static function setX(?x:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	static function setXY(?xy:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	static function setY(?y:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	static function show(?config:Dynamic):Ext.window.IMessageBox;
	static function showAt(?x:Dynamic, ?y:Float, ?animate:Dynamic):Ext.IComponent;
	static function showBy(?component:Dynamic, ?position:String, ?offsets:Array<Float>):Ext.IComponent;
	static function statics():Ext.IClass;
	static function stopAnimation():Ext.IElement;
	static function stopFx():Ext.IElement;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function syncFx():Dynamic;
	static function toBack():Ext.IComponent;
	static function toFront(?preventFocus:Bool):Ext.IComponent;
	static function toggleCollapse():Ext.panel.IPanel;
	static function toggleMaximize():Ext.window.IWindow;
	static function translatePoints(?x:Dynamic, ?y:Float):Dynamic;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function up(?selector:Dynamic, ?limit:Dynamic):Ext.container.IContainer;
	static function update(?htmlOrData:Dynamic, ?loadScripts:Bool, ?callback:Dynamic):Void;
	static function updateBox(?box:Dynamic):Ext.IComponent;
	static function updateLayout(?options:Dynamic):Void;
	static function updateProgress(?value:Float, ?progressText:String, ?msg:String):Ext.window.IMessageBox;
	static function wait(?msg:String, ?title:String, ?config:Dynamic):Ext.window.IMessageBox;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IModelManager = {
	>Ext.IAbstractManager,
};
extern class ModelManager {
	static var all : Ext.util.IHashMap;
	static var associationStack : Array<Ext.data.association.IAssociation>;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function create(?data:Dynamic, ?name:String, ?id:Float):Void;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function get(?id:String):Dynamic;
	static function getCount():Float;
	static function getInitialConfig(?name:String):Dynamic;
	static function getModel(?id:Dynamic):Ext.data.IModel;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isRegistered(?type:String):Bool;
	static function onAvailable(?id:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function register(?item:Dynamic):Void;
	static function statics():Ext.IClass;
	static function unregister(?item:Dynamic):Void;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IModelMgr = {
	>Ext.IAbstractManager,
};
extern class ModelMgr {
	static var all : Ext.util.IHashMap;
	static var associationStack : Array<Ext.data.association.IAssociation>;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function create(?data:Dynamic, ?name:String, ?id:Float):Void;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function get(?id:String):Dynamic;
	static function getCount():Float;
	static function getInitialConfig(?name:String):Dynamic;
	static function getModel(?id:Dynamic):Ext.data.IModel;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isRegistered(?type:String):Bool;
	static function onAvailable(?id:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function register(?item:Dynamic):Void;
	static function statics():Ext.IClass;
	static function unregister(?item:Dynamic):Void;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef INumber = { };
extern class Number {
	static function constrain(?number:Float, ?min:Float, ?max:Float):Float;
	static function correctFloat(?The:Float):Float;
	static function from(?value:Dynamic, ?defaultValue:Float):Float;
	static function randomInt(?from:Float, ?to:Float):Float;
	static function snap(?value:Float, ?increment:Float, ?minValue:Float, ?maxValue:Float):Float;
	static function snapInRange(?value:Float, ?increment:Float, ?minValue:Float, ?maxValue:Float):Float;
	static function toFixed(?value:Float, ?precision:Float):Void;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IObject = { };
extern class Object {
	static function chain(?object:Dynamic):Void;
	static function each(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function equals(?object1:Dynamic, ?object2:Dynamic):Bool;
	static function fromQueryString(?queryString:String, ?recursive:Bool):Dynamic;
	static function getKey(?object:Dynamic, ?value:Dynamic):Void;
	static function getKeys(?object:Dynamic):Array<String>;
	static function getSize(?object:Dynamic):Float;
	static function getValues(?object:Dynamic):Array<Dynamic>;
	static function isEmpty(?object:Dynamic):Bool;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function toQueryObjects(?name:String, ?value:Dynamic, ?recursive:Bool):Array<Dynamic>;
	static function toQueryString(?object:Dynamic, ?recursive:Bool):String;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
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
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IPerf = {
	>Ext.IBase,
};
extern class Perf {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IColorPalette = {
	>Ext.IComponent,
	@:optional
	var allowReselect : Bool;
	@:optional
	var clickEvent : String;
	@:optional
	var componentCls : String;
	@:optional
	var handler : Dynamic;
	@:optional
	var itemCls : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var selectedCls : String;
	@:optional
	var value : String;
	@:optional
	var colors : Array<String>;
	@:optional
	function clear():Void;
	@:optional
	function getValue():String;
	@:optional
	function onRender():Void;
	@:optional
	function select(?color:String, ?suppressEvent:Bool):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IDatePicker = {
	>Ext.IComponent,
	@:optional
	var ariaTitle : String;
	@:optional
	var ariaTitleDateFormat : String;
	@:optional
	var baseCls : String;
	@:optional
	var border : Dynamic;
	@:optional
	var dayNames : Array<String>;
	@:optional
	var disableAnim : Bool;
	@:optional
	var disabledCellCls : String;
	@:optional
	var disabledDates : Array<String>;
	@:optional
	var disabledDatesRE : js.RegExp;
	@:optional
	var disabledDatesText : String;
	@:optional
	var disabledDays : Array<Float>;
	@:optional
	var disabledDaysText : String;
	@:optional
	var focusOnShow : Bool;
	@:optional
	var format : String;
	@:optional
	var handler : Dynamic;
	@:optional
	var keyNavConfig : Dynamic;
	@:optional
	var longDayFormat : String;
	@:optional
	var maxDate : Dynamic;
	@:optional
	var maxText : String;
	@:optional
	var minDate : Dynamic;
	@:optional
	var minText : String;
	@:optional
	var monthNames : Array<String>;
	@:optional
	var monthYearFormat : String;
	@:optional
	var monthYearText : String;
	@:optional
	var nextText : String;
	@:optional
	var prevText : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var selectedCls : String;
	@:optional
	var showToday : Bool;
	@:optional
	var startDay : Float;
	@:optional
	var todayText : String;
	@:optional
	var todayTip : String;
	@:optional
	function getDayInitial(?value:Dynamic):String;
	@:optional
	function getValue():Dynamic;
	@:optional
	function hideMonthPicker(?animate:Bool):Ext.picker.IDate;
	@:optional
	function initComponent():Void;
	@:optional
	function selectToday():Ext.picker.IDate;
	@:optional
	function setDisabledDates(?disabledDates:Dynamic):Ext.picker.IDate;
	@:optional
	function setDisabledDays(?disabledDays:Array<Float>):Ext.picker.IDate;
	@:optional
	function setMaxDate(?value:Dynamic):Ext.picker.IDate;
	@:optional
	function setMinDate(?value:Dynamic):Ext.picker.IDate;
	@:optional
	function setValue(?value:Dynamic):Ext.picker.IDate;
	@:optional
	function showMonthPicker(?animate:Bool):Ext.picker.IDate;
	@:optional
	function showNextMonth(?e:Dynamic):Ext.picker.IDate;
	@:optional
	function showNextYear():Ext.picker.IDate;
	@:optional
	function showPrevMonth(?e:Dynamic):Ext.picker.IDate;
	@:optional
	function showPrevYear():Ext.picker.IDate;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IMonthPicker = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	var cancelText : String;
	@:optional
	var okText : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var selectedCls : String;
	@:optional
	var showButtons : Bool;
	@:optional
	var value : Dynamic;
	@:optional
	function adjustYear(?offset:Float):Void;
	@:optional
	function getValue():Array<Float>;
	@:optional
	function hasSelection():Bool;
	@:optional
	function onDestroy():Void;
	@:optional
	function setValue(?value:Dynamic):Ext.picker.IMonth;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IPluginManager = {
	>Ext.IAbstractManager,
};
extern class PluginManager {
	static var all : Ext.util.IHashMap;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function create(?config:Dynamic, ?defaultType:Dynamic):Ext.IComponent;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function findByType(?type:String, ?defaultsOnly:Bool):Array<Ext.IAbstractPlugin>;
	static function get(?id:String):Dynamic;
	static function getCount():Float;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isRegistered(?type:String):Bool;
	static function onAvailable(?id:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function register(?item:Dynamic):Void;
	static function registerType(?type:String, ?cls:Dynamic):Void;
	static function statics():Ext.IClass;
	static function unregister(?item:Dynamic):Void;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IPluginMgr = {
	>Ext.IAbstractManager,
};
extern class PluginMgr {
	static var all : Ext.util.IHashMap;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function create(?config:Dynamic, ?defaultType:Dynamic):Ext.IComponent;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function findByType(?type:String, ?defaultsOnly:Bool):Array<Ext.IAbstractPlugin>;
	static function get(?id:String):Dynamic;
	static function getCount():Float;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isRegistered(?type:String):Bool;
	static function onAvailable(?id:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function register(?item:Dynamic):Void;
	static function registerType(?type:String, ?cls:Dynamic):Void;
	static function statics():Ext.IClass;
	static function unregister(?item:Dynamic):Void;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IProgressBar = {
	>Ext.IComponent,
	@:optional
	var animate : Dynamic;
	@:optional
	var baseCls : String;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var id : String;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var text : String;
	@:optional
	var textEl : Dynamic;
	@:optional
	var value : Float;
	@:optional
	function initComponent():Void;
	@:optional
	function initRenderData():Dynamic;
	@:optional
	function isWaiting():Bool;
	@:optional
	function onDestroy():Void;
	@:optional
	function onRender():Void;
	@:optional
	function reset(?hide:Bool):Ext.IProgressBar;
	@:optional
	function updateProgress(?value:Float, ?text:String, ?animate:Bool):Ext.IProgressBar;
	@:optional
	function updateText(?text:String):Ext.IProgressBar;
	@:optional
	function wait(?config:Dynamic):Ext.IProgressBar;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IQueryable = {
	>Ext.IBase,
	@:optional
	function child(?selector:Dynamic):Dynamic;
	@:optional
	function down(?selector:Dynamic):Dynamic;
	@:optional
	function query(?selector:String):Array<Ext.IComponent>;
	@:optional
	function queryBy(?fn:Dynamic, ?scope:Dynamic):Array<Ext.IComponent>;
	@:optional
	function queryById(?id:String):Ext.IComponent;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IResizable = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var constrainTo : Dynamic;
	@:optional
	var dynamic : Bool;
	@:optional
	var handles : String;
	@:optional
	var height : Float;
	@:optional
	var heightIncrement : Float;
	@:optional
	var maxHeight : Float;
	@:optional
	var maxWidth : Float;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var pinned : Bool;
	@:optional
	var preserveRatio : Bool;
	@:optional
	var target : Dynamic;
	@:optional
	var transparent : Bool;
	@:optional
	var width : Float;
	@:optional
	var widthIncrement : Float;
	@:optional
	var el : Ext.IElement;
	@:optional
	var originalTarget : Dynamic;
	@:optional
	var resizeTracker : Ext.resizer.IResizeTracker;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function getEl():Ext.IElement;
	@:optional
	function getTarget():Dynamic;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resizeTo(?width:Float, ?height:Float):Void;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IAbstractSelectionModel = {
	>Ext.util.IObservable,
	>Ext.util.IBindable,
	@:optional
	var allowDeselect : Bool;
	@:optional
	var mode : Dynamic;
	@:optional
	var pruneRemoved : Bool;
	@:optional
	var toggleOnClick : Bool;
	@:optional
	var selected : Ext.util.IMixedCollection;
	@:optional
	function bindStore(?store:Dynamic, ?initial:Dynamic):Void;
	@:optional
	function bindStoreListeners(?store:Ext.data.IAbstractStore):Void;
	@:optional
	function deselect(?records:Dynamic, ?suppressEvent:Bool):Void;
	@:optional
	function deselectAll(?suppressEvent:Bool):Void;
	@:optional
	function deselectRange(?startRow:Dynamic, ?endRow:Dynamic):Void;
	@:optional
	function getCount():Float;
	@:optional
	function getLastSelected():Ext.data.IModel;
	@:optional
	function getSelection():Array<Ext.data.IModel>;
	@:optional
	function getSelectionMode():String;
	@:optional
	function getStore():Ext.data.IAbstractStore;
	@:optional
	function getStoreListeners():Dynamic;
	@:optional
	function hasSelection():Bool;
	@:optional
	function isFocused(?record:Ext.data.IModel):Void;
	@:optional
	function isLocked():Bool;
	@:optional
	function isRangeSelected(?from:Dynamic, ?to:Dynamic):Bool;
	@:optional
	function isSelected(?record:Dynamic):Bool;
	@:optional
	function onBindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function onUnbindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function select(?records:Dynamic, ?keepExisting:Bool, ?suppressEvent:Bool):Void;
	@:optional
	function selectAll(?suppressEvent:Bool):Void;
	@:optional
	function selectRange(?startRow:Dynamic, ?endRow:Dynamic, ?keepExisting:Bool):Void;
	@:optional
	function setLastFocused(?record:Ext.data.IModel):Void;
	@:optional
	function setLocked(?locked:Bool):Void;
	@:optional
	function setSelectionMode(?selMode:String):Void;
	@:optional
	function unbindStoreListeners(?store:Ext.data.IAbstractStore):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IShadow = {
	>Ext.IBase,
	@:optional
	var mode : String;
	@:optional
	var offset : Float;
	@:optional
	function hide():Void;
	@:optional
	function isVisible():Void;
	@:optional
	function realign(?left:Float, ?top:Float, ?width:Float, ?height:Float):Void;
	@:optional
	function setOpacity(?opacity:Float):Void;
	@:optional
	function setZIndex(?zindex:Float):Void;
	@:optional
	function show(?targetEl:Dynamic):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IShadowPool = {
	>Ext.IBase,
};
extern class ShadowPool {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef ISlider = {
	>Ext.slider.IMulti,
	@:optional
	function getValue():Dynamic;
	@:optional
	function setValue(?value:Float, ?animate:Bool):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IString = { };
extern class String {
	static function addCharacterEntities(?entities:Dynamic):Void;
	static function capitalize(?string:String):String;
	static function createVarName(?s:String):String;
	static function ellipsis(?value:String, ?length:Float, ?word:Bool):String;
	static function endsWith(?s:String, ?start:String, ?ignoreCase:Bool):Void;
	static function escape(?string:String):String;
	static function escapeRegex(?string:String):String;
	static function format(string:String, values:haxe.extern.Rest<Dynamic>):String;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function insert(?s:String, ?value:String, ?index:Float):String;
	static function leftPad(?string:String, ?size:Float, ?character:String):String;
	static function repeat(?pattern:String, ?count:Float, ?sep:String):Void;
	static function resetCharacterEntities():Void;
	static function splitWords(?words:Dynamic):Void;
	static function startsWith(?s:String, ?start:String, ?ignoreCase:Bool):Void;
	static function toggle(?string:String, ?value:String, ?other:String):String;
	static function trim(?string:String):String;
	static function uncapitalize(?string:String):String;
	static function urlAppend(?url:String, ?string:String):String;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef ISupports = { };
extern class Supports {
	static var ArraySort : Bool;
	static var AudioTag : Bool;
	static var BoundingClientRect : Bool;
	static var CSS3BorderRadius : Bool;
	static var CSS3BoxShadow : Bool;
	static var CSS3DTransform : Bool;
	static var CSS3LinearGradient : Bool;
	static var Canvas : Bool;
	static var ClassList : Bool;
	static var ComputedStyle : Bool;
	static var CreateContextualFragment : Bool;
	static var DeviceMotion : Bool;
	static var Direct2DBug : Bool;
	static var DisplayChangeInputSelectionBug : Dynamic;
	static var DisplayChangeTextAreaSelectionBug : Dynamic;
	static var Float : Bool;
	static var GeoLocation : Bool;
	static var GetPositionPercentage : Bool;
	static var History : Bool;
	static var LocalStorage : Dynamic;
	static var MouseEnterLeave : Bool;
	static var MouseWheel : Bool;
	static var Opacity : Bool;
	static var OrientationChange : Bool;
	static var Placeholder : Bool;
	static var PointerEvents : Bool;
	static var Range : Bool;
	static var RightMargin : Bool;
	static var RotatedBoundingClientRect : Bool;
	static var ScrollWidthInlinePaddingBug : Bool;
	static var Svg : Bool;
	static var TextAreaMaxLength : Bool;
	static var TimeoutActualLateness : Bool;
	static var Touch : Bool;
	static var Transitions : Bool;
	static var TransparentColor : Bool;
	static var Vml : Bool;
	static var WindowOnError : Bool;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef ITabPanel = {
	>Ext.panel.IPanel,
	@:optional
	var activeItem : Dynamic;
	@:optional
	var activeTab : Dynamic;
	@:optional
	var deferredRender : Bool;
	@:optional
	var itemCls : String;
	@:optional
	var layout : Dynamic;
	@:optional
	var maxTabWidth : Float;
	@:optional
	var minTabWidth : Float;
	@:optional
	var plain : Bool;
	@:optional
	var removePanelHeader : Bool;
	@:optional
	var tabBar : Dynamic;
	@:optional
	var tabPosition : Dynamic;
	@:optional
	function getActiveTab():Ext.IComponent;
	@:optional
	function getTabBar():Ext.tab.IBar;
	@:optional
	function onAdd(?item:Dynamic, ?index:Dynamic):Void;
	@:optional
	function setActiveTab(?card:Dynamic):Ext.IComponent;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef ITemplate = {
	>Ext.IBase,
	@:optional
	var compiled : Bool;
	@:optional
	var disableFormats : Bool;
	@:optional
	var isTemplate : Bool;
	@:optional
	function append(?el:Dynamic, ?values:Dynamic, ?returnElement:Bool):Dynamic;
	@:optional
	function apply(?values:Dynamic):String;
	@:optional
	function applyOut(?values:Dynamic, ?out:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function applyTemplate(?values:Dynamic):String;
	@:optional
	function compile():Ext.ITemplate;
	@:optional
	function insertAfter(?el:Dynamic, ?values:Dynamic, ?returnElement:Bool):Dynamic;
	@:optional
	function insertBefore(?el:Dynamic, ?values:Dynamic, ?returnElement:Bool):Dynamic;
	@:optional
	function insertFirst(?el:Dynamic, ?values:Dynamic, ?returnElement:Bool):Dynamic;
	@:optional
	function overwrite(?el:Dynamic, ?values:Dynamic, ?returnElement:Bool):Dynamic;
	@:optional
	function set(?html:String, ?compile:Bool):Ext.ITemplate;
};
extern class Template {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function from(?el:Dynamic, ?config:Dynamic):Ext.ITemplate;
	static function getName():String;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IQuickTip = {
	>Ext.tip.IToolTip,
	@:optional
	var interceptTitles : Bool;
	@:optional
	var target : Dynamic;
	@:optional
	var title : String;
	@:optional
	function cancelShow(?el:Dynamic):Void;
	@:optional
	function register(?config:Dynamic):Void;
	@:optional
	function unregister(?el:Dynamic):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IQuickTips = {
	>Ext.IBase,
};
extern class QuickTips {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function disable():Void;
	static function enable():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function getQuickTip():Ext.tip.IQuickTip;
	static function init(?autoRender:Bool, ?config:Dynamic):Void;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isEnabled():Bool;
	static function register(?config:Dynamic):Void;
	static function statics():Ext.IClass;
	static function tips(?config:Dynamic):Void;
	static function unregister(?el:Dynamic):Void;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef ITip = {
	>Ext.panel.IPanel,
	@:optional
	var autoRender : Dynamic;
	@:optional
	var baseCls : String;
	@:optional
	var closable : Bool;
	@:optional
	var closeAction : String;
	@:optional
	var constrainPosition : Bool;
	@:optional
	var defaultAlign : String;
	@:optional
	var floating : Bool;
	@:optional
	var focusOnToFront : Bool;
	@:optional
	var frameHeader : Bool;
	@:optional
	var hidden : Bool;
	@:optional
	var maxWidth : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var shadow : Dynamic;
	@:optional
	var width : Float;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IToolTip = {
	>Ext.tip.ITip,
	@:optional
	var anchor : String;
	@:optional
	var anchorOffset : Float;
	@:optional
	var anchorToTarget : Bool;
	@:optional
	var autoHide : Bool;
	@:optional
	var delegate : String;
	@:optional
	var dismissDelay : Float;
	@:optional
	var hideDelay : Float;
	@:optional
	var mouseOffset : Array<Float>;
	@:optional
	var showDelay : Float;
	@:optional
	var target : Dynamic;
	@:optional
	var trackMouse : Bool;
	@:optional
	var triggerElement : HTMLElement;
	@:optional
	function setTarget(?t:Dynamic):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IPagingToolbar = {
	>Ext.toolbar.IToolbar,
	>Ext.util.IBindable,
	@:optional
	var afterPageText : String;
	@:optional
	var beforePageText : String;
	@:optional
	var displayInfo : Bool;
	@:optional
	var displayMsg : String;
	@:optional
	var emptyMsg : String;
	@:optional
	var firstText : String;
	@:optional
	var inputItemWidth : Float;
	@:optional
	var lastText : String;
	@:optional
	var nextText : String;
	@:optional
	var prependButtons : Bool;
	@:optional
	var prevText : String;
	@:optional
	var refreshText : String;
	@:optional
	var store : Ext.data.IStore;
	@:optional
	function bind(?store:Ext.data.IStore):Void;
	@:optional
	function bindStore(?store:Dynamic):Void;
	@:optional
	function bindStoreListeners(?store:Ext.data.IAbstractStore):Void;
	@:optional
	function doRefresh():Void;
	@:optional
	function getStore():Ext.data.IAbstractStore;
	@:optional
	function getStoreListeners():Dynamic;
	@:optional
	function moveFirst():Void;
	@:optional
	function moveLast():Void;
	@:optional
	function moveNext():Void;
	@:optional
	function movePrevious():Void;
	@:optional
	function onBindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function onUnbindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function unbind(?store:Ext.data.IStore):Void;
	@:optional
	function unbindStoreListeners(?store:Ext.data.IAbstractStore):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IToolbar = {
	>Ext.container.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var defaultButtonUI : String;
	@:optional
	var defaultType : String;
	@:optional
	var enableOverflow : Bool;
	@:optional
	var layout : Dynamic;
	@:optional
	var menuTriggerCls : String;
	@:optional
	var vertical : Bool;
	@:optional
	var isToolbar : Bool;
	@:optional
	function add(?args:Dynamic):Dynamic;
	@:optional
	function getRefItems(?deep:Dynamic):Void;
	@:optional
	function insert(?index:Float, ?component:Dynamic):Ext.IComponent;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef ITreePanel = {
	>Ext.panel.ITable,
	@:optional
	var animate : Bool;
	@:optional
	var deferRowRender : Bool;
	@:optional
	var displayField : String;
	@:optional
	var folderSort : Bool;
	@:optional
	var hideHeaders : Bool;
	@:optional
	var lines : Bool;
	@:optional
	var root : Dynamic;
	@:optional
	var rootVisible : Bool;
	@:optional
	var rowLines : Bool;
	@:optional
	var selType : String;
	@:optional
	var singleExpand : Bool;
	@:optional
	var store : Ext.data.ITreeStore;
	@:optional
	var useArrows : Bool;
	@:optional
	var viewType : String;
	@:optional
	function collapseAll(?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function collapseNode(?record:Ext.data.IModel, ?deep:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function expandAll(?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function expandNode(?record:Ext.data.IModel, ?deep:Bool, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function expandPath(?path:String, ?field:String, ?separator:String, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function getChecked():Array<Ext.data.INodeInterface>;
	@:optional
	function getRootNode():Ext.data.INodeInterface;
	@:optional
	function selectPath(?path:String, ?field:String, ?separator:String, ?callback:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function setRootNode(?root:Dynamic):Ext.data.INodeInterface;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IHistory = {
	>Ext.IBase,
	>Ext.util.IObservable,
};
extern class History {
	static var fieldId : String;
	static var hasListeners : Dynamic;
	static var iframeId : String;
	static var isObservable : Bool;
	static var self : Ext.IClass;
	static var useTopWindow : Bool;
	static function add(?token:String, ?preventDuplicates:Bool):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function back():Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function clearManagedListeners():Void;
	static function enableBubble(?eventNames:Dynamic):Void;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	static function forward():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function getToken():String;
	static function hasListener(?eventName:String):Bool;
	static function init(?onReady:Dynamic, ?scope:Dynamic):Void;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	static function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function resumeEvents():Void;
	static function statics():Ext.IClass;
	static function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	static function suspendEvents(?queueSuspended:Bool):Void;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IKeyMap = {
	>Ext.IBase,
	@:optional
	var binding : Dynamic;
	@:optional
	var eventName : String;
	@:optional
	var ignoreInputFields : Bool;
	@:optional
	var processEvent : Dynamic;
	@:optional
	var processEventScope : Dynamic;
	@:optional
	var target : Dynamic;
	@:optional
	function addBinding(?binding:Dynamic):Void;
	@:optional
	function destroy(?removeTarget:Bool):Void;
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function isEnabled():Bool;
	@:optional
	function on(?key:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeBinding(?binding:Dynamic):Void;
	@:optional
	function setDisabled(?disabled:Bool):Void;
	@:optional
	function un(?key:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IKeyNav = {
	>Ext.IBase,
	@:optional
	var defaultEventAction : String;
	@:optional
	var disabled : Bool;
	@:optional
	var eventName : String;
	@:optional
	var forceKeyDown : Bool;
	@:optional
	var ignoreInputFields : Bool;
	@:optional
	var keyMap : Ext.util.IKeyMap;
	@:optional
	var processEvent : Dynamic;
	@:optional
	var processEventScope : Dynamic;
	@:optional
	var target : Dynamic;
	@:optional
	function destroy(?removeEl:Bool):Void;
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function setDisabled(?disabled:Bool):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef ITaskManager = {
	>Ext.util.ITaskRunner,
};
extern class TaskManager {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function newTask(?config:Dynamic):Void;
	static function start(?task:Dynamic):Dynamic;
	static function statics():Ext.IClass;
	static function stop(?task:Dynamic):Dynamic;
	static function stopAll():Void;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IVersion = {
	@:optional
	function equals(?target:Dynamic):Bool;
	@:optional
	function getBuild():Float;
	@:optional
	function getMajor():Float;
	@:optional
	function getMinor():Float;
	@:optional
	function getPatch():Float;
	@:optional
	function getRelease():Float;
	@:optional
	function getShortVersion():String;
	@:optional
	function gt(?target:Dynamic):Bool;
	@:optional
	function gtEq(?target:Dynamic):Bool;
	@:optional
	function isGreaterThan(?target:Dynamic):Bool;
	@:optional
	function isGreaterThanOrEqual(?target:Dynamic):Bool;
	@:optional
	function isLessThan(?target:Dynamic):Bool;
	@:optional
	function isLessThanOrEqual(?target:Dynamic):Bool;
	@:optional
	function lt(?target:Dynamic):Bool;
	@:optional
	function ltEq(?target:Dynamic):Bool;
	@:optional
	function match(?target:Dynamic):Bool;
	@:optional
	function toArray():Array<Float>;
};
extern class Version {
	static function compare(?current:String, ?target:String):Float;
	static function getComponentValue(?value:Dynamic):Dynamic;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IBoundList = {
	>Ext.view.IView,
	>Ext.IQueryable,
	@:optional
	var baseCls : String;
	@:optional
	var componentLayout : Dynamic;
	@:optional
	var deferInitialRefresh : Bool;
	@:optional
	var displayField : String;
	@:optional
	var itemCls : String;
	@:optional
	var pageSize : Float;
	@:optional
	var renderTpl : Dynamic;
	@:optional
	var shadow : Dynamic;
	@:optional
	var tpl : Dynamic;
	@:optional
	var trackOver : Bool;
	@:optional
	var pagingToolbar : Ext.toolbar.IPaging;
	@:optional
	function bindStore(?store:Dynamic, ?initial:Dynamic):Void;
	@:optional
	function child(?selector:Dynamic):Dynamic;
	@:optional
	function down(?selector:Dynamic):Dynamic;
	@:optional
	function getInnerTpl(?displayField:String):String;
	@:optional
	function onDestroy():Void;
	@:optional
	function query(?selector:String):Array<Ext.IComponent>;
	@:optional
	function queryBy(?fn:Dynamic, ?scope:Dynamic):Array<Ext.IComponent>;
	@:optional
	function queryById(?id:String):Ext.IComponent;
	@:optional
	function refresh():Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IDataView = {
	>Ext.view.IAbstractView,
	@:optional
	var mouseOverOutBuffer : Float;
	@:optional
	function clearHighlight():Void;
	@:optional
	function focusNode(?rec:Ext.data.IModel):Void;
	@:optional
	function highlightItem(?item:HTMLElement):Void;
	@:optional
	function initComponent():Void;
	@:optional
	function refresh():Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IWindow = {
	>Ext.panel.IPanel,
	@:optional
	var animateTarget : Dynamic;
	@:optional
	var autoRender : Bool;
	@:optional
	var baseCls : String;
	@:optional
	var closable : Bool;
	@:optional
	var collapsed : Bool;
	@:optional
	var collapsible : Bool;
	@:optional
	var constrain : Bool;
	@:optional
	var constrainHeader : Bool;
	@:optional
	var defaultFocus : Dynamic;
	@:optional
	var draggable : Bool;
	@:optional
	var expandOnShow : Bool;
	@:optional
	var ghost : Dynamic;
	@:optional
	var hidden : Bool;
	@:optional
	var hideMode : String;
	@:optional
	var hideShadowOnDeactivate : Bool;
	@:optional
	var maximizable : Bool;
	@:optional
	var maximized : Bool;
	@:optional
	var minHeight : Float;
	@:optional
	var minWidth : Float;
	@:optional
	var minimizable : Bool;
	@:optional
	var modal : Bool;
	@:optional
	var onEsc : Dynamic;
	@:optional
	var overlapHeader : Bool;
	@:optional
	var plain : Bool;
	@:optional
	var resizable : Dynamic;
	@:optional
	var x : Float;
	@:optional
	var y : Float;
	@:optional
	var dd : Ext.util.IComponentDragger;
	@:optional
	var isWindow : Bool;
	@:optional
	function afterCollapse():Void;
	@:optional
	function afterExpand():Void;
	@:optional
	function applyState(?state:Dynamic):Void;
	@:optional
	function getDefaultFocus():Void;
	@:optional
	function maximize(?animate:Bool):Ext.window.IWindow;
	@:optional
	function minimize():Ext.window.IWindow;
	@:optional
	function onShow():Void;
	@:optional
	function restore(?animate:Dynamic):Ext.window.IWindow;
	@:optional
	function toggleMaximize():Ext.window.IWindow;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IWindowManager = {
	>Ext.IZIndexManager,
};
extern class WindowManager {
	static var self : Ext.IClass;
	static function bringToFront(?comp:Dynamic):Bool;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachBottomUp(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachTopDown(?fn:Dynamic, ?scope:Dynamic):Void;
	static function get(?id:Dynamic):Ext.IComponent;
	static function getActive():Ext.IComponent;
	static function getBy(?fn:Dynamic, ?scope:Dynamic):Array<Dynamic>;
	static function getInitialConfig(?name:String):Dynamic;
	static function hideAll():Void;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function register(?comp:Ext.IComponent):Void;
	static function sendToBack(?comp:Dynamic):Ext.IComponent;
	static function statics():Ext.IClass;
	static function unregister(?comp:Ext.IComponent):Void;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IXTemplate = {
	>Ext.ITemplate,
	@:optional
	var definitions : Dynamic;
	@:optional
	function applyOut(?values:Dynamic, ?out:Dynamic, ?parent:Dynamic):Array<Dynamic>;
};
extern class XTemplate {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function from(?el:Dynamic, ?config:Dynamic):Ext.ITemplate;
	static function getName():String;
	static function getTpl(?instance:Dynamic, ?name:String):Ext.IXTemplate;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
}
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IXTemplateCompiler = {
	>Ext.IXTemplateParser,
	@:optional
	function doCase(?action:Dynamic):Void;
	@:optional
	function doDefault():Void;
	@:optional
	function doElse():Void;
	@:optional
	function doElseIf(?action:Dynamic, ?actions:Dynamic):Void;
	@:optional
	function doEnd(?type:Dynamic, ?actions:Dynamic):Void;
	@:optional
	function doEval(?text:Dynamic):Void;
	@:optional
	function doExec(?action:Dynamic, ?actions:Dynamic):Void;
	@:optional
	function doExpr(?expr:Dynamic):Void;
	@:optional
	function doFor(?action:Dynamic, ?actions:Dynamic):Void;
	@:optional
	function doForEach(?action:Dynamic, ?actions:Dynamic):Void;
	@:optional
	function doIf(?action:Dynamic, ?actions:Dynamic):Void;
	@:optional
	function doSwitch(?action:Dynamic):Void;
	@:optional
	function doTag(?tag:Dynamic):Void;
	@:optional
	function doText(?text:Dynamic):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IXTemplateParser = {
	>Ext.IBase,
	@:optional
	var level : Float;
	@:optional
	function doCase(?action:String, ?actions:Dynamic):Void;
	@:optional
	function doDefault():Void;
	@:optional
	function doElse():Void;
	@:optional
	function doElseIf(?action:String, ?actions:Dynamic):Void;
	@:optional
	function doEnd(?type:String, ?actions:Dynamic):Void;
	@:optional
	function doEval(?text:String):Void;
	@:optional
	function doExec(?action:String, ?actions:Dynamic):Void;
	@:optional
	function doExpr(?expr:String):Void;
	@:optional
	function doFor(?action:String, ?actions:Dynamic):Void;
	@:optional
	function doForEach(?action:String, ?actions:Dynamic):Void;
	@:optional
	function doIf(?action:String, ?actions:Dynamic):Void;
	@:optional
	function doSwitch(?action:String, ?actions:Dynamic):Void;
	@:optional
	function doTag():Void;
	@:optional
	function doText(?text:String):Void;
	@:optional
	function doTpl():Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IZIndexManager = {
	>Ext.IBase,
	@:optional
	function bringToFront(?comp:Dynamic):Bool;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function eachBottomUp(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function eachTopDown(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function get(?id:Dynamic):Ext.IComponent;
	@:optional
	function getActive():Ext.IComponent;
	@:optional
	function getBy(?fn:Dynamic, ?scope:Dynamic):Array<Dynamic>;
	@:optional
	function hideAll():Void;
	@:optional
	function register(?comp:Ext.IComponent):Void;
	@:optional
	function sendToBack(?comp:Dynamic):Ext.IComponent;
	@:optional
	function unregister(?comp:Ext.IComponent):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
typedef IWindowGroup = {
	>Ext.IBase,
	@:optional
	function bringToFront(?comp:Dynamic):Bool;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function eachBottomUp(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function eachTopDown(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function get(?id:Dynamic):Ext.IComponent;
	@:optional
	function getActive():Ext.IComponent;
	@:optional
	function getBy(?fn:Dynamic, ?scope:Dynamic):Array<Dynamic>;
	@:optional
	function hideAll():Void;
	@:optional
	function register(?comp:Ext.IComponent):Void;
	@:optional
	function sendToBack(?comp:Dynamic):Ext.IComponent;
	@:optional
	function unregister(?comp:Ext.IComponent):Void;
};
extern class ExtTopLevel {
	static var BLANK_IMAGE_URL : String;
	static var SSL_SECURE_URL : String;
	static var USE_NATIVE_JSON : Bool;
	static var chromeVersion : Float;
	static var emptyFn : Dynamic;
	static var emptyString : Dynamic;
	static var enableFx : Bool;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enableNestedListenerRemoval : Bool;
	static var enumerables : Array<String>;
	static var firefoxVersion : Float;
	static var globalEvents : Ext.util.IObservable;
	static var ieVersion : Float;
	static var isChrome : Bool;
	static var isFF10 : Bool;
	static var isFF3_0 : Bool;
	static var isFF3_5 : Bool;
	static var isFF3_6 : Bool;
	static var isFF4 : Bool;
	static var isFF5 : Bool;
	static var isGecko : Bool;
	static var isGecko10 : Bool;
	static var isGecko3 : Bool;
	static var isGecko4 : Bool;
	static var isGecko5 : Bool;
	static var isIE : Bool;
	static var isIE10 : Bool;
	static var isIE10m : Bool;
	static var isIE10p : Bool;
	static var isIE6 : Bool;
	static var isIE7 : Bool;
	static var isIE7m : Bool;
	static var isIE7p : Bool;
	static var isIE8 : Bool;
	static var isIE8m : Bool;
	static var isIE8p : Bool;
	static var isIE9 : Bool;
	static var isIE9m : Bool;
	static var isIE9p : Bool;
	static var isLinux : Bool;
	static var isMac : Bool;
	static var isOpera : Bool;
	static var isOpera10_5 : Bool;
	static var isReady : Bool;
	static var isSafari : Bool;
	static var isSafari2 : Bool;
	static var isSafari3 : Bool;
	static var isSafari4 : Bool;
	static var isSafari5 : Bool;
	static var isSafari5_0 : Bool;
	static var isSecure : Bool;
	static var isWebKit : Bool;
	static var isWindows : Bool;
	static var name : String;
	static var operaVersion : Float;
	static var safariVersion : Float;
	static var useShims : Bool;
	static var webKitVersion : Float;
	static function addBehaviors(?obj:Dynamic):Void;
	static function addNamespaces(?namespace:Dynamic):Void;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function batchLayouts(?fn:Dynamic, ?scope:Dynamic):Void;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Dynamic;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function coerce(?from:Dynamic, ?to:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(name:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
	static function destroy(?args:Dynamic):Void;
	static function destroyMembers(o:Dynamic, args:haxe.extern.Rest<Dynamic>):Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function escapeRe(?str:String):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
	static function get(?el:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Dynamic;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):Dynamic;
	static function getHead():Ext.IElement;
	static function getNamespace(?className:String):String;
	static function getOrientation():String;
	static function getScrollBarWidth(?force:Bool):Float;
	static function getScrollbarSize(?force:Bool):Dynamic;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function getVersion(?packageName:String):Ext.IVersion;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function identityFn(?o:Dynamic):Void;
	static function invoke(arr:Dynamic, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function log(options:Dynamic, message:haxe.extern.Rest<Dynamic>):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge(destination:Dynamic, object:haxe.extern.Rest<Dynamic>):Dynamic;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function ns(namespaces:haxe.extern.Rest<Dynamic>):Dynamic;
	static function num(?value:Dynamic, ?defaultValue:Float):Float;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	static function onDocumentReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function override(?target:Dynamic, ?overrides:Dynamic):Void;
	static function partition(?arr:Dynamic, ?truth:Dynamic):Array<Dynamic>;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg(?ptype:String, ?cls:Dynamic):Void;
	static function query(?path:String, ?root:HTMLElement, ?type:String, ?single:Bool):Array<HTMLElement>;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function resumeLayouts(?flush:Dynamic):Void;
	static function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	static function setGlyphFontFamily(?fontFamily:String):Void;
	static function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	static function sum(?array:Array<Dynamic>):Float;
	static function suspendLayouts():Void;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function toSentence(?items:Array<String>, ?connector:String):String;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode(?queryString:String, ?recursive:Bool):Dynamic;
	static function urlEncode(?object:Dynamic, ?recursive:Bool):String;
	static function value(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String, ?config:Dynamic):Dynamic;
	static function zip(?arr:Dynamic, ?zipper:Dynamic):Array<Dynamic>;
}
