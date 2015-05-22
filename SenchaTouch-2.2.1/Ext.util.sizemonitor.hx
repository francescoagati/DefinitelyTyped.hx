typedef IAbstract = {
	>Ext.IBase,
	>Ext.mixin.ITemplatable,
	@:optional
	function destroy():Void;
	@:optional
	function getArgs():Array<Dynamic>;
	@:optional
	function getCallback():Dynamic;
	@:optional
	function getElement():Dynamic;
	@:optional
	function getScope():Dynamic;
	@:optional
	function setArgs(?args:Array<Dynamic>):Void;
	@:optional
	function setCallback(?callback:Dynamic):Void;
	@:optional
	function setElement(?element:Dynamic):Void;
	@:optional
	function setScope(?scope:Dynamic):Void;
};
typedef IDefault = {
	>Ext.util.sizemonitor.IAbstract,
};
typedef IOverflowChange = {
	>Ext.util.sizemonitor.IAbstract,
};
typedef IScroll = {
	>Ext.util.sizemonitor.IAbstract,
};
