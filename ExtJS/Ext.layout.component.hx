typedef IAuto = {
	>Ext.layout.component.IComponent,
	@:optional
	var setHeightInDom : Bool;
	@:optional
	var setWidthInDom : Bool;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic, ?firstCycle:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
};
typedef IBody = {
	>Ext.layout.component.IAuto,
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic, ?firstCycle:Dynamic):Void;
};
typedef IBoundList = {
	>Ext.layout.component.IAuto,
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
	@:optional
	function finishedLayout(?ownerContext:Dynamic):Void;
	@:optional
	function getLayoutItems():Void;
	@:optional
	function isValidParent():Void;
};
typedef IButton = {
	>Ext.layout.component.IAuto,
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
};
typedef IComponent = {
	>Ext.layout.ILayout,
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic, ?firstCycle:Dynamic):Void;
	@:optional
	function finishedLayout(?ownerContext:Dynamic):Void;
	@:optional
	function getRenderTarget():Ext.IElement;
	@:optional
	function getTarget():Ext.IElement;
	@:optional
	function notifyOwner(?ownerContext:Dynamic):Void;
};
typedef IDock = {
	>Ext.layout.component.IComponent,
	@:optional
	function afterRemove(?item:Dynamic):Void;
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function configureItem(?item:Ext.IComponent):Void;
	@:optional
	function finishedLayout(?ownerContext:Dynamic):Void;
	@:optional
	function getDockedItems(?order:String, ?beforeBody:Bool):Array<Ext.IComponent>;
	@:optional
	function getItemSizePolicy(?item:Dynamic, ?ownerSizeModel:Dynamic):Ext.layout.ISizePolicy;
	@:optional
	function getLayoutItems():Array<Dynamic>;
	@:optional
	function invalidateAxes(?ownerContext:Dynamic, ?horz:Dynamic, ?vert:Dynamic):Void;
	@:optional
	function renderItems(?items:Dynamic, ?target:Dynamic):Void;
};
typedef IAbstractDock = {
	>Ext.layout.component.IComponent,
	@:optional
	function afterRemove(?item:Dynamic):Void;
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
	@:optional
	function configureItem(?item:Ext.IComponent):Void;
	@:optional
	function finishedLayout(?ownerContext:Dynamic):Void;
	@:optional
	function getDockedItems(?order:String, ?beforeBody:Bool):Array<Ext.IComponent>;
	@:optional
	function getItemSizePolicy(?item:Dynamic, ?ownerSizeModel:Dynamic):Ext.layout.ISizePolicy;
	@:optional
	function getLayoutItems():Array<Dynamic>;
	@:optional
	function invalidateAxes(?ownerContext:Dynamic, ?horz:Dynamic, ?vert:Dynamic):Void;
	@:optional
	function renderItems(?items:Dynamic, ?target:Dynamic):Void;
};
typedef IDraw = {
	>Ext.layout.component.IAuto,
	@:optional
	var setHeightInDom : Bool;
	@:optional
	var setWidthInDom : Bool;
	@:optional
	function finishedLayout(?ownerContext:Dynamic):Void;
};
typedef IFieldSet = {
	>Ext.layout.component.IBody,
	@:optional
	function beginLayoutCycle(?ownerContext:Dynamic):Void;
	@:optional
	function finishedLayout(?ownerContext:Dynamic):Void;
	@:optional
	function getLayoutItems():Void;
};
typedef IProgressBar = {
	>Ext.layout.component.IAuto,
	@:optional
	function beginLayout(?ownerContext:Dynamic):Void;
	@:optional
	function calculate(?ownerContext:Dynamic):Void;
};
