typedef KnockoutEditable = {
	function addEditable(target:Dynamic):Dynamic;
	function beginEdit():Void;
	function commit():Void;
	function rollback():Void;
	function hasChanges():Bool;
};
typedef KnockoutEditableStatic = {
	function beginEdit(scope:String):Void;
	function commit(scope:String):Void;
	function rollback(scope:String):Void;
	function hasChanges(scope:String):Bool;
};
typedef KnockoutStatic = {
	var editable : KnockoutEditableStatic;
};
