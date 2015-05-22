typedef OfflineRest = {
	var stores : Array<Dynamic>;
	function addStore(store:dojo.data.api.Read, baseQuery:String):Void;
	function downloadChanges():Void;
	function sendChanges():Void;
	function sync():Void;
	function turnOffAutoSync():Void;
};
typedef JsonRest = {
	var conflictDateHeader : String;
	var schemas : Dynamic;
	var services : Dynamic;
	function byId(service:Dynamic, id:Dynamic):Dynamic;
	function changing(object:Dynamic, _deleting:Dynamic):Void;
	function commit(kwArgs:Dynamic):Array<Dynamic>;
	function deleteObject(object:Dynamic):Void;
	function fetch(absoluteId:Dynamic):Dynamic;
	@:overload(function(service:String, schema:Dynamic):Dynamic { })
	function getConstructor(service:haxe.Constraints.Function, schema:Dynamic):Dynamic;
	function getDirtyObjects():Array<Dynamic>;
	function getIdAttribute(service:Dynamic):String;
	function getServiceAndId(absoluteId:String):Dynamic;
	function isDirty(item:Dynamic, store:Dynamic):Dynamic;
	function query(service:Dynamic, id:Dynamic, args:Dynamic):Dynamic;
	function registerService(service:haxe.Constraints.Function, servicePath:String, schema:Dynamic):Void;
	function revert(service:Dynamic):Void;
	function sendToServer(actions:Dynamic, kwArgs:Dynamic):Void;
	function serviceClass(path:String, isJson:Bool, schema:Dynamic, getRequest:haxe.Constraints.Function):haxe.Constraints.Function;
};
