typedef IAbstractElement = {
	>Ext.IBase,
	@:optional
	var defaultUnit : String;
	@:optional
	var dom : HTMLElement;
	@:optional
	var id : String;
	@:optional
	var ASCLASS : Float;
	@:optional
	var DISPLAY : Float;
	@:optional
	var OFFSETS : Float;
	@:optional
	var VISIBILITY : Float;
	@:optional
	function addCls(?className:Dynamic):Ext.dom.IElement;
	@:optional
	function appendChild(?el:Dynamic, ?returnDom:Bool):Ext.dom.IAbstractElement;
	@:optional
	function appendTo(?el:Dynamic):Ext.dom.IAbstractElement;
	@:optional
	function applyStyles(?styles:Dynamic):Ext.dom.IElement;
	@:optional
	function child(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function contains(?el:Dynamic):Bool;
	@:optional
	function createChild(?config:Dynamic, ?insertBefore:HTMLElement, ?returnDom:Bool):Ext.dom.IAbstractElement;
	@:optional
	function destroy():Void;
	@:optional
	function down(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function findParent(?selector:String, ?limit:Dynamic, ?returnEl:Bool):HTMLElement;
	@:optional
	function findParentNode(?selector:String, ?limit:Dynamic, ?returnEl:Bool):HTMLElement;
	@:optional
	function first(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function getActiveElement():HTMLElement;
	@:optional
	function getAttribute(?name:String, ?namespace:String):String;
	@:optional
	function getBorderWidth(?side:String):Float;
	@:optional
	function getById(?id:String, ?asDom:Bool):Void;
	@:optional
	function getHTML():Void;
	@:optional
	function getHeight(?contentHeight:Bool):Float;
	@:optional
	function getMargin(?sides:String):Dynamic;
	@:optional
	function getPadding(?side:String):Float;
	@:optional
	function getSize(?contentSize:Bool):Dynamic;
	@:optional
	function getStyle(?property:Dynamic, ?inline:Bool):Dynamic;
	@:optional
	function getValue(?asNumber:Bool):Dynamic;
	@:optional
	function getViewSize():Dynamic;
	@:optional
	function getWidth(?contentWidth:Bool):Float;
	@:optional
	function hasCls(?className:String):Bool;
	@:optional
	function hide(?animate:Dynamic):Ext.dom.IElement;
	@:optional
	function insertAfter(?el:Dynamic):Ext.dom.IAbstractElement;
	@:optional
	function insertBefore(?el:Dynamic):Ext.dom.IAbstractElement;
	@:optional
	function insertFirst(?el:Dynamic):Ext.dom.IAbstractElement;
	@:optional
	function insertHtml(?where:String, ?html:String, ?returnEl:Bool):Dynamic;
	@:optional
	function insertSibling(?el:Dynamic, ?where:String, ?returnDom:Bool):Ext.dom.IAbstractElement;
	@:optional
	function is(?selector:String):Bool;
	@:optional
	function isStyle(?style:String, ?value:String):Bool;
	@:optional
	function isTransparent(?prop:String):Bool;
	@:optional
	function last(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function mask(?msg:String, ?msgCls:String):Void;
	@:optional
	function next(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function parent(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function prev(?selector:String, ?returnDom:Bool):Dynamic;
	@:optional
	function query(?selector:String):Array<HTMLElement>;
	@:optional
	function radioCls(?className:Dynamic):Ext.dom.IElement;
	@:optional
	function remove():Void;
	@:optional
	function removeCls(?className:Dynamic):Ext.dom.IElement;
	@:optional
	function repaint():Ext.dom.IElement;
	@:optional
	function replace(?el:Dynamic):Ext.dom.IAbstractElement;
	@:optional
	function replaceCls(?oldClassName:String, ?newClassName:String):Ext.dom.IElement;
	@:optional
	function replaceWith(?el:Dynamic):Ext.dom.IAbstractElement;
	@:optional
	function select(?selector:String, ?unique:Bool):Ext.ICompositeElement;
	@:optional
	function serializeForm(?form:Dynamic):String;
	@:optional
	function set(?o:Dynamic, ?useSet:Bool):Ext.dom.IElement;
	@:optional
	function setHTML(?html:String):Ext.IElement;
	@:optional
	function setHeight(?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setSize(?width:Dynamic, ?height:Dynamic):Ext.dom.IElement;
	@:optional
	function setStyle(?property:Dynamic, ?value:String):Ext.dom.IElement;
	@:optional
	function setVisibilityMode(?mode:Dynamic):Ext.dom.IAbstractElement;
	@:optional
	function setVisible(?visible:Bool, ?animate:Dynamic):Ext.dom.IElement;
	@:optional
	function setWidth(?width:Dynamic):Ext.dom.IElement;
	@:optional
	function show(?animate:Dynamic):Ext.dom.IElement;
	@:optional
	function toggleCls(?className:String):Ext.dom.IElement;
	@:optional
	function unmask():Void;
	@:optional
	function up(?selector:String, ?limit:Dynamic, ?returnDom:Bool):Ext.IElement;
	@:optional
	function update(?html:String):Ext.dom.IElement;
	@:optional
	function wrap(?config:Dynamic, ?returnDom:Bool, ?selector:String):Dynamic;
};
extern class AbstractElement {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function fly(?dom:Dynamic, ?named:String):Ext.dom.element.IFly;
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
	static function unitizeBox(?box:Dynamic, ?units:String):String;
}
typedef IAbstractHelper = {
	>Ext.IBase,
	@:optional
	function append(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
	@:optional
	function applyStyles(?el:Dynamic, ?styles:Dynamic):Void;
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
typedef IAbstractQuery = {
	>Ext.IBase,
	@:optional
	function is(?el:Dynamic, ?selector:String):Bool;
	@:optional
	function select(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	@:optional
	function selectNode(?selector:String, ?root:Dynamic):HTMLElement;
};
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
typedef IHelper = {
	>Ext.dom.IAbstractHelper,
	@:optional
	var useDom : Bool;
	@:optional
	function createDom(?o:Dynamic):HTMLElement;
	@:optional
	function createHtml(?spec:Dynamic):String;
	@:optional
	function createTemplate(?o:Dynamic):Ext.ITemplate;
	@:optional
	function overwrite(?el:Dynamic, ?o:Dynamic, ?returnElement:Bool):Dynamic;
};
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
typedef IQuery = { };
extern class Query {
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
