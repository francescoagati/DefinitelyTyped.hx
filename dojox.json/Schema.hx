typedef Ref = {
	var refAttribute : String;
	var serializeFunctions : Bool;
	function fromJson(str:String, args:Dynamic):Dynamic;
	function resolveJson(root:Dynamic, args:Dynamic):Dynamic;
	function toJson(it:Dynamic, prettyPrint:Bool, idPrefix:Dynamic, indexSubObjects:Dynamic):Dynamic;
};
