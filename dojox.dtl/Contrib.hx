typedef Objects = {
	function key(value:Dynamic, arg:Dynamic):Dynamic;
};
typedef Dijit = {
	var widgetsInTemplate : Bool;
	function AttachNode(keys:Dynamic, object:Dynamic):Void;
	function data_dojo_attach_event(parser:Dynamic, token:Dynamic):Dynamic;
	function data_dojo_attach_point(parser:Dynamic, token:Dynamic):Dynamic;
	function data_dojo_type(parser:Dynamic, token:Dynamic):Dynamic;
	function dojoAttachEvent(parser:Dynamic, token:Dynamic):Dynamic;
	function dojoAttachPoint(parser:Dynamic, token:Dynamic):Dynamic;
	function dojoType(parser:Dynamic, token:Dynamic):Dynamic;
	function DojoTypeNode(node:Dynamic, parsed:Dynamic):Void;
	function EventNode(command:Dynamic, obj:Dynamic):Void;
	function on(parser:Dynamic, token:Dynamic):Dynamic;
};
typedef Data = {
	function bind_data(parser:Dynamic, token:Dynamic):Dynamic;
	function bind_query(parser:Dynamic, token:Dynamic):Dynamic;
	function BindDataNode(items:Dynamic, query:Dynamic, store:Dynamic, alias:Dynamic):Void;
};
typedef Dom = {
	function buffer(parser:Dynamic, token:Dynamic):Dynamic;
	function BufferNode(nodelist:Dynamic, options:Dynamic):Void;
	function html(parser:Dynamic, token:Dynamic):Dynamic;
	function style_(parser:Dynamic, token:Dynamic):Dynamic;
	function StyleNode(styles:Dynamic):Void;
};
