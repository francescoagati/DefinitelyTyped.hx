typedef IAbstractComponent = {
	>Ext.IEvented,
};
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
typedef IActionSheet = {
	>Ext.ISheet,
	@:optional
	var baseCls : String;
	@:optional
	var bottom : Dynamic;
	@:optional
	var defaultType : String;
	@:optional
	var height : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function getBottom():Float;
	@:optional
	function getDefaultType():String;
	@:optional
	function getHeight():String;
	@:optional
	function getLeft():Float;
	@:optional
	function getRight():Float;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setBottom(?bottom:Float):Void;
	@:optional
	function setDefaultType(?defaultType:String):Void;
	@:optional
	function setHeight(?height:String):Void;
	@:optional
	function setLeft(?left:Float):Void;
	@:optional
	function setRight(?right:Float):Void;
};
typedef IAjax = {
	>Ext.data.IConnection,
};
extern class Ajax {
	static var autoAbort : Bool;
	static var self : Ext.IClass;
	static function abort(?request:Dynamic):Void;
	static function abortAll():Void;
	static function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function destroy():Void;
	static function enableBubble(?events:Dynamic):Void;
	static function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function getAsync():Bool;
	static function getAutoAbort():Bool;
	static function getBubbleEvents():Dynamic;
	static function getDefaultHeaders():Dynamic;
	static function getDefaultPostHeader():String;
	static function getDefaultXhrHeader():String;
	static function getDisableCaching():Bool;
	static function getDisableCachingParam():String;
	static function getExtraParams():Dynamic;
	static function getId():String;
	static function getInitialConfig(?name:String):Dynamic;
	static function getListeners():Dynamic;
	static function getMethod():String;
	static function getPassword():String;
	static function getTimeout():Float;
	static function getUrl():String;
	static function getUseDefaultHeader():Bool;
	static function getUseDefaultXhrHeader():Bool;
	static function getUsername():String;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function isLoading(?request:Dynamic):Bool;
	static function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function parseStatus(?status:Float, ?xhr:Dynamic):Dynamic;
	static function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	static function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function request(?options:Dynamic):Dynamic;
	static function resumeEvents(?discardQueuedEvents:Bool):Void;
	static function setAsync(?async:Bool):Void;
	static function setAutoAbort(?autoAbort:Bool):Void;
	static function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	static function setDefaultHeaders(?defaultHeaders:Dynamic):Void;
	static function setDefaultPostHeader(?defaultPostHeader:String):Void;
	static function setDefaultXhrHeader(?defaultXhrHeader:String):Void;
	static function setDisableCaching(?disableCaching:Bool):Void;
	static function setDisableCachingParam(?disableCachingParam:String):Void;
	static function setExtraParams(?extraParams:Dynamic):Void;
	static function setListeners(?listeners:Dynamic):Void;
	static function setMethod(?method:String):Void;
	static function setOptions(?options:Dynamic, ?scope:Dynamic):Dynamic;
	static function setPassword(?password:String):Void;
	static function setTimeout(?timeout:Float):Void;
	static function setUrl(?url:String):Void;
	static function setUseDefaultHeader(?useDefaultHeader:Bool):Void;
	static function setUseDefaultXhrHeader(?useDefaultXhrHeader:Bool):Void;
	static function setUsername(?username:String):Void;
	static function statics():Ext.IClass;
	static function suspendEvents():Void;
	static function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function upload(?form:Dynamic, ?url:String, ?params:String, ?options:Dynamic):Void;
}
typedef IAnim = {
	>Ext.IBase,
};
extern class Anim {
	static var after : Dynamic;
	static var autoClear : Bool;
	static var before : Dynamic;
	static var delay : Float;
	static var direction : String;
	static var disableAnimations : Bool;
	static var duration : Float;
	static var easing : String;
	static var from : Dynamic;
	static var out : Bool;
	static var reverse : Bool;
	static var scope : Dynamic;
	static var to : Dynamic;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?el:Dynamic, ?runConfig:Dynamic):Dynamic;
	static function run(?el:Dynamic, ?anim:String, ?config:Dynamic):Void;
	static function statics():Ext.IClass;
}
typedef IAnimationQueue = {
	>Ext.IBase,
};
extern class AnimationQueue {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function start(?fn:Dynamic, ?scope:Dynamic, ?args:Dynamic):Void;
	static function statics():Ext.IClass;
	static function stop(?fn:Dynamic, ?scope:Dynamic, ?args:Dynamic):Void;
}
typedef IAnims = { };
extern class Anims {
	static var cube : Dynamic;
	static var fade : Dynamic;
	static var flip : Dynamic;
	static var pop : Dynamic;
	static var slide : Dynamic;
	static var wipe : Dynamic;
}
typedef IArray = { };
extern class Array {
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?array:Array<Dynamic>):Array<Dynamic>;
	static function contains(?array:Array<Dynamic>, ?item:Dynamic):Bool;
	static function difference(?arrayA:Array<Dynamic>, ?arrayB:Array<Dynamic>):Array<Dynamic>;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function erase(?array:Array<Dynamic>, ?index:Float, ?removeCount:Float):Array<Dynamic>;
	static function every(?array:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Bool;
	static function filter(?array:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Array<Dynamic>;
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
	static function remove(?array:Array<Dynamic>, ?item:Dynamic):Array<Dynamic>;
	static function replace(?array:Array<Dynamic>, ?index:Float, ?removeCount:Float, ?insert:Array<Dynamic>):Array<Dynamic>;
	static function slice(?array:Array<Dynamic>, ?begin:Float, ?end:Float):Array<Dynamic>;
	static function some(?array:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Bool;
	static function sort(?array:Array<Dynamic>, ?sortFn:Dynamic):Array<Dynamic>;
	static function splice(?array:Array<Dynamic>, ?index:Float, ?removeCount:Float):Array<Dynamic>;
	static function sum(?array:Array<Dynamic>):Float;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function union(?array1:Array<Dynamic>, ?array2:Array<Dynamic>, ?etc:Array<Dynamic>):Array<Dynamic>;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
}
typedef IAudio = {
	>Ext.IMedia,
	@:optional
	var cls : Dynamic;
	@:optional
	var url : String;
	@:optional
	function getCls():String;
	@:optional
	function getUrl():String;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setUrl(?url:String):Void;
};
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
	function destroy():Void;
	@:optional
	function getInitialConfig(?name:String):Dynamic;
	@:optional
	function initConfig(?instanceConfig:Dynamic):Dynamic;
};
extern class Base {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function getName():Dynamic;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IBrowser = {
	>Ext.env.IBrowser,
};
extern class Browser {
	static var engineName : String;
	static var engineVersion : Ext.IVersion;
	static var isSecure : Bool;
	static var isStrict : Bool;
	static var name : String;
	static var self : Ext.IClass;
	static var userAgent : String;
	static var version : Ext.IVersion;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function is(?value:String):Bool;
	static function statics():Ext.IClass;
}
typedef IButton = {
	>Ext.IComponent,
	@:optional
	var autoEvent : String;
	@:optional
	var badge : String;
	@:optional
	var badgeCls : String;
	@:optional
	var badgeText : String;
	@:optional
	var baseCls : String;
	@:optional
	var handler : Dynamic;
	@:optional
	var html : String;
	@:optional
	var icon : String;
	@:optional
	var iconAlign : String;
	@:optional
	var iconCls : String;
	@:optional
	var labelCls : String;
	@:optional
	var pressedCls : String;
	@:optional
	var pressedDelay : Dynamic;
	@:optional
	var scope : Dynamic;
	@:optional
	var text : String;
	@:optional
	var ui : String;
	@:optional
	function getAutoEvent():String;
	@:optional
	function getBadgeCls():String;
	@:optional
	function getBadgeText():String;
	@:optional
	function getBaseCls():String;
	@:optional
	function getHandler():Dynamic;
	@:optional
	function getIcon():String;
	@:optional
	function getIconAlign():String;
	@:optional
	function getIconCls():String;
	@:optional
	function getLabelCls():String;
	@:optional
	function getPressedCls():String;
	@:optional
	function getPressedDelay():Dynamic;
	@:optional
	function getScope():Dynamic;
	@:optional
	function getText():String;
	@:optional
	function getUi():String;
	@:optional
	function initialize():Void;
	@:optional
	function setAutoEvent(?autoEvent:String):Void;
	@:optional
	function setBadge(?text:String):Void;
	@:optional
	function setBadgeCls(?badgeCls:String):Void;
	@:optional
	function setBadgeText(?badgeText:String):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setHandler(?handler:Dynamic):Void;
	@:optional
	function setIcon(?icon:String):Void;
	@:optional
	function setIconAlign(?iconAlign:String):Void;
	@:optional
	function setIconClass(?iconClass:String):Void;
	@:optional
	function setIconCls(?iconCls:String):Void;
	@:optional
	function setLabelCls(?labelCls:String):Void;
	@:optional
	function setPressedCls(?pressedCls:String):Void;
	@:optional
	function setPressedDelay(?pressedDelay:Dynamic):Void;
	@:optional
	function setScope(?scope:Dynamic):Void;
	@:optional
	function setText(?text:String):Void;
	@:optional
	function setUi(?ui:String):Void;
};
typedef ICarousel = {
	>Ext.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var direction : String;
	@:optional
	var indicator : Bool;
	@:optional
	var ui : String;
	@:optional
	function destroy():Void;
	@:optional
	function getActiveIndex():Float;
	@:optional
	function getAnimation():Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function getBufferSize():Float;
	@:optional
	function getDirection():String;
	@:optional
	function getDirectionLock():Bool;
	@:optional
	function getIndicator():Dynamic;
	@:optional
	function getItemConfig():Dynamic;
	@:optional
	function getItemLength():Dynamic;
	@:optional
	function getUi():String;
	@:optional
	function isHorizontal():Bool;
	@:optional
	function isVertical():Bool;
	@:optional
	function next():Ext.carousel.ICarousel;
	@:optional
	function prev():Ext.carousel.ICarousel;
	@:optional
	function previous():Ext.carousel.ICarousel;
	@:optional
	function setAnimation(?animation:Dynamic):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setBufferSize(?bufferSize:Float):Void;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setDirectionLock(?directionLock:Bool):Void;
	@:optional
	function setIndicator(?indicator:Bool):Void;
	@:optional
	function setItemConfig(?itemConfig:Dynamic):Void;
	@:optional
	function setItemLength(?itemLength:Dynamic):Void;
	@:optional
	function setUi(?ui:String):Void;
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
	var platformConfig : Dynamic;
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
	static function get(?name:String):Ext.IClass;
	static function getAliasesByName(?name:String):Array<Dynamic>;
	static function getByAlias(?alias:String):Ext.IClass;
	static function getClass(?object:Dynamic):Ext.IClass;
	static function getName(?object:Dynamic):String;
	static function getNameByAlias(?alias:String):String;
	static function getNameByAlternate(?alternate:String):String;
	static function getNamesByExpression(?expression:String):Array<Dynamic>;
	static function instantiate(?name:String, ?args:Dynamic):Dynamic;
	static function instantiateByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function isCreated(?className:String):Bool;
	static function set(?name:String, ?value:Dynamic):Ext.IClassManager;
	static function setAlias(?cls:Dynamic, ?alias:String):Ext.IClassManager;
	static function setNamespace(?name:String, ?value:Dynamic):Void;
}
typedef IComponent = {
	>Ext.IAbstractComponent,
	>Ext.mixin.ITraversable,
	@:optional
	var baseCls : String;
	@:optional
	var border : Dynamic;
	@:optional
	var bottom : Dynamic;
	@:optional
	var centered : Bool;
	@:optional
	var cls : Dynamic;
	@:optional
	var componentCls : String;
	@:optional
	var contentEl : Dynamic;
	@:optional
	var data : Dynamic;
	@:optional
	var disabled : Bool;
	@:optional
	var disabledCls : String;
	@:optional
	var dock : String;
	@:optional
	var docked : String;
	@:optional
	var enterAnimation : Dynamic;
	@:optional
	var exitAnimation : Dynamic;
	@:optional
	var flex : Float;
	@:optional
	var floating : Bool;
	@:optional
	var floatingCls : String;
	@:optional
	var fullscreen : Bool;
	@:optional
	var height : Dynamic;
	@:optional
	var hidden : Bool;
	@:optional
	var hiddenCls : String;
	@:optional
	var hideAnimation : Dynamic;
	@:optional
	var hideOnMaskTap : Bool;
	@:optional
	var html : Dynamic;
	@:optional
	var id : String;
	@:optional
	var itemId : String;
	@:optional
	var layoutOnOrientationChange : Bool;
	@:optional
	var left : Dynamic;
	@:optional
	var margin : Dynamic;
	@:optional
	var maxHeight : Dynamic;
	@:optional
	var maxWidth : Dynamic;
	@:optional
	var minHeight : Dynamic;
	@:optional
	var minWidth : Dynamic;
	@:optional
	var modal : Bool;
	@:optional
	var monitorOrientation : Bool;
	@:optional
	var padding : Dynamic;
	@:optional
	var plugins : Dynamic;
	@:optional
	var record : Ext.data.IModel;
	@:optional
	var renderTo : Ext.IElement;
	@:optional
	var right : Dynamic;
	@:optional
	var scroll : Dynamic;
	@:optional
	var showAnimation : Dynamic;
	@:optional
	var stopMaskTapEvent : Bool;
	@:optional
	var style : Dynamic;
	@:optional
	var styleHtmlCls : String;
	@:optional
	var styleHtmlContent : Bool;
	@:optional
	var top : Dynamic;
	@:optional
	var tpl : Dynamic;
	@:optional
	var tplWriteMode : String;
	@:optional
	var ui : String;
	@:optional
	var width : Dynamic;
	@:optional
	var xtype : String;
	@:optional
	var zIndex : Float;
	@:optional
	function addCls(?cls:String, ?prefix:String, ?suffix:String):Void;
	@:optional
	function destroy():Void;
	@:optional
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function getBaseCls():String;
	@:optional
	function getBorder():Dynamic;
	@:optional
	function getBottom():Dynamic;
	@:optional
	function getCentered():Bool;
	@:optional
	function getCls():Dynamic;
	@:optional
	function getContentEl():Dynamic;
	@:optional
	function getData():Dynamic;
	@:optional
	function getDisabled():Bool;
	@:optional
	function getDisabledCls():String;
	@:optional
	function getDocked():String;
	@:optional
	function getEl():Ext.dom.IElement;
	@:optional
	function getEnterAnimation():Dynamic;
	@:optional
	function getExitAnimation():Dynamic;
	@:optional
	function getFlex():Float;
	@:optional
	function getFloatingCls():String;
	@:optional
	function getHeight():Dynamic;
	@:optional
	function getHidden():Bool;
	@:optional
	function getHiddenCls():String;
	@:optional
	function getHideAnimation():Dynamic;
	@:optional
	function getHtml():Dynamic;
	@:optional
	function getItemId():String;
	@:optional
	function getLeft():Dynamic;
	@:optional
	function getMargin():Dynamic;
	@:optional
	function getMaxHeight():Dynamic;
	@:optional
	function getMaxWidth():Dynamic;
	@:optional
	function getMinHeight():Dynamic;
	@:optional
	function getMinWidth():Dynamic;
	@:optional
	function getPadding():Dynamic;
	@:optional
	function getParent():Ext.IComponent;
	@:optional
	function getPlugins():Dynamic;
	@:optional
	function getRecord():Ext.data.IModel;
	@:optional
	function getRenderTo():Ext.IElement;
	@:optional
	function getRight():Dynamic;
	@:optional
	function getShowAnimation():Dynamic;
	@:optional
	function getSize():Dynamic;
	@:optional
	function getStyle():Dynamic;
	@:optional
	function getStyleHtmlCls():String;
	@:optional
	function getStyleHtmlContent():Bool;
	@:optional
	function getTop():Dynamic;
	@:optional
	function getTpl():Dynamic;
	@:optional
	function getTplWriteMode():String;
	@:optional
	function getUi():String;
	@:optional
	function getWidth():Dynamic;
	@:optional
	function getXTypes():String;
	@:optional
	function getZIndex():Float;
	@:optional
	function hasParent():Bool;
	@:optional
	function hide(?animation:Dynamic):Ext.IComponent;
	@:optional
	function initialize():Void;
	@:optional
	function isDisabled():Bool;
	@:optional
	function isHidden():Bool;
	@:optional
	function isXType(?xtype:String, ?shallow:Bool):Bool;
	@:optional
	function removeCls(?cls:String, ?prefix:String, ?suffix:String):Void;
	@:optional
	function replaceCls(?oldCls:String, ?newCls:String, ?prefix:String, ?suffix:String):Void;
	@:optional
	function resetFloating():Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setBorder(?border:Dynamic):Void;
	@:optional
	function setBottom(?bottom:Dynamic):Void;
	@:optional
	function setCentered(?centered:Bool):Void;
	@:optional
	function setCls(?cls:Dynamic):Void;
	@:optional
	function setContentEl(?contentEl:Dynamic):Void;
	@:optional
	function setData(?data:Dynamic):Void;
	@:optional
	function setDisabled(?disabled:Bool):Void;
	@:optional
	function setDisabledCls(?disabledCls:String):Void;
	@:optional
	function setDocked(?docked:String):Void;
	@:optional
	function setDraggable(?draggable:Dynamic):Void;
	@:optional
	function setEnterAnimation(?enterAnimation:Dynamic):Void;
	@:optional
	function setExitAnimation(?exitAnimation:Dynamic):Void;
	@:optional
	function setFlex(?flex:Float):Void;
	@:optional
	function setFloating(?floating:Bool):Void;
	@:optional
	function setFloatingCls(?floatingCls:String):Void;
	@:optional
	function setHeight(?height:Dynamic):Void;
	@:optional
	function setHidden(?hidden:Bool):Void;
	@:optional
	function setHiddenCls(?hiddenCls:String):Void;
	@:optional
	function setHideAnimation(?hideAnimation:Dynamic):Void;
	@:optional
	function setHtml(?html:Dynamic):Void;
	@:optional
	function setItemId(?itemId:String):Void;
	@:optional
	function setLeft(?left:Dynamic):Void;
	@:optional
	function setMargin(?margin:Dynamic):Void;
	@:optional
	function setMaxHeight(?maxHeight:Dynamic):Void;
	@:optional
	function setMaxWidth(?maxWidth:Dynamic):Void;
	@:optional
	function setMinHeight(?minHeight:Dynamic):Void;
	@:optional
	function setMinWidth(?minWidth:Dynamic):Void;
	@:optional
	function setPadding(?padding:Dynamic):Void;
	@:optional
	function setPlugins(?plugins:Dynamic):Void;
	@:optional
	function setRecord(?record:Ext.data.IModel):Void;
	@:optional
	function setRenderTo(?renderTo:Ext.IElement):Void;
	@:optional
	function setRight(?right:Dynamic):Void;
	@:optional
	function setScrollable():Void;
	@:optional
	function setShowAnimation(?showAnimation:Dynamic):Void;
	@:optional
	function setSize(?width:Float, ?height:Float):Void;
	@:optional
	function setStyle(?style:Dynamic):Void;
	@:optional
	function setStyleHtmlCls(?styleHtmlCls:String):Void;
	@:optional
	function setStyleHtmlContent(?styleHtmlContent:Bool):Void;
	@:optional
	function setTop(?top:Dynamic):Void;
	@:optional
	function setTpl(?tpl:Dynamic):Void;
	@:optional
	function setTplWriteMode(?tplWriteMode:String):Void;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function setWidth(?width:Dynamic):Void;
	@:optional
	function setZIndex(?zIndex:Float):Void;
	@:optional
	function show(?animation:Dynamic):Ext.IComponent;
	@:optional
	function showBy(?component:Ext.IComponent, ?alignment:String):Void;
	@:optional
	function up(?selector:String):Ext.IContainer;
	@:optional
	function update():Void;
	@:optional
	function updateStyleHtmlCls(?newHtmlCls:Dynamic, ?oldHtmlCls:Dynamic):Void;
};
typedef IComponentManager = {
	>Ext.IBase,
};
extern class ComponentManager {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function create(?component:Dynamic, ?defaultType:Dynamic):Ext.IComponent;
	static function destroy():Void;
	static function get(?id:String):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function isRegistered(?component:String):Bool;
	static function register(?component:Dynamic):Void;
	static function statics():Ext.IClass;
	static function unregister(?component:Dynamic):Void;
}
typedef IComponentMgr = {
	>Ext.IBase,
};
extern class ComponentMgr {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function create(?component:Dynamic, ?defaultType:Dynamic):Ext.IComponent;
	static function destroy():Void;
	static function get(?id:String):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function isRegistered(?component:String):Bool;
	static function register(?component:Dynamic):Void;
	static function statics():Ext.IClass;
	static function unregister(?component:Dynamic):Void;
}
typedef IComponentQuery = { };
extern class ComponentQuery {
	static function is(?component:Ext.IComponent, ?selector:String):Bool;
	static function query(?selector:String, ?root:Ext.IContainer):Array<Ext.IComponent>;
}
typedef IContainer = {
	>Ext.IComponent,
	@:optional
	var activeItem : Dynamic;
	@:optional
	var autoDestroy : Bool;
	@:optional
	var cardSwitchAnimation : Dynamic;
	@:optional
	var control : Dynamic;
	@:optional
	var defaultType : String;
	@:optional
	var defaults : Dynamic;
	@:optional
	var hideOnMaskTap : Bool;
	@:optional
	var items : Dynamic;
	@:optional
	var layout : Dynamic;
	@:optional
	var masked : Dynamic;
	@:optional
	var modal : Bool;
	@:optional
	var scroll : Dynamic;
	@:optional
	var scrollable : Dynamic;
	@:optional
	function add(?newItems:Dynamic):Ext.IComponent;
	@:optional
	function addAll(?items:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function animateActiveItem(?activeItem:Dynamic, ?animation:Dynamic):Void;
	@:optional
	function applyMasked(?masked:Dynamic):Dynamic;
	@:optional
	function child(?selector:String):Ext.IComponent;
	@:optional
	function destroy():Void;
	@:optional
	function down(?selector:String):Ext.IComponent;
	@:optional
	function getActiveItem():Dynamic;
	@:optional
	function getAt(?index:Float):Ext.IComponent;
	@:optional
	function getAutoDestroy():Bool;
	@:optional
	function getComponent(?component:Dynamic):Ext.IComponent;
	@:optional
	function getControl():Dynamic;
	@:optional
	function getDefaultType():String;
	@:optional
	function getDefaults():Dynamic;
	@:optional
	function getDockedComponent(?component:Dynamic):Dynamic;
	@:optional
	function getDockedItems():Array<Dynamic>;
	@:optional
	function getHideOnMaskTap():Bool;
	@:optional
	function getInnerItems():Array<Dynamic>;
	@:optional
	function getItems():Dynamic;
	@:optional
	function getMasked():Dynamic;
	@:optional
	function getModal():Bool;
	@:optional
	function getScrollable():Ext.scroll.IView;
	@:optional
	function insert(?index:Float, ?item:Dynamic):Void;
	@:optional
	function mask(?mask:Dynamic):Void;
	@:optional
	function query(?selector:String):Array<Dynamic>;
	@:optional
	function remove(?item:Dynamic, ?destroy:Bool):Ext.IComponent;
	@:optional
	function removeAll(?destroy:Bool, ?everything:Bool):Ext.IComponent;
	@:optional
	function removeAt(?index:Float):Ext.IContainer;
	@:optional
	function removeDocked(?item:Dynamic, ?destroy:Bool):Ext.IComponent;
	@:optional
	function removeInnerAt(?index:Float):Ext.IContainer;
	@:optional
	function setActiveItem(?activeItem:Dynamic):Void;
	@:optional
	function setAutoDestroy(?autoDestroy:Bool):Void;
	@:optional
	function setControl(?control:Dynamic):Void;
	@:optional
	function setDefaultType(?defaultType:String):Void;
	@:optional
	function setDefaults(?defaults:Dynamic):Void;
	@:optional
	function setHideOnMaskTap(?hideOnMaskTap:Bool):Void;
	@:optional
	function setItems(?items:Dynamic):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setMasked(?masked:Dynamic):Void;
	@:optional
	function setModal(?modal:Bool):Void;
	@:optional
	function setScrollable(?scrollable:Dynamic):Void;
	@:optional
	function unmask():Void;
};
typedef IModelMgr = {
	>Ext.IAbstractManager,
};
extern class ModelMgr {
	static var all : Ext.util.IHashMap;
	static var associationStack : Dynamic;
	static var defaultProxyType : Dynamic;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function create(?data:Dynamic, ?name:String, ?id:Float):Dynamic;
	static function destroy():Void;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function get(?id:String):Dynamic;
	static function getCount():Float;
	static function getInitialConfig(?name:String):Dynamic;
	static function getModel(?id:Dynamic):Ext.data.IModel;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function isRegistered(?type:String):Bool;
	static function onAvailable(?id:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function register(?item:Dynamic):Void;
	static function registerType(?name:Dynamic, ?config:Dynamic):Dynamic;
	static function statics():Ext.IClass;
	static function unregister(?item:Dynamic):Void;
}
typedef IModelManager = {
	>Ext.IAbstractManager,
};
extern class ModelManager {
	static var all : Ext.util.IHashMap;
	static var associationStack : Dynamic;
	static var defaultProxyType : Dynamic;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function create(?data:Dynamic, ?name:String, ?id:Float):Dynamic;
	static function destroy():Void;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function get(?id:String):Dynamic;
	static function getCount():Float;
	static function getInitialConfig(?name:String):Dynamic;
	static function getModel(?id:Dynamic):Ext.data.IModel;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function isRegistered(?type:String):Bool;
	static function onAvailable(?id:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function register(?item:Dynamic):Void;
	static function registerType(?name:Dynamic, ?config:Dynamic):Dynamic;
	static function statics():Ext.IClass;
	static function unregister(?item:Dynamic):Void;
}
typedef IStoreMgr = {
	>Ext.util.ICollection,
};
extern class StoreMgr {
	static var all : Array<Dynamic>;
	static var currentSortFn : Dynamic;
	static var dirtyFilterFn : Bool;
	static var dirtySortFn : Bool;
	static var filtered : Bool;
	static var indices : Dynamic;
	static var items : Array<Dynamic>;
	static var keys : Array<Dynamic>;
	static var length : Float;
	static var map : Dynamic;
	static var self : Ext.IClass;
	static var sorted : Bool;
	static function add(?key:String, ?item:Dynamic):Dynamic;
	static function addAll(?addItems:Dynamic):Void;
	static function addFilter(?filter:Dynamic):Void;
	static function addFilters(?filters:Dynamic):Dynamic;
	static function addSorter(?sorter:Dynamic, ?defaultDirection:String):Void;
	static function addSorters(?sorters:Array<Dynamic>, ?defaultDirection:String):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear():Void;
	static function clone():Ext.util.IMixedCollection;
	static function contains(?item:Dynamic):Bool;
	static function containsKey(?key:String):Bool;
	static function destroy():Void;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	static function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Dynamic, ?caseSensitive:Dynamic):Array<Dynamic>;
	static function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	static function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	static function findInsertionIndex(?items:Array<Dynamic>, ?item:Dynamic):Float;
	static function first():Dynamic;
	static function get(?key:Dynamic):Dynamic;
	static function getAt(?index:Float):Dynamic;
	static function getAutoFilter():Bool;
	static function getAutoSort():Bool;
	static function getByKey(?key:Dynamic):Dynamic;
	static function getCount():Float;
	static function getDefaultSortDirection():String;
	static function getFilterFn():Dynamic;
	static function getFilterRoot():String;
	static function getFilters():Array<Dynamic>;
	static function getInitialConfig(?name:String):Dynamic;
	static function getKey(?o:Dynamic):Dynamic;
	static function getRange(?start:Float, ?end:Float):Array<Dynamic>;
	static function getSortFn():Dynamic;
	static function getSortRoot():String;
	static function getSorters():Array<Dynamic>;
	static function indexOf(?item:Dynamic):Float;
	static function indexOfKey(?key:String):Float;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function insert(?index:Float, ?key:String, ?item:Dynamic):Dynamic;
	static function insertFilter(?index:Float, ?filter:Dynamic):Dynamic;
	static function insertFilters(?index:Float, ?filters:Array<Dynamic>):Array<Dynamic>;
	static function insertSorter(?index:Float, ?sorter:Dynamic, ?defaultDirection:String):Void;
	static function insertSorters():Ext.util.ICollection;
	static function last():Dynamic;
	static function lookup(?store:Dynamic):Ext.data.IStore;
	static function register(stores:Ext.data.IStore):Void;
	static function remove(?item:Dynamic):Dynamic;
	static function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	static function removeAt(?index:Float):Dynamic;
	static function removeAtKey(?key:String):Dynamic;
	static function removeFilters(?filters:Dynamic):Ext.util.ICollection;
	static function removeSorter(?sorter:Dynamic):Void;
	static function removeSorters(?sorters:Dynamic):Ext.util.ICollection;
	static function replace(?oldKey:String, ?item:Dynamic):Dynamic;
	static function setAutoFilter(?autoFilter:Bool):Void;
	static function setAutoSort(?autoSort:Bool):Void;
	static function setDefaultSortDirection(?defaultSortDirection:String):Void;
	static function setFilterRoot(?filterRoot:String):Void;
	static function setFilters(?filters:Array<Dynamic>):Void;
	static function setSortRoot(?sortRoot:String):Void;
	static function setSorters(?sorters:Array<Dynamic>):Void;
	static function sort(?sorters:Dynamic, ?defaultDirection:Dynamic):Array<Dynamic>;
	static function statics():Ext.IClass;
	static function unregister(?stores:Dynamic):Void;
}
typedef IStoreManager = {
	>Ext.util.ICollection,
};
extern class StoreManager {
	static var all : Array<Dynamic>;
	static var currentSortFn : Dynamic;
	static var dirtyFilterFn : Bool;
	static var dirtySortFn : Bool;
	static var filtered : Bool;
	static var indices : Dynamic;
	static var items : Array<Dynamic>;
	static var keys : Array<Dynamic>;
	static var length : Float;
	static var map : Dynamic;
	static var self : Ext.IClass;
	static var sorted : Bool;
	static function add(?key:String, ?item:Dynamic):Dynamic;
	static function addAll(?addItems:Dynamic):Void;
	static function addFilter(?filter:Dynamic):Void;
	static function addFilters(?filters:Dynamic):Dynamic;
	static function addSorter(?sorter:Dynamic, ?defaultDirection:String):Void;
	static function addSorters(?sorters:Array<Dynamic>, ?defaultDirection:String):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear():Void;
	static function clone():Ext.util.IMixedCollection;
	static function contains(?item:Dynamic):Bool;
	static function containsKey(?key:String):Bool;
	static function destroy():Void;
	static function each(?fn:Dynamic, ?scope:Dynamic):Void;
	static function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	static function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Dynamic, ?caseSensitive:Dynamic):Array<Dynamic>;
	static function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	static function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	static function findInsertionIndex(?items:Array<Dynamic>, ?item:Dynamic):Float;
	static function first():Dynamic;
	static function get(?key:Dynamic):Dynamic;
	static function getAt(?index:Float):Dynamic;
	static function getAutoFilter():Bool;
	static function getAutoSort():Bool;
	static function getByKey(?key:Dynamic):Dynamic;
	static function getCount():Float;
	static function getDefaultSortDirection():String;
	static function getFilterFn():Dynamic;
	static function getFilterRoot():String;
	static function getFilters():Array<Dynamic>;
	static function getInitialConfig(?name:String):Dynamic;
	static function getKey(?o:Dynamic):Dynamic;
	static function getRange(?start:Float, ?end:Float):Array<Dynamic>;
	static function getSortFn():Dynamic;
	static function getSortRoot():String;
	static function getSorters():Array<Dynamic>;
	static function indexOf(?item:Dynamic):Float;
	static function indexOfKey(?key:String):Float;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function insert(?index:Float, ?key:String, ?item:Dynamic):Dynamic;
	static function insertFilter(?index:Float, ?filter:Dynamic):Dynamic;
	static function insertFilters(?index:Float, ?filters:Array<Dynamic>):Array<Dynamic>;
	static function insertSorter(?index:Float, ?sorter:Dynamic, ?defaultDirection:String):Void;
	static function insertSorters():Ext.util.ICollection;
	static function last():Dynamic;
	static function lookup(?store:Dynamic):Ext.data.IStore;
	static function register(stores:Ext.data.IStore):Void;
	static function remove(?item:Dynamic):Dynamic;
	static function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	static function removeAt(?index:Float):Dynamic;
	static function removeAtKey(?key:String):Dynamic;
	static function removeFilters(?filters:Dynamic):Ext.util.ICollection;
	static function removeSorter(?sorter:Dynamic):Void;
	static function removeSorters(?sorters:Dynamic):Ext.util.ICollection;
	static function replace(?oldKey:String, ?item:Dynamic):Dynamic;
	static function setAutoFilter(?autoFilter:Bool):Void;
	static function setAutoSort(?autoSort:Bool):Void;
	static function setDefaultSortDirection(?defaultSortDirection:String):Void;
	static function setFilterRoot(?filterRoot:String):Void;
	static function setFilters(?filters:Array<Dynamic>):Void;
	static function setSortRoot(?sortRoot:String):Void;
	static function setSorters(?sorters:Array<Dynamic>):Void;
	static function sort(?sorters:Dynamic, ?defaultDirection:Dynamic):Array<Dynamic>;
	static function statics():Ext.IClass;
	static function unregister(?stores:Dynamic):Void;
}
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
	var loadingText : String;
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
	function getLoadingText():String;
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
	function setLoadingText(?loadingText:String):Void;
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
	function setScrollable(?scrollable:Bool):Void;
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
	var scrollable : Dynamic;
	@:optional
	var striped : Bool;
	@:optional
	var ui : String;
	@:optional
	var useSimpleItems : Bool;
	@:optional
	var variableHeights : Bool;
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
	function getUseSimpleItems():Bool;
	@:optional
	function getVariableHeights():Bool;
	@:optional
	function getViewItems():Dynamic;
	@:optional
	function initialize():Void;
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
	function setOnItemDisclosure(?onItemDisclosure:Dynamic):Void;
	@:optional
	function setPinHeaders(?pinHeaders:Bool):Void;
	@:optional
	function setPreventSelectionOnDisclose(?preventSelectionOnDisclose:Bool):Void;
	@:optional
	function setRefreshHeightOnUpdate(?refreshHeightOnUpdate:Bool):Void;
	@:optional
	function setScrollable(?scrollable:Dynamic):Void;
	@:optional
	function setStriped(?striped:Bool):Void;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function setUseSimpleItems(?useSimpleItems:Bool):Void;
	@:optional
	function setVariableHeights(?variableHeights:Bool):Void;
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
typedef IDate = {
	>Ext.IDateExtras,
};
extern class Date {
	static var DAY : String;
	static var HOUR : String;
	static var MILLI : String;
	static var MINUTE : String;
	static var MONTH : String;
	static var SECOND : String;
	static var YEAR : String;
	static var dayNames : Array<Dynamic>;
	static var defaultFormat : String;
	static var defaults : Dynamic;
	static var formatCodes : Dynamic;
	static var formatFunctions : Dynamic;
	static var monthNames : Array<Dynamic>;
	static var monthNumbers : Dynamic;
	static var parseFunctions : Dynamic;
	static var useStrict : Bool;
	static function add(?date:Dynamic, ?interval:String, ?value:Float):Dynamic;
	static function align(?date:Dynamic, ?unit:String):Dynamic;
	static function between(?date:Dynamic, ?start:Dynamic, ?end:Dynamic):Bool;
	static function clearTime(?date:Dynamic, ?clone:Bool):Dynamic;
	static function clone(?date:Dynamic):Dynamic;
	static function diff(?min:Dynamic, ?max:Dynamic, ?unit:String):Float;
	static function format(?date:Dynamic, ?format:String):String;
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
	static function isLeapYear(?date:Dynamic):Bool;
	static function isValid(?year:Float, ?month:Float, ?day:Float, ?hour:Float, ?minute:Float, ?second:Float, ?millisecond:Float):Bool;
	static function now():Float;
	static function parse(?input:String, ?format:String, ?strict:Bool):Dynamic;
}
typedef IDateExtras = { };
extern class DateExtras {
	static var DAY : String;
	static var HOUR : String;
	static var MILLI : String;
	static var MINUTE : String;
	static var MONTH : String;
	static var SECOND : String;
	static var YEAR : String;
	static var dayNames : Array<Dynamic>;
	static var defaultFormat : String;
	static var defaults : Dynamic;
	static var formatCodes : Dynamic;
	static var formatFunctions : Dynamic;
	static var monthNames : Array<Dynamic>;
	static var monthNumbers : Dynamic;
	static var parseFunctions : Dynamic;
	static var useStrict : Bool;
	static function add(?date:Dynamic, ?interval:String, ?value:Float):Dynamic;
	static function align(?date:Dynamic, ?unit:String):Dynamic;
	static function between(?date:Dynamic, ?start:Dynamic, ?end:Dynamic):Bool;
	static function clearTime(?date:Dynamic, ?clone:Bool):Dynamic;
	static function clone(?date:Dynamic):Dynamic;
	static function diff(?min:Dynamic, ?max:Dynamic, ?unit:String):Float;
	static function format(?date:Dynamic, ?format:String):String;
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
	static function isLeapYear(?date:Dynamic):Bool;
	static function isValid(?year:Float, ?month:Float, ?day:Float, ?hour:Float, ?minute:Float, ?second:Float, ?millisecond:Float):Bool;
	static function now():Float;
	static function parse(?input:String, ?format:String, ?strict:Bool):Dynamic;
}
typedef IDecorator = {
	>Ext.IComponent,
	@:optional
	var component : Dynamic;
	@:optional
	function destroy():Void;
	@:optional
	function getComponent():Dynamic;
	@:optional
	function setComponent(?component:Dynamic):Void;
};
typedef IDirect = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
};
extern class Direct {
	static var self : Ext.IClass;
	static function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addProvider(?provider:Dynamic):Dynamic;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clearListeners():Void;
	static function destroy():Void;
	static function enableBubble(?events:Dynamic):Void;
	static function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function getBubbleEvents():Dynamic;
	static function getId():String;
	static function getInitialConfig(?name:String):Dynamic;
	static function getListeners():Dynamic;
	static function getProvider(?id:Dynamic):Dynamic;
	static function hasListener(?eventName:String):Bool;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function parseMethod(?fn:Dynamic):Dynamic;
	static function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	static function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function removeProvider(?provider:Dynamic):Dynamic;
	static function resumeEvents(?discardQueuedEvents:Bool):Void;
	static function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	static function setListeners(?listeners:Dynamic):Void;
	static function statics():Ext.IClass;
	static function suspendEvents():Void;
	static function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
}
typedef ICompositeElement = {
	>Ext.dom.ICompositeElementLite,
};
typedef ICompositeElementLite = {
	>Ext.IBase,
	>Ext.dom.IElement,
	@:optional
	var elements : Array<HTMLElement>;
	@:optional
	function add(?els:Dynamic, ?root:Dynamic):Ext.dom.ICompositeElementLite;
	@:optional
	function addCls(?names:String, ?prefix:String, ?suffix:String):Ext.dom.IElement;
	@:optional
	function addListener(?eventName:Dynamic, ?handler:Dynamic, ?scope:Dynamic, ?opt:Dynamic):Ext.dom.ICompositeElementLite;
	@:optional
	function appendChild(?element:Dynamic):Ext.dom.IElement;
	@:optional
	function appendTo(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function applyStyles(?styles:Dynamic):Ext.dom.IElement;
	@:optional
	function child(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function clear():Void;
	@:optional
	function contains(?el:Dynamic):Bool;
	@:optional
	function createChild(?config:Dynamic, ?insertBefore:HTMLElement, ?returnDom:Bool):Ext.dom.IElement;
	@:optional
	function cssTranslate():Void;
	@:optional
	function destroy():Void;
	@:optional
	function down(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Ext.dom.ICompositeElementLite;
	@:optional
	function fill(?els:Dynamic):Ext.dom.ICompositeElementLite;
	@:optional
	function filter(?selector:Dynamic):Ext.dom.ICompositeElementLite;
	@:optional
	function findParent(?simpleSelector:String, ?maxDepth:Dynamic, ?returnEl:Bool):Dynamic;
	@:optional
	function findParentNode(?simpleSelector:String, ?maxDepth:Dynamic, ?returnEl:Bool):Dynamic;
	@:optional
	function getAlignToXY(?element:Dynamic, ?position:String, ?offsets:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function getAnchorXY(?anchor:String, ?local:Bool, ?size:Dynamic):Array<Dynamic>;
	@:optional
	function getAttribute(?name:String, ?namespace:String):String;
	@:optional
	function getBorderWidth(?side:String):Float;
	@:optional
	function getBottom():Float;
	@:optional
	function getBox(?contentBox:Bool, ?local:Bool):Dynamic;
	@:optional
	function getCount():Float;
	@:optional
	function getHTML():String;
	@:optional
	function getHeight(?contentHeight:Bool):Float;
	@:optional
	function getHtml():String;
	@:optional
	function getLeft():Float;
	@:optional
	function getMargin(?sides:String):Dynamic;
	@:optional
	function getOffsetsTo(?element:Dynamic):Array<Dynamic>;
	@:optional
	function getOuterHeight():Void;
	@:optional
	function getOuterWidth():Void;
	@:optional
	function getPadding(?side:String):Float;
	@:optional
	function getPageBox(?asRegion:Bool):Dynamic;
	@:optional
	function getRight():Float;
	@:optional
	function getScrollParent():Void;
	@:optional
	function getSize(?contentSize:Bool):Dynamic;
	@:optional
	function getStyle(?prop:String):String;
	@:optional
	function getTop():Float;
	@:optional
	function getValue(?asNumber:Bool):Dynamic;
	@:optional
	function getViewSize():Dynamic;
	@:optional
	function getWidth(?contentWidth:Bool):Float;
	@:optional
	function getX(?el:Dynamic):Float;
	@:optional
	function getXY():Array<Dynamic>;
	@:optional
	function getY(?el:Dynamic):Float;
	@:optional
	function hasCls(?name:String):Bool;
	@:optional
	function hide():Void;
	@:optional
	function indexOf(?el:Dynamic):Float;
	@:optional
	function insertAfter(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function insertBefore(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function insertFirst(?element:Dynamic):Ext.dom.IElement;
	@:optional
	function insertHtml(?where:String, ?html:String, ?returnEl:Bool):Dynamic;
	@:optional
	function insertSibling(?el:Dynamic, ?where:String, ?returnDom:Bool):Ext.dom.IElement;
	@:optional
	function is(?selector:String):Bool;
	@:optional
	function isDescendent():Void;
	@:optional
	function isStyle(?style:String, ?value:String):Bool;
	@:optional
	function isTransparent(?prop:String):Bool;
	@:optional
	function item(?index:Float):Ext.dom.IElement;
	@:optional
	function mask():Void;
	@:optional
	function next(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function parent(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function prev(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function purgeAllListeners():Void;
	@:optional
	function query(?selector:String):Array<HTMLElement>;
	@:optional
	function radioCls(?className:Dynamic):Ext.dom.IElement;
	@:optional
	function remove():Void;
	@:optional
	function removeAllListeners():Void;
	@:optional
	function removeCls(?names:String, ?prefix:String, ?suffix:String):Ext.dom.IElement;
	@:optional
	function removeElement(?el:Dynamic, ?removeDom:Bool):Ext.dom.ICompositeElementLite;
	@:optional
	function repaint():Ext.dom.IElement;
	@:optional
	function replace(?element:Dynamic):Ext.dom.IElement;
	@:optional
	function replaceCls(?oldName:String, ?newName:String, ?prefix:String, ?suffix:String):Ext.dom.IElement;
	@:optional
	function replaceElement(?el:Dynamic, ?replacement:Dynamic, ?domReplace:Bool):Ext.dom.ICompositeElementLite;
	@:optional
	function replaceWith(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	@:optional
	function serializeForm(?form:Dynamic):String;
	@:optional
	function set(?attributes:Dynamic, ?useSet:Bool):Ext.dom.IElement;
	@:optional
	function setBottom(?bottom:String):Ext.dom.IElement;
	@:optional
	function setBox(?box:Dynamic):Ext.dom.IElement;
	@:optional
	function setCls(?className:Dynamic):Void;
	@:optional
	function setHTML(?html:String):Void;
	@:optional
	function setHeight(?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setHtml(?html:String):Void;
	@:optional
	function setLeft(?left:String):Ext.dom.IElement;
	@:optional
	function setMaxHeight(?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setMaxWidth(?width:Dynamic):Ext.dom.IElement;
	@:optional
	function setMinHeight(?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setMinWidth(?width:Dynamic):Ext.dom.IElement;
	@:optional
	function setRight(?right:String):Ext.dom.IElement;
	@:optional
	function setSize(?width:Dynamic, ?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setStyle(?property:Dynamic, ?value:String):Ext.dom.IElement;
	@:optional
	function setTop(?top:String):Ext.dom.IElement;
	@:optional
	function setTopLeft():Void;
	@:optional
	function setVisibilityMode(?mode:Dynamic):Ext.dom.IElement;
	@:optional
	function setVisible(?visible:Bool):Ext.IElement;
	@:optional
	function setWidth(?width:Dynamic):Ext.dom.IElement;
	@:optional
	function setX(?x:Float):Ext.dom.IElement;
	@:optional
	function setXY(?pos:Array<Float>):Ext.dom.IElement;
	@:optional
	function setY(?y:Float):Ext.dom.IElement;
	@:optional
	function show():Void;
	@:optional
	function toggleCls(?className:String):Ext.dom.IElement;
	@:optional
	function translatePoints(?x:Dynamic, ?y:Float):Dynamic;
	@:optional
	function unmask():Void;
	@:optional
	function up(?simpleSelector:String, ?maxDepth:Dynamic):Dynamic;
	@:optional
	function update(?html:String):Void;
	@:optional
	function wrap(?config:Dynamic, ?domNode:Bool):Dynamic;
};
typedef ICompositeElement = {
	>Ext.IBase,
	>Ext.dom.IElement,
	@:optional
	var elements : Array<HTMLElement>;
	@:optional
	function add(?els:Dynamic, ?root:Dynamic):Ext.dom.ICompositeElementLite;
	@:optional
	function addCls(?names:String, ?prefix:String, ?suffix:String):Ext.dom.IElement;
	@:optional
	function addListener(?eventName:Dynamic, ?handler:Dynamic, ?scope:Dynamic, ?opt:Dynamic):Ext.dom.ICompositeElementLite;
	@:optional
	function appendChild(?element:Dynamic):Ext.dom.IElement;
	@:optional
	function appendTo(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function applyStyles(?styles:Dynamic):Ext.dom.IElement;
	@:optional
	function child(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function clear():Void;
	@:optional
	function contains(?el:Dynamic):Bool;
	@:optional
	function createChild(?config:Dynamic, ?insertBefore:HTMLElement, ?returnDom:Bool):Ext.dom.IElement;
	@:optional
	function cssTranslate():Void;
	@:optional
	function destroy():Void;
	@:optional
	function down(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Ext.dom.ICompositeElementLite;
	@:optional
	function fill(?els:Dynamic):Ext.dom.ICompositeElementLite;
	@:optional
	function filter(?selector:Dynamic):Ext.dom.ICompositeElementLite;
	@:optional
	function findParent(?simpleSelector:String, ?maxDepth:Dynamic, ?returnEl:Bool):Dynamic;
	@:optional
	function findParentNode(?simpleSelector:String, ?maxDepth:Dynamic, ?returnEl:Bool):Dynamic;
	@:optional
	function getAlignToXY(?element:Dynamic, ?position:String, ?offsets:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function getAnchorXY(?anchor:String, ?local:Bool, ?size:Dynamic):Array<Dynamic>;
	@:optional
	function getAttribute(?name:String, ?namespace:String):String;
	@:optional
	function getBorderWidth(?side:String):Float;
	@:optional
	function getBottom():Float;
	@:optional
	function getBox(?contentBox:Bool, ?local:Bool):Dynamic;
	@:optional
	function getCount():Float;
	@:optional
	function getHTML():String;
	@:optional
	function getHeight(?contentHeight:Bool):Float;
	@:optional
	function getHtml():String;
	@:optional
	function getLeft():Float;
	@:optional
	function getMargin(?sides:String):Dynamic;
	@:optional
	function getOffsetsTo(?element:Dynamic):Array<Dynamic>;
	@:optional
	function getOuterHeight():Void;
	@:optional
	function getOuterWidth():Void;
	@:optional
	function getPadding(?side:String):Float;
	@:optional
	function getPageBox(?asRegion:Bool):Dynamic;
	@:optional
	function getRight():Float;
	@:optional
	function getScrollParent():Void;
	@:optional
	function getSize(?contentSize:Bool):Dynamic;
	@:optional
	function getStyle(?prop:String):String;
	@:optional
	function getTop():Float;
	@:optional
	function getValue(?asNumber:Bool):Dynamic;
	@:optional
	function getViewSize():Dynamic;
	@:optional
	function getWidth(?contentWidth:Bool):Float;
	@:optional
	function getX(?el:Dynamic):Float;
	@:optional
	function getXY():Array<Dynamic>;
	@:optional
	function getY(?el:Dynamic):Float;
	@:optional
	function hasCls(?name:String):Bool;
	@:optional
	function hide():Void;
	@:optional
	function indexOf(?el:Dynamic):Float;
	@:optional
	function insertAfter(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function insertBefore(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function insertFirst(?element:Dynamic):Ext.dom.IElement;
	@:optional
	function insertHtml(?where:String, ?html:String, ?returnEl:Bool):Dynamic;
	@:optional
	function insertSibling(?el:Dynamic, ?where:String, ?returnDom:Bool):Ext.dom.IElement;
	@:optional
	function is(?selector:String):Bool;
	@:optional
	function isDescendent():Void;
	@:optional
	function isStyle(?style:String, ?value:String):Bool;
	@:optional
	function isTransparent(?prop:String):Bool;
	@:optional
	function item(?index:Float):Ext.dom.IElement;
	@:optional
	function mask():Void;
	@:optional
	function next(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function parent(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function prev(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function purgeAllListeners():Void;
	@:optional
	function query(?selector:String):Array<HTMLElement>;
	@:optional
	function radioCls(?className:Dynamic):Ext.dom.IElement;
	@:optional
	function remove():Void;
	@:optional
	function removeAllListeners():Void;
	@:optional
	function removeCls(?names:String, ?prefix:String, ?suffix:String):Ext.dom.IElement;
	@:optional
	function removeElement(?el:Dynamic, ?removeDom:Bool):Ext.dom.ICompositeElementLite;
	@:optional
	function repaint():Ext.dom.IElement;
	@:optional
	function replace(?element:Dynamic):Ext.dom.IElement;
	@:optional
	function replaceCls(?oldName:String, ?newName:String, ?prefix:String, ?suffix:String):Ext.dom.IElement;
	@:optional
	function replaceElement(?el:Dynamic, ?replacement:Dynamic, ?domReplace:Bool):Ext.dom.ICompositeElementLite;
	@:optional
	function replaceWith(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	@:optional
	function serializeForm(?form:Dynamic):String;
	@:optional
	function set(?attributes:Dynamic, ?useSet:Bool):Ext.dom.IElement;
	@:optional
	function setBottom(?bottom:String):Ext.dom.IElement;
	@:optional
	function setBox(?box:Dynamic):Ext.dom.IElement;
	@:optional
	function setCls(?className:Dynamic):Void;
	@:optional
	function setHTML(?html:String):Void;
	@:optional
	function setHeight(?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setHtml(?html:String):Void;
	@:optional
	function setLeft(?left:String):Ext.dom.IElement;
	@:optional
	function setMaxHeight(?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setMaxWidth(?width:Dynamic):Ext.dom.IElement;
	@:optional
	function setMinHeight(?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setMinWidth(?width:Dynamic):Ext.dom.IElement;
	@:optional
	function setRight(?right:String):Ext.dom.IElement;
	@:optional
	function setSize(?width:Dynamic, ?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setStyle(?property:Dynamic, ?value:String):Ext.dom.IElement;
	@:optional
	function setTop(?top:String):Ext.dom.IElement;
	@:optional
	function setTopLeft():Void;
	@:optional
	function setVisibilityMode(?mode:Dynamic):Ext.dom.IElement;
	@:optional
	function setVisible(?visible:Bool):Ext.IElement;
	@:optional
	function setWidth(?width:Dynamic):Ext.dom.IElement;
	@:optional
	function setX(?x:Float):Ext.dom.IElement;
	@:optional
	function setXY(?pos:Array<Float>):Ext.dom.IElement;
	@:optional
	function setY(?y:Float):Ext.dom.IElement;
	@:optional
	function show():Void;
	@:optional
	function toggleCls(?className:String):Ext.dom.IElement;
	@:optional
	function translatePoints(?x:Dynamic, ?y:Float):Dynamic;
	@:optional
	function unmask():Void;
	@:optional
	function up(?simpleSelector:String, ?maxDepth:Dynamic):Dynamic;
	@:optional
	function update(?html:String):Void;
	@:optional
	function wrap(?config:Dynamic, ?domNode:Bool):Dynamic;
};
typedef IElement = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var DISPLAY : Float;
	@:optional
	var OFFSETS : Float;
	@:optional
	var VISIBILITY : Float;
	@:optional
	var defaultUnit : String;
	@:optional
	var dom : HTMLElement;
	@:optional
	var id : String;
	@:optional
	function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addCls(?names:String, ?prefix:String, ?suffix:String):Ext.dom.IElement;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function appendChild(?element:Dynamic):Ext.dom.IElement;
	@:optional
	function appendTo(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function applyStyles(?styles:Dynamic):Ext.dom.IElement;
	@:optional
	function child(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function clearListeners():Void;
	@:optional
	function contains(?element:Dynamic):Bool;
	@:optional
	function createChild(?config:Dynamic, ?insertBefore:HTMLElement, ?returnDom:Bool):Ext.dom.IElement;
	@:optional
	function cssTranslate():Void;
	@:optional
	function destroy():Void;
	@:optional
	function down(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function findParent(?simpleSelector:String, ?maxDepth:Dynamic, ?returnEl:Bool):Dynamic;
	@:optional
	function findParentNode(?simpleSelector:String, ?maxDepth:Dynamic, ?returnEl:Bool):Dynamic;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function first(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function getAlignToXY(?element:Dynamic, ?position:String, ?offsets:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function getAnchorXY(?anchor:String, ?local:Bool, ?size:Dynamic):Array<Dynamic>;
	@:optional
	function getAttribute(?name:String, ?namespace:String):String;
	@:optional
	function getBorderWidth(?side:String):Float;
	@:optional
	function getBottom():Float;
	@:optional
	function getBox(?contentBox:Bool, ?local:Bool):Dynamic;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getHTML():String;
	@:optional
	function getHeight(?contentHeight:Bool):Float;
	@:optional
	function getHtml():String;
	@:optional
	function getLeft():Float;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getMargin(?sides:String):Dynamic;
	@:optional
	function getOffsetsTo(?element:Dynamic):Array<Dynamic>;
	@:optional
	function getOuterHeight():Void;
	@:optional
	function getOuterWidth():Void;
	@:optional
	function getPadding(?side:String):Float;
	@:optional
	function getPageBox(?asRegion:Bool):Dynamic;
	@:optional
	function getRight():Float;
	@:optional
	function getScrollParent():Void;
	@:optional
	function getSize(?contentSize:Bool):Dynamic;
	@:optional
	function getStyle(?prop:String):String;
	@:optional
	function getTop():Float;
	@:optional
	function getValue(?asNumber:Bool):Dynamic;
	@:optional
	function getViewSize():Dynamic;
	@:optional
	function getWidth(?contentWidth:Bool):Float;
	@:optional
	function getX(?el:Dynamic):Float;
	@:optional
	function getXY():Array<Dynamic>;
	@:optional
	function getY(?el:Dynamic):Float;
	@:optional
	function hasCls(?name:String):Bool;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function hide():Void;
	@:optional
	function insertAfter(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function insertBefore(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function insertFirst(?element:Dynamic):Ext.dom.IElement;
	@:optional
	function insertHtml(?where:String, ?html:String, ?returnEl:Bool):Dynamic;
	@:optional
	function insertSibling(?el:Dynamic, ?where:String, ?returnDom:Bool):Ext.dom.IElement;
	@:optional
	function is(?selector:String):Bool;
	@:optional
	function isDescendent():Void;
	@:optional
	function isStyle(?style:String, ?value:String):Bool;
	@:optional
	function isTransparent(?prop:String):Bool;
	@:optional
	function last(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function mask():Void;
	@:optional
	function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function next(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function parent(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function prev(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function purgeAllListeners():Void;
	@:optional
	function query(?selector:String):Array<HTMLElement>;
	@:optional
	function radioCls(?className:Dynamic):Ext.dom.IElement;
	@:optional
	function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	@:optional
	function remove():Void;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeAllListeners():Void;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeCls(?names:String, ?prefix:String, ?suffix:String):Ext.dom.IElement;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function repaint():Ext.dom.IElement;
	@:optional
	function replace(?element:Dynamic):Ext.dom.IElement;
	@:optional
	function replaceCls(?oldName:String, ?newName:String, ?prefix:String, ?suffix:String):Ext.dom.IElement;
	@:optional
	function replaceWith(?el:Dynamic):Ext.dom.IElement;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function serializeForm(?form:Dynamic):String;
	@:optional
	function set(?attributes:Dynamic, ?useSet:Bool):Ext.dom.IElement;
	@:optional
	function setBottom(?bottom:String):Ext.dom.IElement;
	@:optional
	function setBox(?box:Dynamic):Ext.dom.IElement;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setCls(?className:Dynamic):Void;
	@:optional
	function setHTML(?html:String):Void;
	@:optional
	function setHeight(?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setHtml(?html:String):Void;
	@:optional
	function setLeft(?left:String):Ext.dom.IElement;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setMaxHeight(?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setMaxWidth(?width:Dynamic):Ext.dom.IElement;
	@:optional
	function setMinHeight(?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setMinWidth(?width:Dynamic):Ext.dom.IElement;
	@:optional
	function setRight(?right:String):Ext.dom.IElement;
	@:optional
	function setSize(?width:Dynamic, ?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setStyle(?property:Dynamic, ?value:String):Ext.dom.IElement;
	@:optional
	function setTop(?top:String):Ext.dom.IElement;
	@:optional
	function setTopLeft():Void;
	@:optional
	function setVisibilityMode(?mode:Dynamic):Ext.dom.IElement;
	@:optional
	function setVisible(?visible:Bool):Ext.IElement;
	@:optional
	function setWidth(?width:Dynamic):Ext.dom.IElement;
	@:optional
	function setX(?x:Float):Ext.dom.IElement;
	@:optional
	function setXY(?pos:Array<Float>):Ext.dom.IElement;
	@:optional
	function setY(?y:Float):Ext.dom.IElement;
	@:optional
	function show():Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function toggleCls(?className:String):Ext.dom.IElement;
	@:optional
	function translatePoints(?x:Dynamic, ?y:Float):Dynamic;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unmask():Void;
	@:optional
	function up(?simpleSelector:String, ?maxDepth:Dynamic):Dynamic;
	@:optional
	function update(?html:String):Void;
	@:optional
	function wrap(?config:Dynamic, ?domNode:Bool):Dynamic;
};
extern class Element {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function fromPoint(?x:Float, ?y:Float):String;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getDocumentHeight():Float;
	static function getDocumentWidth():Float;
	static function getName():String;
	static function getOrientation():String;
	static function getViewSize():Dynamic;
	static function getViewportHeight():Float;
	static function getViewportWidth():Float;
	static function normalize(?prop:String):String;
	static function override(?members:Dynamic):Ext.IBase;
	static function parseBox(?box:Dynamic):Dynamic;
	static function parseStyles(?styles:String):Dynamic;
	static function select(?selector:Dynamic, ?composite:Bool, ?root:Dynamic):Ext.dom.ICompositeElementLite;
	static function unitizeBox(?box:Dynamic, ?units:String):String;
}
typedef IDomHelper = {
	@:optional
	function append(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
	@:optional
	function applyStyles(?el:Dynamic, ?styles:Dynamic):Void;
	@:optional
	function createTemplate(?o:Dynamic):Ext.ITemplate;
	@:optional
	function generateStyles(?styles:Dynamic, ?buffer:Array<String>):Dynamic;
	@:optional
	function insertAfter(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
	@:optional
	function insertBefore(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
	@:optional
	function insertFirst(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
	@:optional
	function insertHtml(?where:String, ?el:Dynamic, ?html:String):HTMLElement;
	@:optional
	function markup(?spec:Dynamic):String;
	@:optional
	function overwrite(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
};
typedef IDomQuery = {
	>Ext.dom.IQuery,
};
extern class DomQuery {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function is(?el:Dynamic, ?selector:String):Bool;
	static function select(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function selectNode(?selector:String, ?root:Dynamic):HTMLElement;
	static function statics():Ext.IClass;
}
typedef IEventObject = {
	>Ext.IBase,
	>Ext.event.ITouch,
	@:optional
	var angle : Float;
	@:optional
	var direction : Float;
	@:optional
	var duration : Float;
	@:optional
	var rotation : Float;
	@:optional
	var scale : Float;
	@:optional
	function stopEvent():Ext.event.IEvent;
	@:optional
	function stopPropagation():Ext.event.IEvent;
};
typedef IEvented = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IEventedBase = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function destroy():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IEventManager = { };
extern class EventManager {
	static function addListener(?el:Dynamic, ?eventName:String, ?handler:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function on(?el:Dynamic, ?eventName:String, ?handler:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onDocumentReady():Void;
	static function onWindowResize(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function removeAll(?el:Dynamic):Void;
	static function removeListener(?el:Dynamic, ?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function un(?el:Dynamic, ?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
}
typedef IFeature = {
	>Ext.env.IFeature,
};
extern class Feature {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function has(?value:String):Bool;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef IFunction = { };
extern class Function {
	static function alias(?object:Dynamic, ?methodName:String):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function clone(?method:Dynamic):Dynamic;
	static function createBuffered(?fn:Dynamic, ?buffer:Float, ?scope:Dynamic, ?args:Array<Dynamic>):Dynamic;
	static function createDelayed(?fn:Dynamic, ?delay:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function createDelegate(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createSequence(?originalFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic):Dynamic;
	static function createThrottled(?fn:Dynamic, ?interval:Float, ?scope:Dynamic):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function flexSetter(?fn:Dynamic):Dynamic;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
}
typedef IImg = {
	>Ext.IComponent,
	@:optional
	var backgroundCls : String;
	@:optional
	var baseCls : String;
	@:optional
	var imageCls : String;
	@:optional
	var mode : String;
	@:optional
	var src : String;
	@:optional
	function destroy():Void;
	@:optional
	function getBackgroundCls():String;
	@:optional
	function getBaseCls():String;
	@:optional
	function getImageCls():String;
	@:optional
	function getMode():String;
	@:optional
	function getSrc():String;
	@:optional
	function hide():Ext.IComponent;
	@:optional
	function initialize():Void;
	@:optional
	function setBackgroundCls(?backgroundCls:String):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setImageCls(?imageCls:String):Void;
	@:optional
	function setMode(?mode:String):Void;
	@:optional
	function setSrc(?src:String):Void;
	@:optional
	function show():Ext.IComponent;
};
typedef IIs = { };
typedef IItemCollection = {
	>Ext.util.IMixedCollection,
	@:optional
	function getKey(?item:Dynamic):Dynamic;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IJSON = { };
extern class JSON {
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function encode(?o:Dynamic):String;
	static function encodeDate(?d:Dynamic):String;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ILabel = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	var html : String;
	@:optional
	function getBaseCls():String;
	@:optional
	function setBaseCls(?baseCls:String):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ILoader = { };
extern class Loader {
	static var disableCaching : Bool;
	static var disableCachingParam : String;
	static var enabled : Bool;
	static var paths : Dynamic;
	static var history : Array<Dynamic>;
	static function addClassPathMappings(?paths:Dynamic):Ext.ILoader;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function getConfig(?name:String):Dynamic;
	static function getPath(?className:String):String;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?withDomReady:Bool):Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function setConfig(?name:Dynamic, ?value:Dynamic):Ext.ILoader;
	static function setPath(?name:Dynamic, ?path:String):Ext.ILoader;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ILoadMask = {
	>Ext.IMask,
	@:optional
	var indicator : Bool;
	@:optional
	var message : String;
	@:optional
	var messageCls : String;
	@:optional
	var msg : String;
	@:optional
	var msgCls : String;
	@:optional
	var store : Ext.data.IStore;
	@:optional
	function bindStore(?store:Ext.data.IStore):Void;
	@:optional
	function getIndicator():Bool;
	@:optional
	function getMessage():String;
	@:optional
	function getMessageCls():String;
	@:optional
	function setIndicator(?indicator:Bool):Void;
	@:optional
	function setMessage(?message:String):Void;
	@:optional
	function setMessageCls(?messageCls:String):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ILogger = { };
extern class Logger {
	static function deprecate():Void;
	static function error():Void;
	static function info():Void;
	static function log(?message:String, ?priority:Float):Ext.ILogger;
	static function verbose():Void;
	static function warn():Void;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IMap = {
	>Ext.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var geo : Ext.util.IGeolocation;
	@:optional
	var map : Dynamic;
	@:optional
	var mapOptions : Dynamic;
	@:optional
	var maskMap : Bool;
	@:optional
	var maskMapCls : String;
	@:optional
	var useCurrentLocation : Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function getGeo():Ext.util.IGeolocation;
	@:optional
	function getMap():Dynamic;
	@:optional
	function getState():Dynamic;
	@:optional
	function getUseCurrentLocation():Dynamic;
	@:optional
	function initialize():Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setGeo(?geo:Ext.util.IGeolocation):Void;
	@:optional
	function setMap(?map:Dynamic):Void;
	@:optional
	function setMapCenter(?coordinates:Dynamic):Void;
	@:optional
	function setMapOptions(?mapOptions:Dynamic):Void;
	@:optional
	function setUseCurrentLocation(?useCurrentLocation:Dynamic):Void;
	@:optional
	function update(?coordinates:Dynamic):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IMask = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	var transparent : Bool;
	@:optional
	function getBaseCls():String;
	@:optional
	function getTransparent():Bool;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setTransparent(?transparent:Bool):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IMedia = {
	>Ext.IComponent,
	@:optional
	var autoPause : Bool;
	@:optional
	var autoResume : Bool;
	@:optional
	var enableControls : Bool;
	@:optional
	var loop : Bool;
	@:optional
	var media : Ext.IElement;
	@:optional
	var muted : Bool;
	@:optional
	var preload : Bool;
	@:optional
	var url : String;
	@:optional
	var volume : Float;
	@:optional
	function destroy():Void;
	@:optional
	function getAutoPause():Bool;
	@:optional
	function getAutoResume():Bool;
	@:optional
	function getCurrentTime():Float;
	@:optional
	function getDuration():Float;
	@:optional
	function getEnableControls():Bool;
	@:optional
	function getLoop():Bool;
	@:optional
	function getMedia():Ext.IElement;
	@:optional
	function getMuted():Bool;
	@:optional
	function getPreload():Bool;
	@:optional
	function getUrl():String;
	@:optional
	function getVolume():Float;
	@:optional
	function initialize():Void;
	@:optional
	function isPlaying():Bool;
	@:optional
	function pause():Void;
	@:optional
	function play():Void;
	@:optional
	function setAutoPause(?autoPause:Bool):Void;
	@:optional
	function setAutoResume(?autoResume:Bool):Void;
	@:optional
	function setEnableControls(?enableControls:Bool):Void;
	@:optional
	function setLoop(?loop:Bool):Void;
	@:optional
	function setMedia(?media:Ext.IElement):Void;
	@:optional
	function setMuted(?muted:Bool):Void;
	@:optional
	function setPreload(?preload:Bool):Void;
	@:optional
	function setUrl(?url:String):Void;
	@:optional
	function setVolume(?volume:Float):Void;
	@:optional
	function stop():Void;
	@:optional
	function toggle():Void;
	@:optional
	function updateEnableControls(?enableControls:Dynamic):Void;
	@:optional
	function updateLoop(?loop:Dynamic):Void;
	@:optional
	function updateUrl(?newUrl:Dynamic):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IMessageBox = {
	>Ext.ISheet,
	@:optional
	var baseCls : String;
	@:optional
	var buttons : Dynamic;
	@:optional
	var defaultTextHeight : Float;
	@:optional
	var hideAnimation : Dynamic;
	@:optional
	var icon : String;
	@:optional
	var iconCls : String;
	@:optional
	var layout : Dynamic;
	@:optional
	var message : String;
	@:optional
	var msg : String;
	@:optional
	var prompt : Dynamic;
	@:optional
	var showAnimation : Dynamic;
	@:optional
	var title : String;
	@:optional
	var ui : String;
	@:optional
	var zIndex : Float;
	@:optional
	function alert(?title:String, ?message:String, ?fn:Dynamic, ?scope:Dynamic):Ext.IMessageBox;
	@:optional
	function confirm(?title:String, ?message:String, ?fn:Dynamic, ?scope:Dynamic):Ext.IMessageBox;
	@:optional
	function getBaseCls():String;
	@:optional
	function getButtons():Dynamic;
	@:optional
	function getDefaultTextHeight():Float;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getPrompt():Dynamic;
	@:optional
	function getTitle():String;
	@:optional
	function getUi():String;
	@:optional
	function getZIndex():Float;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setButtons(?buttons:Dynamic):Void;
	@:optional
	function setDefaultTextHeight(?defaultTextHeight:Float):Void;
	@:optional
	function setHideAnimation(?hideAnimation:Dynamic):Void;
	@:optional
	function setIcon(?iconCls:String):Ext.IMessageBox;
	@:optional
	function setIconCls(?iconCls:String):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setMessage(?message:String):Void;
	@:optional
	function setPrompt(?prompt:Dynamic):Void;
	@:optional
	function setShowAnimation(?showAnimation:Dynamic):Void;
	@:optional
	function setTitle(?title:String):Void;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function setZIndex(?zIndex:Float):Void;
	@:optional
	function show(?config:Dynamic):Ext.IMessageBox;
	@:optional
	function updateText(?message:String):Ext.IMessageBox;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IMsg = {
	>Ext.IMessageBox,
};
extern class Msg {
	static var items : Ext.util.IMixedCollection;
	static var self : Ext.IClass;
	static function add(?newItems:Dynamic):Ext.IComponent;
	static function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addAll(?items:Array<Dynamic>):Array<Dynamic>;
	static function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addCls(?cls:String, ?prefix:String, ?suffix:String):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function alert(?title:String, ?message:String, ?fn:Dynamic, ?scope:Dynamic):Ext.IMessageBox;
	static function animateActiveItem(?activeItem:Dynamic, ?animation:Dynamic):Void;
	static function applyMasked(?masked:Dynamic):Dynamic;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function child(?selector:String):Ext.IComponent;
	static function clearListeners():Void;
	static function confirm(?title:String, ?message:String, ?fn:Dynamic, ?scope:Dynamic):Ext.IMessageBox;
	static function destroy():Void;
	static function disable():Void;
	static function down(?selector:String):Ext.IComponent;
	static function enable():Void;
	static function enableBubble(?events:Dynamic):Void;
	static function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function getActiveItem():Dynamic;
	static function getAt(?index:Float):Ext.IComponent;
	static function getAutoDestroy():Bool;
	static function getBaseCls():String;
	static function getBodyBorder():Dynamic;
	static function getBodyMargin():Dynamic;
	static function getBodyPadding():Dynamic;
	static function getBorder():Dynamic;
	static function getBottom():Dynamic;
	static function getBubbleEvents():Dynamic;
	static function getButtons():Dynamic;
	static function getCentered():Bool;
	static function getCls():Dynamic;
	static function getComponent(?component:Dynamic):Ext.IComponent;
	static function getContentEl():Dynamic;
	static function getControl():Dynamic;
	static function getData():Dynamic;
	static function getDefaultTextHeight():Float;
	static function getDefaultType():String;
	static function getDefaults():Dynamic;
	static function getDisabled():Bool;
	static function getDisabledCls():String;
	static function getDocked():String;
	static function getDockedComponent(?component:Dynamic):Dynamic;
	static function getDockedItems():Array<Dynamic>;
	static function getEl():Ext.dom.IElement;
	static function getEnter():String;
	static function getEnterAnimation():Dynamic;
	static function getExit():String;
	static function getExitAnimation():Dynamic;
	static function getFlex():Float;
	static function getFloatingCls():String;
	static function getHeight():Dynamic;
	static function getHidden():Bool;
	static function getHiddenCls():String;
	static function getHideAnimation():Dynamic;
	static function getHideOnMaskTap():Bool;
	static function getHtml():Dynamic;
	static function getId():String;
	static function getInitialConfig(?name:String):Dynamic;
	static function getInnerItems():Array<Dynamic>;
	static function getItemId():String;
	static function getItems():Dynamic;
	static function getLayout():Dynamic;
	static function getLeft():Dynamic;
	static function getListeners():Dynamic;
	static function getMargin():Dynamic;
	static function getMasked():Dynamic;
	static function getMaxHeight():Dynamic;
	static function getMaxWidth():Dynamic;
	static function getMinHeight():Dynamic;
	static function getMinWidth():Dynamic;
	static function getPadding():Dynamic;
	static function getParent():Ext.IComponent;
	static function getPlugins():Dynamic;
	static function getPrompt():Dynamic;
	static function getRecord():Ext.data.IModel;
	static function getRenderTo():Ext.IElement;
	static function getRight():Dynamic;
	static function getScrollable():Ext.scroll.IView;
	static function getShowAnimation():Dynamic;
	static function getSize():Dynamic;
	static function getStretchX():Bool;
	static function getStretchY():Bool;
	static function getStyle():Dynamic;
	static function getStyleHtmlCls():String;
	static function getStyleHtmlContent():Bool;
	static function getTitle():String;
	static function getTop():Dynamic;
	static function getTpl():Dynamic;
	static function getTplWriteMode():String;
	static function getUi():String;
	static function getWidth():Dynamic;
	static function getXTypes():String;
	static function getZIndex():Float;
	static function hasListener(?eventName:String):Bool;
	static function hasParent():Bool;
	static function hide(?animation:Dynamic):Ext.IComponent;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function initialize():Void;
	static function insert(?index:Float, ?item:Dynamic):Void;
	static function isDisabled():Bool;
	static function isHidden():Bool;
	static function isXType(?xtype:String, ?shallow:Bool):Bool;
	static function mask(?mask:Dynamic):Void;
	static function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function prompt(?title:String, ?message:String, ?fn:Dynamic, ?scope:Dynamic, ?multiLine:Dynamic, ?value:String, ?prompt:Dynamic):Ext.IMessageBox;
	static function query(?selector:String):Array<Dynamic>;
	static function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	static function remove(?item:Dynamic, ?destroy:Bool):Ext.IComponent;
	static function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeAll(?destroy:Bool, ?everything:Bool):Ext.IComponent;
	static function removeAt(?index:Float):Ext.IContainer;
	static function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeCls(?cls:String, ?prefix:String, ?suffix:String):Void;
	static function removeDocked(?item:Dynamic, ?destroy:Bool):Ext.IComponent;
	static function removeInnerAt(?index:Float):Ext.IContainer;
	static function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function replaceCls(?oldCls:String, ?newCls:String, ?prefix:String, ?suffix:String):Void;
	static function resetFloating():Void;
	static function resumeEvents(?discardQueuedEvents:Bool):Void;
	static function setActiveItem(?activeItem:Dynamic):Void;
	static function setAutoDestroy(?autoDestroy:Bool):Void;
	static function setBaseCls(?baseCls:String):Void;
	static function setBodyBorder(?bodyBorder:Dynamic):Void;
	static function setBodyMargin(?bodyMargin:Dynamic):Void;
	static function setBodyPadding(?bodyPadding:Dynamic):Void;
	static function setBorder(?border:Dynamic):Void;
	static function setBottom(?bottom:Dynamic):Void;
	static function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	static function setButtons(?buttons:Dynamic):Void;
	static function setCentered(?centered:Bool):Void;
	static function setCls(?cls:Dynamic):Void;
	static function setContentEl(?contentEl:Dynamic):Void;
	static function setControl(?control:Dynamic):Void;
	static function setData(?data:Dynamic):Void;
	static function setDefaultTextHeight(?defaultTextHeight:Float):Void;
	static function setDefaultType(?defaultType:String):Void;
	static function setDefaults(?defaults:Dynamic):Void;
	static function setDisabled(?disabled:Bool):Void;
	static function setDisabledCls(?disabledCls:String):Void;
	static function setDocked(?docked:String):Void;
	static function setDraggable(?draggable:Dynamic):Void;
	static function setEnter(?enter:String):Void;
	static function setEnterAnimation(?enterAnimation:Dynamic):Void;
	static function setExit(?exit:String):Void;
	static function setExitAnimation(?exitAnimation:Dynamic):Void;
	static function setFlex(?flex:Float):Void;
	static function setFloating(?floating:Bool):Void;
	static function setFloatingCls(?floatingCls:String):Void;
	static function setHeight(?height:Dynamic):Void;
	static function setHidden(?hidden:Bool):Void;
	static function setHiddenCls(?hiddenCls:String):Void;
	static function setHideAnimation(?hideAnimation:Dynamic):Void;
	static function setHideOnMaskTap(?hideOnMaskTap:Bool):Void;
	static function setHtml(?html:Dynamic):Void;
	static function setIcon(?iconCls:String):Ext.IMessageBox;
	static function setIconCls(?iconCls:String):Void;
	static function setItemId(?itemId:String):Void;
	static function setItems(?items:Dynamic):Void;
	static function setLayout(?layout:Dynamic):Void;
	static function setLeft(?left:Dynamic):Void;
	static function setListeners(?listeners:Dynamic):Void;
	static function setMargin(?margin:Dynamic):Void;
	static function setMasked(?masked:Dynamic):Void;
	static function setMaxHeight(?maxHeight:Dynamic):Void;
	static function setMaxWidth(?maxWidth:Dynamic):Void;
	static function setMessage(?message:String):Void;
	static function setMinHeight(?minHeight:Dynamic):Void;
	static function setMinWidth(?minWidth:Dynamic):Void;
	static function setPadding(?padding:Dynamic):Void;
	static function setPlugins(?plugins:Dynamic):Void;
	static function setPrompt(?prompt:Dynamic):Void;
	static function setRecord(?record:Ext.data.IModel):Void;
	static function setRenderTo(?renderTo:Ext.IElement):Void;
	static function setRight(?right:Dynamic):Void;
	static function setScrollable(?scrollable:Dynamic):Void;
	static function setShowAnimation(?showAnimation:Dynamic):Void;
	static function setSize(?width:Float, ?height:Float):Void;
	static function setStretchX(?stretchX:Bool):Void;
	static function setStretchY(?stretchY:Bool):Void;
	static function setStyle(?style:Dynamic):Void;
	static function setStyleHtmlCls(?styleHtmlCls:String):Void;
	static function setStyleHtmlContent(?styleHtmlContent:Bool):Void;
	static function setTitle(?title:String):Void;
	static function setTop(?top:Dynamic):Void;
	static function setTpl(?tpl:Dynamic):Void;
	static function setTplWriteMode(?tplWriteMode:String):Void;
	static function setUi(?ui:String):Void;
	static function setWidth(?width:Dynamic):Void;
	static function setZIndex(?zIndex:Float):Void;
	static function show(?config:Dynamic):Ext.IMessageBox;
	static function showBy(?component:Ext.IComponent, ?alignment:String):Void;
	static function statics():Ext.IClass;
	static function suspendEvents():Void;
	static function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function unmask():Void;
	static function up(?selector:String):Ext.IContainer;
	static function update():Void;
	static function updateStyleHtmlCls(?newHtmlCls:Dynamic, ?oldHtmlCls:Dynamic):Void;
	static function updateText(?message:String):Ext.IMessageBox;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef INavigationView = {
	>Ext.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var defaultBackButtonText : String;
	@:optional
	var items : Dynamic;
	@:optional
	var navigationBar : Dynamic;
	@:optional
	var useTitleForBackButtonText : Bool;
	@:optional
	function getBaseCls():String;
	@:optional
	function getDefaultBackButtonText():String;
	@:optional
	function getItems():Dynamic;
	@:optional
	function getNavigationBar():Dynamic;
	@:optional
	function getPreviousItem():Dynamic;
	@:optional
	function getUseTitleForBackButtonText():Bool;
	@:optional
	function pop(?count:Float):Ext.IComponent;
	@:optional
	function push(?view:Dynamic):Ext.IComponent;
	@:optional
	function reset():Ext.IComponent;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setDefaultBackButtonText(?defaultBackButtonText:String):Void;
	@:optional
	function setItems(?items:Dynamic):Void;
	@:optional
	function setNavigationBar(?navigationBar:Dynamic):Void;
	@:optional
	function setUseTitleForBackButtonText(?useTitleForBackButtonText:Bool):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef INumber = { };
extern class Number {
	static function constrain(?number:Float, ?min:Float, ?max:Float):Float;
	static function from(?value:Dynamic, ?defaultValue:Float):Float;
	static function snap(?value:Float, ?increment:Float, ?minValue:Float, ?maxValue:Float):Float;
	static function toFixed(?value:Float, ?precision:Float):Void;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IObject = { };
extern class Object {
	static function chain(?object:Dynamic):Void;
	static function each(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function fromQueryString(?queryString:String, ?recursive:Bool):Dynamic;
	static function getKey(?object:Dynamic, ?value:Dynamic):Void;
	static function getKeys(?object:Dynamic):Array<String>;
	static function getSize(?object:Dynamic):Float;
	static function getValues(?object:Dynamic):Array<Dynamic>;
	static function merge(source:Dynamic, objs:haxe.extern.Rest<Dynamic>):Dynamic;
	static function toQueryObjects(?name:String, ?value:Dynamic, ?recursive:Bool):Array<Dynamic>;
	static function toQueryString(?object:Dynamic, ?recursive:Bool):String;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IOs = {
	>Ext.env.IOS,
};
extern class Os {
	static var deviceType : String;
	static var name : String;
	static var self : Ext.IClass;
	static var version : Ext.IVersion;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function is(?value:String):Bool;
	static function statics():Ext.IClass;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IPanel = {
	>Ext.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var bodyBorder : Dynamic;
	@:optional
	var bodyMargin : Dynamic;
	@:optional
	var bodyPadding : Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function getBodyBorder():Dynamic;
	@:optional
	function getBodyMargin():Dynamic;
	@:optional
	function getBodyPadding():Dynamic;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setBodyBorder(?bodyBorder:Dynamic):Void;
	@:optional
	function setBodyMargin(?bodyMargin:Dynamic):Void;
	@:optional
	function setBodyPadding(?bodyPadding:Dynamic):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IDatePicker = {
	>Ext.picker.IPicker,
	@:optional
	var dayText : String;
	@:optional
	var doneButton : Dynamic;
	@:optional
	var monthText : String;
	@:optional
	var slotOrder : Array<Dynamic>;
	@:optional
	var value : Dynamic;
	@:optional
	var yearFrom : Float;
	@:optional
	var yearText : String;
	@:optional
	var yearTo : Float;
	@:optional
	function getDayText():String;
	@:optional
	function getDoneButton():Dynamic;
	@:optional
	function getMonthText():String;
	@:optional
	function getSlotOrder():Array<Dynamic>;
	@:optional
	function getValue(?useDom:Dynamic):Dynamic;
	@:optional
	function getYearFrom():Float;
	@:optional
	function getYearText():String;
	@:optional
	function getYearTo():Float;
	@:optional
	function initialize():Void;
	@:optional
	function setDayText(?dayText:String):Void;
	@:optional
	function setDoneButton(?doneButton:Dynamic):Void;
	@:optional
	function setMonthText(?monthText:String):Void;
	@:optional
	function setSlotOrder(?slotOrder:Array<Dynamic>):Void;
	@:optional
	function setValue(?value:Dynamic, ?animated:Dynamic):Ext.IPicker;
	@:optional
	function setYearFrom(?yearFrom:Float):Void;
	@:optional
	function setYearText(?yearText:String):Void;
	@:optional
	function setYearTo(?yearTo:Float):Void;
	@:optional
	function updateDayText(?newDayText:Dynamic, ?oldDayText:Dynamic):Void;
	@:optional
	function updateMonthText(?newMonthText:Dynamic, ?oldMonthText:Dynamic):Void;
	@:optional
	function updateYearFrom():Void;
	@:optional
	function updateYearText(?yearText:Dynamic):Void;
	@:optional
	function updateYearTo():Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IPicker = {
	>Ext.ISheet,
	@:optional
	var activeCls : String;
	@:optional
	var baseCls : String;
	@:optional
	var bottom : Dynamic;
	@:optional
	var cancelButton : Dynamic;
	@:optional
	var doneButton : Dynamic;
	@:optional
	var height : Float;
	@:optional
	var layout : Dynamic;
	@:optional
	var left : Dynamic;
	@:optional
	var right : Dynamic;
	@:optional
	var slots : Array<Dynamic>;
	@:optional
	var toolbar : Dynamic;
	@:optional
	var useTitles : Bool;
	@:optional
	var value : Dynamic;
	@:optional
	function applyCancelButton(?config:Dynamic):Dynamic;
	@:optional
	function applyDoneButton(?config:Dynamic):Dynamic;
	@:optional
	function destroy():Void;
	@:optional
	function getBaseCls():String;
	@:optional
	function getBottom():Float;
	@:optional
	function getCancelButton():Dynamic;
	@:optional
	function getCard():Dynamic;
	@:optional
	function getDoneButton():Dynamic;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getSlots():Array<Dynamic>;
	@:optional
	function getToolbar():Dynamic;
	@:optional
	function getToolbarPosition():String;
	@:optional
	function getUseTitles():Bool;
	@:optional
	function getValue(?useDom:Dynamic):Dynamic;
	@:optional
	function getValues():Dynamic;
	@:optional
	function initialize():Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setBottom(?bottom:Float):Void;
	@:optional
	function setCancelButton(?cancelButton:Dynamic):Void;
	@:optional
	function setCard(?activeItem:Dynamic):Void;
	@:optional
	function setDoneButton(?doneButton:Dynamic):Void;
	@:optional
	function setHeight(?height:Float):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setLeft(?left:Float):Void;
	@:optional
	function setRight(?right:Float):Void;
	@:optional
	function setSlots(?slots:Array<Dynamic>):Void;
	@:optional
	function setToolbar(?toolbar:Dynamic):Void;
	@:optional
	function setToolbarPosition(?toolbarPosition:String):Void;
	@:optional
	function setUseTitles(?useTitles:Bool):Void;
	@:optional
	function setValue(?values:Dynamic, ?animated:Bool):Ext.IPicker;
	@:optional
	function show():Ext.IComponent;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IRouter = { };
extern class Router {
	static function setAppInstance(?app:Dynamic):Void;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ISegmentedButton = {
	>Ext.IContainer,
	@:optional
	var allowDepress : Bool;
	@:optional
	var allowMultiple : Bool;
	@:optional
	var allowToggle : Bool;
	@:optional
	var baseCls : String;
	@:optional
	var defaultType : String;
	@:optional
	var layout : Dynamic;
	@:optional
	var pressedButtons : Array<Dynamic>;
	@:optional
	var pressedCls : String;
	@:optional
	function applyItems():Void;
	@:optional
	function getAllowDepress():Bool;
	@:optional
	function getAllowMultiple():Bool;
	@:optional
	function getAllowToggle():Bool;
	@:optional
	function getBaseCls():String;
	@:optional
	function getDefaultType():String;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getPressed():Void;
	@:optional
	function getPressedButtons():Array<Dynamic>;
	@:optional
	function getPressedCls():String;
	@:optional
	function isPressed(?button:Ext.IButton):Bool;
	@:optional
	function setAllowDepress(?allowDepress:Bool):Void;
	@:optional
	function setAllowMultiple(?allowMultiple:Bool):Void;
	@:optional
	function setAllowToggle(?allowToggle:Bool):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setDefaultType(?defaultType:String):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setPressed(?button:Dynamic, ?pressed:Bool, ?suppressEvents:Bool):Void;
	@:optional
	function setPressedButtons(?pressedButtons:Array<Dynamic>):Void;
	@:optional
	function setPressedCls(?pressedCls:String):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ISheet = {
	>Ext.IPanel,
	@:optional
	var baseCls : String;
	@:optional
	var centered : Bool;
	@:optional
	var enter : String;
	@:optional
	var exit : String;
	@:optional
	var hideAnimation : Dynamic;
	@:optional
	var modal : Bool;
	@:optional
	var showAnimation : Dynamic;
	@:optional
	var stretchX : Bool;
	@:optional
	var stretchY : Bool;
	@:optional
	function getBaseCls():String;
	@:optional
	function getCentered():Bool;
	@:optional
	function getEnter():String;
	@:optional
	function getExit():String;
	@:optional
	function getModal():Bool;
	@:optional
	function getStretchX():Bool;
	@:optional
	function getStretchY():Bool;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setCentered(?centered:Bool):Void;
	@:optional
	function setEnter(?enter:String):Void;
	@:optional
	function setExit(?exit:String):Void;
	@:optional
	function setHideAnimation(?hideAnimation:Dynamic):Void;
	@:optional
	function setModal(?modal:Bool):Void;
	@:optional
	function setShowAnimation(?showAnimation:Dynamic):Void;
	@:optional
	function setStretchX(?stretchX:Bool):Void;
	@:optional
	function setStretchY(?stretchY:Bool):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ISpacer = {
	>Ext.IComponent,
	@:optional
	var flex : Float;
	@:optional
	var width : Float;
	@:optional
	function getFlex():Float;
	@:optional
	function setFlex(?flex:Float):Void;
	@:optional
	function setWidth(?width:Float):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IString = { };
extern class String {
	static function capitalize(?string:String):String;
	static function ellipsis(?value:String, ?length:Float, ?word:Bool):String;
	static function escape(?string:String):String;
	static function escapeRegex(?string:String):String;
	static function format(string:String, values:haxe.extern.Rest<Dynamic>):String;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function leftPad(?string:String, ?size:Float, ?character:String):String;
	static function repeat(?pattern:String, ?count:Float, ?sep:String):Void;
	static function toggle(?string:String, ?value:String, ?other:String):String;
	static function trim(?string:String):String;
	static function urlAppend(?url:String, ?string:String):String;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ISupports = {
	@:optional
	var AudioTag : Dynamic;
	@:optional
	var GeoLocation : Dynamic;
	@:optional
	var SVG : Dynamic;
	@:optional
	var Transitions : Dynamic;
	@:optional
	var VML : Dynamic;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ITabBar = {
	>Ext.IToolbar,
	@:optional
	var activeTab : Dynamic;
	@:optional
	var baseCls : String;
	@:optional
	function getActiveTab():Dynamic;
	@:optional
	function getBaseCls():String;
	@:optional
	function initialize():Void;
	@:optional
	function setActiveTab(?activeTab:Dynamic):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ITabPanel = {
	>Ext.IContainer,
	@:optional
	var cls : Dynamic;
	@:optional
	var layout : Dynamic;
	@:optional
	var tabBar : Dynamic;
	@:optional
	var tabBarDock : Bool;
	@:optional
	var tabBarPosition : String;
	@:optional
	var ui : String;
	@:optional
	function doTabChange(?tabBar:Dynamic, ?newTab:Dynamic):Bool;
	@:optional
	function getCls():String;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getTabBar():Dynamic;
	@:optional
	function getTabBarPosition():String;
	@:optional
	function getUi():String;
	@:optional
	function initialize():Void;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setTabBar(?tabBar:Dynamic):Void;
	@:optional
	function setTabBarPosition(?tabBarPosition:String):Void;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function updateUi(?newUi:Dynamic, ?oldUi:Dynamic):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ITab = {
	>Ext.IButton,
	@:optional
	var active : Bool;
	@:optional
	var activeCls : String;
	@:optional
	var baseCls : String;
	@:optional
	var pressedCls : String;
	@:optional
	var title : String;
	@:optional
	function getActive():Bool;
	@:optional
	function getActiveCls():String;
	@:optional
	function getBaseCls():String;
	@:optional
	function getPressedCls():String;
	@:optional
	function getTitle():String;
	@:optional
	function setActive(?active:Bool):Void;
	@:optional
	function setActiveCls(?activeCls:String):Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setPressedCls(?pressedCls:String):Void;
	@:optional
	function setTitle(?title:String):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ITaskQueue = {
	>Ext.IBase,
};
extern class TaskQueue {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
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
	static function callParent(?args:Dynamic):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function from(?el:Dynamic, ?config:Dynamic):Ext.ITemplate;
	static function getName():String;
	static function override(?members:Dynamic):Ext.IBase;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ITitle = {
	>Ext.IComponent,
	@:optional
	var baseCls : String;
	@:optional
	var title : String;
	@:optional
	function getBaseCls():String;
	@:optional
	function getTitle():String;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setTitle(?title:String):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef ITitleBar = {
	>Ext.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var cls : Dynamic;
	@:optional
	var defaultType : String;
	@:optional
	var items : Dynamic;
	@:optional
	var minHeight : String;
	@:optional
	var title : String;
	@:optional
	var ui : String;
	@:optional
	function getBaseCls():String;
	@:optional
	function getCls():String;
	@:optional
	function getDefaultType():String;
	@:optional
	function getItems():Dynamic;
	@:optional
	function getTitle():String;
	@:optional
	function getUi():String;
	@:optional
	function initialize():Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setDefaultType(?defaultType:String):Void;
	@:optional
	function setItems(?items:Dynamic):Void;
	@:optional
	function setMinHeight(?minHeight:String):Void;
	@:optional
	function setTitle(?title:String):Void;
	@:optional
	function setUi(?ui:String):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IToolbar = {
	>Ext.IContainer,
	@:optional
	var baseCls : String;
	@:optional
	var defaultType : String;
	@:optional
	var docked : String;
	@:optional
	var layout : Dynamic;
	@:optional
	var minHeight : String;
	@:optional
	var title : Dynamic;
	@:optional
	var titleCls : Bool;
	@:optional
	var ui : String;
	@:optional
	function getBaseCls():String;
	@:optional
	function getDefaultType():String;
	@:optional
	function getDocked():String;
	@:optional
	function getLayout():Dynamic;
	@:optional
	function getTitle():Ext.ITitle;
	@:optional
	function getUi():String;
	@:optional
	function hideTitle():Void;
	@:optional
	function setBaseCls(?baseCls:String):Void;
	@:optional
	function setDefaultType(?defaultType:String):Void;
	@:optional
	function setDocked(?docked:String):Void;
	@:optional
	function setLayout(?layout:Dynamic):Void;
	@:optional
	function setMinHeight(?minHeight:String):Void;
	@:optional
	function setTitle(?title:Dynamic):Void;
	@:optional
	function setUi(?ui:String):Void;
	@:optional
	function showTitle():Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IVersion = {
	@:optional
	function deprecate(?packageName:String, ?since:String, ?closure:Dynamic, ?scope:Dynamic):Void;
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
	function getVersion(?packageName:String):Ext.IVersion;
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
	function setVersion(?packageName:String, ?version:Dynamic):Dynamic;
	@:optional
	function toArray():Array<Float>;
	@:optional
	function toNumber(?value:Dynamic):Float;
};
extern class Version {
	static function compare(?current:String, ?target:String):Float;
	static function getComponentValue(?value:Dynamic):Dynamic;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IVideo = {
	>Ext.IMedia,
	@:optional
	var cls : Dynamic;
	@:optional
	var posterUrl : String;
	@:optional
	function getCls():String;
	@:optional
	function getPosterUrl():String;
	@:optional
	function getUrl():String;
	@:optional
	function initialize():Void;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setPosterUrl(?posterUrl:String):Void;
	@:optional
	function setUrl(?url:Dynamic):Void;
	@:optional
	function updatePosterUrl(?newUrl:Dynamic):Void;
	@:optional
	function updateUrl(?newUrl:Dynamic):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IViewport = {
	>Ext.viewport.IDefault,
};
extern class Viewport {
	static var isReady : Bool;
	static var items : Ext.util.IMixedCollection;
	static var self : Ext.IClass;
	static function add(?newItems:Dynamic):Ext.IComponent;
	static function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addAll(?items:Array<Dynamic>):Array<Dynamic>;
	static function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function addCls(?cls:String, ?prefix:String, ?suffix:String):Void;
	static function addEvents(?eventNames:Dynamic):Void;
	static function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function animateActiveItem(?activeItem:Dynamic, ?animation:Dynamic):Void;
	static function applyMasked(?masked:Dynamic):Dynamic;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function child(?selector:String):Ext.IComponent;
	static function clearListeners():Void;
	static function destroy():Void;
	static function disable():Void;
	static function down(?selector:String):Ext.IComponent;
	static function enable():Void;
	static function enableBubble(?events:Dynamic):Void;
	static function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	static function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	static function getActiveItem():Dynamic;
	static function getAt(?index:Float):Ext.IComponent;
	static function getAutoDestroy():Bool;
	static function getAutoMaximize():Bool;
	static function getBaseCls():String;
	static function getBorder():Dynamic;
	static function getBottom():Dynamic;
	static function getBubbleEvents():Dynamic;
	static function getCentered():Bool;
	static function getCls():Dynamic;
	static function getComponent(?component:Dynamic):Ext.IComponent;
	static function getContentEl():Dynamic;
	static function getControl():Dynamic;
	static function getData():Dynamic;
	static function getDefaultType():String;
	static function getDefaults():Dynamic;
	static function getDisabled():Bool;
	static function getDisabledCls():String;
	static function getDocked():String;
	static function getDockedComponent(?component:Dynamic):Dynamic;
	static function getDockedItems():Array<Dynamic>;
	static function getEl():Ext.dom.IElement;
	static function getEnterAnimation():Dynamic;
	static function getExitAnimation():Dynamic;
	static function getFlex():Float;
	static function getFloatingCls():String;
	static function getHidden():Bool;
	static function getHiddenCls():String;
	static function getHideAnimation():Dynamic;
	static function getHideOnMaskTap():Bool;
	static function getHtml():Dynamic;
	static function getId():String;
	static function getInitialConfig(?name:String):Dynamic;
	static function getInnerItems():Array<Dynamic>;
	static function getItemId():String;
	static function getItems():Dynamic;
	static function getLayout():Dynamic;
	static function getLeft():Dynamic;
	static function getListeners():Dynamic;
	static function getMargin():Dynamic;
	static function getMasked():Dynamic;
	static function getMaxHeight():Dynamic;
	static function getMaxWidth():Dynamic;
	static function getMinHeight():Dynamic;
	static function getMinWidth():Dynamic;
	static function getModal():Bool;
	static function getOrientation():String;
	static function getPadding():Dynamic;
	static function getParent():Ext.IComponent;
	static function getPlugins():Dynamic;
	static function getPreventPanning():Bool;
	static function getPreventZooming():Bool;
	static function getRecord():Ext.data.IModel;
	static function getRenderTo():Ext.IElement;
	static function getRight():Dynamic;
	static function getScrollable():Ext.scroll.IView;
	static function getShowAnimation():Dynamic;
	static function getSize():Dynamic;
	static function getStyle():Dynamic;
	static function getStyleHtmlCls():String;
	static function getStyleHtmlContent():Bool;
	static function getTop():Dynamic;
	static function getTpl():Dynamic;
	static function getTplWriteMode():String;
	static function getUi():String;
	static function getUseBodyElement():Bool;
	static function getWindowHeight():Float;
	static function getWindowWidth():Float;
	static function getXTypes():String;
	static function getZIndex():Float;
	static function hasListener(?eventName:String):Bool;
	static function hasParent():Bool;
	static function hide(?animation:Dynamic):Ext.IComponent;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function initialize():Void;
	static function insert(?index:Float, ?item:Dynamic):Void;
	static function isDisabled():Bool;
	static function isHidden():Bool;
	static function isXType(?xtype:String, ?shallow:Bool):Bool;
	static function mask(?mask:Dynamic):Void;
	static function mon(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function mun(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function onAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function onBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function query(?selector:String):Array<Dynamic>;
	static function relayEvents(?object:Dynamic, ?events:Dynamic):Ext.mixin.IObservable;
	static function remove(?item:Dynamic, ?destroy:Bool):Ext.IComponent;
	static function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeAll(?destroy:Bool, ?everything:Bool):Ext.IComponent;
	static function removeAt(?index:Float):Ext.IContainer;
	static function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function removeCls(?cls:String, ?prefix:String, ?suffix:String):Void;
	static function removeDocked(?item:Dynamic, ?destroy:Bool):Ext.IComponent;
	static function removeInnerAt(?index:Float):Ext.IContainer;
	static function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function replaceCls(?oldCls:String, ?newCls:String, ?prefix:String, ?suffix:String):Void;
	static function resetFloating():Void;
	static function resumeEvents(?discardQueuedEvents:Bool):Void;
	static function setActiveItem(?activeItem:Dynamic):Void;
	static function setAutoDestroy(?autoDestroy:Bool):Void;
	static function setAutoMaximize(?autoMaximize:Bool):Void;
	static function setBaseCls(?baseCls:String):Void;
	static function setBorder(?border:Dynamic):Void;
	static function setBottom(?bottom:Dynamic):Void;
	static function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	static function setCentered(?centered:Bool):Void;
	static function setCls(?cls:Dynamic):Void;
	static function setContentEl(?contentEl:Dynamic):Void;
	static function setControl(?control:Dynamic):Void;
	static function setData(?data:Dynamic):Void;
	static function setDefaultType(?defaultType:String):Void;
	static function setDefaults(?defaults:Dynamic):Void;
	static function setDisabled(?disabled:Bool):Void;
	static function setDisabledCls(?disabledCls:String):Void;
	static function setDocked(?docked:String):Void;
	static function setDraggable(?draggable:Dynamic):Void;
	static function setEnterAnimation(?enterAnimation:Dynamic):Void;
	static function setExitAnimation(?exitAnimation:Dynamic):Void;
	static function setFlex(?flex:Float):Void;
	static function setFloating(?floating:Bool):Void;
	static function setFloatingCls(?floatingCls:String):Void;
	static function setHidden(?hidden:Bool):Void;
	static function setHiddenCls(?hiddenCls:String):Void;
	static function setHideAnimation(?hideAnimation:Dynamic):Void;
	static function setHideOnMaskTap(?hideOnMaskTap:Bool):Void;
	static function setHtml(?html:Dynamic):Void;
	static function setItemId(?itemId:String):Void;
	static function setItems(?items:Dynamic):Void;
	static function setLayout(?layout:Dynamic):Void;
	static function setLeft(?left:Dynamic):Void;
	static function setListeners(?listeners:Dynamic):Void;
	static function setMargin(?margin:Dynamic):Void;
	static function setMasked(?masked:Dynamic):Void;
	static function setMaxHeight(?maxHeight:Dynamic):Void;
	static function setMaxWidth(?maxWidth:Dynamic):Void;
	static function setMinHeight(?minHeight:Dynamic):Void;
	static function setMinWidth(?minWidth:Dynamic):Void;
	static function setModal(?modal:Bool):Void;
	static function setPadding(?padding:Dynamic):Void;
	static function setPlugins(?plugins:Dynamic):Void;
	static function setPreventPanning(?preventPanning:Bool):Void;
	static function setPreventZooming(?preventZooming:Bool):Void;
	static function setRecord(?record:Ext.data.IModel):Void;
	static function setRenderTo(?renderTo:Ext.IElement):Void;
	static function setRight(?right:Dynamic):Void;
	static function setScrollable(?scrollable:Dynamic):Void;
	static function setShowAnimation(?showAnimation:Dynamic):Void;
	static function setSize(?width:Float, ?height:Float):Void;
	static function setStyle(?style:Dynamic):Void;
	static function setStyleHtmlCls(?styleHtmlCls:String):Void;
	static function setStyleHtmlContent(?styleHtmlContent:Bool):Void;
	static function setTop(?top:Dynamic):Void;
	static function setTpl(?tpl:Dynamic):Void;
	static function setTplWriteMode(?tplWriteMode:String):Void;
	static function setUi(?ui:String):Void;
	static function setUseBodyElement(?useBodyElement:Bool):Void;
	static function setZIndex(?zIndex:Float):Void;
	static function show(?animation:Dynamic):Ext.IComponent;
	static function showBy(?component:Ext.IComponent, ?alignment:String):Void;
	static function statics():Ext.IClass;
	static function suspendEvents():Void;
	static function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	static function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	static function unmask():Void;
	static function up(?selector:String):Ext.IContainer;
	static function update():Void;
	static function updateStyleHtmlCls(?newHtmlCls:Dynamic, ?oldHtmlCls:Dynamic):Void;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
typedef IXTemplate = {
	>Ext.ITemplate,
	@:optional
	function applyOut(?values:Dynamic, ?out:Array<Dynamic>, ?parent:Dynamic):Array<Dynamic>;
};
extern class XTemplate {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function from(?el:Dynamic, ?config:Dynamic):Ext.ITemplate;
	static function getName():String;
	static function getTpl(?instance:Dynamic, ?name:String):Ext.IXTemplate;
	static function override(?members:Dynamic):Ext.IBase;
}
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
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
	function doIf(?action:Dynamic, ?actions:Dynamic):Void;
	@:optional
	function doSwitch(?action:Dynamic):Void;
	@:optional
	function doTag(?tag:Dynamic):Void;
	@:optional
	function doText(?text:Dynamic):Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
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
	function doIf(?action:String, ?actions:Dynamic):Void;
	@:optional
	function doSwitch(?action:String, ?actions:Dynamic):Void;
	@:optional
	function doTag(?tag:String):Void;
	@:optional
	function doText(?text:String):Void;
	@:optional
	function doTpl():Void;
};
extern class ExtTopLevel {
	static var SSL_SECURE_URL : Bool;
	static var emptyFn : Dynamic;
	static var enableGarbageCollector : Bool;
	static var enableListenerCollection : Bool;
	static var enumerables : Array<String>;
	static var frameStartTime : Dynamic;
	static var isSecure : Bool;
	static var version : String;
	static function application(?config:Dynamic):Void;
	static function apply(?object:Dynamic, ?config:Dynamic, ?defaults:Dynamic):Dynamic;
	static function applyIf(?object:Dynamic, ?config:Dynamic):Dynamic;
	static function bind(?fn:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Dynamic;
	static function callback(?callback:Dynamic, ?scope:Dynamic, ?args:Array<Dynamic>, ?delay:Float):Void;
	static function clean(?array:Array<Dynamic>):Array<Dynamic>;
	static function clone(?item:Dynamic):Dynamic;
	static function copyTo(?dest:Dynamic, ?source:Dynamic, ?names:Dynamic, ?usePrototypeKeys:Bool):Dynamic;
	static function create(?name:String, ?args:Dynamic):Dynamic;
	static function createByAlias(alias:String, args:haxe.extern.Rest<Dynamic>):Dynamic;
	static function createInterceptor(?origFn:Dynamic, ?newFn:Dynamic, ?scope:Dynamic, ?returnValue:Dynamic):Dynamic;
	static function createWidget():Void;
	static function decode(?json:String, ?safe:Bool):Dynamic;
	static function defer(?fn:Dynamic, ?millis:Float, ?scope:Dynamic, ?args:Array<Dynamic>, ?appendArgs:Dynamic):Float;
	static function define(?className:String, ?data:Dynamic, ?createdFn:Dynamic):Ext.IBase;
	static function destroy(args:haxe.extern.Rest<Dynamic>):Void;
	static function dispatch():Void;
	static function each(?iterable:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Bool;
	static function encode(?o:Dynamic):String;
	static function exclude(?excludes:Array<Dynamic>):Dynamic;
	static function extend(?superclass:Dynamic, ?overrides:Dynamic):Dynamic;
	static function factory(?config:Dynamic, ?classReference:String, ?instance:Dynamic, ?aliasNamespace:Dynamic):Void;
	static function flatten(?array:Array<Dynamic>):Array<Dynamic>;
	static function fly(?element:Dynamic, ?named:String):Ext.dom.IElement;
	static function get(?element:Dynamic):Ext.dom.IElement;
	static function getBody():Ext.IElement;
	static function getClass():Void;
	static function getClassName(?object:Dynamic):String;
	static function getCmp(?id:String):Ext.IComponent;
	static function getDisplayName(?object:Dynamic):String;
	static function getDoc():Ext.IElement;
	static function getDom(?el:Dynamic):HTMLElement;
	static function getHead():Ext.IElement;
	static function getOrientation():Void;
	static function getStore(?store:Dynamic):Ext.data.IStore;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function id(?el:Dynamic, ?prefix:String):String;
	static function isArray(?target:Dynamic):Bool;
	static function isBoolean(?value:Dynamic):Bool;
	static function isDate(?object:Dynamic):Bool;
	static function isDefined(?value:Dynamic):Bool;
	static function isElement(?value:Dynamic):Bool;
	static function isEmpty(?value:Dynamic, ?allowEmptyString:Bool):Bool;
	static function isFunction(?value:Dynamic):Bool;
	static function isIterable(?value:Dynamic):Bool;
	static function isMSDate(?value:Dynamic):Bool;
	static function isNumber(?value:Dynamic):Bool;
	static function isNumeric(?value:Dynamic):Bool;
	static function isObject(?value:Dynamic):Bool;
	static function isPrimitive(?value:Dynamic):Bool;
	static function isString(?value:Dynamic):Bool;
	static function isTextNode(?value:Dynamic):Bool;
	static function iterate(?object:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function max(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function mean(?array:Array<Dynamic>):Float;
	static function merge():Void;
	static function min(?array:Dynamic, ?comparisonFn:Dynamic):Dynamic;
	static function namespace(?namespace1:String, ?namespace2:String, ?etc:String):Dynamic;
	static function ns():Void;
	static function num():Void;
	static function onReady(?fn:Dynamic, ?scope:Dynamic, ?options:Bool):Void;
	static function override(?cls:Dynamic, ?overrides:Dynamic):Void;
	static function pass(?fn:Dynamic, ?args:Array<Dynamic>, ?scope:Dynamic):Dynamic;
	static function pluck(?array:Dynamic, ?propertyName:String):Array<Dynamic>;
	static function preg():Void;
	static function query(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	static function redirect():Void;
	static function reg():Void;
	static function regApplication():Void;
	static function regController():Void;
	static function regLayout():Void;
	static function regModel(?name:String, ?config:Dynamic):Ext.data.IModel;
	static function regStore(?id:String, ?config:Dynamic):Void;
	static function removeNode(?node:HTMLElement):Void;
	static function repaint():Void;
	static function require(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function select(?selector:Dynamic, ?composite:Bool):Ext.dom.ICompositeElementLite;
	static function setup(?config:Dynamic):Void;
	static function sum(?array:Array<Dynamic>):Float;
	static function syncRequire(?expressions:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?excludes:Dynamic):Void;
	static function toArray(?iterable:Dynamic, ?start:Float, ?end:Float):Array<Dynamic>;
	static function type(?value:Dynamic):String;
	static function typeOf(?value:Dynamic):String;
	static function unique(?array:Array<Dynamic>):Array<Dynamic>;
	static function urlAppend(?url:String, ?string:String):String;
	static function urlDecode():Void;
	static function urlEncode():Void;
	static function valueFrom(?value:Dynamic, ?defaultValue:Dynamic, ?allowBlank:Bool):Dynamic;
	static function widget(?name:String):Dynamic;
}
