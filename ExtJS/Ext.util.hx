typedef IFunctions = { };
extern class Functions {
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
typedef IAbstractMixedCollection = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var allowFunctions : Bool;
	@:optional
	var isMixedCollection : Bool;
	@:optional
	function add(?key:Dynamic, ?obj:Dynamic):Dynamic;
	@:optional
	function addAll(?objs:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function clear():Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function clone():Ext.util.IMixedCollection;
	@:optional
	function collect(?property:String, ?root:String, ?allowBlank:Bool):Array<Dynamic>;
	@:optional
	function contains(?o:Dynamic):Bool;
	@:optional
	function containsKey(?key:String):Bool;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Bool, ?caseSensitive:Bool):Ext.util.IMixedCollection;
	@:optional
	function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	@:optional
	function find():Void;
	@:optional
	function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function findIndex(?property:String, ?value:Dynamic, ?start:Float, ?anyMatch:Bool, ?caseSensitive:Bool):Float;
	@:optional
	function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function first():Dynamic;
	@:optional
	function get(?key:Dynamic):Dynamic;
	@:optional
	function getAt(?index:Float):Dynamic;
	@:optional
	function getByKey(?key:Dynamic):Dynamic;
	@:optional
	function getCount():Float;
	@:optional
	function getKey(?item:Dynamic):Dynamic;
	@:optional
	function getRange(?startIndex:Float, ?endIndex:Float):Array<Dynamic>;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function indexOf(?o:Dynamic):Float;
	@:optional
	function indexOfKey(?key:String):Float;
	@:optional
	function insert(?index:Float, ?key:Dynamic, ?o:Dynamic):Dynamic;
	@:optional
	function last():Dynamic;
	@:optional
	function mon(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function mun(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function on(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function relayEvents(?origin:Dynamic, ?events:Array<String>, ?prefix:String):Dynamic;
	@:optional
	function remove(?o:Dynamic):Dynamic;
	@:optional
	function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	@:optional
	function removeAt(?index:Float):Dynamic;
	@:optional
	function removeAtKey(?key:String):Dynamic;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeRange(?index:Float, ?removeCount:Float):Dynamic;
	@:optional
	function replace(?key:String, ?o:Dynamic):Dynamic;
	@:optional
	function resumeEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function resumeEvents():Void;
	@:optional
	function sum(?property:String, ?root:String, ?start:Float, ?end:Float):Float;
	@:optional
	function suspendEvent(eventName:haxe.extern.Rest<Dynamic>):Void;
	@:optional
	function suspendEvents(?queueSuspended:Bool):Void;
	@:optional
	function un(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function updateKey(?oldKey:Dynamic, ?newKey:Dynamic):Void;
};
typedef IAnimate = {
	>Ext.IBase,
	@:optional
	var animate : Dynamic;
	@:optional
	function getActiveAnimation():Dynamic;
	@:optional
	function hasActiveFx():Dynamic;
	@:optional
	function sequenceFx():Dynamic;
	@:optional
	function stopAnimation():Ext.IElement;
	@:optional
	function stopFx():Ext.IElement;
	@:optional
	function syncFx():Dynamic;
};
typedef IBindable = {
	>Ext.IBase,
	@:optional
	function bindStore(?store:Dynamic):Void;
	@:optional
	function bindStoreListeners(?store:Ext.data.IAbstractStore):Void;
	@:optional
	function getStore():Ext.data.IAbstractStore;
	@:optional
	function getStoreListeners(?store:Ext.data.IStore):Dynamic;
	@:optional
	function onBindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function onUnbindStore(?store:Ext.data.IAbstractStore, ?initial:Bool):Void;
	@:optional
	function unbindStoreListeners(?store:Ext.data.IAbstractStore):Void;
};
typedef IClickRepeater = {
	>Ext.util.IObservable,
	@:optional
	var accelerate : Bool;
	@:optional
	var delay : Float;
	@:optional
	var el : Dynamic;
	@:optional
	var interval : Float;
	@:optional
	var pressedCls : String;
	@:optional
	var preventDefault : Bool;
	@:optional
	var stopDefault : Bool;
	@:optional
	function disable(?force:Dynamic):Void;
	@:optional
	function enable():Void;
	@:optional
	function setDisabled(?disabled:Bool):Void;
};
typedef IComponentDragger = {
	>Ext.dd.IDragTracker,
	@:optional
	var constrain : Bool;
	@:optional
	var constrainDelegate : Bool;
	@:optional
	function onDrag(?e:Dynamic):Void;
	@:optional
	function onEnd(?e:Dynamic):Void;
	@:optional
	function onStart(?e:Dynamic):Void;
};
typedef ICookies = {
	>Ext.IBase,
};
extern class Cookies {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function clear(?name:String, ?path:String):Void;
	static function get(?name:String):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function set(?name:String, ?value:Dynamic, ?expires:Dynamic, ?path:String, ?domain:String, ?secure:Bool):Void;
	static function statics():Ext.IClass;
}
typedef ICSS = {
	>Ext.IBase,
};
extern class CSS {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function createRule(?styleSheet:CSSStyleSheet, ?selector:String, ?property:String):CSSStyleRule;
	static function createStyleSheet(?cssText:String, ?id:String):CSSStyleSheet;
	static function getInitialConfig(?name:String):Dynamic;
	static function getRule(?selector:Dynamic, ?refreshCache:Bool):CSSStyleRule;
	static function getRules(?refreshCache:Bool):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function refreshCache():Dynamic;
	static function removeStyleSheet(?id:String):Void;
	static function statics():Ext.IClass;
	static function swapStyleSheet(?id:String, ?url:String):Void;
	static function updateRule(?selector:Dynamic, ?property:String, ?value:String):Bool;
}
typedef IDelayedTask = {
	@:optional
	var id : Float;
	@:optional
	function cancel():Void;
	@:optional
	function delay(?newDelay:Float, ?newFn:Dynamic, ?newScope:Dynamic, ?newArgs:Array<Dynamic>):Void;
};
typedef IElementContainer = {
	>Ext.IBase,
	@:optional
	function addChildEls():Void;
	@:optional
	function removeChildEls(?testFn:Dynamic):Void;
};
typedef IEvent = {
	>Ext.IBase,
	@:optional
	var isEvent : Bool;
};
typedef IFilter = {
	>Ext.IBase,
	@:optional
	var anyMatch : Bool;
	@:optional
	var caseSensitive : Bool;
	@:optional
	var exactMatch : Bool;
	@:optional
	var filterFn : Dynamic;
	@:optional
	var id : String;
	@:optional
	var operator : String;
	@:optional
	var property : String;
	@:optional
	var root : String;
	@:optional
	var value : Dynamic;
	@:optional
	var disabled : Bool;
	@:optional
	function setFilterFn(?filterFn:Dynamic):Void;
	@:optional
	function setValue(?value:Dynamic):Void;
};
extern class Filter {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function createFilterFn(?filters:Array<Ext.util.IFilter>):Dynamic;
	static function getName():String;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IFloating = {
	>Ext.IBase,
	@:optional
	var constrain : Bool;
	@:optional
	var fixed : Bool;
	@:optional
	var focusOnToFront : Bool;
	@:optional
	var shadow : Dynamic;
	@:optional
	var shadowOffset : Float;
	@:optional
	function center():Ext.IComponent;
	@:optional
	function doConstrain(?constrainTo:Dynamic):Void;
	@:optional
	function setActive(?active:Bool, ?newActive:Ext.IComponent):Void;
	@:optional
	function toBack():Ext.IComponent;
	@:optional
	function toFront(?preventFocus:Bool):Ext.IComponent;
};
typedef IFormat = { };
extern class Format {
	static var currencyAtEnd : Bool;
	static var currencyPrecision : Float;
	static var currencySign : String;
	static var decimalSeparator : String;
	static var thousandSeparator : String;
	static function attributes(?attributes:Dynamic):Void;
	static function capitalize(?string:String):String;
	static function currency(?value:Dynamic, ?sign:String, ?decimals:Float, ?end:Bool):String;
	static function date(?value:Dynamic, ?format:String):String;
	static function dateRenderer(?format:String):Dynamic;
	static function defaultValue(?value:Dynamic, ?defaultValue:String):String;
	static function ellipsis(?value:String, ?length:Float, ?word:Bool):String;
	static function escapeRegex(?str:String):String;
	static function fileSize(?size:Dynamic):String;
	static function format(string:String, values:haxe.extern.Rest<Dynamic>):String;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function leftPad(?string:String, ?size:Float, ?character:String):String;
	static function lowercase(?value:String):String;
	static function math():Dynamic;
	static function nl2br(?v:String):String;
	static function number(?v:Float, ?format:String):String;
	static function numberRenderer(?format:String):Dynamic;
	static function parseBox(?v:Dynamic):Dynamic;
	static function plural(?value:Float, ?singular:String, ?plural:String):Void;
	static function round(?value:Dynamic, ?precision:Float):Float;
	static function stripScripts(?value:Dynamic):String;
	static function stripTags(?value:Dynamic):String;
	static function substr(?value:String, ?start:Float, ?length:Float):String;
	static function trim(?string:String):String;
	static function undef(?value:Dynamic):Dynamic;
	static function uppercase(?value:String):String;
	static function usMoney(?value:Dynamic):String;
}
typedef IGrouper = {
	>Ext.util.ISorter,
	@:optional
	function getGroupString(?instance:Ext.data.IModel):String;
};
typedef IHashMap = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var keyFn : Dynamic;
	@:optional
	function add(?key:Dynamic, ?o:Dynamic):Dynamic;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function addManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Dynamic;
	@:optional
	function clear(?initial:Dynamic):Ext.util.IHashMap;
	@:optional
	function clearListeners():Void;
	@:optional
	function clearManagedListeners():Void;
	@:optional
	function clone():Ext.util.IHashMap;
	@:optional
	function contains(?value:Dynamic):Bool;
	@:optional
	function containsKey(?key:String):Bool;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Ext.util.IHashMap;
	@:optional
	function enableBubble(?eventNames:Dynamic):Void;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function fireEventArgs(?eventName:String, ?args:Array<Dynamic>):Bool;
	@:optional
	function get(?key:String):Dynamic;
	@:optional
	function getCount():Float;
	@:optional
	function getKey(?o:Dynamic):String;
	@:optional
	function getKeys():Array<Dynamic>;
	@:optional
	function getValues():Array<Dynamic>;
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
	function remove(?o:Dynamic):Bool;
	@:optional
	function removeAtKey(?key:String):Bool;
	@:optional
	function removeListener(?eventName:String, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function removeManagedListener(?item:Dynamic, ?ename:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function replace(?key:String, ?value:Dynamic):Dynamic;
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
typedef IInflector = {
	>Ext.IBase,
};
extern class Inflector {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function classify(?word:String):String;
	static function clearPlurals():Void;
	static function clearSingulars():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function isTransnumeral(?word:String):Bool;
	static function ordinalize(?number:Float):String;
	static function plural(?matcher:js.RegExp, ?replacer:String):Void;
	static function pluralize(?word:String):String;
	static function singular(?matcher:js.RegExp, ?replacer:String):Void;
	static function singularize(?word:String):String;
	static function statics():Ext.IClass;
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
typedef ILruCache = {
	>Ext.util.IHashMap,
	@:optional
	var maxSize : Float;
	@:optional
	function add(?key:Dynamic, ?newValue:Dynamic):Dynamic;
	@:optional
	function clear(?initial:Dynamic):Ext.util.IHashMap;
	@:optional
	function clone():Ext.util.IHashMap;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic, ?reverse:Bool):Ext.util.ILruCache;
	@:optional
	function get(?key:Dynamic):Dynamic;
	@:optional
	function prune():Void;
};
typedef IMemento = {
	>Ext.IBase,
	@:optional
	var target : Dynamic;
	@:optional
	function capture(?props:Dynamic, ?target:Dynamic):Void;
	@:optional
	function remove(?props:Dynamic):Void;
	@:optional
	function restore(?props:Dynamic, ?clear:Bool, ?target:Dynamic):Void;
	@:optional
	function restoreAll(?clear:Bool, ?target:Dynamic):Void;
};
typedef IMixedCollection = {
	>Ext.util.IAbstractMixedCollection,
	>Ext.util.ISortable,
	@:optional
	var allowFunctions : Bool;
	@:optional
	function findInsertionIndex(?newItem:Dynamic, ?sorterFn:Dynamic):Float;
	@:optional
	function generateComparator():Void;
	@:optional
	function getFirstSorter():Ext.util.ISorter;
	@:optional
	function initSortable():Void;
	@:optional
	function reorder(?mapping:Dynamic):Void;
	@:optional
	function sort(?sorters:Dynamic, ?direction:String):Array<Ext.util.ISorter>;
	@:optional
	function sortBy(?sorterFn:Dynamic):Void;
	@:optional
	function sortByKey(?direction:String, ?fn:Dynamic):Void;
};
typedef IObservable = {
	>Ext.IBase,
	@:optional
	var listeners : Dynamic;
	@:optional
	var hasListeners : Dynamic;
	@:optional
	var isObservable : Bool;
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
extern class Observable {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function capture(?o:Ext.util.IObservable, ?fn:Dynamic, ?scope:Dynamic):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function getName():String;
	static function implement():Void;
	static function observe(?c:Dynamic, ?listeners:Dynamic):Void;
	static function override(?members:Dynamic):Ext.IBase;
	static function releaseCapture(?o:Ext.util.IObservable):Void;
}
typedef IOffset = {
	>Ext.IBase,
};
typedef IPoint = {
	>Ext.util.IRegion,
	@:optional
	function equals(?p:Dynamic):Bool;
	@:optional
	function isContainedBy(?region:Dynamic):Bool;
	@:optional
	function isWithin(?p:Dynamic, ?threshold:Dynamic):Bool;
	@:optional
	function roundedEquals(?p:Dynamic):Bool;
	@:optional
	function toString():String;
	@:optional
	function translate(?x:Dynamic, ?y:Float):Ext.util.IRegion;
};
extern class Point {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function fromEvent(?e:Dynamic):Ext.util.IPoint;
	static function getName():String;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IPositionable = {
	>Ext.IBase,
	@:optional
	function alignTo(?element:Dynamic, ?position:String, ?offsets:Array<Float>, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function anchorTo(?element:Dynamic, ?position:String, ?offsets:Array<Float>, ?animate:Dynamic, ?monitorScroll:Dynamic, ?callback:Dynamic):Ext.util.IPositionable;
	@:optional
	function calculateConstrainedPosition(?constrainTo:Dynamic, ?proposedPosition:Array<Float>, ?local:Bool, ?proposedSize:Array<Float>):Array<Float>;
	@:optional
	function getAlignToXY(?element:Dynamic, ?position:String, ?offsets:Array<Float>):Array<Float>;
	@:optional
	function getAnchorXY(?anchor:String, ?local:Bool, ?size:Dynamic):Array<Float>;
	@:optional
	function getBox(?contentBox:Bool, ?local:Bool):Dynamic;
	@:optional
	function getConstrainVector(?constrainTo:Dynamic, ?proposedPosition:Array<Float>, ?proposedSize:Array<Float>):Dynamic;
	@:optional
	function getLocalX():Float;
	@:optional
	function getLocalXY():Array<Float>;
	@:optional
	function getLocalY():Float;
	@:optional
	function getOffsetsTo(?offsetsTo:Dynamic):Array<Float>;
	@:optional
	function getRegion():Ext.util.IRegion;
	@:optional
	function getViewRegion():Ext.util.IRegion;
	@:optional
	function getX():Float;
	@:optional
	function getXY():Array<Float>;
	@:optional
	function getY():Float;
	@:optional
	function move(?direction:String, ?distance:Float, ?animate:Dynamic):Void;
	@:optional
	function removeAnchor():Ext.util.IPositionable;
	@:optional
	function setBox(?box:Dynamic, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function setLocalX(?x:Float):Ext.util.IPositionable;
	@:optional
	function setLocalXY(?x:Dynamic, ?y:Float):Ext.util.IPositionable;
	@:optional
	function setLocalY(?y:Float):Ext.util.IPositionable;
	@:optional
	function setRegion(?region:Ext.util.IRegion, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function setX(?The:Float, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function setXY(?pos:Array<Float>, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function setY(?The:Float, ?animate:Dynamic):Ext.util.IPositionable;
	@:optional
	function translatePoints(?x:Dynamic, ?y:Float):Dynamic;
};
typedef IProtoElement = {
	>Ext.IBase,
	@:optional
	var clsProp : String;
	@:optional
	var removedProp : String;
	@:optional
	var styleIsText : Bool;
	@:optional
	var styleProp : String;
	@:optional
	function addCls(?cls:String):Ext.util.IProtoElement;
	@:optional
	function flush():Void;
	@:optional
	function hasCls(?cls:String):Bool;
	@:optional
	function removeCls(?cls:String):Ext.util.IProtoElement;
	@:optional
	function setStyle(?prop:Dynamic, ?value:String):Ext.util.IProtoElement;
	@:optional
	function writeTo(?to:Dynamic):Dynamic;
};
typedef IQueue = {
	>Ext.IBase,
	@:optional
	function clear():Void;
	@:optional
	function getCount():Float;
	@:optional
	function remove(?obj:Dynamic):Dynamic;
};
typedef IRegion = {
	>Ext.IBase,
	@:optional
	function adjust(?top:Float, ?right:Float, ?bottom:Float, ?left:Float):Ext.util.IRegion;
	@:optional
	function constrainTo(?targetRegion:Ext.util.IRegion):Ext.util.IRegion;
	@:optional
	function contains(?region:Ext.util.IRegion):Bool;
	@:optional
	function copy():Ext.util.IRegion;
	@:optional
	function copyFrom(?p:Ext.util.IRegion):Ext.util.IRegion;
	@:optional
	function equals(?region:Ext.util.IRegion):Bool;
	@:optional
	function getOutOfBoundOffset(?axis:String, ?p:Ext.util.IPoint):Ext.util.IOffset;
	@:optional
	function getOutOfBoundOffsetX(?p:Float):Float;
	@:optional
	function getOutOfBoundOffsetY(?p:Float):Float;
	@:optional
	function intersect(?region:Ext.util.IRegion):Dynamic;
	@:optional
	function isOutOfBound(?axis:String, ?p:Dynamic):Bool;
	@:optional
	function isOutOfBoundX(?p:Float):Bool;
	@:optional
	function isOutOfBoundY(?p:Float):Bool;
	@:optional
	function round():Ext.util.IRegion;
	@:optional
	function translateBy(?x:Dynamic, ?y:Float):Ext.util.IRegion;
	@:optional
	function union(?region:Ext.util.IRegion):Ext.util.IRegion;
};
extern class Region {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function from(?o:Dynamic):Ext.util.IRegion;
	static function getName():String;
	static function getRegion(?el:Dynamic):Ext.util.IRegion;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IRenderable = {
	>Ext.IBase,
	@:optional
	function afterRender():Void;
	@:optional
	function doAutoRender():Void;
	@:optional
	function ensureAttachedToBody(?runLayout:Bool):Void;
	@:optional
	function getInsertPosition(?position:Dynamic):HTMLElement;
	@:optional
	function initRenderData():Dynamic;
	@:optional
	function onRender(?parentNode:Ext.core.IElement, ?containerIdx:Float):Void;
	@:optional
	function render(?container:Dynamic, ?position:Dynamic):Void;
};
typedef ISortable = {
	>Ext.IBase,
	@:optional
	var defaultSortDirection : String;
	@:optional
	var sortRoot : String;
	@:optional
	var sorters : Dynamic;
	@:optional
	var isSortable : Bool;
	@:optional
	function generateComparator():Void;
	@:optional
	function getFirstSorter():Ext.util.ISorter;
	@:optional
	function initSortable():Void;
	@:optional
	function sort(?sorters:Dynamic, ?direction:String):Array<Ext.util.ISorter>;
};
extern class Sortable {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function createComparator(?sorters:Array<Ext.util.ISorter>):Dynamic;
	static function getName():String;
	static function implement():Void;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef ISorter = {
	>Ext.IBase,
	@:optional
	var direction : String;
	@:optional
	var property : String;
	@:optional
	var root : String;
	@:optional
	var sorterFn : Dynamic;
	@:optional
	var transform : Dynamic;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function toggle():Void;
	@:optional
	function updateSortFunction(?fn:Dynamic):Void;
};
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
typedef ITaskRunner = {
	>Ext.IBase,
	@:optional
	var fireIdleEvent : Bool;
	@:optional
	var interval : Float;
	@:optional
	function destroy():Void;
	@:optional
	function newTask(?config:Dynamic):Void;
	@:optional
	function start(?task:Dynamic):Dynamic;
	@:optional
	function stop(?task:Dynamic):Dynamic;
	@:optional
	function stopAll():Void;
};
typedef ITextMetrics = {
	>Ext.IBase,
	@:optional
	function bind(?el:Dynamic):Void;
	@:optional
	function destroy():Void;
	@:optional
	function getHeight(?text:String):Float;
	@:optional
	function getSize(?text:String):Dynamic;
	@:optional
	function getWidth(?text:String):Float;
	@:optional
	function setFixedWidth(?width:Float):Void;
};
extern class TextMetrics {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function destroy():Void;
	static function getName():String;
	static function implement():Void;
	static function measure(?el:Dynamic, ?text:String, ?fixedWidth:Float):Dynamic;
	static function override(?members:Dynamic):Ext.IBase;
}
