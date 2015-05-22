typedef IContainer = {
	>Ext.IComponent,
	@:optional
	function destroy():Void;
};
typedef IList = {
	>Ext.dataview.element.IContainer,
	@:optional
	function destroy():Void;
};
