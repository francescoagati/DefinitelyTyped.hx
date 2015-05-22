typedef __Position = {
	var x : Float;
	var y : Float;
};
typedef __Rectangle = {
	var h : Float;
	var w : Float;
	var x : Float;
	var y : Float;
};
typedef Registry = {
	var length : Float;
	function add(widget:dijit._WidgetBase):Void;
	@:overload(function(id:dijit._WidgetBase):dijit._WidgetBase { })
	function byId(id:String):dijit._WidgetBase;
	function byNode(node:HTMLElement):Dynamic;
	function findWidgets(root:HTMLElement, skipNode:HTMLElement):Array<Dynamic>;
	function getEnclosingWidget(node:HTMLElement):Dynamic;
	function getUniqueId(widgetType:String):String;
	function remove(id:String):Void;
	function toArray():Array<Dynamic>;
};
