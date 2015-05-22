typedef IJSONP = {
	>Ext.IBase,
};
extern class JSONP {
	static var callbackKey : String;
	static var disableCaching : Bool;
	static var disableCachingParam : String;
	static var self : Ext.IClass;
	static var timeout : Float;
	static function abort(?request:Dynamic):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function request(?options:Dynamic):Dynamic;
	static function statics():Ext.IClass;
}
typedef IFunctions = { };
extern class Functions {
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
typedef IObservable = {
	>Ext.mixin.IMixin,
	>Ext.mixin.IIdentifiable,
	@:optional
	var bubbleEvents : Dynamic;
	@:optional
	var listeners : Dynamic;
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
	function getId():Dynamic;
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
typedef IIndicator = {
	>Ext.IBase,
};
typedef IScrollView = {
	>Ext.IEvented,
	@:optional
	var indicatorsUi : String;
	@:optional
	function destroy():Void;
	@:optional
	function getCls():String;
	@:optional
	function getElement():Dynamic;
	@:optional
	function getIndicators():Dynamic;
	@:optional
	function getIndicatorsHidingDelay():Float;
	@:optional
	function getIndicatorsUi():String;
	@:optional
	function getScroller():Ext.scroll.IView;
	@:optional
	function setCls(?cls:String):Void;
	@:optional
	function setElement(?element:Dynamic):Void;
	@:optional
	function setIndicators(?indicators:Dynamic):Void;
	@:optional
	function setIndicatorsHidingDelay(?indicatorsHidingDelay:Float):Void;
	@:optional
	function setIndicatorsUi(?indicatorsUi:String):Void;
	@:optional
	function setScroller(?scroller:Dynamic):Void;
};
typedef IAbstractMixedCollection = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var allowFunctions : Bool;
	@:optional
	function add(?key:String, ?obj:Dynamic):Dynamic;
	@:optional
	function addAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addAll(?objs:Dynamic):Void;
	@:optional
	function addBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function addEvents(?eventNames:Dynamic):Void;
	@:optional
	function addListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function addManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function clear():Void;
	@:optional
	function clearListeners():Void;
	@:optional
	function clone():Ext.util.IMixedCollection;
	@:optional
	function collect(?property:String, ?root:String, ?allowNull:Bool):Array<Dynamic>;
	@:optional
	function contains(?o:Dynamic):Bool;
	@:optional
	function containsKey(?key:String):Bool;
	@:optional
	function destroy():Void;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Bool, ?caseSensitive:Bool):Ext.util.IMixedCollection;
	@:optional
	function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	@:optional
	function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function findIndex(?property:String, ?value:Dynamic, ?start:Float, ?anyMatch:Bool, ?caseSensitive:Bool):Float;
	@:optional
	function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function first():Dynamic;
	@:optional
	function get(?key:Dynamic):Dynamic;
	@:optional
	function getAt(?index:Float):Dynamic;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getByKey(?key:Dynamic):Dynamic;
	@:optional
	function getCount():Float;
	@:optional
	function getKey(?item:Dynamic):Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getRange(?start:Float, ?end:Float):Array<Dynamic>;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function indexOf(?o:Dynamic):Float;
	@:optional
	function indexOfKey(?key:String):Float;
	@:optional
	function insert(?index:Float, ?key:String, ?obj:Dynamic):Dynamic;
	@:optional
	function last():Dynamic;
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
	function remove(?o:Dynamic):Dynamic;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	@:optional
	function removeAt(?index:Float):Dynamic;
	@:optional
	function removeAtKey(?key:String):Dynamic;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function replace(?key:String, ?o:Dynamic):Dynamic;
	@:optional
	function resumeEvents(?discardQueuedEvents:Bool):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function sum(?property:String, ?root:String, ?start:Float, ?end:Float):Float;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef ICollection = {
	>Ext.IBase,
	>Ext.mixin.ISortable,
	>Ext.mixin.IFilterable,
	@:optional
	var filters : Array<Dynamic>;
	@:optional
	var sorters : Array<Dynamic>;
	@:optional
	var all : Array<Dynamic>;
	@:optional
	var indices : Dynamic;
	@:optional
	var items : Array<Dynamic>;
	@:optional
	var keys : Array<Dynamic>;
	@:optional
	var length : Float;
	@:optional
	var map : Dynamic;
	@:optional
	function add(?key:String, ?item:Dynamic):Dynamic;
	@:optional
	function addAll(?addItems:Dynamic):Void;
	@:optional
	function addFilter(?filter:Dynamic):Void;
	@:optional
	function addFilters(?filters:Dynamic):Dynamic;
	@:optional
	function addSorter(?sorter:Dynamic, ?defaultDirection:String):Void;
	@:optional
	function addSorters(?sorters:Array<Dynamic>, ?defaultDirection:String):Void;
	@:optional
	function clear():Void;
	@:optional
	function clone():Ext.util.IMixedCollection;
	@:optional
	function contains(?item:Dynamic):Bool;
	@:optional
	function containsKey(?key:String):Bool;
	@:optional
	function destroy():Void;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function eachKey(?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function filter(?property:Dynamic, ?value:Dynamic, ?anyMatch:Dynamic, ?caseSensitive:Dynamic):Array<Dynamic>;
	@:optional
	function filterBy(?fn:Dynamic, ?scope:Dynamic):Ext.util.IMixedCollection;
	@:optional
	function findBy(?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function findIndexBy(?fn:Dynamic, ?scope:Dynamic, ?start:Float):Float;
	@:optional
	function findInsertionIndex(?items:Array<Dynamic>, ?item:Dynamic):Float;
	@:optional
	function first():Dynamic;
	@:optional
	function get(?key:Dynamic):Dynamic;
	@:optional
	function getAt(?index:Float):Dynamic;
	@:optional
	function getAutoFilter():Bool;
	@:optional
	function getAutoSort():Bool;
	@:optional
	function getByKey(?key:Dynamic):Dynamic;
	@:optional
	function getCount():Float;
	@:optional
	function getDefaultSortDirection():String;
	@:optional
	function getFilterFn():Dynamic;
	@:optional
	function getFilterRoot():String;
	@:optional
	function getFilters():Array<Dynamic>;
	@:optional
	function getKey(?item:Dynamic):Dynamic;
	@:optional
	function getRange(?start:Float, ?end:Float):Array<Dynamic>;
	@:optional
	function getSortFn():Dynamic;
	@:optional
	function getSortRoot():String;
	@:optional
	function getSorters():Array<Dynamic>;
	@:optional
	function indexOf(?item:Dynamic):Float;
	@:optional
	function indexOfKey(?key:String):Float;
	@:optional
	function insert(?index:Float, ?key:String, ?item:Dynamic):Dynamic;
	@:optional
	function insertFilter(?index:Float, ?filter:Dynamic):Dynamic;
	@:optional
	function insertFilters(?index:Float, ?filters:Array<Dynamic>):Array<Dynamic>;
	@:optional
	function insertSorter(?index:Float, ?sorter:Dynamic, ?defaultDirection:String):Void;
	@:optional
	function insertSorters():Ext.util.ICollection;
	@:optional
	function last():Dynamic;
	@:optional
	function remove(?item:Dynamic):Dynamic;
	@:optional
	function removeAll(?items:Array<Dynamic>):Ext.util.IMixedCollection;
	@:optional
	function removeAt(?index:Float):Dynamic;
	@:optional
	function removeAtKey(?key:String):Dynamic;
	@:optional
	function removeFilters(?filters:Dynamic):Ext.util.ICollection;
	@:optional
	function removeSorter(?sorter:Dynamic):Void;
	@:optional
	function removeSorters(?sorters:Dynamic):Ext.util.ICollection;
	@:optional
	function replace(?oldKey:String, ?item:Dynamic):Dynamic;
	@:optional
	function setAutoFilter(?autoFilter:Bool):Void;
	@:optional
	function setAutoSort(?autoSort:Bool):Void;
	@:optional
	function setDefaultSortDirection(?defaultSortDirection:String):Void;
	@:optional
	function setFilterRoot(?filterRoot:String):Void;
	@:optional
	function setFilters(?filters:Array<Dynamic>):Void;
	@:optional
	function setSortRoot(?sortRoot:String):Void;
	@:optional
	function setSorters(?sorters:Array<Dynamic>):Void;
	@:optional
	function sort(?sorters:Dynamic, ?defaultDirection:Dynamic):Array<Dynamic>;
};
typedef IDelayedTask = {
	>Ext.IBase,
	@:optional
	function cancel():Void;
	@:optional
	function delay(?delay:Float, ?newFn:Dynamic, ?newScope:Dynamic, ?newArgs:Array<Dynamic>):Void;
	@:optional
	function getArgs():Dynamic;
	@:optional
	function getDelay():Dynamic;
	@:optional
	function getFn():Dynamic;
	@:optional
	function getInterval():Dynamic;
	@:optional
	function getScope():Dynamic;
	@:optional
	function setArgs(?args:Dynamic):Void;
	@:optional
	function setDelay(?delay:Dynamic):Void;
	@:optional
	function setFn(?fn:Dynamic):Void;
	@:optional
	function setInterval(?interval:Dynamic):Void;
	@:optional
	function setScope(?scope:Dynamic):Void;
};
typedef IDraggable = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var direction : String;
	@:optional
	var initialOffset : Dynamic;
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
	function disable():Ext.util.IDraggable;
	@:optional
	function enable():Ext.util.IDraggable;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getCls():String;
	@:optional
	function getConstraint():String;
	@:optional
	function getDirection():String;
	@:optional
	function getDisabled():Dynamic;
	@:optional
	function getDraggingCls():String;
	@:optional
	function getElement():Dynamic;
	@:optional
	function getInitialOffset():Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getTranslatable():Dynamic;
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
	function setCls(?cls:String):Void;
	@:optional
	function setConstraint(?constraint:String):Void;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setDisabled(?disabled:Dynamic):Void;
	@:optional
	function setDraggingCls(?draggingCls:String):Void;
	@:optional
	function setElement(?element:Dynamic):Void;
	@:optional
	function setInitialOffset(?initialOffset:Dynamic):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setTranslatable(?translatable:Dynamic):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef IDroppable = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var activeCls : String;
	@:optional
	var baseCls : String;
	@:optional
	var disabled : Bool;
	@:optional
	var group : String;
	@:optional
	var hoverCls : String;
	@:optional
	var invalidCls : String;
	@:optional
	var validDropMode : String;
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
	function disable():Void;
	@:optional
	function enable():Void;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getBaseCls():String;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function hasListener(?eventName:String):Bool;
	@:optional
	function isDisabled():Bool;
	@:optional
	function isMonitoring():Bool;
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
	function setBaseCls(?baseCls:String):Void;
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
	var property : String;
	@:optional
	var root : String;
	@:optional
	var scope : Dynamic;
	@:optional
	var value : Dynamic;
	@:optional
	function getAnyMatch():Bool;
	@:optional
	function getCaseSensitive():Bool;
	@:optional
	function getExactMatch():Bool;
	@:optional
	function getFilterFn():Dynamic;
	@:optional
	function getId():String;
	@:optional
	function getProperty():String;
	@:optional
	function getRoot():String;
	@:optional
	function getScope():Dynamic;
	@:optional
	function getValue():Dynamic;
	@:optional
	function setAnyMatch(?anyMatch:Bool):Void;
	@:optional
	function setCaseSensitive(?caseSensitive:Bool):Void;
	@:optional
	function setExactMatch(?exactMatch:Bool):Void;
	@:optional
	function setFilterFn(?filterFn:Dynamic):Void;
	@:optional
	function setId(?id:String):Void;
	@:optional
	function setProperty(?property:String):Void;
	@:optional
	function setRoot(?root:String):Void;
	@:optional
	function setScope(?scope:Dynamic):Void;
	@:optional
	function setValue(?value:Dynamic):Void;
};
typedef IFormat = {
	>Ext.IBase,
};
extern class Format {
	static var defaultDateFormat : String;
	static var potentialUndefinedKeys : Array<Dynamic>;
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function date(?value:Dynamic, ?format:String):String;
	static function destroy():Void;
	static function ellipsis(?value:String, ?length:Float, ?word:Bool):String;
	static function escape(?string:String):String;
	static function escapeRegex(?str:String):String;
	static function format(string:String, values:haxe.extern.Rest<Dynamic>):String;
	static function getInitialConfig(?name:String):Dynamic;
	static function htmlDecode(?value:String):String;
	static function htmlEncode(?value:String):String;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function leftPad(?string:String, ?size:Float, ?char:String):String;
	static function statics():Ext.IClass;
	static function toggle(?string:String, ?value:String, ?other:String):String;
	static function trim(?string:String):String;
}
typedef IGeolocation = {
	>Ext.IEvented,
	@:optional
	var allowHighAccuracy : Bool;
	@:optional
	var autoUpdate : Bool;
	@:optional
	var frequency : Float;
	@:optional
	var maximumAge : Float;
	@:optional
	var timeout : Float;
	@:optional
	var accuracy : Float;
	@:optional
	var altitude : Float;
	@:optional
	var altitudeAccuracy : Float;
	@:optional
	var heading : Float;
	@:optional
	var latitude : Float;
	@:optional
	var longitude : Float;
	@:optional
	var speed : Float;
	@:optional
	var timestamp : Dynamic;
	@:optional
	function destroy():Void;
	@:optional
	function getAllowHighAccuracy():Bool;
	@:optional
	function getAutoUpdate():Bool;
	@:optional
	function getFrequency():Float;
	@:optional
	function getMaximumAge():Float;
	@:optional
	function getTimeout():Float;
	@:optional
	function setAllowHighAccuracy(?allowHighAccuracy:Bool):Void;
	@:optional
	function setAutoUpdate(?autoUpdate:Bool):Void;
	@:optional
	function setFrequency(?frequency:Float):Void;
	@:optional
	function setMaximumAge(?maximumAge:Float):Void;
	@:optional
	function setTimeout(?timeout:Float):Void;
	@:optional
	function updateLocation(?callback:Dynamic, ?scope:Dynamic):Void;
};
typedef IGrouper = {
	>Ext.util.ISorter,
	@:optional
	var groupFn : Dynamic;
	@:optional
	var sortProperty : String;
	@:optional
	var sorterFn : Dynamic;
	@:optional
	function getGroupFn():Dynamic;
	@:optional
	function getSortProperty():String;
	@:optional
	function getSorterFn():Dynamic;
	@:optional
	function setGroupFn(?groupFn:Dynamic):Void;
	@:optional
	function setSortProperty(?sortProperty:String):Void;
	@:optional
	function setSorterFn(?sorterFn:Dynamic):Void;
};
typedef IHashMap = {
	>Ext.IBase,
	>Ext.mixin.IObservable,
	@:optional
	var keyFn : Dynamic;
	@:optional
	function add(?key:String, ?value:Dynamic):Dynamic;
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
	function clear(?initial:Dynamic):Ext.util.IHashMap;
	@:optional
	function clearListeners():Void;
	@:optional
	function clone():Ext.util.IHashMap;
	@:optional
	function contains(?value:Dynamic):Bool;
	@:optional
	function containsKey(?key:String):Bool;
	@:optional
	function destroy():Void;
	@:optional
	function each(?fn:Dynamic, ?scope:Dynamic):Ext.util.IHashMap;
	@:optional
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function get(?key:String):Dynamic;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getCount():Float;
	@:optional
	function getKeys():Array<Dynamic>;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getValues():Array<Dynamic>;
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
	function remove(?o:Dynamic):Bool;
	@:optional
	function removeAfterListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeBeforeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function removeByKey(?key:String):Bool;
	@:optional
	function removeListener(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function removeManagedListener(?object:Dynamic, ?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic):Void;
	@:optional
	function replace(?key:String, ?value:Dynamic):Dynamic;
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
	static function destroy():Void;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?instanceConfig:Dynamic):Dynamic;
	static function isTransnumeral(?word:String):Bool;
	static function ordinalize(?number:Float):String;
	static function plural(?matcher:js.RegExp, ?replacer:String):Void;
	static function pluralize(?word:String):String;
	static function singular(?matcher:js.RegExp, ?replacer:String):Void;
	static function singularize(?word:String):String;
	static function statics():Ext.IClass;
}
typedef IInputBlocker = {
	>Ext.IBase,
};
typedef ILineSegment = {
	>Ext.IBase,
	@:optional
	function intersects(?lineSegment:Ext.util.ILineSegment):Ext.util.IPoint;
	@:optional
	function toString():String;
};
typedef IMixedCollection = {
	>Ext.util.IAbstractMixedCollection,
	>Ext.util.ISortable,
	@:optional
	function destroy():Void;
	@:optional
	function initSortable():Void;
	@:optional
	function reorder(?mapping:Dynamic):Void;
	@:optional
	function sort(?sorters:Dynamic, ?direction:String, ?where:String, ?doSort:Bool):Array<Ext.util.ISorter>;
	@:optional
	function sortBy(?sorterFn:Dynamic):Void;
	@:optional
	function sortByKey(?dir:String, ?fn:Dynamic):Void;
};
typedef IOffset = {
	>Ext.IBase,
};
typedef IPaintMonitor = {
	>Ext.IBase,
};
typedef IPoint = {
	>Ext.IBase,
	@:optional
	function clone():Ext.util.IPoint;
	@:optional
	function copy():Ext.util.IPoint;
	@:optional
	function copyFrom(?point:Dynamic):Ext.util.IPoint;
	@:optional
	function equals(?point:Dynamic):Bool;
	@:optional
	function isCloseTo(?point:Dynamic, ?threshold:Dynamic):Bool;
	@:optional
	function isWithin():Bool;
	@:optional
	function roundedEquals(?point:Dynamic):Bool;
	@:optional
	function toString():String;
	@:optional
	function translate(?x:Float, ?y:Float):Bool;
};
extern class Point {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function from(?object:Dynamic):Ext.util.IPoint;
	static function fromEvent(?e:Event):Ext.util.IPoint;
	static function fromTouch(?touch:Event):Ext.util.IPoint;
	static function getName():String;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef IPositionMap = {
	>Ext.IBase,
	@:optional
	function getMinimumHeight():Float;
	@:optional
	function setMinimumHeight(?minimumHeight:Float):Void;
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
	function equals(?region:Ext.util.IRegion):Bool;
	@:optional
	function getOutOfBoundOffset(?axis:Dynamic, ?p:Ext.util.IPoint):Ext.util.IRegion;
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
	function toString():String;
	@:optional
	function translateBy(?offset:Dynamic):Ext.util.IRegion;
	@:optional
	function union(?region:Ext.util.IRegion):Ext.util.IRegion;
};
extern class Region {
	static function addMembers(?members:Dynamic):Void;
	static function addStatics(?members:Dynamic):Ext.IBase;
	static function callParent(?args:Dynamic):Void;
	static function create():Dynamic;
	static function createAlias(?alias:Dynamic, ?origin:Dynamic):Void;
	static function from(?o:Dynamic):Ext.util.IRegion;
	static function getName():String;
	static function getRegion(?el:Dynamic):Ext.util.IRegion;
	static function override(?members:Dynamic):Ext.IBase;
}
typedef ISizeMonitor = {
	>Ext.IBase,
};
typedef ISortable = {
	>Ext.mixin.IMixin,
	@:optional
	var defaultSortDirection : String;
	@:optional
	var isSortable : Bool;
	@:optional
	var sortRoot : String;
	@:optional
	var sorters : Ext.util.IMixedCollection;
	@:optional
	function destroy():Void;
	@:optional
	function initSortable():Void;
	@:optional
	function sort(?sorters:Dynamic, ?direction:String, ?where:String, ?doSort:Bool):Array<Ext.util.ISorter>;
};
typedef ISorter = {
	>Ext.IBase,
	@:optional
	var direction : String;
	@:optional
	var id : Dynamic;
	@:optional
	var property : String;
	@:optional
	var root : String;
	@:optional
	var sorterFn : Dynamic;
	@:optional
	var transform : Dynamic;
	@:optional
	function getDirection():String;
	@:optional
	function getId():Dynamic;
	@:optional
	function getProperty():String;
	@:optional
	function getRoot():String;
	@:optional
	function getSorterFn():Dynamic;
	@:optional
	function getTransform():Dynamic;
	@:optional
	function setDirection(?direction:String):Void;
	@:optional
	function setId(?id:Dynamic):Void;
	@:optional
	function setProperty(?property:String):Void;
	@:optional
	function setRoot(?root:String):Void;
	@:optional
	function setSorterFn(?sorterFn:Dynamic):Void;
	@:optional
	function setTransform(?transform:Dynamic):Void;
	@:optional
	function toggle():Void;
};
typedef ITapRepeater = {
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
	function enableBubble(?events:Dynamic):Void;
	@:optional
	function fireAction(?eventName:String, ?args:Array<Dynamic>, ?fn:Dynamic, ?scope:Dynamic):Dynamic;
	@:optional
	function fireEvent(eventName:String, args:haxe.extern.Rest<Dynamic>):Bool;
	@:optional
	function getAccelerate():Bool;
	@:optional
	function getBubbleEvents():Dynamic;
	@:optional
	function getDelay():Float;
	@:optional
	function getEl():Dynamic;
	@:optional
	function getInterval():Float;
	@:optional
	function getListeners():Dynamic;
	@:optional
	function getPressCls():Dynamic;
	@:optional
	function getPreventDefault():Bool;
	@:optional
	function getStopDefault():Bool;
	@:optional
	function getTimer():Float;
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
	function setAccelerate(?accelerate:Bool):Void;
	@:optional
	function setBubbleEvents(?bubbleEvents:Dynamic):Void;
	@:optional
	function setDelay(?delay:Float):Void;
	@:optional
	function setEl(?el:Dynamic):Void;
	@:optional
	function setInterval(?interval:Float):Void;
	@:optional
	function setListeners(?listeners:Dynamic):Void;
	@:optional
	function setPressCls(?pressCls:Dynamic):Void;
	@:optional
	function setPreventDefault(?preventDefault:Bool):Void;
	@:optional
	function setStopDefault(?stopDefault:Bool):Void;
	@:optional
	function setTimer(?timer:Float):Void;
	@:optional
	function suspendEvents():Void;
	@:optional
	function un(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic, ?order:String):Void;
	@:optional
	function unAfter(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
	@:optional
	function unBefore(?eventName:Dynamic, ?fn:Dynamic, ?scope:Dynamic, ?options:Dynamic):Void;
};
typedef ITranslatable = {
	>Ext.IBase,
};
typedef ITranslatableGroup = {
	>Ext.util.translatable.IAbstract,
	@:optional
	function getActiveIndex():Float;
	@:optional
	function getItemLength():Dynamic;
	@:optional
	function getItems():Array<Dynamic>;
	@:optional
	function setActiveIndex(?activeIndex:Float):Void;
	@:optional
	function setItemLength(?itemLength:Dynamic):Void;
	@:optional
	function setItems(?items:Array<Dynamic>):Void;
};
typedef ITranslatableList = {
	>Ext.util.translatable.IAbstract,
	@:optional
	function getItems():Array<Dynamic>;
	@:optional
	function setItems(?items:Array<Dynamic>):Void;
};
typedef IWrapper = {
	>Ext.IBase,
	>Ext.mixin.IBindable,
	@:optional
	function destroy():Void;
};
