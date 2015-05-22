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
extern class ServerSideFilterLayer {
	function new(args:Dynamic):Void;
	var layerFuncName : String;
	var tags : Array<Dynamic>;
	function command(cmdName:String, cmdContent:Dynamic):Dynamic;
	function enabled(toEnable:Bool):Dynamic;
	@:overload(function(filter:Dynamic):Dynamic { })
	function filterDef(filter:dojox.grid.enhanced.plugins.filter._ConditionExpr):Dynamic;
	function initialize(store:Dynamic):Void;
	function invalidate():Void;
	function name():Dynamic;
	function originFetch():Dynamic;
	function uninitialize(store:Dynamic):Void;
	function useCommands(toUse:Bool):Bool;
	function onCommandError(error:Error):Void;
	function onCommandLoad(responce:String, userRequest:Dynamic):Void;
	function onFilterDefined(filter:Dynamic):Void;
	function onFiltered(filteredSize:Float, totalSize:Float):Void;
}
extern class ClientSideFilterLayer {
	function new(args:Dynamic):Void;
	var layerFuncName : String;
	var tags : Array<Dynamic>;
	function enabled(toEnable:Bool):Bool;
	function fetchAllOnFirstFilter(toFetchAll:Bool):Dynamic;
	@:overload(function(filter:Dynamic):Dynamic { })
	function filterDef(filter:dojox.grid.enhanced.plugins.filter._ConditionExpr):Dynamic;
	function initialize(store:Dynamic):Void;
	function name():Dynamic;
	function originFetch():Dynamic;
	function setGetter(getter:haxe.Constraints.Function):Void;
	function uninitialize(store:Dynamic):Void;
	function onFilterDefined(filter:Dynamic):Void;
	function onFiltered(filteredSize:Float, totalSize:Float):Void;
	function onRowMappingChange(mapping:Dynamic):Void;
}
typedef _StoreLayer = {
	function wrap(store:Dynamic, funcName:Dynamic, layer:dojox.grid.enhanced.plugins._StoreLayer._StoreLayer, layerFuncName:Dynamic):Dynamic;
};
