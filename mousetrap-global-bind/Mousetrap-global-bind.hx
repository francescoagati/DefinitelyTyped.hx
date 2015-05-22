typedef MousetrapStatic = {
	@:overload(function(keyArray:Array<String>, callback:ExtendedKeyboardEvent -> String -> Dynamic, ?action:String):Void { })
	function globalBind(keys:String, callback:ExtendedKeyboardEvent -> String -> Dynamic, ?action:String):Void;
};
