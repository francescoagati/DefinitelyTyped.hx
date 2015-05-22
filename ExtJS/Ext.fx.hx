typedef IAnim = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var alternate : Bool;
	@:optional
	var callback : Dynamic;
	@:optional
	var delay : Float;
	@:optional
	var duration : Float;
	@:optional
	var dynamic : Bool;
	@:optional
	var easing : String;
	@:optional
	var from : Dynamic;
	@:optional
	var iterations : Float;
	@:optional
	var keyframes : Dynamic;
	@:optional
	var reverse : Bool;
	@:optional
	var scope : Dynamic;
	@:optional
	var target : Dynamic;
	@:optional
	var to : Dynamic;
	@:optional
	var currentIteration : Float;
	@:optional
	var isAnimation : Bool;
	@:optional
	var paused : Bool;
	@:optional
	var running : Bool;
	@:optional
	var startTime : Dynamic;
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
	function end():Void;
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
typedef IAnimator = {
	>Ext.IBase,
	>Ext.util.IObservable,
	@:optional
	var delay : Float;
	@:optional
	var duration : Float;
	@:optional
	var dynamic : Bool;
	@:optional
	var easing : String;
	@:optional
	var iterations : Float;
	@:optional
	var keyframes : Dynamic;
	@:optional
	var target : Ext.fx.target.ITarget;
	@:optional
	var currentIteration : Float;
	@:optional
	var isAnimator : Bool;
	@:optional
	var keyframeStep : Float;
	@:optional
	var paused : Bool;
	@:optional
	var running : Bool;
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
	function end():Void;
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
typedef ICubicBezier = {
	>Ext.IBase,
};
extern class CubicBezier {
	static var self : Ext.IClass;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function statics():Ext.IClass;
}
typedef IEasing = { };
extern class Easing {

}
typedef IManager = {
	>Ext.IBase,
	>Ext.fx.IQueue,
};
extern class Manager {
	static var forceJS : Bool;
	static var interval : Float;
	static var self : Ext.IClass;
	static function addAnim(?anim:Ext.fx.IAnim):Void;
	static function callOverridden(?args:Dynamic):Dynamic;
	static function callParent(?args:Dynamic):Dynamic;
	static function callSuper(?args:Dynamic):Dynamic;
	static function getInitialConfig(?name:String):Dynamic;
	static function initConfig(?config:Dynamic):Ext.IBase;
	static function removeAnim(?anim:Ext.fx.IAnim):Void;
	static function statics():Ext.IClass;
}
typedef IPropertyHandler = {
	>Ext.IBase,
};
typedef IQueue = {
	>Ext.IBase,
};
