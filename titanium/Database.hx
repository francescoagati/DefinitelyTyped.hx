typedef ResultSet = {
	>Ti.Proxy,
	var rowCount : Float;
	var validRow : Bool;
	function close():Void;
	function field(index:Float, ?type:Float):Dynamic;
	function fieldByName(name:String, ?type:Float):Dynamic;
	function fieldCount():Float;
	function fieldName(index:Float):String;
	function getFieldCount():Float;
	function getFieldName(index:Float):String;
	function getRowCount():Float;
	function getValidRow():Bool;
	function isValidRow():Bool;
	function next():Bool;
};
typedef DB = {
	>Ti.Proxy,
	var file : Ti.Filesystem.File;
	var lastInsertRowId : Float;
	var name : String;
	var rowsAffected : Float;
	function close():Void;
	@:overload(function(?vararg:Array<String>):Ti.Database.ResultSet { })
	@:overload(function(?vararg:Dynamic):Ti.Database.ResultSet { })
	@:overload(function(sql:String, ?vararg:Array<Dynamic>):Ti.Database.ResultSet { })
	function execute(sql:String, ?vararg:String):Ti.Database.ResultSet;
	function getFile():Ti.Filesystem.File;
	function getLastInsertRowId():Float;
	function getName():String;
	function getRowsAffected():Float;
	function remove():Void;
	function setLastInsertRowId(lastInsertRowId:Float):Void;
	function setName(name:String):Void;
	function setRowsAffected(rowsAffected:Float):Void;
};
extern class DatabaseTopLevel {
	static var FIELD_TYPE_DOUBLE : Float;
	static var FIELD_TYPE_FLOAT : Float;
	static var FIELD_TYPE_INT : Float;
	static var FIELD_TYPE_STRING : Float;
	static var apiName : String;
	static var bubbleParent : Bool;
	static function addEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function applyProperties(props:Dictionary<Dynamic>):Void;
	static function fireEvent(name:String, event:Dictionary<Dynamic>):Void;
	static function getApiName():String;
	static function getBubbleParent():Bool;
	static function install(path:String, dbName:String):Ti.Database.DB;
	static function open(dbName:String):Ti.Database.DB;
	static function removeEventListener(name:String, callback:haxe.extern.Rest<Dynamic> -> Dynamic):Void;
	static function setBubbleParent(bubbleParent:Bool):Void;
}
