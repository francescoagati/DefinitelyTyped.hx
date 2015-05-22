typedef IController = {
	>Ext.IBase,
};
typedef IDispatcher = {
	>Ext.IBase,
	@:optional
	function getPublishers():Dynamic;
	@:optional
	function setPublishers(?publishers:Dynamic):Void;
};
typedef IDom = {
	@:optional
	var distance : Float;
	@:optional
	var pageX : Float;
	@:optional
	var pageY : Float;
	@:optional
	var target : HTMLElement;
	@:optional
	function getPageX():Float;
	@:optional
	function getPageY():Float;
	@:optional
	function getTarget(?selector:String, ?maxDepth:Dynamic, ?returnEl:Bool):HTMLElement;
	@:optional
	function getTime():Dynamic;
	@:optional
	function getXY():Array<Dynamic>;
	@:optional
	function preventDefault():Void;
};
typedef IEvent = {
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
typedef IListenerStack = {
	>Ext.IBase,
};
typedef ITouch = {
	>Ext.event.IDom,
};
