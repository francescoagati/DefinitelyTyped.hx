typedef JQueryTotalStorage = {
	function setItem(key:String, value:Dynamic):Dynamic;
	function getItem(key:String):Dynamic;
	function getAll():Array<Dynamic>;
	function deleteItem(key:String):Bool;
};
typedef JQueryTotalStorageOptions = { };
typedef JQueryStatic = {
	var totalStorage : JQueryTotalStorage;
};
