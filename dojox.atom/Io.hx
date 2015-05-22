extern class Connection {
	function new(sync:Bool, preventCache:Bool):Void;
	var alertsEnabled : Bool;
	var preventCache : Bool;
	function addEntry(entry:Dynamic, url:Dynamic, callback:Dynamic, errorCallback:Dynamic, retrieveEntry:Dynamic, scope:Dynamic):Dynamic;
	function deleteEntry(entry:Dynamic, callback:Dynamic, errorCallback:Dynamic, xmethod:Dynamic, scope:Dynamic):Dynamic;
	function getEntry(url:Dynamic, callback:Dynamic, errorCallback:Dynamic, scope:Dynamic):Dynamic;
	function getFeed(url:String, callback:haxe.Constraints.Function, errorCallback:haxe.Constraints.Function, scope:Dynamic):Dynamic;
	function getService(url:Dynamic, callback:Dynamic, errorCallback:Dynamic, scope:Dynamic):Dynamic;
	function updateEntry(entry:Dynamic, callback:Dynamic, errorCallback:Dynamic, retrieveUpdated:Dynamic, xmethod:Dynamic, scope:Dynamic):Dynamic;
}
typedef Model = {
	var util : Dynamic;
	function AtomItem():Void;
	function Category():Void;
	function Collection():Void;
	function Content():Void;
	function Entry():Void;
	function Feed():Void;
	function Generator():Void;
	function Link():Void;
	function Node():Void;
	function Person():Void;
	function Service():Void;
	function Workspace():Void;
};
