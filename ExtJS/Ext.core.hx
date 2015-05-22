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
