extern class _StoreLayer {
	function new():Void;
	var layerFuncName : String;
	var tags : Array<Dynamic>;
	function enabled(toEnable:Bool):Bool;
	function initialize(store:Dynamic):Void;
	function invalidate():Void;
	function name():Dynamic;
	function originFetch():Dynamic;
	function uninitialize(store:Dynamic):Void;
}
extern class _ServerSideLayer {
	function new(args:Dynamic):Void;
	var layerFuncName : String;
	var tags : Array<Dynamic>;
	function command(cmdName:String, cmdContent:Dynamic):Dynamic;
	function enabled(toEnable:Bool):Dynamic;
	function initialize(store:Dynamic):Void;
	function invalidate():Void;
	function name():Dynamic;
	function originFetch():Dynamic;
	function uninitialize(store:Dynamic):Void;
	function useCommands(toUse:Bool):Bool;
	function onCommandError(error:Error):Void;
	function onCommandLoad(response:String, userRequest:dojo.data.api.Request):Void;
}
typedef _Builder = { };
typedef Util = {
	var gridViewTag : String;
	var keyEvents : Array<Dynamic>;
	var mouseEvents : Array<Dynamic>;
	var na : String;
	var rowIndexTag : String;
	function arrayCompare(inA:Dynamic, inB:Dynamic):Void;
	function arrayInsert(inArray:Dynamic, inIndex:Dynamic, inValue:Dynamic):Void;
	function arrayRemove(inArray:Dynamic, inIndex:Dynamic):Void;
	function arraySwap(inArray:Dynamic, inI:Dynamic, inJ:Dynamic):Void;
	function fire(ob:Dynamic, ev:Dynamic, args:Dynamic):Dynamic;
	function funnelEvents(inNode:Dynamic, inObject:Dynamic, inMethod:Dynamic, inEvents:Dynamic):Void;
	function removeNode(inNode:Dynamic):Dynamic;
	function setStyleHeightPx(inElement:Dynamic, inHeight:Dynamic):Void;
};
