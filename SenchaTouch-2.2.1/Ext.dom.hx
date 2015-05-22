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
typedef IQuery = {
	>Ext.IBase,
	@:optional
	function is(?el:Dynamic, ?selector:String):Bool;
	@:optional
	function select(?selector:String, ?root:Dynamic):Array<HTMLElement>;
	@:optional
	function selectNode(?selector:String, ?root:Dynamic):HTMLElement;
};
typedef IHelper = {
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
